.class public final Lj$/util/stream/DesugarDoubleStream;
.super Ljava/lang/Object;
.source "DesugarDoubleStream.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static iterate(DLjava/util/function/DoublePredicate;Ljava/util/function/DoubleUnaryOperator;)Ljava/util/stream/DoubleStream;
    .locals 8
    .param p0, "seed"    # D
    .param p2, "hasNext"    # Ljava/util/function/DoublePredicate;
    .param p3, "next"    # Ljava/util/function/DoubleUnaryOperator;

    .line 101
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v0, Lj$/util/stream/DesugarDoubleStream$1;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x510

    move-wide v5, p0

    move-object v7, p2

    move-object v4, p3

    .end local p0    # "seed":D
    .end local p2    # "hasNext":Ljava/util/function/DoublePredicate;
    .end local p3    # "next":Ljava/util/function/DoubleUnaryOperator;
    .local v4, "next":Ljava/util/function/DoubleUnaryOperator;
    .local v5, "seed":D
    .local v7, "hasNext":Ljava/util/function/DoublePredicate;
    invoke-direct/range {v0 .. v7}, Lj$/util/stream/DesugarDoubleStream$1;-><init>(JILjava/util/function/DoubleUnaryOperator;DLjava/util/function/DoublePredicate;)V

    .line 141
    .local v0, "spliterator":Ljava/util/Spliterator$OfDouble;
    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object p0

    return-object p0
.end method
