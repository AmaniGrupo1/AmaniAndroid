.class public final Lj$/util/stream/DesugarLongStream;
.super Ljava/lang/Object;
.source "DesugarLongStream.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static iterate(JLjava/util/function/LongPredicate;Ljava/util/function/LongUnaryOperator;)Ljava/util/stream/LongStream;
    .locals 8
    .param p0, "seed"    # J
    .param p2, "hasNext"    # Ljava/util/function/LongPredicate;
    .param p3, "next"    # Ljava/util/function/LongUnaryOperator;

    .line 101
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v0, Lj$/util/stream/DesugarLongStream$1;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x510

    move-wide v5, p0

    move-object v7, p2

    move-object v4, p3

    .end local p0    # "seed":J
    .end local p2    # "hasNext":Ljava/util/function/LongPredicate;
    .end local p3    # "next":Ljava/util/function/LongUnaryOperator;
    .local v4, "next":Ljava/util/function/LongUnaryOperator;
    .local v5, "seed":J
    .local v7, "hasNext":Ljava/util/function/LongPredicate;
    invoke-direct/range {v0 .. v7}, Lj$/util/stream/DesugarLongStream$1;-><init>(JILjava/util/function/LongUnaryOperator;JLjava/util/function/LongPredicate;)V

    .line 141
    .local v0, "spliterator":Ljava/util/Spliterator$OfLong;
    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object p0

    return-object p0
.end method
