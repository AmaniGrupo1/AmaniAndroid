.class public Lcom/google/firebase/database/snapshot/IndexedNode;
.super Ljava/lang/Object;
.source "IndexedNode.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/google/firebase/database/snapshot/NamedNode;",
        ">;"
    }
.end annotation


# static fields
.field private static final FALLBACK_INDEX:Lcom/google/firebase/database/collection/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/database/snapshot/NamedNode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:Lcom/google/firebase/database/snapshot/Index;

.field private indexed:Lcom/google/firebase/database/collection/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/database/snapshot/NamedNode;",
            ">;"
        }
    .end annotation
.end field

.field private final node:Lcom/google/firebase/database/snapshot/Node;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    new-instance v0, Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 37
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/collection/ImmutableSortedSet;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    sput-object v0, Lcom/google/firebase/database/snapshot/IndexedNode;->FALLBACK_INDEX:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 36
    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)V
    .locals 1
    .param p1, "node"    # Lcom/google/firebase/database/snapshot/Node;
    .param p2, "index"    # Lcom/google/firebase/database/snapshot/Index;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p2, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->index:Lcom/google/firebase/database/snapshot/Index;

    .line 51
    iput-object p1, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->node:Lcom/google/firebase/database/snapshot/Node;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->indexed:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 54
    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;Lcom/google/firebase/database/collection/ImmutableSortedSet;)V
    .locals 0
    .param p1, "node"    # Lcom/google/firebase/database/snapshot/Node;
    .param p2, "index"    # Lcom/google/firebase/database/snapshot/Index;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/snapshot/Node;",
            "Lcom/google/firebase/database/snapshot/Index;",
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/database/snapshot/NamedNode;",
            ">;)V"
        }
    .end annotation

    .line 56
    .local p3, "indexed":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/database/snapshot/NamedNode;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p2, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->index:Lcom/google/firebase/database/snapshot/Index;

    .line 58
    iput-object p1, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->node:Lcom/google/firebase/database/snapshot/Node;

    .line 59
    iput-object p3, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->indexed:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 60
    return-void
.end method

