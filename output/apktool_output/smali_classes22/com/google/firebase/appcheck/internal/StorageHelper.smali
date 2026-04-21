.class public Lcom/google/firebase/appcheck/internal/StorageHelper;
.super Ljava/lang/Object;
.source "StorageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/appcheck/internal/StorageHelper$TokenType;
    }
.end annotation


# static fields
.field static final PREFS_TEMPLATE:Ljava/lang/String; = "com.google.firebase.appcheck.store.%s"

.field static final TOKEN_KEY:Ljava/lang/String; = "com.google.firebase.appcheck.APP_CHECK_TOKEN"

.field static final TOKEN_TYPE_KEY:Ljava/lang/String; = "com.google.firebase.appcheck.TOKEN_TYPE"

.field private static final logger:Lcom/google/firebase/appcheck/internal/util/Logger;


# instance fields
.field private sharedPreferences:Lcom/google/firebase/components/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/Lazy<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/google/firebase/appcheck/internal/util/Logger;

    const-class v1, Lcom/google/firebase/appcheck/internal/StorageHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/appcheck/internal/util/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/firebase/appcheck/internal/StorageHelper;->logger:Lcom/google/firebase/appcheck/internal/util/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "persistenceKey"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    const-string v0, "com.google.firebase.appcheck.store.%s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "prefsName":Ljava/lang/String;
    new-instance v1, Lcom/google/firebase/components/Lazy;

    new-instance v2, Lcom/google/firebase/appcheck/internal/StorageHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v0}, Lcom/google/firebase/appcheck/internal/StorageHelper$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/google/firebase/components/Lazy;-><init>(Lcom/google/firebase/inject/Provider;)V

    iput-object v1, p0, Lcom/google/firebase/appcheck/internal/StorageHelper;->sharedPreferences:Lcom/google/firebase/components/Lazy;

    .line 59
    return-void
.end method

.method static synthetic lambda$new$0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefsName"    # Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method clearSharedPrefs()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/StorageHelper;->sharedPreferences:Lcom/google/firebase/components/Lazy;

    invoke-virtual {v0}, Lcom/google/firebase/components/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.google.firebase.appcheck.APP_CHECK_TOKEN"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.google.firebase.appcheck.TOKEN_TYPE"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 109
    return-void
.end method

.method public retrieveAppCheckToken()Lcom/google/firebase/appcheck/AppCheckToken;
    .locals 7

    .line 81
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/StorageHelper;->sharedPreferences:Lcom/google/firebase/components/Lazy;

    invoke-virtual {v0}, Lcom/google/firebase/components/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "com.google.firebase.appcheck.TOKEN_TYPE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "tokenType":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/firebase/appcheck/internal/StorageHelper;->sharedPreferences:Lcom/google/firebase/components/Lazy;

    invoke-virtual {v1}, Lcom/google/firebase/components/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences;

    const-string v3, "com.google.firebase.appcheck.APP_CHECK_TOKEN"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "serializedToken":Ljava/lang/String;
    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_1

    .line 87
    :cond_0
    :try_start_0
    sget-object v3, Lcom/google/firebase/appcheck/internal/StorageHelper$1;->$SwitchMap$com$google$firebase$appcheck$internal$StorageHelper$TokenType:[I

    invoke-static {v0}, Lcom/google/firebase/appcheck/internal/StorageHelper$TokenType;->valueOf(Ljava/lang/String;)Lcom/google/firebase/appcheck/internal/StorageHelper$TokenType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/appcheck/internal/StorageHelper$TokenType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 101
    goto :goto_0

    .line 91
    :pswitch_0
    invoke-static {v1}, Lcom/google/firebase/appcheck/internal/DefaultAppCheckToken;->constructFromRawToken(Ljava/lang/String;)Lcom/google/firebase/appcheck/internal/DefaultAppCheckToken;

    move-result-object v2

    return-object v2

    .line 89
    :pswitch_1
    invoke-static {v1}, Lcom/google/firebase/appcheck/internal/DefaultAppCheckToken;->deserializeTokenFromJsonString(Ljava/lang/String;)Lcom/google/firebase/appcheck/internal/DefaultAppCheckToken;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 103
    :goto_0
    sget-object v3, Lcom/google/firebase/appcheck/internal/StorageHelper;->logger:Lcom/google/firebase/appcheck/internal/util/Logger;

    const-string v4, "Reached unreachable section in #retrieveAppCheckToken()"

    invoke-virtual {v3, v4}, Lcom/google/firebase/appcheck/internal/util/Logger;->e(Ljava/lang/String;)V

    .line 104
    return-object v2

    .line 93
    :catch_0
    move-exception v3

    .line 94
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    sget-object v4, Lcom/google/firebase/appcheck/internal/StorageHelper;->logger:Lcom/google/firebase/appcheck/internal/util/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse TokenType of stored token  with type ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] with exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 98
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 94
    invoke-virtual {v4, v5}, Lcom/google/firebase/appcheck/internal/util/Logger;->e(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/google/firebase/appcheck/internal/StorageHelper;->clearSharedPrefs()V

    .line 100
    return-object v2

    .line 84
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    :goto_1
    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public saveAppCheckToken(Lcom/google/firebase/appcheck/AppCheckToken;)V
    .locals 4
    .param p1, "appCheckToken"    # Lcom/google/firebase/appcheck/AppCheckToken;

    .line 62
    instance-of v0, p1, Lcom/google/firebase/appcheck/internal/DefaultAppCheckToken;

    .line 70
    iget-object v1, p0, Lcom/google/firebase/appcheck/internal/StorageHelper;->sharedPreferences:Lcom/google/firebase/components/Lazy;

    .line 62
    const-string v2, "com.google.firebase.appcheck.TOKEN_TYPE"

    const-string v3, "com.google.firebase.appcheck.APP_CHECK_TOKEN"

    if-eqz v0, :cond_0

    .line 63
    nop

    .line 64
    invoke-virtual {v1}, Lcom/google/firebase/components/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    .line 65
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/google/firebase/appcheck/internal/DefaultAppCheckToken;

    .line 66
    invoke-virtual {v1}, Lcom/google/firebase/appcheck/internal/DefaultAppCheckToken;->serializeTokenToString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/appcheck/internal/StorageHelper$TokenType;->DEFAULT_APP_CHECK_TOKEN:Lcom/google/firebase/appcheck/internal/StorageHelper$TokenType;

    .line 67
    invoke-virtual {v1}, Lcom/google/firebase/appcheck/internal/StorageHelper$TokenType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 68
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 70
    :cond_0
    nop

    .line 71
    invoke-virtual {v1}, Lcom/google/firebase/components/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    .line 72
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 73
    invoke-virtual {p1}, Lcom/google/firebase/appcheck/AppCheckToken;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/appcheck/internal/StorageHelper$TokenType;->UNKNOWN_APP_CHECK_TOKEN:Lcom/google/firebase/appcheck/internal/StorageHelper$TokenType;

    .line 74
    invoke-virtual {v1}, Lcom/google/firebase/appcheck/internal/StorageHelper$TokenType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 75
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 77
    :goto_0
    return-void
.end method
