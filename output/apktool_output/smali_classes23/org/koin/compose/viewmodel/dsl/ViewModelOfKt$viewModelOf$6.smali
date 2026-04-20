.class public final Lorg/koin/compose/viewmodel/dsl/ViewModelOfKt$viewModelOf$6;
.super Ljava/lang/Object;
.source "ViewModelOf.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/compose/viewmodel/dsl/ViewModelOfKt;->viewModelOf(Lorg/koin/core/module/Module;Lkotlin/jvm/functions/Function5;Lkotlin/jvm/functions/Function1;)Lorg/koin/core/definition/KoinDefinition;
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
    value = "SMAP\nViewModelOf.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewModelOf.kt\norg/koin/compose/viewmodel/dsl/ViewModelOfKt$viewModelOf$6\n+ 2 New.kt\norg/koin/core/module/dsl/NewKt\n+ 3 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,249:1\n71#2:250\n149#3,5:251\n*S KotlinDebug\n*F\n+ 1 ViewModelOf.kt\norg/koin/compose/viewmodel/dsl/ViewModelOfKt$viewModelOf$6\n*L\n95#1:250\n95#1:251,5\n*E\n"
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
.field final synthetic $constructor:Lkotlin/jvm/functions/Function5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function5<",
            "TT1;TT2;TT3;TT4;TT5;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function5<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/koin/compose/viewmodel/dsl/ViewModelOfKt$viewModelOf$6;->$constructor:Lkotlin/jvm/functions/Function5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Landroidx/lifecycle/ViewModel;
    .locals 13
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

    .line 95
    iget-object v1, p0, Lorg/koin/compose/viewmodel/dsl/ViewModelOfKt$viewModelOf$6;->$constructor:Lkotlin/jvm/functions/Function5;

    .local v1, "constructor$iv":Lkotlin/jvm/functions/Function5;
    move-object v0, p1

    .local v0, "$this$new$iv":Lorg/koin/core/scope/Scope;
    const/4 v7, 0x0

    .line 250
    .local v7, "$i$f$new":I
    move-object v2, v0

    .line 251
    .local v2, "$this$iv$iv":Lorg/koin/core/scope/Scope;
    nop

    .line 252
    const/4 v3, 0x0

    .line 251
    .local v3, "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 253
    const/4 v4, 0x0

    .line 251
    .local v4, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v5, 0x0

    .line 255
    .local v5, "$i$f$get":I
    const-string v6, "T1"

    const/4 v8, 0x4

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v6, Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-virtual {v2, v6, v3, v4}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v2

    .line 250
    .end local v2    # "$this$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v3    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v4    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v5    # "$i$f$get":I
    move-object v3, v0

    .line 251
    .local v3, "$this$iv$iv":Lorg/koin/core/scope/Scope;
    nop

    .line 252
    const/4 v4, 0x0

    .line 251
    .local v4, "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 253
    const/4 v5, 0x0

    .line 251
    .local v5, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 255
    .local v6, "$i$f$get":I
    const-string v9, "T2"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v9, Ljava/lang/Object;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-virtual {v3, v9, v4, v5}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v3

    .line 250
    .end local v3    # "$this$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v4    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v5    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v6    # "$i$f$get":I
    move-object v4, v0

    .line 251
    .local v4, "$this$iv$iv":Lorg/koin/core/scope/Scope;
    nop

    .line 252
    const/4 v5, 0x0

    .line 251
    .local v5, "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 253
    const/4 v6, 0x0

    .line 251
    .local v6, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v9, 0x0

    .line 255
    .local v9, "$i$f$get":I
    const-string v10, "T3"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v10, Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-virtual {v4, v10, v5, v6}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v4

    .line 250
    .end local v4    # "$this$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v5    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v6    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v9    # "$i$f$get":I
    move-object v5, v0

    .line 251
    .local v5, "$this$iv$iv":Lorg/koin/core/scope/Scope;
    nop

    .line 252
    const/4 v6, 0x0

    .line 251
    .local v6, "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 253
    const/4 v9, 0x0

    .line 251
    .local v9, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v10, 0x0

    .line 255
    .local v10, "$i$f$get":I
    const-string v11, "T4"

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v11, Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-virtual {v5, v11, v6, v9}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v5

    .line 250
    .end local v5    # "$this$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v6    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v9    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v10    # "$i$f$get":I
    move-object v6, v0

    .line 251
    .local v6, "$this$iv$iv":Lorg/koin/core/scope/Scope;
    nop

    .line 252
    const/4 v9, 0x0

    .line 251
    .local v9, "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 253
    const/4 v10, 0x0

    .line 251
    .local v10, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v11, 0x0

    .line 255
    .local v11, "$i$f$get":I
    const-string v12, "T5"

    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v8, Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-virtual {v6, v8, v9, v10}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v6

    .line 250
    .end local v6    # "$this$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v9    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v10    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v11    # "$i$f$get":I
    invoke-interface/range {v1 .. v6}, Lkotlin/jvm/functions/Function5;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$new$iv":Lorg/koin/core/scope/Scope;
    .end local v1    # "constructor$iv":Lkotlin/jvm/functions/Function5;
    .end local v7    # "$i$f$new":I
    check-cast v0, Landroidx/lifecycle/ViewModel;

    .line 95
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 95
    move-object v0, p1

    check-cast v0, Lorg/koin/core/scope/Scope;

    move-object v1, p2

    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, v0, v1}, Lorg/koin/compose/viewmodel/dsl/ViewModelOfKt$viewModelOf$6;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    return-object v0
.end method
