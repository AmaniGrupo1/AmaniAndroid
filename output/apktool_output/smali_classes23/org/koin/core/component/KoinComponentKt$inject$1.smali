.class public final Lorg/koin/core/component/KoinComponentKt$inject$1;
.super Ljava/lang/Object;
.source "KoinComponent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/core/component/KoinComponentKt;->inject(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKoinComponent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KoinComponent.kt\norg/koin/core/component/KoinComponentKt$inject$1\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 Scope.kt\norg/koin/core/scope/Scope\n+ 4 Koin.kt\norg/koin/core/Koin\n*L\n1#1,64:1\n45#2,2:65\n48#2:68\n153#3:67\n133#4:69\n*S KotlinDebug\n*F\n+ 1 KoinComponent.kt\norg/koin/core/component/KoinComponentKt$inject$1\n*L\n63#1:65,2\n63#1:68\n63#1:67\n63#1:69\n*E\n"
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
.field final synthetic $parameters:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lorg/koin/core/parameter/ParametersHolder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $qualifier:Lorg/koin/core/qualifier/Qualifier;

.field final synthetic $this_inject:Lorg/koin/core/component/KoinComponent;


# direct methods
.method public constructor <init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/component/KoinComponent;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lorg/koin/core/parameter/ParametersHolder;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/koin/core/component/KoinComponentKt$inject$1;->$this_inject:Lorg/koin/core/component/KoinComponent;

    iput-object p2, p0, Lorg/koin/core/component/KoinComponentKt$inject$1;->$qualifier:Lorg/koin/core/qualifier/Qualifier;

    iput-object p3, p0, Lorg/koin/core/component/KoinComponentKt$inject$1;->$parameters:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/koin/core/component/KoinComponentKt$inject$1;->$this_inject:Lorg/koin/core/component/KoinComponent;

    .local v0, "$this$get$iv":Lorg/koin/core/component/KoinComponent;
    iget-object v1, p0, Lorg/koin/core/component/KoinComponentKt$inject$1;->$qualifier:Lorg/koin/core/qualifier/Qualifier;

    .local v1, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    iget-object v2, p0, Lorg/koin/core/component/KoinComponentKt$inject$1;->$parameters:Lkotlin/jvm/functions/Function0;

    .local v2, "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v3, 0x0

    .line 65
    .local v3, "$i$f$get":I
    instance-of v4, v0, Lorg/koin/core/component/KoinScopeComponent;

    const-string v5, "T"

    const/4 v6, 0x4

    if-eqz v4, :cond_0

    .line 66
    move-object v4, v0

    check-cast v4, Lorg/koin/core/component/KoinScopeComponent;

    invoke-interface {v4}, Lorg/koin/core/component/KoinScopeComponent;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object v4

    .local v4, "this_$iv$iv":Lorg/koin/core/scope/Scope;
    move-object v7, v2

    .local v7, "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object v8, v1

    .local v8, "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v9, 0x0

    .line 67
    .local v9, "$i$f$get":I
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v5, Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-virtual {v4, v5, v8, v7}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "this_$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v7    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v8    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v9    # "$i$f$get":I
    goto :goto_0

    .line 68
    :cond_0
    invoke-interface {v0}, Lorg/koin/core/component/KoinComponent;->getKoin()Lorg/koin/core/Koin;

    move-result-object v4

    .local v4, "this_$iv$iv":Lorg/koin/core/Koin;
    move-object v7, v2

    .restart local v7    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object v8, v1

    .restart local v8    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v9, 0x0

    .line 69
    .restart local v9    # "$i$f$get":I
    invoke-virtual {v4}, Lorg/koin/core/Koin;->getScopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v10

    invoke-virtual {v10}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v10

    .local v10, "this_$iv$iv$iv":Lorg/koin/core/scope/Scope;
    move-object v11, v7

    .local v11, "parameters$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    move-object v12, v8

    .local v12, "qualifier$iv$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    const/4 v13, 0x0

    .line 67
    .local v13, "$i$f$get":I
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v5, Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-virtual {v10, v5, v12, v11}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v5

    .line 69
    .end local v10    # "this_$iv$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v11    # "parameters$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v12    # "qualifier$iv$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v13    # "$i$f$get":I
    move-object v4, v5

    .line 65
    .end local v4    # "this_$iv$iv":Lorg/koin/core/Koin;
    .end local v7    # "parameters$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v8    # "qualifier$iv$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v9    # "$i$f$get":I
    :goto_0
    nop

    .line 63
    .end local v0    # "$this$get$iv":Lorg/koin/core/component/KoinComponent;
    .end local v1    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v2    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v3    # "$i$f$get":I
    return-object v4
.end method
