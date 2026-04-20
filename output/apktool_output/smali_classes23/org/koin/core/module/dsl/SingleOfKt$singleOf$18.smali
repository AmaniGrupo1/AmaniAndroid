.class public final Lorg/koin/core/module/dsl/SingleOfKt$singleOf$18;
.super Ljava/lang/Object;
.source "SingleOf.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/core/module/dsl/SingleOfKt;->singleOf(Lorg/koin/core/module/Module;Lkotlin/jvm/functions/Function17;Lkotlin/jvm/functions/Function1;)Lorg/koin/core/definition/KoinDefinition;
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
    value = "SMAP\nSingleOf.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SingleOf.kt\norg/koin/core/module/dsl/SingleOfKt$singleOf$18\n+ 2 New.kt\norg/koin/core/module/dsl/NewKt\n+ 3 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,219:1\n155#2:220\n149#3,5:221\n*S KotlinDebug\n*F\n+ 1 SingleOf.kt\norg/koin/core/module/dsl/SingleOfKt$singleOf$18\n*L\n178#1:220\n178#1:221,5\n*E\n"
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
.field final synthetic $constructor:Lkotlin/jvm/functions/Function17;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function17<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;TT11;TT12;TT13;TT14;TT15;TT16;TT17;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function17;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function17<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;-TT10;-TT11;-TT12;-TT13;-TT14;-TT15;-TT16;-TT17;+TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/koin/core/module/dsl/SingleOfKt$singleOf$18;->$constructor:Lkotlin/jvm/functions/Function17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 178
    move-object v0, p1

    check-cast v0, Lorg/koin/core/scope/Scope;

    move-object v1, p2

    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, v0, v1}, Lorg/koin/core/module/dsl/SingleOfKt$singleOf$18;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;
    .locals 25
    .param p1, "$this$single"    # Lorg/koin/core/scope/Scope;
    .param p2, "it"    # Lorg/koin/core/parameter/ParametersHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/scope/Scope;",
            "Lorg/koin/core/parameter/ParametersHolder;",
            ")TR;"
        }
    .end annotation

    const-string v0, "$this$single"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/koin/core/module/dsl/SingleOfKt$singleOf$18;->$constructor:Lkotlin/jvm/functions/Function17;

    .local v3, "constructor$iv":Lkotlin/jvm/functions/Function17;
    move-object/from16 v21, p1

    .local v21, "$this$new$iv":Lorg/koin/core/scope/Scope;
    const/16 v22, 0x0

    .line 220
    .local v22, "$i$f$new":I
    move-object/from16 v4, v21

    .line 221
    .local v4, "$this$iv$iv":Lorg/koin/core/scope/Scope;
    nop

    .line 222
    const/4 v5, 0x0

    .line 221
    .local v5, "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 223
    const/4 v6, 0x0

    .line 221
    .local v6, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v7, 0x0

    .line 225
    .local v7, "$i$f$get":I
    const-string v8, "T1"

    const/4 v9, 0x4

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v8, Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-virtual {v4, v8, v5, v6}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v4

    .line 220
    .end local v4    # "$this$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v5    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v6    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v7    # "$i$f$get":I
    move-object/from16 v5, v21

    .line 221
    .local v5, "$this$iv$iv":Lorg/koin/core/scope/Scope;
    nop

    .line 222
    const/4 v6, 0x0

    .line 221
    .local v6, "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 223
    const/4 v7, 0x0

    .line 221
    .local v7, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v8, 0x0

    .line 225
    .local v8, "$i$f$get":I
    const-string v10, "T2"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v10, Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-virtual {v5, v10, v6, v7}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v5

    .line 220
    .end local v5    # "$this$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v6    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v7    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v8    # "$i$f$get":I
    move-object/from16 v6, v21

    .line 221
    .local v6, "$this$iv$iv":Lorg/koin/core/scope/Scope;
    nop

    .line 222
    const/4 v7, 0x0

    .line 221
    .local v7, "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 223
    const/4 v8, 0x0

    .line 221
    .local v8, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v10, 0x0

    .line 225
    .local v10, "$i$f$get":I
    const-string v11, "T3"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v11, Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-virtual {v6, v11, v7, v8}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v6

    .line 220
    .end local v6    # "$this$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v7    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v8    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v10    # "$i$f$get":I
    move-object/from16 v7, v21

    .line 221
    .local v7, "$this$iv$iv":Lorg/koin/core/scope/Scope;
    nop

    .line 222
    const/4 v8, 0x0

    .line 221
    .local v8, "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 223
    const/4 v10, 0x0

    .line 221
    .local v10, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v11, 0x0

    .line 225
    .local v11, "$i$f$get":I
    const-string v12, "T4"

    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v12, Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-virtual {v7, v12, v8, v10}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v7

    .line 220
    .end local v7    # "$this$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v8    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v10    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v11    # "$i$f$get":I
    move-object/from16 v8, v21

    .line 221
    .local v8, "$this$iv$iv":Lorg/koin/core/scope/Scope;
    nop

    .line 222
    const/4 v10, 0x0

    .line 221
    .local v10, "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 223
    const/4 v11, 0x0

    .line 221
    .local v11, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v12, 0x0

    .line 225
    .local v12, "$i$f$get":I
    const-string v13, "T5"

    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v13, Ljava/lang/Object;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-virtual {v8, v13, v10, v11}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v8

    .line 220
    .end local v8    # "$this$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v10    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v11    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v12    # "$i$f$get":I
    move-object/from16 v10, v21

    .line 221
    .local v10, "$this$iv$iv":Lorg/koin/core/scope/Scope;
    nop

    .line 222
    const/4 v11, 0x0

    .line 221
    .local v11, "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 223
    const/4 v12, 0x0

    .line 221
    .local v12, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v13, 0x0

    .line 225
    .local v13, "$i$f$get":I
    const-string v14, "T6"

    invoke-static {v9, v14}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v14, Ljava/lang/Object;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    invoke-virtual {v10, v14, v11, v12}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v10

    .line 220
    .end local v10    # "$this$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v11    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v12    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v13    # "$i$f$get":I
    move-object/from16 v11, v21

    .line 221
    .local v11, "$this$iv$iv":Lorg/koin/core/scope/Scope;
    nop

    .line 222
    const/4 v12, 0x0

    .line 221
    .local v12, "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 223
    const/4 v13, 0x0

    .line 221
    .local v13, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v14, 0x0

    .line 225
    .local v14, "$i$f$get":I
    const-string v15, "T7"

    invoke-static {v9, v15}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v15, Ljava/lang/Object;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    invoke-virtual {v11, v15, v12, v13}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v11

    .line 220
    .end local v11    # "$this$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v12    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v13    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v14    # "$i$f$get":I
    move-object/from16 v12, v21

    .line 221
    .local v12, "$this$iv$iv":Lorg/koin/core/scope/Scope;
    nop

    .line 222
    const/4 v13, 0x0

    .line 221
    .local v13, "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 223
    const/4 v14, 0x0

    .line 221
    .local v14, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v15, 0x0

    .line 225
    .local v15, "$i$f$get":I
    const-string v0, "T8"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {v12, v0, v13, v14}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    .line 220
    .end local v12    # "$this$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v13    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v14    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v15    # "$i$f$get":I
    nop

    .line 221
    .restart local v12    # "$this$iv$iv":Lorg/koin/core/scope/Scope;
    nop

    .line 222
    const/4 v13, 0x0

    .line 221
    .restart local v13    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 223
    const/4 v14, 0x0

    .line 221
    .restart local v14    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v15, 0x0

    .line 225
    .restart local v15    # "$i$f$get":I
    move-object/from16 v16, v0

    const-string v0, "T9"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {v12, v0, v13, v14}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v12

    .line 220
    .end local v12    # "$this$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v13    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v14    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v15    # "$i$f$get":I
    move-object/from16 v0, v21

    .line 221
    .local v0, "$this$iv$iv":Lorg/koin/core/scope/Scope;
    nop

    .line 222
    const/4 v13, 0x0

    .line 221
    .restart local v13    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 223
    const/4 v14, 0x0

    .line 221
    .restart local v14    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v15, 0x0

    .line 225
    .restart local v15    # "$i$f$get":I
    const-string v1, "T10"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v13, v14}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v13

    .line 220
    .end local v0    # "$this$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v13    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v14    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v15    # "$i$f$get":I
    nop

    .line 221
    .restart local v0    # "$this$iv$iv":Lorg/koin/core/scope/Scope;
    nop

    .line 222
    const/4 v1, 0x0

    .line 221
    .local v1, "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 223
    const/4 v14, 0x0

    .line 221
    .restart local v14    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v15, 0x0

    .line 225
    .restart local v15    # "$i$f$get":I
    const-string v2, "T11"

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v14}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v14

    .line 220
    .end local v0    # "$this$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v1    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v14    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v15    # "$i$f$get":I
    nop

    .line 221
    .restart local v0    # "$this$iv$iv":Lorg/koin/core/scope/Scope;
    nop

    .line 222
    const/4 v1, 0x0

    .line 221
    .restart local v1    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 223
    const/4 v2, 0x0

    .line 221
    .local v2, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v15, 0x0

    .line 225
    .restart local v15    # "$i$f$get":I
    move-object/from16 v17, v3

    .end local v3    # "constructor$iv":Lkotlin/jvm/functions/Function17;
    .local v17, "constructor$iv":Lkotlin/jvm/functions/Function17;
    const-string v3, "T12"

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v3, Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v15

    .line 220
    .end local v0    # "$this$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v1    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v2    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v15    # "$i$f$get":I
    nop

    .line 221
    .restart local v0    # "$this$iv$iv":Lorg/koin/core/scope/Scope;
    nop

    .line 222
    const/4 v1, 0x0

    .line 221
    .restart local v1    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 223
    const/4 v2, 0x0

    .line 221
    .restart local v2    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v3, 0x0

    .line 225
    .local v3, "$i$f$get":I
    move/from16 v18, v3

    .end local v3    # "$i$f$get":I
    .local v18, "$i$f$get":I
    const-string v3, "T13"

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v3, Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    .line 220
    .end local v0    # "$this$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v1    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v2    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v18    # "$i$f$get":I
    move-object/from16 v1, v21

    .line 221
    .local v1, "$this$iv$iv":Lorg/koin/core/scope/Scope;
    nop

    .line 222
    const/4 v2, 0x0

    .line 221
    .local v2, "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 223
    const/4 v3, 0x0

    .line 221
    .local v3, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v18, 0x0

    .line 225
    .restart local v18    # "$i$f$get":I
    move-object/from16 v19, v0

    const-string v0, "T14"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {v1, v0, v2, v3}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    .line 220
    .end local v1    # "$this$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v2    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v3    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v18    # "$i$f$get":I
    nop

    .line 221
    .restart local v1    # "$this$iv$iv":Lorg/koin/core/scope/Scope;
    nop

    .line 222
    const/4 v2, 0x0

    .line 221
    .restart local v2    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 223
    const/4 v3, 0x0

    .line 221
    .restart local v3    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v18, 0x0

    .line 225
    .restart local v18    # "$i$f$get":I
    move-object/from16 v20, v0

    const-string v0, "T15"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {v1, v0, v2, v3}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v18

    .line 220
    .end local v1    # "$this$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v2    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v3    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v18    # "$i$f$get":I
    move-object/from16 v0, v21

    .line 221
    .restart local v0    # "$this$iv$iv":Lorg/koin/core/scope/Scope;
    nop

    .line 222
    const/4 v1, 0x0

    .line 221
    .local v1, "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 223
    const/4 v2, 0x0

    .line 221
    .local v2, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v3, 0x0

    .line 225
    .local v3, "$i$f$get":I
    move/from16 v23, v3

    .end local v3    # "$i$f$get":I
    .local v23, "$i$f$get":I
    const-string v3, "T16"

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v3, Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    .line 220
    .end local v0    # "$this$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v1    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v2    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v23    # "$i$f$get":I
    move-object/from16 v1, v21

    .line 221
    .local v1, "$this$iv$iv":Lorg/koin/core/scope/Scope;
    nop

    .line 222
    const/4 v2, 0x0

    .line 221
    .local v2, "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 223
    const/4 v3, 0x0

    .line 221
    .local v3, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    const/16 v23, 0x0

    .line 225
    .restart local v23    # "$i$f$get":I
    move-object/from16 v24, v0

    const-string v0, "T17"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {v1, v0, v2, v3}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    .line 220
    .end local v1    # "$this$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v2    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v3    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v23    # "$i$f$get":I
    move-object v9, v10

    move-object v10, v11

    move-object/from16 v11, v16

    move-object/from16 v3, v17

    move-object/from16 v16, v19

    move-object/from16 v17, v20

    move-object/from16 v19, v24

    move-object/from16 v20, v0

    .end local v17    # "constructor$iv":Lkotlin/jvm/functions/Function17;
    .local v3, "constructor$iv":Lkotlin/jvm/functions/Function17;
    invoke-interface/range {v3 .. v20}, Lkotlin/jvm/functions/Function17;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 178
    .end local v3    # "constructor$iv":Lkotlin/jvm/functions/Function17;
    .end local v21    # "$this$new$iv":Lorg/koin/core/scope/Scope;
    .end local v22    # "$i$f$new":I
    return-object v0
.end method
