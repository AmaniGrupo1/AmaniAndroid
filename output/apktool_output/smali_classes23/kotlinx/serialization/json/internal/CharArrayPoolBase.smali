.class public Lkotlinx/serialization/json/internal/CharArrayPoolBase;
.super Ljava/lang/Object;
.source "ArrayPools.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArrayPools.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArrayPools.kt\nkotlinx/serialization/json/internal/CharArrayPoolBase\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,90:1\n1#2:91\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0019\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0010\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0008H\u0004J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0006H\u0004R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/CharArrayPoolBase;",
        "",
        "<init>",
        "()V",
        "arrays",
        "Lkotlin/collections/ArrayDeque;",
        "",
        "charsTotal",
        "",
        "take",
        "size",
        "releaseImpl",
        "",
        "array",
        "kotlinx-serialization-json"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final arrays:Lkotlin/collections/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/ArrayDeque<",
            "[C>;"
        }
    .end annotation
.end field

.field private charsTotal:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lkotlin/collections/ArrayDeque;

    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object v0, p0, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->arrays:Lkotlin/collections/ArrayDeque;

    .line 14
    return-void
.end method


# virtual methods
.method protected final releaseImpl([C)V
    .locals 3
    .param p1, "array"    # [C

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    monitor-enter p0

    const/4 v0, 0x0

    .line 30
    .local v0, "$i$a$-synchronized-CharArrayPoolBase$releaseImpl$1":I
    :try_start_0
    iget v1, p0, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->charsTotal:I

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {}, Lkotlinx/serialization/json/internal/ArrayPoolsKt;->access$getMAX_CHARS_IN_POOL$p()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 31
    iget v1, p0, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->charsTotal:I

    array-length v2, p1

    add-int/2addr v1, v2

    iput v1, p0, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->charsTotal:I

    .line 32
    iget-object v1, p0, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->arrays:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v1, p1}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 33
    nop

    .end local v0    # "$i$a$-synchronized-CharArrayPoolBase$releaseImpl$1":I
    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p0

    .line 33
    return-void

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final take(I)[C
    .locals 6
    .param p1, "size"    # I

    .line 23
    monitor-enter p0

    const/4 v0, 0x0

    .line 24
    .local v0, "$i$a$-synchronized-CharArrayPoolBase$take$candidate$1":I
    :try_start_0
    iget-object v1, p0, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->arrays:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->removeLastOrNull()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    if-eqz v1, :cond_0

    move-object v2, v1

    .line 91
    .local v2, "it":[C
    const/4 v3, 0x0

    .line 24
    .local v3, "$i$a$-also-CharArrayPoolBase$take$candidate$1$1":I
    iget v4, p0, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->charsTotal:I

    array-length v5, v2

    sub-int/2addr v4, v5

    iput v4, p0, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->charsTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "it":[C
    .end local v3    # "$i$a$-also-CharArrayPoolBase$take$candidate$1$1":I
    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 23
    .end local v0    # "$i$a$-synchronized-CharArrayPoolBase$take$candidate$1":I
    :goto_0
    monitor-exit p0

    .line 26
    .local v1, "candidate":[C
    if-nez v1, :cond_1

    new-array v0, p1, [C

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    return-object v0

    .line 23
    .end local v1    # "candidate":[C
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