.method private ensureIndexed()V
    .locals 7

    .line 63
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->indexed:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    if-nez v0, :cond_5

    .line 65
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->index:Lcom/google/firebase/database/snapshot/Index;

    invoke-static {}, Lcom/google/firebase/database/snapshot/KeyIndex;->getInstance()Lcom/google/firebase/database/snapshot/KeyIndex;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Lcom/google/firebase/database/snapshot/IndexedNode;->FALLBACK_INDEX:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    iput-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->indexed:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    goto :goto_3

    .line 68
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/snapshot/NamedNode;>;"
    const/4 v1, 0x0

    .line 70
    .local v1, "sawIndexedValue":Z
    iget-object v2, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->node:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v2}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 71
    .local v3, "entry":Lcom/google/firebase/database/snapshot/NamedNode;
    if-nez v1, :cond_2

    iget-object v4, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->index:Lcom/google/firebase/database/snapshot/Index;

    invoke-virtual {v3}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/firebase/database/snapshot/Index;->isDefinedOn(Lcom/google/firebase/database/snapshot/Node;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x1

    :goto_2
    move v1, v4

    .line 72
    new-instance v4, Lcom/google/firebase/database/snapshot/NamedNode;

    invoke-virtual {v3}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/google/firebase/database/snapshot/NamedNode;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V

    .line 73
    .local v4, "namedNode":Lcom/google/firebase/database/snapshot/NamedNode;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    .end local v3    # "entry":Lcom/google/firebase/database/snapshot/NamedNode;
    .end local v4    # "namedNode":Lcom/google/firebase/database/snapshot/NamedNode;
    goto :goto_0

    .line 75
    :cond_3
    if-eqz v1, :cond_4

    .line 76
    new-instance v2, Lcom/google/firebase/database/collection/ImmutableSortedSet;

    iget-object v3, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->index:Lcom/google/firebase/database/snapshot/Index;

    invoke-direct {v2, v0, v3}, Lcom/google/firebase/database/collection/ImmutableSortedSet;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    iput-object v2, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->indexed:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    goto :goto_3

    .line 78
    :cond_4
    sget-object v2, Lcom/google/firebase/database/snapshot/IndexedNode;->FALLBACK_INDEX:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    iput-object v2, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->indexed:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 82
    .end local v0    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/snapshot/NamedNode;>;"
    .end local v1    # "sawIndexedValue":Z
    :cond_5
    :goto_3
    return-void
.end method

.method public static from(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;
    .locals 2
    .param p0, "node"    # Lcom/google/firebase/database/snapshot/Node;

    .line 85
    new-instance v0, Lcom/google/firebase/database/snapshot/IndexedNode;

    invoke-static {}, Lcom/google/firebase/database/snapshot/PriorityIndex;->getInstance()Lcom/google/firebase/database/snapshot/PriorityIndex;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/database/snapshot/IndexedNode;-><init>(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)V

    return-object v0
.end method

.method public static from(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/IndexedNode;
    .locals 1
    .param p0, "node"    # Lcom/google/firebase/database/snapshot/Node;
    .param p1, "index"    # Lcom/google/firebase/database/snapshot/Index;

    .line 89
    new-instance v0, Lcom/google/firebase/database/snapshot/IndexedNode;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/database/snapshot/IndexedNode;-><init>(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)V

    return-object v0
.end method


# virtual methods
.method public getFirstChild()Lcom/google/firebase/database/snapshot/NamedNode;
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->node:Lcom/google/firebase/database/snapshot/Node;

    instance-of v0, v0, Lcom/google/firebase/database/snapshot/ChildrenNode;

    if-nez v0, :cond_0

    .line 143
    const/4 v0, 0x0

    return-object v0

    .line 145
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/database/snapshot/IndexedNode;->ensureIndexed()V

    .line 146
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->indexed:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    sget-object v1, Lcom/google/firebase/database/snapshot/IndexedNode;->FALLBACK_INDEX:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->node:Lcom/google/firebase/database/snapshot/Node;

    check-cast v0, Lcom/google/firebase/database/snapshot/ChildrenNode;

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/ChildrenNode;->getFirstChildKey()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    .line 148
    .local v0, "firstKey":Lcom/google/firebase/database/snapshot/ChildKey;
    new-instance v1, Lcom/google/firebase/database/snapshot/NamedNode;

    iget-object v2, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->node:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v2, v0}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/firebase/database/snapshot/NamedNode;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V

    return-object v1

    .line 150
    .end local v0    # "firstKey":Lcom/google/firebase/database/snapshot/ChildKey;
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->indexed:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->getMinEntry()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/snapshot/NamedNode;

    return-object v0
.end method

.method public getLastChild()Lcom/google/firebase/database/snapshot/NamedNode;
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->node:Lcom/google/firebase/database/snapshot/Node;

    instance-of v0, v0, Lcom/google/firebase/database/snapshot/ChildrenNode;

    if-nez v0, :cond_0

    .line 157
    const/4 v0, 0x0

    return-object v0

    .line 159
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/database/snapshot/IndexedNode;->ensureIndexed()V

    .line 160
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->indexed:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    sget-object v1, Lcom/google/firebase/database/snapshot/IndexedNode;->FALLBACK_INDEX:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->node:Lcom/google/firebase/database/snapshot/Node;

    check-cast v0, Lcom/google/firebase/database/snapshot/ChildrenNode;

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/ChildrenNode;->getLastChildKey()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    .line 162
    .local v0, "lastKey":Lcom/google/firebase/database/snapshot/ChildKey;
    new-instance v1, Lcom/google/firebase/database/snapshot/NamedNode;

    iget-object v2, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->node:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v2, v0}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/firebase/database/snapshot/NamedNode;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V

    return-object v1

    .line 164
    .end local v0    # "lastKey":Lcom/google/firebase/database/snapshot/ChildKey;
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->indexed:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->getMaxEntry()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/snapshot/NamedNode;

    return-object v0
.end method

.method public getNode()Lcom/google/firebase/database/snapshot/Node;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->node:Lcom/google/firebase/database/snapshot/Node;

    return-object v0
.end method

.method public getPredecessorChildName(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/ChildKey;
    .locals 2
    .param p1, "childKey"    # Lcom/google/firebase/database/snapshot/ChildKey;
    .param p2, "childNode"    # Lcom/google/firebase/database/snapshot/Node;
    .param p3, "index"    # Lcom/google/firebase/database/snapshot/Index;

    .line 170
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->index:Lcom/google/firebase/database/snapshot/Index;

    invoke-static {}, Lcom/google/firebase/database/snapshot/KeyIndex;->getInstance()Lcom/google/firebase/database/snapshot/KeyIndex;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->index:Lcom/google/firebase/database/snapshot/Index;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Index not available in IndexedNode!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/firebase/database/snapshot/IndexedNode;->ensureIndexed()V

    .line 174
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->indexed:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    sget-object v1, Lcom/google/firebase/database/snapshot/IndexedNode;->FALLBACK_INDEX:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->node:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/snapshot/Node;->getPredecessorChildKey(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    return-object v0

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->indexed:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    new-instance v1, Lcom/google/firebase/database/snapshot/NamedNode;

    invoke-direct {v1, p1, p2}, Lcom/google/firebase/database/snapshot/NamedNode;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->getPredecessorEntry(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 178
    .local v0, "node":Lcom/google/firebase/database/snapshot/NamedNode;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public hasIndex(Lcom/google/firebase/database/snapshot/Index;)Z
    .locals 1
    .param p1, "index"    # Lcom/google/firebase/database/snapshot/Index;

    .line 93
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->index:Lcom/google/firebase/database/snapshot/Index;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/firebase/database/snapshot/NamedNode;",
            ">;"
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Lcom/google/firebase/database/snapshot/IndexedNode;->ensureIndexed()V

    .line 103
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->indexed:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    sget-object v1, Lcom/google/firebase/database/snapshot/IndexedNode;->FALLBACK_INDEX:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->node:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->indexed:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public reverseIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/firebase/database/snapshot/NamedNode;",
            ">;"
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Lcom/google/firebase/database/snapshot/IndexedNode;->ensureIndexed()V

    .line 112
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->indexed:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    sget-object v1, Lcom/google/firebase/database/snapshot/IndexedNode;->FALLBACK_INDEX:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->node:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->reverseIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->indexed:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->reverseIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public updateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;
    .locals 5
    .param p1, "key"    # Lcom/google/firebase/database/snapshot/ChildKey;
    .param p2, "child"    # Lcom/google/firebase/database/snapshot/Node;

    .line 120
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->node:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v0, p1, p2}, Lcom/google/firebase/database/snapshot/Node;->updateImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    .line 121
    .local v0, "newNode":Lcom/google/firebase/database/snapshot/Node;
    iget-object v1, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->indexed:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    sget-object v2, Lcom/google/firebase/database/snapshot/IndexedNode;->FALLBACK_INDEX:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->index:Lcom/google/firebase/database/snapshot/Index;

    invoke-virtual {v1, p2}, Lcom/google/firebase/database/snapshot/Index;->isDefinedOn(Lcom/google/firebase/database/snapshot/Node;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    new-instance v1, Lcom/google/firebase/database/snapshot/IndexedNode;

    iget-object v2, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->index:Lcom/google/firebase/database/snapshot/Index;

    sget-object v3, Lcom/google/firebase/database/snapshot/IndexedNode;->FALLBACK_INDEX:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/firebase/database/snapshot/IndexedNode;-><init>(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;Lcom/google/firebase/database/collection/ImmutableSortedSet;)V

    return-object v1

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->indexed:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->indexed:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    sget-object v2, Lcom/google/firebase/database/snapshot/IndexedNode;->FALLBACK_INDEX:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->node:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v1, p1}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    .line 129
    .local v1, "oldChild":Lcom/google/firebase/database/snapshot/Node;
    iget-object v2, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->indexed:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    new-instance v3, Lcom/google/firebase/database/snapshot/NamedNode;

    invoke-direct {v3, p1, v1}, Lcom/google/firebase/database/snapshot/NamedNode;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->remove(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v2

    .line 130
    .local v2, "newIndexed":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/database/snapshot/NamedNode;>;"
    invoke-interface {p2}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 131
    new-instance v3, Lcom/google/firebase/database/snapshot/NamedNode;

    invoke-direct {v3, p1, p2}, Lcom/google/firebase/database/snapshot/NamedNode;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->insert(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v2

    .line 133
    :cond_2
    new-instance v3, Lcom/google/firebase/database/snapshot/IndexedNode;

    iget-object v4, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->index:Lcom/google/firebase/database/snapshot/Index;

    invoke-direct {v3, v0, v4, v2}, Lcom/google/firebase/database/snapshot/IndexedNode;-><init>(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;Lcom/google/firebase/database/collection/ImmutableSortedSet;)V

    return-object v3

    .line 126
    .end local v1    # "oldChild":Lcom/google/firebase/database/snapshot/Node;
    .end local v2    # "newIndexed":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/database/snapshot/NamedNode;>;"
    :cond_3
    :goto_0
    new-instance v1, Lcom/google/firebase/database/snapshot/IndexedNode;

    iget-object v2, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->index:Lcom/google/firebase/database/snapshot/Index;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/google/firebase/database/snapshot/IndexedNode;-><init>(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;Lcom/google/firebase/database/collection/ImmutableSortedSet;)V

    return-object v1
.end method

.method public updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;
    .locals 4
    .param p1, "priority"    # Lcom/google/firebase/database/snapshot/Node;

    .line 138
    new-instance v0, Lcom/google/firebase/database/snapshot/IndexedNode;

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->node:Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v1, p1}, Lcom/google/firebase/database/snapshot/Node;->updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->index:Lcom/google/firebase/database/snapshot/Index;

    iget-object v3, p0, Lcom/google/firebase/database/snapshot/IndexedNode;->indexed:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/database/snapshot/IndexedNode;-><init>(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;Lcom/google/firebase/database/collection/ImmutableSortedSet;)V

    return-object v0
.end method
