.class public final Lorg/koin/core/module/dsl/ScopeViewModelOfKt$viewModelOf$1;
.super Ljava/lang/Object;
.source "ScopeViewModelOf.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/core/module/dsl/ScopeViewModelOfKt;->viewModelOf(Lorg/koin/dsl/ScopeDSL;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Lorg/koin/core/definition/KoinDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Lorg/koin/core/scope/Scope;",
        "Lorg/koin/core/parameter/ParametersHolder;",
        "TR;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScopeViewModelOf.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScopeViewModelOf.kt\norg/koin/core/module/dsl/ScopeViewModelOfKt$viewModelOf$1\n+ 2 New.kt\norg/koin/core/module/dsl/NewKt\n*L\n1#1,220:1\n36#2:221\n*S KotlinDebug\n*F\n+ 1 ScopeViewModelOf.kt\norg/koin/core/module/dsl/ScopeViewModelOfKt$viewModelOf$1\n*L\n44#1:221\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0xb0
.end annotation


# instance fields
.field final synthetic $constructor:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/koin/core/module/dsl/ScopeViewModelOfKt$viewModelOf$1;->$constructor:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Landroidx/lifecycle/ViewModel;
    .locals 3
    .param p1, "$this$viewModel"    # Lorg/koin/core/scope/Scope;
    .param p2, "it"    # Lorg/koin/core/parameter/ParametersHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/scope/Scope;",
            "Lorg/koin/core/parameter/ParametersHolder;",
            ")TR;"
        }
    .end annotation

    const-string v0, "$this$viewModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lorg/koin/core/module/dsl/ScopeViewModelOfKt$viewModelOf$1;->$constructor:Lkotlin/jvm/functions/Function0;

    .local v0, "constructor$iv":Lkotlin/jvm/functions/Function0;
    move-object v1, p1

    .local v1, "$this$new$iv":Lorg/koin/core/scope/Scope;
    const/4 v2, 0x0

    .line 221
    .local v2, "$i$f$new":I
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "constructor$iv":Lkotlin/jvm/functions/Function0;
    .end local v1    # "$this$new$iv":Lorg/koin/core/scope/Scope;
    .end local v2    # "$i$f$new":I
    check-cast v0, Landroidx/lifecycle/ViewModel;

    .line 44
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 44
    move-object v0, p1

    check-cast v0, Lorg/koin/core/scope/Scope;

    move-object v1, p2

    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, v0, v1}, Lorg/koin/core/module/dsl/ScopeViewModelOfKt$viewModelOf$1;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    return-object v0
.end method
