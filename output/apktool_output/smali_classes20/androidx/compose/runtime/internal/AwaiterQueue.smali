.class public final Landroidx/compose/runtime/internal/AwaiterQueue;
.super Ljava/lang/Object;
.source "AwaiterQueue.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAwaiterQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AwaiterQueue.kt\nandroidx/compose/runtime/internal/AwaiterQueue\n+ 2 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 3 ObjectList.kt\nandroidx/collection/ObjectListKt\n+ 4 AwaiterQueue.kt\nandroidx/compose/runtime/internal/AtomicAwaitersCount\n+ 5 ObjectList.kt\nandroidx/collection/ObjectList\n*L\n1#1,191:1\n26#2,4:192\n33#2:200\n33#2:221\n33#2:232\n1516#3:196\n1516#3:197\n134#4:198\n179#4:199\n143#4,17:201\n179#4:218\n145#4:219\n176#4:220\n137#4:222\n153#4,5:223\n176#4:228\n158#4,2:229\n138#4:231\n137#4:239\n153#4,5:240\n176#4:245\n158#4,2:246\n138#4:248\n149#4,9:249\n176#4:258\n158#4,2:259\n150#4:261\n287#5,6:233\n*S KotlinDebug\n*F\n+ 1 AwaiterQueue.kt\nandroidx/compose/runtime/internal/AwaiterQueue\n*L\n35#1:192,4\n51#1:200\n79#1:221\n96#1:232\n38#1:196\n39#1:197\n46#1:198\n46#1:199\n58#1:201,17\n58#1:218\n58#1:219\n58#1:220\n86#1:222\n86#1:223,5\n86#1:228\n86#1:229,2\n86#1:231\n101#1:239\n101#1:240,5\n101#1:245\n101#1:246,2\n101#1:248\n74#1:249,9\n74#1:258\n74#1:259,2\n74#1:261\n99#1:233,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0003:\u0001!B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J#\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00028\u00002\u000e\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u0019\u00a2\u0006\u0002\u0010\u001bJ\u001a\u0010\u001c\u001a\u00020\u001a2\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u001a0\u001eJ\u000e\u0010\u001f\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020\nR\u0014\u0010\u0006\u001a\u00060\u0003j\u0002`\u0007X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0008R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\rR\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0011\u001a\u00020\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\""
    }
    d2 = {
        "Landroidx/compose/runtime/internal/AwaiterQueue;",
        "A",
        "Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;",
        "",
        "<init>",
        "()V",
        "lock",
        "Landroidx/compose/runtime/platform/SynchronizedObject;",
        "Ljava/lang/Object;",
        "failureCause",
        "",
        "pendingAwaitersCountUnlocked",
        "Landroidx/compose/runtime/internal/AtomicAwaitersCount;",
        "Landroidx/compose/runtime/internal/AtomicInt;",
        "awaiters",
        "Landroidx/collection/MutableObjectList;",
        "spareList",
        "hasAwaiters",
        "",
        "getHasAwaiters",
        "()Z",
        "addAwaiter",
        "Landroidx/compose/runtime/CancellationHandle;",
        "awaiter",
        "onFirstAwaiter",
        "Lkotlin/Function0;",
        "",
        "(Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/CancellationHandle;",
        "flushAndDispatchAwaiters",
        "resume",
        "Lkotlin/Function1;",
        "fail",
        "cause",
        "Awaiter",
        "runtime"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private awaiters:Landroidx/collection/MutableObjectList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableObjectList<",
            "TA;>;"
        }
    .end annotation
.end field

.field private failureCause:Ljava/lang/Throwable;

.field private final lock:Ljava/lang/Object;

.field private final pendingAwaitersCountUnlocked:Landroidx/compose/runtime/internal/AtomicInt;

