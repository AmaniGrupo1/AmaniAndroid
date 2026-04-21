.class final Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$LoginScreen$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LoginScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt;->LoginScreen(Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenKt$LoginScreen$2$1"
    f = "LoginScreen.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $loginResult$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lkotlin/Result<",
            "Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $loginViewModel:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

.field final synthetic $navController:Landroidx/navigation/NavController;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/runtime/State;Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Lkotlin/Result<",
            "Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;",
            ">;>;",
            "Landroidx/navigation/NavController;",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$LoginScreen$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$LoginScreen$2$1;->$loginResult$delegate:Landroidx/compose/runtime/State;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$LoginScreen$2$1;->$navController:Landroidx/navigation/NavController;

    iput-object p3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$LoginScreen$2$1;->$loginViewModel:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method static final invokeSuspend$lambda$2$lambda$1(Landroidx/navigation/NavOptionsBuilder;)Lkotlin/Unit;
    .locals 2
    .param p0, "$this$navigate"    # Landroidx/navigation/NavOptionsBuilder;

    .line 116
    sget-object v0, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$login;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$login;

    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$login;->getRoute()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$LoginScreen$2$1$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$LoginScreen$2$1$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroidx/navigation/NavOptionsBuilder;->popUpTo(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 117
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/navigation/NavOptionsBuilder;->setLaunchSingleTop(Z)V

    .line 118
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final invokeSuspend$lambda$2$lambda$1$lambda$0(Landroidx/navigation/PopUpToBuilder;)Lkotlin/Unit;
    .locals 1
    .param p0, "$this$popUpTo"    # Landroidx/navigation/PopUpToBuilder;

    .line 116
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/navigation/PopUpToBuilder;->setInclusive(Z)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$LoginScreen$2$1;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$LoginScreen$2$1;->$loginResult$delegate:Landroidx/compose/runtime/State;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$LoginScreen$2$1;->$navController:Landroidx/navigation/NavController;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$LoginScreen$2$1;->$loginViewModel:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-direct {v0, v1, v2, v3, p2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$LoginScreen$2$1;-><init>(Landroidx/compose/runtime/State;Landroidx/navigation/NavController;Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$LoginScreen$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$LoginScreen$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$LoginScreen$2$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$LoginScreen$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20
    .param p1, "$result"    # Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 100
    iget v1, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$LoginScreen$2$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 101
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$LoginScreen$2$1;->$loginResult$delegate:Landroidx/compose/runtime/State;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt;->access$LoginScreen$lambda$2(Landroidx/compose/runtime/State;)Lkotlin/Result;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v1

    .line 103
    .local v1, "result":Ljava/lang/Object;
    iget-object v2, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$LoginScreen$2$1;->$navController:Landroidx/navigation/NavController;

    iget-object v3, v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$LoginScreen$2$1;->$loginViewModel:Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;

    invoke-static {v1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v1

    check-cast v4, Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;

    .local v4, "response\\1":Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;
    const/4 v5, 0x0

    .line 104
    .local v5, "$i$a$-onSuccess-LoginScreenKt$LoginScreen$2$1$1\\1\\103\\0":I
    invoke-virtual {v4}, Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;->getRol()Ljava/lang/String;

    move-result-object v6

    .line 105
    .local v6, "rol\\1":Ljava/lang/String;
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "toLowerCase(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 106
    const/4 v12, 0x4

    const/4 v13, 0x0

    const-string v9, "\u00f3"

    const-string v10, "o"

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 107
    const/16 v18, 0x4

    const/16 v19, 0x0

    const-string v15, "\u00e1"

    const-string v16, "a"

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 105
    nop

    .line 109
    .local v7, "rolNormalizado\\1":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :goto_0
    goto :goto_1

    :sswitch_0
    const-string v8, "admin"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_0

    :sswitch_1
    const-string v8, "psicologo"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_0

    :sswitch_2
    const-string v8, "psicologa"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    sget-object v8, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$psicologoHome;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$psicologoHome;

    invoke-virtual {v8}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$psicologoHome;->getRoute()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 109
    :sswitch_3
    const-string v8, "administrador"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_0

    .line 110
    :cond_1
    sget-object v8, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$adminHome;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$adminHome;

    invoke-virtual {v8}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$adminHome;->getRoute()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 112
    :goto_1
    sget-object v8, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$pacienteHome;->INSTANCE:Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$pacienteHome;

    invoke-virtual {v4}, Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;->getIdPaciente()Ljava/lang/Long;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    goto :goto_2

    :cond_2
    const-wide/16 v9, 0x0

    :goto_2
    invoke-virtual {v8, v9, v10}, Lorg/ies/tierno/applicationamani/presentation/navigation/screen/Screens$pacienteHome;->createRoute(J)Ljava/lang/String;

    move-result-object v8

    .line 109
    :goto_3
    nop

    .line 115
    .local v8, "destination\\1":Ljava/lang/String;
    new-instance v9, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$LoginScreen$2$1$$ExternalSyntheticLambda0;

    invoke-direct {v9}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/LoginScreenKt$LoginScreen$2$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v2, v8, v9}, Landroidx/navigation/NavController;->navigate(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 119
    invoke-virtual {v3}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->clearLoginFields()V

    .line 120
    invoke-virtual {v3}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel;->resetLoginState()V

    .line 121
    nop

    .line 103
    .end local v4    # "response\\1":Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;
    .end local v5    # "$i$a$-onSuccess-LoginScreenKt$LoginScreen$2$1$1\\1\\103\\0":I
    .end local v6    # "rol\\1":Ljava/lang/String;
    .end local v7    # "rolNormalizado\\1":Ljava/lang/String;
    .end local v8    # "destination\\1":Ljava/lang/String;
    nop

    .line 122
    :cond_3
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    .line 101
    .end local v1    # "result":Ljava/lang/Object;
    :cond_4
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x26e07943 -> :sswitch_3
        -0x163b3db1 -> :sswitch_2
        -0x163b3da3 -> :sswitch_1
        0x586034f -> :sswitch_0
    .end sparse-switch
.end method
