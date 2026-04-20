.class public final Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;
.super Ljava/lang/Object;
.source "UserSessionDataStore.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUserSessionDataStore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserSessionDataStore.kt\norg/ies/tierno/applicationamani/data/local/UserSessionDataStore\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,97:1\n49#2:98\n51#2:102\n46#3:99\n51#3:101\n105#4:100\n*S KotlinDebug\n*F\n+ 1 UserSessionDataStore.kt\norg/ies/tierno/applicationamani/data/local/UserSessionDataStore\n*L\n37#1:98\n37#1:102\n37#1:99\n37#1:101\n37#1:100\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0016\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0008H\u0086@\u00a2\u0006\u0002\u0010\u000eJ\u000e\u0010\u000f\u001a\u00020\u000cH\u0086@\u00a2\u0006\u0002\u0010\u0010J\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0008H\u0086@\u00a2\u0006\u0002\u0010\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0013"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "sessionFlow",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lorg/ies/tierno/applicationamani/data/local/UserSession;",
        "getSessionFlow",
        "()Lkotlinx/coroutines/flow/Flow;",
        "saveSession",
        "",
        "session",
        "(Lorg/ies/tierno/applicationamani/data/local/UserSession;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "clearSession",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getSession",
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

.field private static final Companion:Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore$Companion;

.field private static final PATIENT_ID_KEY:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final PSYCHOLOGIST_ID_KEY:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final USER_ID_KEY:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final USER_NAME_KEY:Landroidx/datastore/preferences/core/Preferences$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final USER_ROLE_KEY:Landroidx/datastore/preferences/core/Preferences$Key;
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

.field private final sessionFlow:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Lorg/ies/tierno/applicationamani/data/local/UserSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;->Companion:Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore$Companion;

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;->$stable:I

    .line 29
    const-string v0, "user_id"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->longKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;->USER_ID_KEY:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 30
    const-string v0, "user_name"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->stringKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;->USER_NAME_KEY:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 31
    const-string v0, "user_role"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->stringKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;->USER_ROLE_KEY:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 32
    const-string v0, "psychologist_id"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->longKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;->PSYCHOLOGIST_ID_KEY:Landroidx/datastore/preferences/core/Preferences$Key;

    .line 34
    const-string v0, "patient_id"

    invoke-static {v0}, Landroidx/datastore/preferences/core/PreferencesKeys;->longKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    sput-object v0, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;->PATIENT_ID_KEY:Landroidx/datastore/preferences/core/Preferences$Key;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;->context:Landroid/content/Context;

    .line 37
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;->context:Landroid/content/Context;

    invoke-static {v0}, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStoreKt;->access$getUserSessionDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object v0

    invoke-interface {v0}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .local v0, "$this$map\\1":Lkotlinx/coroutines/flow/Flow;
    const/4 v1, 0x0

    .line 98
    .local v1, "$i$f$map\\1\\37":I
    move-object v2, v0

    .local v2, "$this$unsafeTransform\\2":Lkotlinx/coroutines/flow/Flow;
    const/4 v3, 0x0

    .line 99
    .local v3, "$i$f$unsafeTransform\\2\\98":I
    const/4 v4, 0x0

    .line 100
    .local v4, "$i$f$unsafeFlow\\3\\99":I
    new-instance v5, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore$special$$inlined$map$1;

    invoke-direct {v5, v2}, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v5, Lkotlinx/coroutines/flow/Flow;

    .line 101
    .end local v4    # "$i$f$unsafeFlow\\3\\99":I
    nop

    .line 102
    .end local v2    # "$this$unsafeTransform\\2":Lkotlinx/coroutines/flow/Flow;
    .end local v3    # "$i$f$unsafeTransform\\2\\98":I
    nop

    .line 37
    .end local v0    # "$this$map\\1":Lkotlinx/coroutines/flow/Flow;
    .end local v1    # "$i$f$map\\1\\37":I
    iput-object v5, p0, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;->sessionFlow:Lkotlinx/coroutines/flow/Flow;

    .line 26
    return-void
.end method

.method public static final synthetic access$getCompanion$p()Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore$Companion;
    .locals 1

    .line 26
    sget-object v0, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;->Companion:Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore$Companion;

    return-object v0
.end method

.method public static final synthetic access$getPATIENT_ID_KEY$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 26
    sget-object v0, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;->PATIENT_ID_KEY:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getPSYCHOLOGIST_ID_KEY$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 26
    sget-object v0, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;->PSYCHOLOGIST_ID_KEY:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getUSER_ID_KEY$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 26
    sget-object v0, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;->USER_ID_KEY:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getUSER_NAME_KEY$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 26
    sget-object v0, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;->USER_NAME_KEY:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method

.method public static final synthetic access$getUSER_ROLE_KEY$cp()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1

    .line 26
    sget-object v0, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;->USER_ROLE_KEY:Landroidx/datastore/preferences/core/Preferences$Key;

    return-object v0
.end method


# virtual methods
.method public final clearSession(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    .line 90
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;->context:Landroid/content/Context;

    invoke-static {v0}, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStoreKt;->access$getUserSessionDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object v0

    new-instance v1, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore$clearSession$2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore$clearSession$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 93
    return-object v0
.end method

.method public final getSession(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/data/local/UserSession;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;->sessionFlow:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v0, p1}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getSessionFlow()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lorg/ies/tierno/applicationamani/data/local/UserSession;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;->sessionFlow:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final saveSession(Lorg/ies/tierno/applicationamani/data/local/UserSession;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "session"    # Lorg/ies/tierno/applicationamani/data/local/UserSession;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/data/local/UserSession;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;->context:Landroid/content/Context;

    invoke-static {v0}, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStoreKt;->access$getUserSessionDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object v0

    new-instance v1, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore$saveSession$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore$saveSession$2;-><init>(Lorg/ies/tierno/applicationamani/data/local/UserSession;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 87
    return-object v0
.end method
