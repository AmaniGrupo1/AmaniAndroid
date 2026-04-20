.class final Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel$uploadFotoPerfil$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ProfilePsicologoViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;->uploadFotoPerfil(JLandroid/net/Uri;)V
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
    c = "org.ies.tierno.applicationamani.presentation.viewmodels.profile.ProfilePsicologoViewModel$uploadFotoPerfil$1"
    f = "ProfilePsicologoViewModel.kt"
    i = {
        0x0,
        0x0,
        0x0
    }
    l = {
        0x3b
    }
    m = "invokeSuspend"
    n = {
        "file",
        "requestBody",
        "multipartBody"
    }
    s = {
        "L$0",
        "L$1",
        "L$2"
    }
.end annotation


# instance fields
.field final synthetic $id:J

.field final synthetic $imageUri:Landroid/net/Uri;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;


# direct methods
.method constructor <init>(Landroid/net/Uri;Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;JLkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel$uploadFotoPerfil$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel$uploadFotoPerfil$1;->$imageUri:Landroid/net/Uri;

    iput-object p2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel$uploadFotoPerfil$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;

    iput-wide p3, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel$uploadFotoPerfil$1;->$id:J

    const/4 v0, 0x2

    invoke-direct {p0, v0, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel$uploadFotoPerfil$1;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel$uploadFotoPerfil$1;->$imageUri:Landroid/net/Uri;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel$uploadFotoPerfil$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;

    iget-wide v3, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel$uploadFotoPerfil$1;->$id:J

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel$uploadFotoPerfil$1;-><init>(Landroid/net/Uri;Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;JLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel$uploadFotoPerfil$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel$uploadFotoPerfil$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel$uploadFotoPerfil$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel$uploadFotoPerfil$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 49
    iget v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel$uploadFotoPerfil$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel$uploadFotoPerfil$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lokhttp3/MultipartBody$Part;

    .local v0, "multipartBody":Lokhttp3/MultipartBody$Part;
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel$uploadFotoPerfil$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lokhttp3/RequestBody;

    .local v1, "requestBody":Lokhttp3/RequestBody;
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel$uploadFotoPerfil$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    .local v2, "file":Ljava/io/File;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p1

    check-cast v3, Lkotlin/Result;

    invoke-virtual {v3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "multipartBody":Lokhttp3/MultipartBody$Part;
    .end local v1    # "requestBody":Lokhttp3/RequestBody;
    .end local v2    # "file":Ljava/io/File;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    nop

    .line 52
    :try_start_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel$uploadFotoPerfil$1;->$imageUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_0
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    .line 55
    .restart local v2    # "file":Ljava/io/File;
    sget-object v1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object v3, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v4, "image/jpeg"

    invoke-virtual {v3, v4}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lokhttp3/RequestBody$Companion;->create(Ljava/io/File;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v1

    .line 57
    .restart local v1    # "requestBody":Lokhttp3/RequestBody;
    sget-object v3, Lokhttp3/MultipartBody$Part;->Companion:Lokhttp3/MultipartBody$Part$Companion;

    const-string v4, "file"

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1}, Lokhttp3/MultipartBody$Part$Companion;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object v3

    .line 56
    nop

    .line 59
    .local v3, "multipartBody":Lokhttp3/MultipartBody$Part;
    iget-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel$uploadFotoPerfil$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;

    invoke-static {v4}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;->access$getProfileUseCaseGeneral$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;)Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral;

    move-result-object v4

    iget-wide v5, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel$uploadFotoPerfil$1;->$id:J

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel$uploadFotoPerfil$1;->L$0:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel$uploadFotoPerfil$1;->L$1:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel$uploadFotoPerfil$1;->L$2:Ljava/lang/Object;

    const/4 v8, 0x1

    iput v8, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel$uploadFotoPerfil$1;->label:I

    invoke-virtual {v4, v5, v6, v3, v7}, Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral;->uploadPerfil-0E7RQCE(JLokhttp3/MultipartBody$Part;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_1

    .line 49
    return-object v0

    .line 59
    :cond_1
    move-object v0, v3

    move-object v3, v4

    .end local v3    # "multipartBody":Lokhttp3/MultipartBody$Part;
    .restart local v0    # "multipartBody":Lokhttp3/MultipartBody$Part;
    :goto_0
    nop

    .line 60
    .local v3, "result":Ljava/lang/Object;
    iget-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel$uploadFotoPerfil$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;

    invoke-static {v3}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v3

    check-cast v5, Lorg/ies/tierno/applicationamani/dto/perfil/PsicologoProfileResponseDTO;

    .local v5, "it\\1":Lorg/ies/tierno/applicationamani/dto/perfil/PsicologoProfileResponseDTO;
    const/4 v6, 0x0

    .line 61
    .local v6, "$i$a$-onSuccess-ProfilePsicologoViewModel$uploadFotoPerfil$1$1\\1\\60\\0":I
    invoke-static {v4}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;->access$get_perfil$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    invoke-interface {v7, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 62
    invoke-static {v4}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;->access$get_error$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 63
    nop

    .line 60
    .end local v5    # "it\\1":Lorg/ies/tierno/applicationamani/dto/perfil/PsicologoProfileResponseDTO;
    .end local v6    # "$i$a$-onSuccess-ProfilePsicologoViewModel$uploadFotoPerfil$1$1\\1\\60\\0":I
    :cond_2
    nop

    .line 63
    iget-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel$uploadFotoPerfil$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;

    invoke-static {v3}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_4

    .local v5, "it\\3":Ljava/lang/Throwable;
    const/4 v6, 0x0

    .line 64
    .local v6, "$i$a$-onFailure-ProfilePsicologoViewModel$uploadFotoPerfil$1$2\\3\\63\\0":I
    invoke-static {v4}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;->access$get_error$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    const-string v7, "Error al subir foto"

    :cond_3
    invoke-interface {v4, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 65
    nop

    .line 63
    .end local v5    # "it\\3":Ljava/lang/Throwable;
    .end local v6    # "$i$a$-onFailure-ProfilePsicologoViewModel$uploadFotoPerfil$1$2\\3\\63\\0":I
    :cond_4
    goto :goto_1

    .line 66
    .end local v0    # "multipartBody":Lokhttp3/MultipartBody$Part;
    .end local v1    # "requestBody":Lokhttp3/RequestBody;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel$uploadFotoPerfil$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;->access$get_error$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error al procesar la imagen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 69
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel$uploadFotoPerfil$1;->this$0:Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;

    invoke-static {v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;->access$get_isLoading$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/ProfilePsicologoViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 70
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
