.class public final Lorg/koin/androidx/scope/ScopeHandlerViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "ScopeHandlerViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScopeHandlerViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScopeHandlerViewModel.kt\norg/koin/androidx/scope/ScopeHandlerViewModel\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,39:1\n66#2:40\n*S KotlinDebug\n*F\n+ 1 ScopeHandlerViewModel.kt\norg/koin/androidx/scope/ScopeHandlerViewModel\n*L\n32#1:40\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u000bH\u0014R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lorg/koin/androidx/scope/ScopeHandlerViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "<init>",
        "()V",
        "scope",
        "Lorg/koin/core/scope/Scope;",
        "getScope",
        "()Lorg/koin/core/scope/Scope;",
        "setScope",
        "(Lorg/koin/core/scope/Scope;)V",
        "onCleared",
        "",
        "koin-android_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private scope:Lorg/koin/core/scope/Scope;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    return-void
.end method


# virtual methods
.method public final getScope()Lorg/koin/core/scope/Scope;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/koin/androidx/scope/ScopeHandlerViewModel;->scope:Lorg/koin/core/scope/Scope;

    return-object v0
.end method

.method protected onCleared()V
    .locals 5

    .line 30
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 31
    iget-object v0, p0, Lorg/koin/androidx/scope/ScopeHandlerViewModel;->scope:Lorg/koin/core/scope/Scope;

    if-eqz v0, :cond_1

    .local v0, "$this$onCleared_u24lambda_u240":Lorg/koin/core/scope/Scope;
    const/4 v1, 0x0

    .line 32
    .local v1, "$i$a$-apply-ScopeHandlerViewModel$onCleared$1":I
    move-object v2, v0

    .local v2, "this_$iv":Lorg/koin/core/scope/Scope;
    const/4 v3, 0x0

    .line 40
    .local v3, "$i$f$isNotClosed":I
    invoke-virtual {v2}, Lorg/koin/core/scope/Scope;->getClosed()Z

    move-result v4

    .line 32
    .end local v2    # "this_$iv":Lorg/koin/core/scope/Scope;
    .end local v3    # "$i$f$isNotClosed":I
    if-nez v4, :cond_0

    .line 33
    invoke-virtual {v0}, Lorg/koin/core/scope/Scope;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Closing scope "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/koin/androidx/scope/ScopeHandlerViewModel;->scope:Lorg/koin/core/scope/Scope;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/koin/core/logger/Logger;->debug(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Lorg/koin/core/scope/Scope;->close()V

    .line 36
    :cond_0
    nop

    .line 31
    .end local v0    # "$this$onCleared_u24lambda_u240":Lorg/koin/core/scope/Scope;
    .end local v1    # "$i$a$-apply-ScopeHandlerViewModel$onCleared$1":I
    nop

    .line 37
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/koin/androidx/scope/ScopeHandlerViewModel;->scope:Lorg/koin/core/scope/Scope;

    .line 38
    return-void
.end method

.method public final setScope(Lorg/koin/core/scope/Scope;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/koin/core/scope/Scope;

    .line 27
    iput-object p1, p0, Lorg/koin/androidx/scope/ScopeHandlerViewModel;->scope:Lorg/koin/core/scope/Scope;

    return-void
.end method
