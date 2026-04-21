.class public final Landroidx/compose/foundation/text/BasicSecureTextField_androidKt$DefaultContentResolverForSecureTextField$1$1;
.super Ljava/lang/Object;
.source "BasicSecureTextField.android.kt"

# interfaces
.implements Landroidx/compose/foundation/text/ContentResolverForSecureTextField;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/text/BasicSecureTextField_androidKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH\u0016R\u0014\u0010\u000b\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "androidx/compose/foundation/text/BasicSecureTextField_androidKt$DefaultContentResolverForSecureTextField$1$1",
        "Landroidx/compose/foundation/text/ContentResolverForSecureTextField;",
        "registerContentObserver",
        "",
        "uri",
        "Landroid/net/Uri;",
        "notifyForDescendants",
        "",
        "observer",
        "Landroid/database/ContentObserver;",
        "unregisterContentObserver",
        "showPassword",
        "getShowPassword",
        "()Z",
        "foundation"
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
.field final synthetic $contentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "$contentResolver"    # Landroid/content/ContentResolver;

    iput-object p1, p0, Landroidx/compose/foundation/text/BasicSecureTextField_androidKt$DefaultContentResolverForSecureTextField$1$1;->$contentResolver:Landroid/content/ContentResolver;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getShowPassword()Z
    .locals 5

    .line 90
    nop

    .line 91
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Landroidx/compose/foundation/text/BasicSecureTextField_androidKt$DefaultContentResolverForSecureTextField$1$1;->$contentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "show_password"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Failed to fetch show password setting, using value: true"

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    const-string v4, "BasicSecureTextField"

    invoke-static {v4, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    nop

    .line 95
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "notifyForDescendants"    # Z
    .param p3, "observer"    # Landroid/database/ContentObserver;

    .line 83
    iget-object v0, p0, Landroidx/compose/foundation/text/BasicSecureTextField_androidKt$DefaultContentResolverForSecureTextField$1$1;->$contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .line 86
    iget-object v0, p0, Landroidx/compose/foundation/text/BasicSecureTextField_androidKt$DefaultContentResolverForSecureTextField$1$1;->$contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
