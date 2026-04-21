.class public final Lorg/ies/tierno/applicationamani/data/local/TokenDataStore;
.super Ljava/lang/Object;
.source "TokenDataStore.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ies/tierno/applicationamani/data/local/TokenDataStore$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTokenDataStore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TokenDataStore.kt\norg/ies/tierno/applicationamani/data/local/TokenDataStore\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,49:1\n49#2:50\n51#2:54\n49#2:55\n51#2:59\n46#3:51\n51#3:53\n46#3:56\n51#3:58\n105#4:52\n105#4:57\n*S KotlinDebug\n*F\n+ 1 TokenDataStore.kt\norg/ies/tierno/applicationamani/data/local/TokenDataStore\n*L\n25#1:50\n25#1:54\n45#1:55\n45#1:59\n25#1:51\n25#1:53\n45#1:56\n45#1:58\n25#1:52\n45#1:57\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0016\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0008H\u0086@\u00a2\u0006\u0002\u0010\u000eJ\u000e\u0010\u000f\u001a\u00020\u000cH\u0086@\u00a2\u0006\u0002\u0010\u0010J\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0008H\u0086@\u00a2\u0006\u0002\u0010\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0013"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/data/local/TokenDataStore;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "tokenFlow",
        "Lkotlinx/coroutines/flow/Flow;",
        "",
        "getTokenFlow",
        "()Lkotlinx/coroutines/flow/Flow;",
        "saveToken",
        "",
        "token",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "clearToken",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getToken",
        "Companion",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Lorg/ies/tierno/applicationamani/data/local/TokenDataStore$Companion;

.field private static final TOKEN_KEY:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;

.field private final tokenFlow:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ies/tierno/applicationamani/data/local/TokenDataStore$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ies/tierno/applicationamani/data/local/TokenDataStore$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ies/tierno/applicationamani/data/local/TokenDataStore;->Companion:Lorg/ies/tierno/applicationamani/data/local/TokenDataStore$Companion;

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/data/local/TokenDataStore;->$stable:I

    .line 20
    const-string v0, "jwt_token"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->stringKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lorg/ies/tierno/applicationamani/data/local/TokenDataStore;->TOKEN_KEY:Landroidx/datastore/preferences/core/Preferences$Key;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/data/local/TokenDataStore;->context:Landroid/content/Context;

    .line 25
    nop

    .line 24
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/data/local/TokenDataStore;->context:Landroid/content/Context;

    invoke-static {v0}, Lorg/ies/tierno/applicationamani/data/local/TokenDataStoreKt;->access$getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object v0

    invoke-interface {v0}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 25
    nop

    .local v0, "$this$map\\1":Lkotlinx/coroutines/flow/Flow;
    const/4 v1, 0x0

    .line 50
    .local v1, "$i$f$map\\1\\25":I
    move-object v2, v0

    .local v2, "$this$unsafeTransform\\2":Lkotlinx/coroutines/flow/Flow;
    const/4 v3, 0x0

    .line 51
    .local v3, "$i$f$unsafeTransform\\2\\50":I
    const/4 v4, 0x0

    .line 52
    .local v4, "$i$f$unsafeFlow\\3\\51":I
    new-instance v5, Lorg/ies/tierno/applicationamani/data/local/TokenDataStore$special$$inlined$map$1;

    invoke-direct {v5, v2}, Lorg/ies/tierno/applicationamani/data/local/TokenDataStore$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v5, Lkotlinx/coroutines/flow/Flow;

    .line 53
    .end local v4    # "$i$f$unsafeFlow\\3\\51":I
    nop

    .line 54
    .end local v2    # "$this$unsafeTransform\\2":Lkotlinx/coroutines/flow/Flow;
    .end local v3    # "$i$f$unsafeTransform\\2\\50":I
    nop

    .line 25
    .end local v0    # "$this$map\\1":Lkotlinx/coroutines/flow/Flow;
    .end local v1    # "$i$f$map\\1\\25":I
    iput-object v5, p0, Lorg/ies/tierno/applicationamani/data/local/TokenDataStore;->tokenFlow:Lkotlinx/coroutines/flow/Flow;

    .line 17
    return-void
.end method

.method public static final synthetic access$getTOKEN_KEY$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 17
    sget-object v0, Lorg/ies/tierno/applicationamani/data/local/TokenDataStore;->TOKEN_KEY:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method


# virtual methods
.method public final clearToken(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/data/local/TokenDataStore;->context:Landroid/content/Context;

    invoke-static {v0}, Lorg/ies/tierno/applicationamani/data/local/TokenDataStoreKt;->access$getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object v0

    new-instance v1, Lorg/ies/tierno/applicationamani/data/local/TokenDataStore$clearToken$2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/ies/tierno/applicationamani/data/local/TokenDataStore$clearToken$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 41
    return-object v0
.end method

.method public final getToken(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/data/local/TokenDataStore;->context:Landroid/content/Context;

    invoke-static {v0}, Lorg/ies/tierno/applicationamani/data/local/TokenDataStoreKt;->access$getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object v0

    invoke-interface {v0}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .local v0, "$this$map\\1":Lkotlinx/coroutines/flow/Flow;
    const/4 v1, 0x0

    .line 55
    .local v1, "$i$f$map\\1\\45":I
    move-object v2, v0

    .local v2, "$this$unsafeTransform\\2":Lkotlinx/coroutines/flow/Flow;
    const/4 v3, 0x0

    .line 56
    .local v3, "$i$f$unsafeTransform\\2\\55":I
    const/4 v4, 0x0

    .line 57
    .local v4, "$i$f$unsafeFlow\\3\\56":I
    new-instance v5, Lorg/ies/tierno/applicationamani/data/local/TokenDataStore$getToken$$inlined$map$1;

    invoke-direct {v5, v2}, Lorg/ies/tierno/applicationamani/data/local/TokenDataStore$getToken$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v5, Lkotlinx/coroutines/flow/Flow;

    .line 58
    .end local v4    # "$i$f$unsafeFlow\\3\\56":I
    nop

    .line 59
    .end local v2    # "$this$unsafeTransform\\2":Lkotlinx/coroutines/flow/Flow;
    .end local v3    # "$i$f$unsafeTransform\\2\\55":I
    nop

    .line 47
    .end local v0    # "$this$map\\1":Lkotlinx/coroutines/flow/Flow;
    .end local v1    # "$i$f$map\\1\\45":I
    invoke-static {v5, p1}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 45
    return-object v0
.end method

.method public final getTokenFlow()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/data/local/TokenDataStore;->tokenFlow:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final saveToken(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/data/local/TokenDataStore;->context:Landroid/content/Context;

    invoke-static {v0}, Lorg/ies/tierno/applicationamani/data/local/TokenDataStoreKt;->access$getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object v0

    new-instance v1, Lorg/ies/tierno/applicationamani/data/local/TokenDataStore$saveToken$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lorg/ies/tierno/applicationamani/data/local/TokenDataStore$saveToken$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 34
    return-object v0
.end method
