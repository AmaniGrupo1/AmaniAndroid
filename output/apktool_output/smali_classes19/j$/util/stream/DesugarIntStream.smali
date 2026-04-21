.class public final Lj$/util/stream/DesugarIntStream;
.super Ljava/lang/Object;
.source "DesugarIntStream.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static iterate(ILjava/util/function/IntPredicate;Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;
    .locals 7
    .param p0, "seed"    # I
    .param p1, "hasNext"    # Ljava/util/function/IntPredicate;
    .param p2, "next"    # Ljava/util/function/IntUnaryOperator;

    .line 101
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v0, Lj$/util/stream/DesugarIntStream$1;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x510

    move v5, p0

    move-object v6, p1

    move-object v4, p2

    .end local p0    # "seed":I
    .end local p1    # "hasNext":Ljava/util/function/IntPredicate;
    .end local p2    # "next":Ljava/util/function/IntUnaryOperator;
    .local v4, "next":Ljava/util/function/IntUnaryOperator;
    .local v5, "seed":I
    .local v6, "hasNext":Ljava/util/function/IntPredicate;
    invoke-direct/range {v0 .. v6}, Lj$/util/stream/DesugarIntStream$1;-><init>(JILjava/util/function/IntUnaryOperator;ILjava/util/function/IntPredicate;)V

    .line 141
    .local v0, "spliterator":Ljava/util/Spliterator$OfInt;
    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method