.field private spareList:Landroidx/collection/MutableObjectList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableObjectList<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/runtime/internal/AwaiterQueue;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    nop

    .line 192
    nop

    .line 195
    const/4 v0, 0x0

    .line 192
    .local v0, "ref$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "$i$f$makeSynchronizedObject":I
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 35
    .end local v0    # "ref$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$makeSynchronizedObject":I
    iput-object v2, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->lock:Ljava/lang/Object;

    .line 37
    invoke-static {}, Landroidx/compose/runtime/internal/AtomicAwaitersCount;->constructor-impl()Landroidx/compose/runtime/internal/AtomicInt;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->pendingAwaitersCountUnlocked:Landroidx/compose/runtime/internal/AtomicInt;

    .line 38
    const/4 v0, 0x0

    .line 196
    .local v0, "$i$f$mutableObjectListOf":I
    new-instance v1, Landroidx/collection/MutableObjectList;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroidx/collection/MutableObjectList;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 38
    .end local v0    # "$i$f$mutableObjectListOf":I
    iput-object v1, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->awaiters:Landroidx/collection/MutableObjectList;

    .line 39
    const/4 v0, 0x0

    .line 197
    .restart local v0    # "$i$f$mutableObjectListOf":I
    new-instance v1, Landroidx/collection/MutableObjectList;

    invoke-direct {v1, v2, v3, v4}, Landroidx/collection/MutableObjectList;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 39
    .end local v0    # "$i$f$mutableObjectListOf":I
    iput-object v1, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->spareList:Landroidx/collection/MutableObjectList;

    .line 33
    return-void
.end method

