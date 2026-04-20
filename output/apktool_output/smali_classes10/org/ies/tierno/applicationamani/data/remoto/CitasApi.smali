.class public interface abstract Lorg/ies/tierno/applicationamani/data/remoto/CitasApi;
.super Ljava/lang/Object;
.source "CitasApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ies/tierno/applicationamani/data/remoto/CitasApi$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J(\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0008H\u00a7@\u00a2\u0006\u0002\u0010\tJ(\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0008H\u00a7@\u00a2\u0006\u0002\u0010\tJ.\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u000e\u001a\u00020\u00082\n\u0008\u0003\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u00a7@\u00a2\u0006\u0002\u0010\u0011J\u0018\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0001\u0010\u0014\u001a\u00020\u0015H\u00a7@\u00a2\u0006\u0002\u0010\u0016J\u0018\u0010\u0017\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0018\u001a\u00020\u0006H\u00a7@\u00a2\u0006\u0002\u0010\u0019J\"\u0010\u001a\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0018\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0014\u001a\u00020\u0015H\u00a7@\u00a2\u0006\u0002\u0010\u001bJ\u0014\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u0003H\u00a7@\u00a2\u0006\u0002\u0010\u001eJ\"\u0010\u001f\u001a\u00020 2\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0014\u001a\u00020!H\u00a7@\u00a2\u0006\u0002\u0010\"J\"\u0010#\u001a\u00020 2\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0014\u001a\u00020$H\u00a7@\u00a2\u0006\u0002\u0010%J\"\u0010&\u001a\u00020 2\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u000e\u001a\u00020\u0008H\u00a7@\u00a2\u0006\u0002\u0010\tJ\u0018\u0010\'\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0014\u001a\u00020(H\u00a7@\u00a2\u0006\u0002\u0010)J\"\u0010*\u001a\u00020 2\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u000f\u001a\u00020\u0010H\u00a7@\u00a2\u0006\u0002\u0010+J\u0018\u0010,\u001a\u00020\u00102\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u0006H\u00a7@\u00a2\u0006\u0002\u0010\u0019J\u0014\u0010-\u001a\u0008\u0012\u0004\u0012\u00020.0\u0003H\u00a7@\u00a2\u0006\u0002\u0010\u001eJ\u0018\u0010/\u001a\u00020!2\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u0006H\u00a7@\u00a2\u0006\u0002\u0010\u0019\u00a8\u00060\u00c0\u0006\u0003"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/data/remoto/CitasApi;",
        "",
        "getAgendaPaciente",
        "",
        "Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;",
        "idPaciente",
        "",
        "month",
        "",
        "(JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getAgendaPsicologo",
        "idPsicologo",
        "getDisponibilidadDia",
        "Lorg/ies/tierno/applicationamani/dto/citas/DisponibilidadDiaResponse;",
        "fecha",
        "duracion",
        "",
        "(JLjava/lang/String;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "crearCita",
        "Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;",
        "request",
        "Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;",
        "(Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "cancelarCita",
        "idCita",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "editarCita",
        "(JLorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getPsicologosConPacientes",
        "Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "actualizarHorario",
        "",
        "Lorg/ies/tierno/applicationamani/dto/agenda/request/HorarioRequestDTO;",
        "(JLorg/ies/tierno/applicationamani/dto/agenda/request/HorarioRequestDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "marcarDiaNoDisponible",
        "Lorg/ies/tierno/applicationamani/dto/citas/BloqueoRequestDTO;",
        "(JLorg/ies/tierno/applicationamani/dto/citas/BloqueoRequestDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "eliminarDiaNoDisponible",
        "crearCitaPsicologo",
        "Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;",
        "(Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "actualizarDuracion",
        "(JILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getDuracion",
        "getTerapias",
        "Lorg/ies/tierno/applicationamani/dto/citas/TerapiaResponseDTO;",
        "getHorarioActual",
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


# direct methods
.method public static synthetic getDisponibilidadDia$default(Lorg/ies/tierno/applicationamani/data/remoto/CitasApi;JLjava/lang/String;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 35
    if-nez p7, :cond_1

    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_0

    .line 39
    const/4 p4, 0x0

    move-object v4, p4

    goto :goto_0

    .line 35
    :cond_0
    move-object v4, p4

    :goto_0
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/ies/tierno/applicationamani/data/remoto/CitasApi;->getDisponibilidadDia(JLjava/lang/String;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getDisponibilidadDia"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract actualizarDuracion(JILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "idPsicologo"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "duracion"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "/api/citas/psicologo/{idPsicologo}/duracion"
    .end annotation
.end method

.method public abstract actualizarHorario(JLorg/ies/tierno/applicationamani/dto/agenda/request/HorarioRequestDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "idPsicologo"
        .end annotation
    .end param
    .param p3    # Lorg/ies/tierno/applicationamani/dto/agenda/request/HorarioRequestDTO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/ies/tierno/applicationamani/dto/agenda/request/HorarioRequestDTO;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "/api/citas/psicologo/{idPsicologo}/horario"
    .end annotation
.end method

.method public abstract cancelarCita(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PATCH;
        value = "/api/citas/{id}/cancelar"
    .end annotation
.end method

.method public abstract crearCita(Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/citas/admin"
    .end annotation
.end method

.method public abstract crearCitaPsicologo(Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/citas/psicologo/cita"
    .end annotation
.end method

.method public abstract editarCita(JLorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p3    # Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "/api/citas/{id}"
    .end annotation
.end method

.method public abstract eliminarDiaNoDisponible(JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "idPsicologo"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "fecha"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/DELETE;
        value = "/api/citas/psicologo/{idPsicologo}/dias-no-disponibles/{fecha}"
    .end annotation
.end method

.method public abstract getAgendaPaciente(JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "idPaciente"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "month"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/api/citas/paciente/{idPaciente}/agenda"
    .end annotation
.end method

.method public abstract getAgendaPsicologo(JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "idPsicologo"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "month"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/api/citas/psicologo/{idPsicologo}/agenda"
    .end annotation
.end method

.method public abstract getDisponibilidadDia(JLjava/lang/String;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "idPsicologo"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "fecha"
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "duracion"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/dto/citas/DisponibilidadDiaResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/api/citas/psicologo/{idPsicologo}/disponibilidad"
    .end annotation
.end method

.method public abstract getDuracion(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "idPsicologo"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/api/citas/psicologo/{idPsicologo}/duracion"
    .end annotation
.end method

.method public abstract getHorarioActual(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "idPsicologo"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/dto/agenda/request/HorarioRequestDTO;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/api/citas/psicologo/{idPsicologo}/horario-actual"
    .end annotation
.end method

.method public abstract getPsicologosConPacientes(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/api/admin/psicologos/pacientes"
    .end annotation
.end method

.method public abstract getTerapias(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/citas/TerapiaResponseDTO;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/api/citas/psicologo/terapias"
    .end annotation
.end method

.method public abstract marcarDiaNoDisponible(JLorg/ies/tierno/applicationamani/dto/citas/BloqueoRequestDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "idPsicologo"
        .end annotation
    .end param
    .param p3    # Lorg/ies/tierno/applicationamani/dto/citas/BloqueoRequestDTO;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/ies/tierno/applicationamani/dto/citas/BloqueoRequestDTO;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/api/citas/psicologo/{idPsicologo}/dias-no-disponibles"
    .end annotation
.end method
