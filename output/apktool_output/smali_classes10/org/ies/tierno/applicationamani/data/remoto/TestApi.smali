.class public interface abstract Lorg/ies/tierno/applicationamani/data/remoto/TestApi;
.super Ljava/lang/Object;
.source "TestApi.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005H\u00a7@\u00a2\u0006\u0002\u0010\u0006J\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0008H\u00a7@\u00a2\u0006\u0002\u0010\tJ(\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0001\u0010\u000c\u001a\u00020\r2\u000e\u0008\u0001\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0008H\u00a7@\u00a2\u0006\u0002\u0010\u0010\u00a8\u0006\u0011\u00c0\u0006\u0003"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/data/remoto/TestApi;",
        "",
        "createPregunta",
        "Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/OpcionAdminDTO;",
        "pregunta",
        "Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/PreguntaRequest;",
        "(Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/PreguntaRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getPreguntas",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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


# virtual methods
.method public abstract createPregunta(Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/PreguntaRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/PreguntaRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
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

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/admin/preguntas"
    .end annotation
.end method

.method public abstract getPreguntas(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/OpcionAdminDTO;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/api/paciente/preguntas"
    .end annotation
.end method

.method public abstract responderTest(JLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "idPaciente"
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/paciente/preguntas/responder/{idPaciente}"
    .end annotation
.end method
