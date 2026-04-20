.class public final Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi;
.super Ljava/lang/Object;
.source "TestRepositoryApi.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0086@\u00a2\u0006\u0002\u0010\nJ\u0012\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\r0\u000cJ$\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\rH\u0086@\u00a2\u0006\u0002\u0010\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi;",
        "",
        "testApi",
        "Lorg/ies/tierno/applicationamani/data/remoto/TestApi;",
        "<init>",
        "(Lorg/ies/tierno/applicationamani/data/remoto/TestApi;)V",
        "createPregunta",
        "Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/OpcionAdminDTO;",
        "pregunta",
        "Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/PreguntaRequest;",
        "(Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/PreguntaRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getPreguntasFlow",
        "Lkotlinx/coroutines/flow/Flow;",
        "",
        "responderTest",
        "",
        "idPaciente",
        "",
        "respuestas",
        "Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;",
        "(JLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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


# static fields
.field public static final $stable:I


# instance fields
.field private final testApi:Lorg/ies/tierno/applicationamani/data/remoto/TestApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi;->$stable:I

    return-void
.end method

.method public constructor <init>(Lorg/ies/tierno/applicationamani/data/remoto/TestApi;)V
    .locals 1
    .param p1, "testApi"    # Lorg/ies/tierno/applicationamani/data/remoto/TestApi;

    const-string v0, "testApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi;->testApi:Lorg/ies/tierno/applicationamani/data/remoto/TestApi;

    return-void
.end method

.method public static final synthetic access$getTestApi$p(Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi;)Lorg/ies/tierno/applicationamani/data/remoto/TestApi;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi;

    .line 25
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi;->testApi:Lorg/ies/tierno/applicationamani/data/remoto/TestApi;

    return-object v0
.end method


# virtual methods
.method public final createPregunta(Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/PreguntaRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p1, "pregunta"    # Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/PreguntaRequest;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/PreguntaRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/OpcionAdminDTO;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$createPregunta$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$createPregunta$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$createPregunta$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$createPregunta$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$createPregunta$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$createPregunta$1;

    invoke-direct {v0, p0, p2}, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$createPregunta$1;-><init>(Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$createPregunta$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 33
    iget v3, v0, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$createPregunta$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-object v2, v0, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$createPregunta$1;->L$0:Ljava/lang/Object;

    move-object p1, v2

    check-cast p1, Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/PreguntaRequest;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v1

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 34
    nop

    .line 35
    :try_start_1
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi;->testApi:Lorg/ies/tierno/applicationamani/data/remoto/TestApi;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$createPregunta$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, v0, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$createPregunta$1;->label:I

    invoke-interface {v3, p1, v0}, Lorg/ies/tierno/applicationamani/data/remoto/TestApi;->createPregunta(Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/PreguntaRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 33
    return-object v2

    .line 35
    :cond_1
    :goto_1
    check-cast v3, Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/OpcionAdminDTO;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 36
    :catch_0
    move-exception v2

    .line 37
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    const/4 v3, 0x0

    .line 34
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getPreguntasFlow()Lkotlinx/coroutines/flow/Flow;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/OpcionAdminDTO;",
            ">;>;"
        }
    .end annotation

    .line 50
    new-instance v0, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$getPreguntasFlow$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$getPreguntasFlow$1;-><init>(Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->flow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 53
    new-instance v2, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$getPreguntasFlow$2;

    invoke-direct {v2, v1}, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$getPreguntasFlow$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-static {v0, v2}, Lkotlinx/coroutines/flow/FlowKt;->catch(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 56
    return-object v0
.end method

.method public final responderTest(JLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p1, "idPaciente"    # J
    .param p3, "respuestas"    # Ljava/util/List;
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$responderTest$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$responderTest$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$responderTest$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$responderTest$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$responderTest$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$responderTest$1;

    invoke-direct {v0, p0, p4}, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$responderTest$1;-><init>(Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$responderTest$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 58
    iget v3, v0, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$responderTest$1;->label:I

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-wide p1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$responderTest$1;->J$0:J

    iget-object v2, v0, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$responderTest$1;->L$0:Ljava/lang/Object;

    move-object p3, v2

    check-cast p3, Ljava/util/List;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 63
    nop

    .line 65
    :try_start_1
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi;->testApi:Lorg/ies/tierno/applicationamani/data/remoto/TestApi;

    .line 66
    nop

    .line 67
    nop

    .line 65
    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$responderTest$1;->L$0:Ljava/lang/Object;

    iput-wide p1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$responderTest$1;->J$0:J

    iput v4, v0, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$responderTest$1;->label:I

    invoke-interface {v3, p1, p2, p3, v0}, Lorg/ies/tierno/applicationamani/data/remoto/TestApi;->responderTest(JLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v3, v2, :cond_1

    .line 58
    return-object v2

    .line 70
    :cond_1
    :goto_1
    goto :goto_2

    .line 72
    :catch_0
    move-exception v2

    .line 74
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    const/4 v4, 0x0

    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 63
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
