.class public interface abstract Lorg/ies/tierno/applicationamani/data/remoto/AuthApi;
.super Ljava/lang/Object;
.source "AuthApi.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\u00a7@\u00a2\u0006\u0002\u0010\u0007J\u001e\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\tH\u00a7@\u00a2\u0006\u0002\u0010\nJ\u001e\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\tH\u00a7@\u00a2\u0006\u0002\u0010\nJ\u001e\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\rH\u00a7@\u00a2\u0006\u0002\u0010\u000eJ\u001e\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0011H\u00a7@\u00a2\u0006\u0002\u0010\u0012J\u001a\u0010\u0013\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u00140\u0003H\u00a7@\u00a2\u0006\u0002\u0010\u0016J\u001a\u0010\u0017\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\u00140\u0003H\u00a7@\u00a2\u0006\u0002\u0010\u0016J\u001e\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00032\u0008\u0008\u0001\u0010\u001b\u001a\u00020\u001cH\u00a7@\u00a2\u0006\u0002\u0010\u001dJ\u001e\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020 H\u00a7@\u00a2\u0006\u0002\u0010!J\u001a\u0010\"\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u00140\u0003H\u00a7@\u00a2\u0006\u0002\u0010\u0016J\u001a\u0010#\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020$0\u00140\u0003H\u00a7@\u00a2\u0006\u0002\u0010\u0016\u00a8\u0006%\u00c0\u0006\u0003"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/data/remoto/AuthApi;",
        "",
        "login",
        "Lretrofit2/Response;",
        "Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;",
        "request",
        "Lorg/ies/tierno/applicationamani/domain/models/login/LoginRequestDTO;",
        "(Lorg/ies/tierno/applicationamani/domain/models/login/LoginRequestDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "registerPaciente",
        "Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;",
        "(Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "registerPacienteAdmin",
        "registerAdmin",
        "Lorg/ies/tierno/applicationamani/domain/models/login/RegistryPacienteDTO;",
        "(Lorg/ies/tierno/applicationamani/domain/models/login/RegistryPacienteDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "registerPsicologo",
        "Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;",
        "Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;",
        "(Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getPacientesConPsicologo",
        "",
        "Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getPacientes",
        "Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;",
        "darBajaPaciente",
        "",
        "id",
        "",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "asignarPsicologo",
        "",
        "Lorg/ies/tierno/applicationamani/dto/requestPaciente/AsignarPacienteAlPsicologoRequestDTO;",
        "(Lorg/ies/tierno/applicationamani/dto/requestPaciente/AsignarPacienteAlPsicologoRequestDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getPsicologos",
        "getPacientesByPsicologo",
        "Lorg/ies/tierno/applicationamani/dto/psicologo/PacientePsicologoResponseDTO;",
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
.method public abstract asignarPsicologo(Lorg/ies/tierno/applicationamani/dto/requestPaciente/AsignarPacienteAlPsicologoRequestDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lorg/ies/tierno/applicationamani/dto/requestPaciente/AsignarPacienteAlPsicologoRequestDTO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/dto/requestPaciente/AsignarPacienteAlPsicologoRequestDTO;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/admin/psicologos/asignar-psicologo"
    .end annotation
.end method

.method public abstract darBajaPaciente(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "/auth/pacientes/{id}/baja"
    .end annotation
.end method

.method public abstract getPacientes(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/api/pacientes/admin"
    .end annotation
.end method

.method public abstract getPacientesByPsicologo(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/psicologo/PacientePsicologoResponseDTO;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/api/psicologo/pacientes/getAll"
    .end annotation
.end method

.method public abstract getPacientesConPsicologo(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/api/admin/psicologos/pacientes"
    .end annotation
.end method

.method public abstract getPsicologos(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/api/admin/psicologos"
    .end annotation
.end method

.method public abstract login(Lorg/ies/tierno/applicationamani/domain/models/login/LoginRequestDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lorg/ies/tierno/applicationamani/domain/models/login/LoginRequestDTO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/domain/models/login/LoginRequestDTO;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "auth/login"
    .end annotation
.end method

.method public abstract registerAdmin(Lorg/ies/tierno/applicationamani/domain/models/login/RegistryPacienteDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lorg/ies/tierno/applicationamani/domain/models/login/RegistryPacienteDTO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/domain/models/login/RegistryPacienteDTO;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/auth/register-admin"
    .end annotation
.end method

.method public abstract registerPaciente(Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/auth/register-paciente"
    .end annotation
.end method

.method public abstract registerPacienteAdmin(Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/dto/requestPaciente/PacienteRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lorg/ies/tierno/applicationamani/domain/models/login/LoginResponseDTO;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/auth/registry/pacienteAdmin"
    .end annotation
.end method

.method public abstract registerPsicologo(Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoRequestDTO;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/admin/psicologos/create"
    .end annotation
.end method