.method static final addAwaiter$lambda$1(Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;Landroidx/compose/runtime/internal/AwaiterQueue;Lkotlin/jvm/internal/Ref$IntRef;)Lkotlin/Unit;
    .locals 13
    .param p0, "$awaiter"    # Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;
    .param p1, "this$0"    # Landroidx/compose/runtime/internal/AwaiterQueue;
    .param p2, "$awaitersVersion"    # Lkotlin/jvm/internal/Ref$IntRef;

    .line 73
    invoke-virtual {p0}, Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;->cancel()V

    .line 74
    iget-object v0, p1, Landroidx/compose/runtime/internal/AwaiterQueue;->pendingAwaitersCountUnlocked:Landroidx/compose/runtime/internal/AtomicInt;

    .local v0, "$v$c$androidx-compose-runtime-internal-AtomicAwaitersCount$-this$0$iv":Landroidx/compose/runtime/internal/AtomicInt;
    iget v1, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .local v1, "version$iv":I
    const/4 v2, 0x0

    .line 249
    .local v2, "$i$f$decrementCount-impl":I
    move-object v3, v0

    .local v3, "$v$c$androidx-compose-runtime-internal-AtomicAwaitersCount$-this$0$iv$iv":Landroidx/compose/runtime/internal/AtomicInt;
    const/4 v4, 0x0

    .line 253
    .local v4, "$i$f$update-impl":I
    const/4 v5, 0x0

    .line 254
    .local v5, "oldValue$iv$iv":I
    const/4 v6, 0x0

    .line 256
    .local v6, "newValue$iv$iv":I
    :cond_0
    invoke-virtual {v3}, Landroidx/compose/runtime/internal/AtomicInt;->get()I

    move-result v5

    .line 257
    move v7, v5

    .local v7, "value$iv":I
    const/4 v8, 0x0

    .line 249
    .local v8, "$i$a$-update-impl-AtomicAwaitersCount$decrementCount$1$iv":I
    move v9, v7

    .local v9, "$this$version$iv$iv":I
    move-object v10, v0

    .local v10, "$v$c$androidx-compose-runtime-internal-AtomicAwaitersCount$-this$0$iv$iv":Landroidx/compose/runtime/internal/AtomicInt;
    const/4 v11, 0x0

    .line 258
    .local v11, "$i$f$getVersion-impl":I
    ushr-int/lit8 v12, v9, 0x1b

    and-int/lit8 v9, v12, 0xf

    .line 249
    .end local v9    # "$this$version$iv$iv":I
    .end local v10    # "$v$c$androidx-compose-runtime-internal-AtomicAwaitersCount$-this$0$iv$iv":Landroidx/compose/runtime/internal/AtomicInt;
    .end local v11    # "$i$f$getVersion-impl":I
    if-ne v9, v1, :cond_1

    add-int/lit8 v9, v7, -0x1

    move v7, v9

    .line 257
    .end local v7    # "value$iv":I
    .end local v8    # "$i$a$-update-impl-AtomicAwaitersCount$decrementCount$1$iv":I
    :cond_1
    move v6, v7

    .line 259
    invoke-virtual {v3, v5, v6}, Landroidx/compose/runtime/internal/AtomicInt;->compareAndSet(II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 260
    nop

    .line 261
    .end local v3    # "$v$c$androidx-compose-runtime-internal-AtomicAwaitersCount$-this$0$iv$iv":Landroidx/compose/runtime/internal/AtomicInt;
    .end local v4    # "$i$f$update-impl":I
    .end local v5    # "oldValue$iv$iv":I
    .end local v6    # "newValue$iv$iv":I
    nop

    .line 75
    .end local v0    # "$v$c$androidx-compose-runtime-internal-AtomicAwaitersCount$-this$0$iv":Landroidx/compose/runtime/internal/AtomicInt;
    .end local v1    # "version$iv":I
    .end local v2    # "$i$f$decrementCount-impl":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public final addAwaiter(Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/CancellationHandle;
    .locals 17
    .param p1, "awaiter"    # Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;
    .param p2, "onFirstAwaiter"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/runtime/CancellationHandle;"
        }
    .end annotation

    .line 49
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    move-object v3, v0

    .local v3, "awaitersVersion":Lkotlin/jvm/internal/Ref$IntRef;
    const/4 v0, -0x1

    iput v0, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 50
    const/4 v4, 0x0

    .line 51
    .local v4, "hasNewAwaiters":Z
    iget-object v5, v1, Landroidx/compose/runtime/internal/AwaiterQueue;->lock:Ljava/lang/Object;

    .local v5, "lock$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 200
    .local v6, "$i$f$synchronized":I
    monitor-enter v5

    const/4 v0, 0x0

    .line 52
    .local v0, "$i$a$-synchronized-AwaiterQueue$addAwaiter$1":I
    :try_start_0
    iget-object v7, v1, Landroidx/compose/runtime/internal/AwaiterQueue;->failureCause:Ljava/lang/Throwable;

    .line 53
    .local v7, "cause":Ljava/lang/Throwable;
    if-eqz v7, :cond_0

    .line 54
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;->resumeWithException(Ljava/lang/Throwable;)V

    .line 55
    sget-object v8, Landroidx/compose/runtime/CancellationHandle;->Companion:Landroidx/compose/runtime/CancellationHandle$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/CancellationHandle$Companion;->getEmpty$runtime()Landroidx/compose/runtime/CancellationHandle;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 200
    .end local v0    # "$i$a$-synchronized-AwaiterQueue$addAwaiter$1":I
    .end local v5    # "lock$iv":Ljava/lang/Object;
    .end local v6    # "$i$f$synchronized":I
    .end local v7    # "cause":Ljava/lang/Throwable;
    monitor-exit v5

    return-object v8

    .line 57
    .restart local v0    # "$i$a$-synchronized-AwaiterQueue$addAwaiter$1":I
    .restart local v5    # "lock$iv":Ljava/lang/Object;
    .restart local v6    # "$i$f$synchronized":I
    .restart local v7    # "cause":Ljava/lang/Throwable;
    :cond_0
    nop

    .line 58
    :try_start_1
    iget-object v8, v1, Landroidx/compose/runtime/internal/AwaiterQueue;->pendingAwaitersCountUnlocked:Landroidx/compose/runtime/internal/AtomicInt;

    .local v8, "$v$c$androidx-compose-runtime-internal-AtomicAwaitersCount$-this$0$iv":Landroidx/compose/runtime/internal/AtomicInt;
    const/4 v9, 0x0

    .line 201
    .local v9, "$i$f$incrementCountAndGetVersion-impl":I
    move-object v10, v8

    .local v10, "$v$c$androidx-compose-runtime-internal-AtomicAwaitersCount$-this$0$iv$iv":Landroidx/compose/runtime/internal/AtomicInt;
    const/4 v11, 0x0

    .line 211
    .local v11, "$i$f$update-impl":I
    const/4 v12, 0x0

    .line 212
    .local v12, "oldValue$iv$iv":I
    const/4 v13, 0x0

    .line 214
    .local v13, "newValue$iv$iv":I
    :goto_0
    invoke-virtual {v10}, Landroidx/compose/runtime/internal/AtomicInt;->get()I

    move-result v14

    move v12, v14

    .line 215
    nop

    .local v14, "it$iv":I
    const/4 v15, 0x0

    .line 201
    .local v15, "$i$a$-update-impl-AtomicAwaitersCount$incrementCountAndGetVersion$newValue$1$iv":I
    move/from16 v16, v0

    .end local v0    # "$i$a$-synchronized-AwaiterQueue$addAwaiter$1":I
    .local v16, "$i$a$-synchronized-AwaiterQueue$addAwaiter$1":I
    const/4 v0, 0x1

    add-int/2addr v14, v0

    .line 215
    .end local v14    # "it$iv":I
    .end local v15    # "$i$a$-update-impl-AtomicAwaitersCount$incrementCountAndGetVersion$newValue$1$iv":I
    move v13, v14

    .line 216
    invoke-virtual {v10, v12, v13}, Landroidx/compose/runtime/internal/AtomicInt;->compareAndSet(II)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 217
    nop

    .line 201
    .end local v10    # "$v$c$androidx-compose-runtime-internal-AtomicAwaitersCount$-this$0$iv$iv":Landroidx/compose/runtime/internal/AtomicInt;
    .end local v11    # "$i$f$update-impl":I
    .end local v12    # "oldValue$iv$iv":I
    .end local v13    # "newValue$iv$iv":I
    nop

    .line 202
    .local v13, "newValue$iv":I
    move v10, v13

    .local v10, "$this$count$iv$iv":I
    move-object v11, v8

    .local v11, "$v$c$androidx-compose-runtime-internal-AtomicAwaitersCount$-this$0$iv$iv":Landroidx/compose/runtime/internal/AtomicInt;
    const/4 v12, 0x0

    .line 218
    .local v12, "$i$f$getCount-impl":I
    const v14, 0x7ffffff

    and-int/2addr v10, v14

    .line 202
    .end local v10    # "$this$count$iv$iv":I
    .end local v11    # "$v$c$androidx-compose-runtime-internal-AtomicAwaitersCount$-this$0$iv$iv":Landroidx/compose/runtime/internal/AtomicInt;
    .end local v12    # "$i$f$getCount-impl":I
    if-ne v10, v0, :cond_1

    const/4 v0, 0x0

    .line 59
    .local v0, "$i$a$-incrementCountAndGetVersion-impl-AwaiterQueue$addAwaiter$1$1":I
    const/4 v4, 0x1

    .line 202
    .end local v0    # "$i$a$-incrementCountAndGetVersion-impl-AwaiterQueue$addAwaiter$1$1":I
    nop

    .line 219
    :cond_1
    move v0, v13

    .local v0, "$this$version$iv$iv":I
    move-object v10, v8

    .local v10, "$v$c$androidx-compose-runtime-internal-AtomicAwaitersCount$-this$0$iv$iv":Landroidx/compose/runtime/internal/AtomicInt;
    const/4 v11, 0x0

    .line 220
    .local v11, "$i$f$getVersion-impl":I
    ushr-int/lit8 v12, v0, 0x1b

    and-int/lit8 v0, v12, 0xf

    .line 219
    .end local v0    # "$this$version$iv$iv":I
    .end local v10    # "$v$c$androidx-compose-runtime-internal-AtomicAwaitersCount$-this$0$iv$iv":Landroidx/compose/runtime/internal/AtomicInt;
    .end local v11    # "$i$f$getVersion-impl":I
    nop

    .line 57
    .end local v8    # "$v$c$androidx-compose-runtime-internal-AtomicAwaitersCount$-this$0$iv":Landroidx/compose/runtime/internal/AtomicInt;
    .end local v9    # "$i$f$incrementCountAndGetVersion-impl":I
    .end local v13    # "newValue$iv":I
    iput v0, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 61
    iget-object v0, v1, Landroidx/compose/runtime/internal/AwaiterQueue;->awaiters:Landroidx/collection/MutableObjectList;

    invoke-virtual {v0, v2}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 200
    .end local v7    # "cause":Ljava/lang/Throwable;
    .end local v16    # "$i$a$-synchronized-AwaiterQueue$addAwaiter$1":I
    monitor-exit v5

    .line 64
    .end local v5    # "lock$iv":Ljava/lang/Object;
    .end local v6    # "$i$f$synchronized":I
    if-eqz v4, :cond_2

    if-eqz p2, :cond_2

    .line 65
    nop

    .line 66
    :try_start_2
    invoke-interface/range {p2 .. p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 67
    :catchall_0
    move-exception v0

    .line 68
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/internal/AwaiterQueue;->fail(Ljava/lang/Throwable;)V

    .line 72
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    new-instance v0, Landroidx/compose/runtime/OneShotCancellationHandle;

    new-instance v5, Landroidx/compose/runtime/internal/AwaiterQueue$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2, v1, v3}, Landroidx/compose/runtime/internal/AwaiterQueue$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;Landroidx/compose/runtime/internal/AwaiterQueue;Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-direct {v0, v5}, Landroidx/compose/runtime/OneShotCancellationHandle;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Landroidx/compose/runtime/CancellationHandle;

    return-object v0

    .line 216
    .restart local v5    # "lock$iv":Ljava/lang/Object;
    .restart local v6    # "$i$f$synchronized":I
    .restart local v7    # "cause":Ljava/lang/Throwable;
    .restart local v8    # "$v$c$androidx-compose-runtime-internal-AtomicAwaitersCount$-this$0$iv":Landroidx/compose/runtime/internal/AtomicInt;
    .restart local v9    # "$i$f$incrementCountAndGetVersion-impl":I
    .restart local v10    # "$v$c$androidx-compose-runtime-internal-AtomicAwaitersCount$-this$0$iv$iv":Landroidx/compose/runtime/internal/AtomicInt;
    .local v11, "$i$f$update-impl":I
    .local v12, "oldValue$iv$iv":I
    .local v13, "newValue$iv$iv":I
    .restart local v16    # "$i$a$-synchronized-AwaiterQueue$addAwaiter$1":I
    :cond_3
    move/from16 v0, v16

    goto :goto_0

    .line 200
    .end local v7    # "cause":Ljava/lang/Throwable;
    .end local v8    # "$v$c$androidx-compose-runtime-internal-AtomicAwaitersCount$-this$0$iv":Landroidx/compose/runtime/internal/AtomicInt;
    .end local v9    # "$i$f$incrementCountAndGetVersion-impl":I
    .end local v10    # "$v$c$androidx-compose-runtime-internal-AtomicAwaitersCount$-this$0$iv$iv":Landroidx/compose/runtime/internal/AtomicInt;
    .end local v11    # "$i$f$update-impl":I
    .end local v12    # "oldValue$iv$iv":I
    .end local v13    # "newValue$iv$iv":I
    .end local v16    # "$i$a$-synchronized-AwaiterQueue$addAwaiter$1":I
    :catchall_1
    move-exception v0

    monitor-exit v5

    throw v0
