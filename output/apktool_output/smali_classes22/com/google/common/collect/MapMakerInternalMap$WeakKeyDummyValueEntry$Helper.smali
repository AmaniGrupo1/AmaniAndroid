.class final Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Helper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper<",
        "TK;",
        "Lcom/google/common/collect/MapMaker$Dummy;",
        "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<",
        "TK;>;",
        "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<",
        "TK;>;>;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 729
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;

    invoke-direct {v0}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;-><init>()V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;->INSTANCE:Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 726
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static instance()Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper<",
            "TK;>;"
        }
    .end annotation

    .line 733
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;->INSTANCE:Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 0
    .param p3    # Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "segment",
            "entry",
            "newNext"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 726
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper<TK;>;"
    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;

    check-cast p2, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;

    check-cast p3, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;->copy(Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;)Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public copy(Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;)Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;
    .locals 2
    .param p3    # Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "segment",
            "entry",
            "newNext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<",
            "TK;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<",
            "TK;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<",
            "TK;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<",
            "TK;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 759
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper<TK;>;"
    .local p1, "segment":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<TK;>;"
    .local p2, "entry":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<TK;>;"
    .local p3, "newNext":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<TK;>;"
    invoke-virtual {p2}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 760
    .local v0, "key":Ljava/lang/Object;, "TK;"
    if-nez v0, :cond_0

    .line 762
    const/4 v1, 0x0

    return-object v1

    .line 764
    :cond_0
    iget v1, p2, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;->hash:I

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;->newEntry(Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;)Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;

    move-result-object v1

    return-object v1
.end method

.method public keyStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 1

    .line 738
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper<TK;>;"
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->WEAK:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method

.method public bridge synthetic newEntry(Lcom/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 0
    .param p4    # Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "segment",
            "key",
            "hash",
            "next"
        }
    .end annotation

    .line 726
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper<TK;>;"
    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;

    check-cast p4, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;->newEntry(Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;)Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public newEntry(Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;)Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;
    .locals 9
    .param p3, "hash"    # I
    .param p4    # Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "segment",
            "key",
            "hash",
            "next"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<",
            "TK;>;TK;I",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<",
            "TK;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<",
            "TK;>;"
        }
    .end annotation

    .line 777
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper<TK;>;"
    .local p1, "segment":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<TK;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "next":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<TK;>;"
    if-nez p4, :cond_0

    .line 778
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;

    invoke-static {p1}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;->access$800(Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, p3, v2}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$1;)V

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    goto :goto_0

    .line 779
    :cond_0
    new-instance v3, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$LinkedWeakKeyDummyValueEntry;

    invoke-static {p1}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;->access$800(Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v4

    const/4 v8, 0x0

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    .end local p2    # "key":Ljava/lang/Object;, "TK;"
    .end local p3    # "hash":I
    .end local p4    # "next":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<TK;>;"
    .local v5, "key":Ljava/lang/Object;, "TK;"
    .local v6, "hash":I
    .local v7, "next":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<TK;>;"
    invoke-direct/range {v3 .. v8}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$LinkedWeakKeyDummyValueEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;Lcom/google/common/collect/MapMakerInternalMap$1;)V

    move-object v0, v3

    .line 777
    :goto_0
    return-object v0
.end method

.method public bridge synthetic newSegment(Lcom/google/common/collect/MapMakerInternalMap;I)Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "map",
            "initialCapacity"
        }
    .end annotation

    .line 726
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper<TK;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;->newSegment(Lcom/google/common/collect/MapMakerInternalMap;I)Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;

    move-result-object p1

    return-object p1
.end method

.method public newSegment(Lcom/google/common/collect/MapMakerInternalMap;I)Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;
    .locals 1
    .param p2, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "map",
            "initialCapacity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap<",
            "TK;",
            "Lcom/google/common/collect/MapMaker$Dummy;",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<",
            "TK;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<",
            "TK;>;>;I)",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<",
            "TK;>;"
        }
    .end annotation

    .line 750
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper<TK;>;"
    .local p1, "map":Lcom/google/common/collect/MapMakerInternalMap;, "Lcom/google/common/collect/MapMakerInternalMap<TK;Lcom/google/common/collect/MapMaker$Dummy;Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<TK;>;Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<TK;>;>;"
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;-><init>(Lcom/google/common/collect/MapMakerInternalMap;I)V

    return-object v0
.end method

.method public bridge synthetic setValue(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "segment",
            "entry",
            "value"
        }
    .end annotation

    .line 726
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper<TK;>;"
    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;

    check-cast p2, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;

    check-cast p3, Lcom/google/common/collect/MapMaker$Dummy;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;->setValue(Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;Lcom/google/common/collect/MapMaker$Dummy;)V

    return-void
.end method

.method public setValue(Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;Lcom/google/common/collect/MapMaker$Dummy;)V
    .locals 0
    .param p3, "value"    # Lcom/google/common/collect/MapMaker$Dummy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "segment",
            "entry",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<",
            "TK;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<",
            "TK;>;",
            "Lcom/google/common/collect/MapMaker$Dummy;",
            ")V"
        }
    .end annotation

    .line 769
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper<TK;>;"
    .local p1, "segment":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<TK;>;"
    .local p2, "entry":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<TK;>;"
    return-void
.end method

.method public valueStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 1

    .line 743
    .local p0, "this":Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;, "Lcom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper<TK;>;"
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method
