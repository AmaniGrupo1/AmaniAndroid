.class final Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore$Companion;
.super Ljava/lang/Object;
.source "UserSessionDataStore.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0082\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0008R\u0017\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0008R\u0017\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0008R\u0017\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0008\u00a8\u0006\u0012"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore$Companion;",
        "",
        "<init>",
        "()V",
        "USER_ID_KEY",
        "Landroidx/datastore/preferences/core/Preferences$Key;",
        "",
        "getUSER_ID_KEY",
        "()Landroidx/datastore/preferences/core/Preferences$Key;",
        "USER_NAME_KEY",
        "",
        "getUSER_NAME_KEY",
        "USER_ROLE_KEY",
        "getUSER_ROLE_KEY",
        "PSYCHOLOGIST_ID_KEY",
        "getPSYCHOLOGIST_ID_KEY",
        "PATIENT_ID_KEY",
        "getPATIENT_ID_KEY",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPATIENT_ID_KEY()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 34
    invoke-static {}, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;->access$getPATIENT_ID_KEY$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method

.method public final getPSYCHOLOGIST_ID_KEY()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 32
    invoke-static {}, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;->access$getPSYCHOLOGIST_ID_KEY$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method

.method public final getUSER_ID_KEY()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 29
    invoke-static {}, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;->access$getUSER_ID_KEY$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method

.method public final getUSER_NAME_KEY()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 30
    invoke-static {}, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;->access$getUSER_NAME_KEY$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method

.method public final getUSER_ROLE_KEY()Landroidx/datastore/preferences/core/Preferences$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/core/Preferences$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 31
    invoke-static {}, Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;->access$getUSER_ROLE_KEY$cp()Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object v0

    return-object v0
.end method