.end method

.method public final fail(Ljava/lang/Throwable;)V
    .locals 17
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 96
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Landroidx/compose/runtime/internal/AwaiterQueue;->lock:Ljava/lang/Object;

    .local v3, "lock$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 232
    .local v4, "$i$f$synchronized":I
    monitor-enter v3

    const/4 v0, 0x0

    .line 97
    .local v0, "$i$a$-synchronized-AwaiterQueue$fail$1":I
    :try_start_0
    iget-object v5, v1, Landroidx/compose/runtime/internal/AwaiterQueue;->failureCause:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    .line 232
    .end local v0    # "$i$a$-synchronized-AwaiterQueue$fail$1":I
    .end local v3    # "lock$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$synchronized":I
    monitor-exit v3

    return-void

    .line 98
    .restart local v0    # "$i$a$-synchronized-AwaiterQueue$fail$1":I
    .restart local v3    # "lock$iv":Ljava/lang/Object;
    .restart local v4    # "$i$f$synchronized":I
    :cond_0
    :try_start_1
    iput-object v2, v1, Landroidx/compose/runtime/internal/AwaiterQueue;->failureCause:Ljava/lang/Throwable;

    .line 99
    iget-object v5, v1, Landroidx/compose/runtime/internal/AwaiterQueue;->awaiters:Landroidx/collection/MutableObjectList;

    check-cast v5, Landroidx/collection/ObjectList;

    .local v5, "this_$iv":Landroidx/collection/ObjectList;
    const/4 v6, 0x0

    .line 233
    .local v6, "$i$f$forEach":I
    nop

    .line 234
    iget-object v7, v5, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 235
    .local v7, "content$iv":[Ljava/lang/Object;
    const/4 v8, 0x0

    .local v8, "i$iv":I
    iget v9, v5, Landroidx/collection/ObjectList;->_size:I

    :goto_0
    if-ge v8, v9, :cond_1

    .line 236
    aget-object v10, v7, v8

    check-cast v10, Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;

    .local v10, "awaiter":Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;
    const/4 v11, 0x0

    .line 99
    .local v11, "$i$a$-forEach-AwaiterQueue$fail$1$1":I
    invoke-virtual {v10, v2}, Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;->resumeWithException(Ljava/lang/Throwable;)V

    .line 236
    .end local v10    # "awaiter":Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;
    .end local v11    # "$i$a$-forEach-AwaiterQueue$fail$1$1":I
    nop

    .line 235
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 238
    .end local v8    # "i$iv":I
    :cond_1
    nop

    .line 100
    .end local v5    # "this_$iv":Landroidx/collection/ObjectList;
    .end local v6    # "$i$f$forEach":I
    .end local v7    # "content$iv":[Ljava/lang/Object;
    iget-object v5, v1, Landroidx/compose/runtime/internal/AwaiterQueue;->awaiters:Landroidx/collection/MutableObjectList;

    invoke-virtual {v5}, Landroidx/collection/MutableObjectList;->clear()V

    .line 101
    iget-object v5, v1, Landroidx/compose/runtime/internal/AwaiterQueue;->pendingAwaitersCountUnlocked:Landroidx/compose/runtime/internal/AtomicInt;

    .local v5, "$v$c$androidx-compose-runtime-internal-AtomicAwaitersCount$-this$0$iv":Landroidx/compose/runtime/internal/AtomicInt;
    const/4 v6, 0x0

    .line 239
    .local v6, "$i$f$incrementVersionAndResetCount-impl":I
    move-object v7, v5

    .local v7, "$v$c$androidx-compose-runtime-internal-AtomicAwaitersCount$-this$0$iv$iv":Landroidx/compose/runtime/internal/AtomicInt;
    const/4 v8, 0x0

    .line 240
    .local v8, "$i$f$update-impl":I
    const/4 v9, 0x0

    .line 241
    .local v9, "oldValue$iv$iv":I
    const/4 v10, 0x0

    .line 243
    .local v10, "newValue$iv$iv":I
    :cond_2
    invoke-virtual {v7}, Landroidx/compose/runtime/internal/AtomicInt;->get()I

    move-result v11

    move v9, v11

    .line 244
    nop

    .local v11, "it$iv":I
    const/4 v12, 0x0

    .line 239
    .local v12, "$i$a$-update-impl-AtomicAwaitersCount$incrementVersionAndResetCount$1$iv":I
    move v13, v11

    .local v13, "$this$version$iv$iv":I
    move-object v14, v5

    .local v14, "$v$c$androidx-compose-runtime-internal-AtomicAwaitersCount$-this$0$iv$iv":Landroidx/compose/runtime/internal/AtomicInt;
    const/4 v15, 0x0

    .line 245
    .local v15, "$i$f$getVersion-impl":I
    ushr-int/lit8 v16, v13, 0x1b

    and-int/lit8 v13, v16, 0xf

    .line 239
    .end local v13    # "$this$version$iv$iv":I
    .end local v14    # "$v$c$androidx-compose-runtime-internal-AtomicAwaitersCount$-this$0$iv$iv":Landroidx/compose/runtime/internal/AtomicInt;
    .end local v15    # "$i$f$getVersion-impl":I
    add-int/lit8 v13, v13, 0x1

    const/4 v14, 0x0

    invoke-static {v5, v13, v14}, Landroidx/compose/runtime/internal/AtomicAwaitersCount;->access$pack-impl(Landroidx/compose/runtime/internal/AtomicInt;II)I

    move-result v13

    .line 244
    .end local v11    # "it$iv":I
    .end local v12    # "$i$a$-update-impl-AtomicAwaitersCount$incrementVersionAndResetCount$1$iv":I
    move v10, v13

    .line 246
    invoke-virtual {v7, v9, v10}, Landroidx/compose/runtime/internal/AtomicInt;->compareAndSet(II)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 247
    nop

    .line 248
    .end local v7    # "$v$c$androidx-compose-runtime-internal-AtomicAwaitersCount$-this$0$iv$iv":Landroidx/compose/runtime/internal/AtomicInt;
    .end local v8    # "$i$f$update-impl":I
    .end local v9    # "oldValue$iv$iv":I
    .end local v10    # "newValue$iv$iv":I
    nop

    .line 102
    .end local v5    # "$v$c$androidx-compose-runtime-internal-AtomicAwaitersCount$-this$0$iv":Landroidx/compose/runtime/internal/AtomicInt;
    .end local v6    # "$i$f$incrementVersionAndResetCount-impl":I
    nop

    .end local v0    # "$i$a$-synchronized-AwaiterQueue$fail$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    monitor-exit v3

    .line 103
    .end local v3    # "lock$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$synchronized":I
    return-void

    .line 232
    .restart local v3    # "lock$iv":Ljava/lang/Object;
    .restart local v4    # "$i$f$synchronized":I
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public final flushAndDispatchAwaiters(Lkotlin/jvm/functions/Function1;)V
    .locals 17
    .param p1, "resume"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TA;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 79
    move-object/from16 v1, p0

    iget-object v2, v1, Landroidx/compose/runtime/internal/AwaiterQueue;->lock:Ljava/lang/Object;

    .local v2, "lock$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 221
    .local v3, "$i$f$synchronized":I
    monitor-enter v2

    const/4 v0, 0x0

    .line 83
    .local v0, "$i$a$-synchronized-AwaiterQueue$flushAndDispatchAwaiters$1":I
    :try_start_0
    iget-object v4, v1, Landroidx/compose/runtime/internal/AwaiterQueue;->awaiters:Landroidx/collection/MutableObjectList;

    .line 84
    .local v4, "toResume":Landroidx/collection/MutableObjectList;
    iget-object v5, v1, Landroidx/compose/runtime/internal/AwaiterQueue;->spareList:Landroidx/collection/MutableObjectList;

    iput-object v5, v1, Landroidx/compose/runtime/internal/AwaiterQueue;->awaiters:Landroidx/collection/MutableObjectList;

    .line 85
    iput-object v4, v1, Landroidx/compose/runtime/internal/AwaiterQueue;->spareList:Landroidx/collection/MutableObjectList;

    .line 86
    iget-object v5, v1, Landroidx/compose/runtime/internal/AwaiterQueue;->pendingAwaitersCountUnlocked:Landroidx/compose/runtime/internal/AtomicInt;

    .local v5, "$v$c$androidx-compose-runtime-internal-AtomicAwaitersCount$-this$0$iv":Landroidx/compose/runtime/internal/AtomicInt;
    const/4 v6, 0x0

    .line 222
    .local v6, "$i$f$incrementVersionAndResetCount-impl":I
    move-object v7, v5

    .local v7, "$v$c$androidx-compose-runtime-internal-AtomicAwaitersCount$-this$0$iv$iv":Landroidx/compose/runtime/internal/AtomicInt;
    const/4 v8, 0x0

    .line 223
    .local v8, "$i$f$update-impl":I
    const/4 v9, 0x0

    .line 224
    .local v9, "oldValue$iv$iv":I
    const/4 v10, 0x0

    .line 226
    .local v10, "newValue$iv$iv":I
    :goto_0
    invoke-virtual {v7}, Landroidx/compose/runtime/internal/AtomicInt;->get()I

    move-result v11

    move v9, v11

    .line 227
    nop

    .local v11, "it$iv":I
    const/4 v12, 0x0

    .line 222
    .local v12, "$i$a$-update-impl-AtomicAwaitersCount$incrementVersionAndResetCount$1$iv":I
    move v13, v11

    .local v13, "$this$version$iv$iv":I
    move-object v14, v5

    .local v14, "$v$c$androidx-compose-runtime-internal-AtomicAwaitersCount$-this$0$iv$iv":Landroidx/compose/runtime/internal/AtomicInt;
    const/4 v15, 0x0

    .line 228
    .local v15, "$i$f$getVersion-impl":I
    ushr-int/lit8 v16, v13, 0x1b

    and-int/lit8 v13, v16, 0xf

    .line 222
    .end local v13    # "$this$version$iv$iv":I
    .end local v14    # "$v$c$androidx-compose-runtime-internal-AtomicAwaitersCount$-this$0$iv$iv":Landroidx/compose/runtime/internal/AtomicInt;
    .end local v15    # "$i$f$getVersion-impl":I
    add-int/lit8 v13, v13, 0x1

    const/4 v14, 0x0

    invoke-static {v5, v13, v14}, Landroidx/compose/runtime/internal/AtomicAwaitersCount;->access$pack-impl(Landroidx/compose/runtime/internal/AtomicInt;II)I

    move-result v13

    .line 227
    .end local v11    # "it$iv":I
    .end local v12    # "$i$a$-update-impl-AtomicAwaitersCount$incrementVersionAndResetCount$1$iv":I
    move v10, v13

    .line 229
    invoke-virtual {v7, v9, v10}, Landroidx/compose/runtime/internal/AtomicInt;->compareAndSet(II)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 230
    nop

    .line 231
    .end local v7    # "$v$c$androidx-compose-runtime-internal-AtomicAwaitersCount$-this$0$iv$iv":Landroidx/compose/runtime/internal/AtomicInt;
    .end local v8    # "$i$f$update-impl":I
    .end local v9    # "oldValue$iv$iv":I
    .end local v10    # "newValue$iv$iv":I
    nop

    .line 88
    .end local v5    # "$v$c$androidx-compose-runtime-internal-AtomicAwaitersCount$-this$0$iv":Landroidx/compose/runtime/internal/AtomicInt;
    .end local v6    # "$i$f$incrementVersionAndResetCount-impl":I
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-virtual {v4}, Landroidx/collection/MutableObjectList;->getSize()I

    move-result v6

    :goto_1
    if-ge v5, v6, :cond_0

    .line 89
    invoke-virtual {v4, v5}, Landroidx/collection/MutableObjectList;->get(I)Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v11, p1

    :try_start_1
    invoke-interface {v11, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v11, p1

    .line 91
    .end local v5    # "i":I
    invoke-virtual {v4}, Landroidx/collection/MutableObjectList;->clear()V

    .line 92
    nop

    .end local v0    # "$i$a$-synchronized-AwaiterQueue$flushAndDispatchAwaiters$1":I
    .end local v4    # "toResume":Landroidx/collection/MutableObjectList;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    monitor-exit v2

    .line 93
    .end local v2    # "lock$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$synchronized":I
    return-void

    .line 221
    .restart local v2    # "lock$iv":Ljava/lang/Object;
    .restart local v3    # "$i$f$synchronized":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 229
    .restart local v0    # "$i$a$-synchronized-AwaiterQueue$flushAndDispatchAwaiters$1":I
    .restart local v4    # "toResume":Landroidx/collection/MutableObjectList;
    .local v5, "$v$c$androidx-compose-runtime-internal-AtomicAwaitersCount$-this$0$iv":Landroidx/compose/runtime/internal/AtomicInt;
    .restart local v6    # "$i$f$incrementVersionAndResetCount-impl":I
    .restart local v7    # "$v$c$androidx-compose-runtime-internal-AtomicAwaitersCount$-this$0$iv$iv":Landroidx/compose/runtime/internal/AtomicInt;
    .restart local v8    # "$i$f$update-impl":I
    .restart local v9    # "oldValue$iv$iv":I
    .restart local v10    # "newValue$iv$iv":I
    :cond_1
    move-object/from16 v11, p1

    goto :goto_0

    .line 221
    .end local v0    # "$i$a$-synchronized-AwaiterQueue$flushAndDispatchAwaiters$1":I
    .end local v4    # "toResume":Landroidx/collection/MutableObjectList;
    .end local v5    # "$v$c$androidx-compose-runtime-internal-AtomicAwaitersCount$-this$0$iv":Landroidx/compose/runtime/internal/AtomicInt;
    .end local v6    # "$i$f$incrementVersionAndResetCount-impl":I
    .end local v7    # "$v$c$androidx-compose-runtime-internal-AtomicAwaitersCount$-this$0$iv$iv":Landroidx/compose/runtime/internal/AtomicInt;
    .end local v8    # "$i$f$update-impl":I
    .end local v9    # "oldValue$iv$iv":I
    .end local v10    # "newValue$iv$iv":I
    :catchall_1
    move-exception v0

    move-object/from16 v11, p1

    :goto_2
    monitor-exit v2

    throw v0
.end method

.method public final getHasAwaiters()Z
    .locals 6

    .line 46
    iget-object v0, p0, Landroidx/compose/runtime/internal/AwaiterQueue;->pendingAwaitersCountUnlocked:Landroidx/compose/runtime/internal/AtomicInt;

    .local v0, "$v$c$androidx-compose-runtime-internal-AtomicAwaitersCount$-this$0$iv":Landroidx/compose/runtime/internal/AtomicInt;
    const/4 v1, 0x0

    .line 198
    .local v1, "$i$f$hasAwaiters-impl":I
    invoke-virtual {v0}, Landroidx/compose/runtime/internal/AtomicInt;->get()I

    move-result v2

    .local v2, "$this$count$iv$iv":I
    move-object v3, v0

    .local v3, "$v$c$androidx-compose-runtime-internal-AtomicAwaitersCount$-this$0$iv$iv":Landroidx/compose/runtime/internal/AtomicInt;
    const/4 v4, 0x0

    .line 199
    .local v4, "$i$f$getCount-impl":I
    const v5, 0x7ffffff

    and-int/2addr v2, v5

    .line 198
    .end local v2    # "$this$count$iv$iv":I
    .end local v3    # "$v$c$androidx-compose-runtime-internal-AtomicAwaitersCount$-this$0$iv$iv":Landroidx/compose/runtime/internal/AtomicInt;
    .end local v4    # "$i$f$getCount-impl":I
    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 46
    .end local v0    # "$v$c$androidx-compose-runtime-internal-AtomicAwaitersCount$-this$0$iv":Landroidx/compose/runtime/internal/AtomicInt;
    .end local v1    # "$i$f$hasAwaiters-impl":I
    :goto_0
    return v2
.end method
