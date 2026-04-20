.class public final Lorg/koin/androidx/viewmodel/dsl/ScopeViewModelOfKt$viewModelOf$12;
.super Ljava/lang/Object;
.source "ScopeViewModelOf.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/androidx/viewmodel/dsl/ScopeViewModelOfKt;->viewModelOf(Lorg/koin/dsl/ScopeDSL;Lkotlin/jvm/functions/Function11;Lkotlin/jvm/functions/Function1;)Lorg/koin/core/definition/KoinDefinition;
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
    value = "SMAP\nScopeViewModelOf.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScopeViewModelOf.kt\norg/koin/androidx/viewmodel/dsl/ScopeViewModelOfKt$viewModelOf$12\n+ 2 New.kt\norg/koin/core/module/dsl/NewKt\n+ 3 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,248:1\n113#2:249\n149#3,5:250\n*S KotlinDebug\n*F\n+ 1 ScopeViewModelOf.kt\norg/koin/androidx/viewmodel/dsl/ScopeViewModelOfKt$viewModelOf$12\n*L\n149#1:249\n149#1:250,5\n*E\n"
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
.field final synthetic $constructor:Lkotlin/jvm/functions/Function11;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function11<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;TT11;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function11;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function11<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;-TT10;-TT11;+TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/koin/androidx/viewmodel/dsl/ScopeViewModelOfKt$viewModelOf$12;->$constructor:Lkotlin/jvm/functions/Function11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Landroidx/lifecycle/ViewModel;
    .locals 19
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

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/koin/androidx/viewmodel/dsl/ScopeViewModelOfKt$viewModelOf$12;->$constructor:Lkotlin/jvm/functions/Function11;

    .local v3, "constructor$iv":Lkotlin/jvm/functions/Function11;
    move-object/from16 v15, p1

    .local v15, "$this$new$iv":Lorg/koin/core/scope/Scope;
    const/16 v16, 0x0

    .line 249
    .local v16, "$i$f$new":I
    move-object v4, v15

    .line 250
    .local v4, "$this$iv$iv":Lorg/koin/core/scope/Scope;
    nop

    .line 251
    const/4 v5, 0x0

    .line 250
    .local v5, "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 252
    const/4 v6, 0x0

    .line 250
    .local v6, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v7, 0x0

    .line 254
    .local v7, "$i$f$get":I
    const-string v8, "T1"

    const/4 v9, 0x4

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v8, Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-virtual {v4, v8, v5, v6}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v4

    .line 249
    .end local v4    # "$this$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v5    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v6    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v7    # "$i$f$get":I
    move-object v5, v15

    .line 250
    .local v5, "$this$iv$iv":Lorg/koin/core/scope/Scope;
    nop

    .line 251
    const/4 v6, 0x0

    .line 250
    .local v6, "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 252
    const/4 v7, 0x0

    .line 250
    .local v7, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v8, 0x0

    .line 254
    .local v8, "$i$f$get":I
    const-string v10, "T2"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v10, Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-virtual {v5, v10, v6, v7}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v5

    .line 249
    .end local v5    # "$this$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v6    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v7    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v8    # "$i$f$get":I
    move-object v6, v15

    .line 250
    .local v6, "$this$iv$iv":Lorg/koin/core/scope/Scope;
    nop

    .line 251
    const/4 v7, 0x0

    .line 250
    .local v7, "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 252
    const/4 v8, 0x0

    .line 250
    .local v8, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v10, 0x0

    .line 254
    .local v10, "$i$f$get":I
    const-string v11, "T3"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v11, Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-virtual {v6, v11, v7, v8}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v6

    .line 249
    .end local v6    # "$this$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v7    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v8    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v10    # "$i$f$get":I
    move-object v7, v15

    .line 250
    .local v7, "$this$iv$iv":Lorg/koin/core/scope/Scope;
    nop

    .line 251
    const/4 v8, 0x0

    .line 250
    .local v8, "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 252
    const/4 v10, 0x0

    .line 250
    .local v10, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v11, 0x0

    .line 254
    .local v11, "$i$f$get":I
    const-string v12, "T4"

    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v12, Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-virtual {v7, v12, v8, v10}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v7

    .line 249
    .end local v7    # "$this$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v8    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v10    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v11    # "$i$f$get":I
    move-object v8, v15

    .line 250
    .local v8, "$this$iv$iv":Lorg/koin/core/scope/Scope;
    nop

    .line 251
    const/4 v10, 0x0

    .line 250
    .local v10, "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 252
    const/4 v11, 0x0

    .line 250
    .local v11, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v12, 0x0

    .line 254
    .local v12, "$i$f$get":I
    const-string v13, "T5"

    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v13, Ljava/lang/Object;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-virtual {v8, v13, v10, v11}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v8

    .line 249
    .end local v8    # "$this$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v10    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v11    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v12    # "$i$f$get":I
    move-object v10, v15

    .line 250
    .local v10, "$this$iv$iv":Lorg/koin/core/scope/Scope;
    nop

    .line 251
    const/4 v11, 0x0

    .line 250
    .local v11, "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 252
    const/4 v12, 0x0

    .line 250
    .local v12, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v13, 0x0

    .line 254
    .local v13, "$i$f$get":I
    const-string v14, "T6"

    invoke-static {v9, v14}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v14, Ljava/lang/Object;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    invoke-virtual {v10, v14, v11, v12}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v10

    .line 249
    .end local v10    # "$this$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v11    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v12    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v13    # "$i$f$get":I
    move-object v11, v15

    .line 250
    .local v11, "$this$iv$iv":Lorg/koin/core/scope/Scope;
    nop

    .line 251
    const/4 v12, 0x0

    .line 250
    .local v12, "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 252
    const/4 v13, 0x0

    .line 250
    .local v13, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v14, 0x0

    .line 254
    .local v14, "$i$f$get":I
    const-string v0, "T7"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {v11, v0, v12, v13}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    .line 249
    .end local v11    # "$this$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v12    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v13    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v14    # "$i$f$get":I
    nop

    .line 250
    .restart local v11    # "$this$iv$iv":Lorg/koin/core/scope/Scope;
    nop

    .line 251
    const/4 v12, 0x0

    .line 250
    .restart local v12    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 252
    const/4 v13, 0x0

    .line 250
    .restart local v13    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v14, 0x0

    .line 254
    .restart local v14    # "$i$f$get":I
    move-object/from16 v17, v0

    const-string v0, "T8"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {v11, v0, v12, v13}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v11

    .line 249
    .end local v11    # "$this$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v12    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v13    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v14    # "$i$f$get":I
    move-object v0, v15

    .line 250
    .local v0, "$this$iv$iv":Lorg/koin/core/scope/Scope;
    nop

    .line 251
    const/4 v12, 0x0

    .line 250
    .restart local v12    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 252
    const/4 v13, 0x0

    .line 250
    .restart local v13    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v14, 0x0

    .line 254
    .restart local v14    # "$i$f$get":I
    const-string v1, "T9"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v12, v13}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v12

    .line 249
    .end local v0    # "$this$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v12    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v13    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v14    # "$i$f$get":I
    nop

    .line 250
    .restart local v0    # "$this$iv$iv":Lorg/koin/core/scope/Scope;
    nop

    .line 251
    const/4 v1, 0x0

    .line 250
    .local v1, "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 252
    const/4 v13, 0x0

    .line 250
    .restart local v13    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v14, 0x0

    .line 254
    .restart local v14    # "$i$f$get":I
    const-string v2, "T10"

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v13}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v13

    .line 249
    .end local v0    # "$this$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v1    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v13    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v14    # "$i$f$get":I
    nop

    .line 250
    .restart local v0    # "$this$iv$iv":Lorg/koin/core/scope/Scope;
    nop

    .line 251
    const/4 v1, 0x0

    .line 250
    .restart local v1    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 252
    const/4 v2, 0x0

    .line 250
    .local v2, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v14, 0x0

    .line 254
    .restart local v14    # "$i$f$get":I
    move-object/from16 v18, v3

    .end local v3    # "constructor$iv":Lkotlin/jvm/functions/Function11;
    .local v18, "constructor$iv":Lkotlin/jvm/functions/Function11;
    const-string v3, "T11"

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v3, Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v14

    .line 249
    .end local v0    # "$this$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v1    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v2    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v14    # "$i$f$get":I
    move-object v9, v10

    move-object/from16 v10, v17

    move-object/from16 v3, v18

    .end local v18    # "constructor$iv":Lkotlin/jvm/functions/Function11;
    .restart local v3    # "constructor$iv":Lkotlin/jvm/functions/Function11;
    invoke-interface/range {v3 .. v14}, Lkotlin/jvm/functions/Function11;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v3    # "constructor$iv":Lkotlin/jvm/functions/Function11;
    .end local v15    # "$this$new$iv":Lorg/koin/core/scope/Scope;
    .end local v16    # "$i$f$new":I
    check-cast v0, Landroidx/lifecycle/ViewModel;

    .line 149
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 149
    move-object v0, p1

    check-cast v0, Lorg/koin/core/scope/Scope;

    move-object v1, p2

    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, v0, v1}, Lorg/koin/androidx/viewmodel/dsl/ScopeViewModelOfKt$viewModelOf$12;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    return-object v0
.end method
