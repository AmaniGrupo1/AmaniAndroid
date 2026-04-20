.class public final Lj$/util/stream/DesugarStream;
.super Ljava/lang/Object;
.source "DesugarStream.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static iterate(Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/UnaryOperator;)Ljava/util/stream/Stream;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/function/Predicate<",
            "-TT;>;",
            "Ljava/util/function/UnaryOperator<",
            "TT;>;)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 200
    .local p0, "seed":Ljava/lang/Object;, "TT;"
    .local p1, "hasNext":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    .local p2, "next":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TT;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    new-instance v0, Lj$/util/stream/DesugarStream$1;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x410

    move-object v5, p0

    move-object v6, p1

    move-object v4, p2

    .end local p0    # "seed":Ljava/lang/Object;, "TT;"
    .end local p1    # "hasNext":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    .end local p2    # "next":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TT;>;"
    .local v4, "next":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TT;>;"
    .local v5, "seed":Ljava/lang/Object;, "TT;"
    .local v6, "hasNext":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    invoke-direct/range {v0 .. v6}, Lj$/util/stream/DesugarStream$1;-><init>(JILjava/util/function/UnaryOperator;Ljava/lang/Object;Ljava/util/function/Predicate;)V

    .line 242
    .local v0, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
