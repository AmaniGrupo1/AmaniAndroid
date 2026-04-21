.class public abstract Lcom/google/common/collect/Ordering;
.super Ljava/lang/Object;
.source "Ordering.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Ordering$ArbitraryOrderingHolder;,
        Lcom/google/common/collect/Ordering$IncomparableValueException;,
        Lcom/google/common/collect/Ordering$ArbitraryOrdering;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final LEFT_IS_GREATER:I = 0x1

.field static final RIGHT_IS_GREATER:I = -0x1


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 400
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allEqual()Lcom/google/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Ordering<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 288
    sget-object v0, Lcom/google/common/collect/AllEqualOrdering;->INSTANCE:Lcom/google/common/collect/AllEqualOrdering;

    return-object v0
.end method

.method public static arbitrary()Lcom/google/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Ordering<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 322
    sget-object v0, Lcom/google/common/collect/Ordering$ArbitraryOrderingHolder;->ARBITRARY_ORDERING:Lcom/google/common/collect/Ordering;

    return-object v0
.end method

.method public static compound(Ljava/lang/Iterable;)Lcom/google/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comparators"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Comparator<",
            "-TT;>;>;)",
            "Lcom/google/common/collect/Ordering<",
            "TT;>;"
        }
    .end annotation

    .line 514
    .local p0, "comparators":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/util/Comparator<-TT;>;>;"
    new-instance v0, Lcom/google/common/collect/CompoundOrdering;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompoundOrdering;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static varargs explicit(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "leastValue",
            "remainingValuesInOrder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[TT;)",
            "Lcom/google/common/collect/Ordering<",
            "TT;>;"
        }
    .end annotation

    .line 253
    .local p0, "leastValue":Ljava/lang/Object;, "TT;"
    .local p1, "remainingValuesInOrder":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Lists;->asList(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Ordering;->explicit(Ljava/util/List;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public static explicit(Ljava/util/List;)Lcom/google/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "valuesInOrder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Lcom/google/common/collect/Ordering<",
            "TT;>;"
        }
    .end annotation

    .line 227
    .local p0, "valuesInOrder":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Lcom/google/common/collect/ExplicitOrdering;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ExplicitOrdering;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static from(Lcom/google/common/collect/Ordering;)Lcom/google/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ordering"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Ordering<",
            "TT;>;)",
            "Lcom/google/common/collect/Ordering<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 202
    .local p0, "ordering":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Ordering;

    return-object v0
.end method

.method public static from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lcom/google/common/collect/Ordering<",
            "TT;>;"
        }
    .end annotation

    .line 189
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    instance-of v0, p0, Lcom/google/common/collect/Ordering;

    if-eqz v0, :cond_0

    .line 190
    move-object v0, p0

    check-cast v0, Lcom/google/common/collect/Ordering;

    goto :goto_0

    .line 191
    :cond_0
    new-instance v0, Lcom/google/common/collect/ComparatorOrdering;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ComparatorOrdering;-><init>(Ljava/util/Comparator;)V

    .line 189
    :goto_0
    return-object v0
.end method

.method public static natural()Lcom/google/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/Ordering<",
            "TC;>;"
        }
    .end annotation

    .line 167
    sget-object v0, Lcom/google/common/collect/NaturalOrdering;->INSTANCE:Lcom/google/common/collect/NaturalOrdering;

    return-object v0
.end method

.method public static usingToString()Lcom/google/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Ordering<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 301
    sget-object v0, Lcom/google/common/collect/UsingToStringOrdering;->INSTANCE:Lcom/google/common/collect/UsingToStringOrdering;

    return-object v0
.end method


