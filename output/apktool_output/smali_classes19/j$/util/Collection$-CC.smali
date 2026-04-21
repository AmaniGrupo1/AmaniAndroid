.class public final synthetic Lj$/util/Collection$-CC;
.super Ljava/lang/Object;
.source "Collection.java"


# direct methods
.method public static $default$toArray(Ljava/util/Collection;Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 1
    .param p0, "_this"    # Ljava/util/Collection;

    .line 382
    .local p1, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