# virtual methods
.method public binarySearch(Ljava/util/List;Ljava/lang/Object;)I
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sortedList",
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;TT;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 952
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    .local p1, "sortedList":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    .local p2, "key":Ljava/lang/Object;, "TT;"
    invoke-static {p1, p2, p0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public abstract compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "right"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation
.end method

.method public compound(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "secondaryComparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:TT;>(",
            "Ljava/util/Comparator<",
            "-TU;>;)",
            "Lcom/google/common/collect/Ordering<",
            "TU;>;"
        }
    .end annotation

    .line 487
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    .local p1, "secondaryComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TU;>;"
    new-instance v0, Lcom/google/common/collect/CompoundOrdering;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Comparator;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/CompoundOrdering;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public greatestOf(Ljava/lang/Iterable;I)Ljava/util/List;
    .locals 1
    .param p2, "k"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "iterable",
            "k"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/lang/Iterable<",
            "TE;>;I)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 827
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/Ordering;->leastOf(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greatestOf(Ljava/util/Iterator;I)Ljava/util/List;
    .locals 1
    .param p2, "k"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "iterator",
            "k"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/util/Iterator<",
            "TE;>;I)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 847
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/Ordering;->leastOf(Ljava/util/Iterator;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public immutableSortedCopy(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Lcom/google/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 890
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    .local p1, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/ImmutableList;->sortedCopyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public isOrdered(Ljava/lang/Iterable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iterable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 903
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 904
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 905
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 906
    .local v1, "prev":Ljava/lang/Object;, "TT;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 907
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 908
    .local v2, "next":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v1, v2}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_0

    .line 909
    const/4 v3, 0x0

    return v3

    .line 911
    :cond_0
    move-object v1, v2

    .line 912
    .end local v2    # "next":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 914
    .end local v1    # "prev":Ljava/lang/Object;, "TT;"
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public isStrictlyOrdered(Ljava/lang/Iterable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iterable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 927
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 928
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 929
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 930
    .local v1, "prev":Ljava/lang/Object;, "TT;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 931
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 932
    .local v2, "next":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v1, v2}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 933
    const/4 v3, 0x0

    return v3

    .line 935
    :cond_0
    move-object v1, v2

    .line 936
    .end local v2    # "next":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 938
    .end local v1    # "prev":Ljava/lang/Object;, "TT;"
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public leastOf(Ljava/lang/Iterable;I)Ljava/util/List;
    .locals 7
    .param p2, "k"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "iterable",
            "k"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/lang/Iterable<",
            "TE;>;I)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 751
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 752
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    .line 753
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x2

    int-to-long v5, p2

    mul-long/2addr v5, v3

    cmp-long v1, v1, v5

    if-gtz v1, :cond_1

    .line 759
    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 760
    .local v1, "array":[Ljava/lang/Object;, "[TE;"
    invoke-static {v1, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 761
    array-length v2, v1

    if-le v2, p2, :cond_0

    .line 762
    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .line 764
    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 767
    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    .end local v1    # "array":[Ljava/lang/Object;, "[TE;"
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/common/collect/Ordering;->leastOf(Ljava/util/Iterator;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public leastOf(Ljava/util/Iterator;I)Ljava/util/List;
    .locals 2
    .param p2, "k"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "iterator",
            "k"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/util/Iterator<",
            "TE;>;I)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 787
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    const-string v0, "k"

    invoke-static {p2, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 790
    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 792
    :cond_0
    const v0, 0x3fffffff    # 1.9999999f

    if-lt p2, v0, :cond_2

    .line 794
    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 795
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 796
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p2, :cond_1

    .line 797
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 799
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 800
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 802
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    :cond_2
    invoke-static {p2, p0}, Lcom/google/common/collect/TopKSelector;->least(ILjava/util/Comparator;)Lcom/google/common/collect/TopKSelector;

    move-result-object v0

    .line 803
    .local v0, "selector":Lcom/google/common/collect/TopKSelector;, "Lcom/google/common/collect/TopKSelector<TE;>;"
    invoke-virtual {v0, p1}, Lcom/google/common/collect/TopKSelector;->offerAll(Ljava/util/Iterator;)V

    .line 804
    invoke-virtual {v0}, Lcom/google/common/collect/TopKSelector;->topK()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 791
    .end local v0    # "selector":Lcom/google/common/collect/TopKSelector;, "Lcom/google/common/collect/TopKSelector<TE;>;"
    :cond_3
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public lexicographical()Lcom/google/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lcom/google/common/collect/Ordering<",
            "Ljava/lang/Iterable<",
            "TS;>;>;"
        }
    .end annotation

    .line 544
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    new-instance v0, Lcom/google/common/collect/LexicographicalOrdering;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LexicographicalOrdering;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public max(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iterable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/lang/Iterable<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 685
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/Ordering;->max(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(TE;TE;)TE;"
        }
    .end annotation

    .line 705
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    .local p1, "a":Ljava/lang/Object;, "TE;"
    .local p2, "b":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    return-object v0
.end method

.method public varargs max(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "c",
            "rest"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(TE;TE;TE;[TE;)TE;"
        }
    .end annotation

    .line 725
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    .local p1, "a":Ljava/lang/Object;, "TE;"
    .local p2, "b":Ljava/lang/Object;, "TE;"
    .local p3, "c":Ljava/lang/Object;, "TE;"
    .local p4, "rest":[Ljava/lang/Object;, "[TE;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Ordering;->max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/google/common/collect/Ordering;->max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 727
    .local v0, "maxSoFar":Ljava/lang/Object;, "TE;"
    array-length v1, p4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p4, v2

    .line 728
    .local v3, "r":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v0, v3}, Lcom/google/common/collect/Ordering;->max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 727
    .end local v3    # "r":Ljava/lang/Object;, "TE;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 731
    :cond_0
    return-object v0
.end method

.method public max(Ljava/util/Iterator;)Ljava/lang/Object;
    .locals 2
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iterator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/util/Iterator<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 660
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 662
    .local v0, "maxSoFar":Ljava/lang/Object;, "TE;"
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 663
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/Ordering;->max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 666
    :cond_0
    return-object v0
.end method

.method public min(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iterable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/lang/Iterable<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 594
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/Ordering;->min(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(TE;TE;)TE;"
        }
    .end annotation

    .line 614
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    .local p1, "a":Ljava/lang/Object;, "TE;"
    .local p2, "b":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    return-object v0
.end method

.method public varargs min(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "c",
            "rest"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(TE;TE;TE;[TE;)TE;"
        }
    .end annotation

    .line 634
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    .local p1, "a":Ljava/lang/Object;, "TE;"
    .local p2, "b":Ljava/lang/Object;, "TE;"
    .local p3, "c":Ljava/lang/Object;, "TE;"
    .local p4, "rest":[Ljava/lang/Object;, "[TE;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Ordering;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/google/common/collect/Ordering;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 636
    .local v0, "minSoFar":Ljava/lang/Object;, "TE;"
    array-length v1, p4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p4, v2

    .line 637
    .local v3, "r":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v0, v3}, Lcom/google/common/collect/Ordering;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 636
    .end local v3    # "r":Ljava/lang/Object;, "TE;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 640
    :cond_0
    return-object v0
.end method

.method public min(Ljava/util/Iterator;)Ljava/lang/Object;
    .locals 2
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iterator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/util/Iterator<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 569
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 571
    .local v0, "minSoFar":Ljava/lang/Object;, "TE;"
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 572
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/Ordering;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 575
    :cond_0
    return-object v0
.end method

.method public nullsFirst()Lcom/google/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lcom/google/common/collect/Ordering<",
            "TS;>;"
        }
    .end annotation

    .line 429
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    new-instance v0, Lcom/google/common/collect/NullsFirstOrdering;

    invoke-direct {v0, p0}, Lcom/google/common/collect/NullsFirstOrdering;-><init>(Lcom/google/common/collect/Ordering;)V

    return-object v0
.end method

.method public nullsLast()Lcom/google/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lcom/google/common/collect/Ordering<",
            "TS;>;"
        }
    .end annotation

    .line 444
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    new-instance v0, Lcom/google/common/collect/NullsLastOrdering;

    invoke-direct {v0, p0}, Lcom/google/common/collect/NullsLastOrdering;-><init>(Lcom/google/common/collect/Ordering;)V

    return-object v0
.end method

.method onKeys()Lcom/google/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:TT;>()",
            "Lcom/google/common/collect/Ordering<",
            "Ljava/util/Map$Entry<",
            "TT2;*>;>;"
        }
    .end annotation

    .line 466
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->keyFunction()Lcom/google/common/base/Function;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/Ordering;->onResultOf(Lcom/google/common/base/Function;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public onResultOf(Lcom/google/common/base/Function;)Lcom/google/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "function"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Function<",
            "TF;+TT;>;)",
            "Lcom/google/common/collect/Ordering<",
            "TF;>;"
        }
    .end annotation

    .line 462
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    .local p1, "function":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<TF;+TT;>;"
    new-instance v0, Lcom/google/common/collect/ByFunctionOrdering;

    invoke-direct {v0, p1, p0}, Lcom/google/common/collect/ByFunctionOrdering;-><init>(Lcom/google/common/base/Function;Lcom/google/common/collect/Ordering;)V

    return-object v0
.end method

.method public reverse()Lcom/google/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lcom/google/common/collect/Ordering<",
            "TS;>;"
        }
    .end annotation

    .line 414
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    new-instance v0, Lcom/google/common/collect/ReverseOrdering;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ReverseOrdering;-><init>(Lcom/google/common/collect/Ordering;)V

    return-object v0
.end method

.method public sortedCopy(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 868
    .local p0, "this":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<TT;>;"
    .local p1, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    invoke-static {p1}, Lcom/google/common/collect/Iterables;->toArray(Ljava/lang/Iterable;)[Ljava/lang/Object;

    move-result-object v0

    .line 869
    .local v0, "array":[Ljava/lang/Object;, "[TE;"
    invoke-static {v0, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 870
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method
