.class public final Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
.super Ljava/lang/Object;
.source "CitasRepository.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCitasRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CitasRepository.kt\norg/ies/tierno/applicationamani/data/repositorio/CitasRepository\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,147:1\n296#2,2:148\n*S KotlinDebug\n*F\n+ 1 CitasRepository.kt\norg/ies/tierno/applicationamani/data/repositorio/CitasRepository\n*L\n95#1:148,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0000\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J,\u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0086@\u00a2\u0006\u0004\u0008\r\u0010\u000eJ,\u0010\u0012\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\n2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0086@\u00a2\u0006\u0004\u0008\u0011\u0010\u000eJ\u001e\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00130\n2\u0006\u0010\u0010\u001a\u00020\u0006H\u0086@\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J.\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00190\n2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u0013H\u0086@\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u001e\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\n2\u0006\u0010\u001e\u001a\u00020\u001dH\u0086@\u00a2\u0006\u0004\u0008 \u0010!JN\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\n2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020#2\u0006\u0010%\u001a\u00020$2\u0006\u0010\u0018\u001a\u00020\u00132\u0006\u0010&\u001a\u00020\u00082\u0006\u0010\'\u001a\u00020\u0006H\u0086@\u00a2\u0006\u0004\u0008(\u0010)J\u001e\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\n2\u0006\u0010+\u001a\u00020\u0006H\u0086@\u00a2\u0006\u0004\u0008,\u0010\u0015J&\u00100\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\n2\u0006\u0010+\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u001dH\u0086@\u00a2\u0006\u0004\u0008.\u0010/J$\u00103\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002010\u000b0\n2\u0006\u0010\u0010\u001a\u00020\u0006H\u0086@\u00a2\u0006\u0004\u00082\u0010\u0015J&\u00108\u001a\u0008\u0012\u0004\u0012\u0002050\n2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u000204H\u0086@\u00a2\u0006\u0004\u00086\u00107J&\u0010<\u001a\u0008\u0012\u0004\u0012\u0002050\n2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u00109\u001a\u00020\u0013H\u0086@\u00a2\u0006\u0004\u0008:\u0010;JR\u0010C\u001a\u0008\u0012\u0004\u0012\u0002050\n2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00082\u0006\u0010>\u001a\u00020=2\n\u0008\u0002\u0010?\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010@\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\u0008H\u0086@\u00a2\u0006\u0004\u0008A\u0010BJ\u001c\u0010G\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020D0\u000b0\nH\u0086@\u00a2\u0006\u0004\u0008E\u0010FJ\u001e\u0010I\u001a\u0008\u0012\u0004\u0012\u0002040\n2\u0006\u0010\u0010\u001a\u00020\u0006H\u0086@\u00a2\u0006\u0004\u0008H\u0010\u0015R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010J\u00a8\u0006K"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;",
        "",
        "Lorg/ies/tierno/applicationamani/data/remoto/CitasApi;",
        "citasApi",
        "<init>",
        "(Lorg/ies/tierno/applicationamani/data/remoto/CitasApi;)V",
        "",
        "idPaciente",
        "",
        "month",
        "Lkotlin/Result;",
        "",
        "Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;",
        "getAgendaPaciente-0E7RQCE",
        "(JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getAgendaPaciente",
        "idPsicologo",
        "getAgendaPsicologo-0E7RQCE",
        "getAgendaPsicologo",
        "",
        "getDuracion-gIAlu-s",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getDuracion",
        "fecha",
        "duracionMinutos",
        "Lorg/ies/tierno/applicationamani/dto/citas/DisponibilidadDiaResponse;",
        "getDisponibilidadDia-BWLJW6A",
        "(JLjava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getDisponibilidadDia",
        "Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;",
        "request",
        "Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;",
        "crearCita-gIAlu-s",
        "(Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "crearCita",
        "j$/time/LocalDate",
        "j$/time/LocalTime",
        "hora",
        "motivo",
        "idTipoTerapia",
        "crearCitaPsicologo-eH_QyT8",
        "(JJLj$/time/LocalDate;Lj$/time/LocalTime;ILjava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "crearCitaPsicologo",
        "idCita",
        "cancelarCita-gIAlu-s",
        "cancelarCita",
        "editarCita-0E7RQCE",
        "(JLorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "editarCita",
        "Lorg/ies/tierno/applicationamani/dto/login/PacientesAsignadoDTO;",
        "getPacientesDelPsicologo-gIAlu-s",
        "getPacientesDelPsicologo",
        "Lorg/ies/tierno/applicationamani/dto/agenda/request/HorarioRequestDTO;",
        "",
        "actualizarHorario-0E7RQCE",
        "(JLorg/ies/tierno/applicationamani/dto/agenda/request/HorarioRequestDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "actualizarHorario",
        "duracion",
        "actualizarDuracion-0E7RQCE",
        "(JILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "actualizarDuracion",
        "",
        "yaNoDisponible",
        "horaInicio",
        "horaFin",
        "alternarDiaNoDisponible-bMdYcbs",
        "(JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "alternarDiaNoDisponible",
        "Lorg/ies/tierno/applicationamani/dto/citas/TerapiaResponseDTO;",
        "getTerapias-IoAF18A",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getTerapias",
        "getHorarioActual-gIAlu-s",
        "getHorarioActual",
        "Lorg/ies/tierno/applicationamani/data/remoto/CitasApi;",
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
.field private final citasApi:Lorg/ies/tierno/applicationamani/data/remoto/CitasApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;->$stable:I

    return-void
.end method

.method public constructor <init>(Lorg/ies/tierno/applicationamani/data/remoto/CitasApi;)V
    .locals 1
    .param p1, "citasApi"    # Lorg/ies/tierno/applicationamani/data/remoto/CitasApi;

    const-string v0, "citasApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;->citasApi:Lorg/ies/tierno/applicationamani/data/remoto/CitasApi;

    .line 18
    return-void
.end method

.method public static synthetic alternarDiaNoDisponible-bMdYcbs$default(Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 117
    and-int/lit8 p10, p9, 0x8

    const/4 v0, 0x0

    if-eqz p10, :cond_0

    .line 121
    move-object p5, v0

    .line 117
    :cond_0
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_1

    .line 122
    move-object p6, v0

    .line 117
    :cond_1
    and-int/lit8 p9, p9, 0x20

    if-eqz p9, :cond_2

    .line 123
    move-object p7, v0

    .line 117
    :cond_2
    invoke-virtual/range {p0 .. p8}, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;->alternarDiaNoDisponible-bMdYcbs(JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final actualizarDuracion-0E7RQCE(JILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "idPsicologo"    # J
    .param p3, "duracion"    # I
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$actualizarDuracion$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$actualizarDuracion$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$actualizarDuracion$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$actualizarDuracion$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$actualizarDuracion$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$actualizarDuracion$1;

    invoke-direct {v0, p0, p4}, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$actualizarDuracion$1;-><init>(Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$actualizarDuracion$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 107
    iget v3, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$actualizarDuracion$1;->label:I

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
    iget v2, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$actualizarDuracion$1;->I$1:I

    .local v2, "$i$a$-runCatching-CitasRepository$actualizarDuracion$2\\1\\110\\0":I
    iget p3, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$actualizarDuracion$1;->I$0:I

    iget-wide p1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$actualizarDuracion$1;->J$0:J

    iget-object v3, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$actualizarDuracion$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;

    .local v3, "$this$actualizarDuracion_0E7RQCE_u24lambda_u2411\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .end local v2    # "$i$a$-runCatching-CitasRepository$actualizarDuracion$2\\1\\110\\0":I
    .end local v3    # "$this$actualizarDuracion_0E7RQCE_u24lambda_u2411\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 110
    :try_start_1
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, p0

    check-cast v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;

    .restart local v3    # "$this$actualizarDuracion_0E7RQCE_u24lambda_u2411\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    const/4 v4, 0x0

    .line 111
    .local v4, "$i$a$-runCatching-CitasRepository$actualizarDuracion$2\\1\\110\\0":I
    iget-object v5, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;->citasApi:Lorg/ies/tierno/applicationamani/data/remoto/CitasApi;

    .line 112
    nop

    .line 113
    nop

    .line 111
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$actualizarDuracion$1;->L$0:Ljava/lang/Object;

    iput-wide p1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$actualizarDuracion$1;->J$0:J

    iput p3, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$actualizarDuracion$1;->I$0:I

    iput v4, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$actualizarDuracion$1;->I$1:I

    const/4 v6, 0x1

    iput v6, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$actualizarDuracion$1;->label:I

    invoke-interface {v5, p1, p2, p3, v0}, Lorg/ies/tierno/applicationamani/data/remoto/CitasApi;->actualizarDuracion(JILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_1

    .line 107
    return-object v2

    .line 111
    :cond_1
    move v2, v4

    .line 115
    .end local v4    # "$i$a$-runCatching-CitasRepository$actualizarDuracion$2\\1\\110\\0":I
    .restart local v2    # "$i$a$-runCatching-CitasRepository$actualizarDuracion$2\\1\\110\\0":I
    :goto_1
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 110
    .end local v2    # "$i$a$-runCatching-CitasRepository$actualizarDuracion$2\\1\\110\\0":I
    .end local v3    # "$this$actualizarDuracion_0E7RQCE_u24lambda_u2411\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 115
    :goto_2
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final actualizarHorario-0E7RQCE(JLorg/ies/tierno/applicationamani/dto/agenda/request/HorarioRequestDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "idPsicologo"    # J
    .param p3, "request"    # Lorg/ies/tierno/applicationamani/dto/agenda/request/HorarioRequestDTO;
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/ies/tierno/applicationamani/dto/agenda/request/HorarioRequestDTO;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$actualizarHorario$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$actualizarHorario$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$actualizarHorario$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$actualizarHorario$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$actualizarHorario$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$actualizarHorario$1;

    invoke-direct {v0, p0, p4}, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$actualizarHorario$1;-><init>(Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$actualizarHorario$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 100
    iget v3, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$actualizarHorario$1;->label:I

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
    iget v2, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$actualizarHorario$1;->I$0:I

    .local v2, "$i$a$-runCatching-CitasRepository$actualizarHorario$2\\1\\103\\0":I
    iget-wide p1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$actualizarHorario$1;->J$0:J

    iget-object v3, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$actualizarHorario$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;

    .local v3, "$this$actualizarHorario_0E7RQCE_u24lambda_u2410\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    iget-object v4, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$actualizarHorario$1;->L$0:Ljava/lang/Object;

    move-object p3, v4

    check-cast p3, Lorg/ies/tierno/applicationamani/dto/agenda/request/HorarioRequestDTO;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .end local v2    # "$i$a$-runCatching-CitasRepository$actualizarHorario$2\\1\\103\\0":I
    .end local v3    # "$this$actualizarHorario_0E7RQCE_u24lambda_u2410\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 103
    :try_start_1
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, p0

    check-cast v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;

    .restart local v3    # "$this$actualizarHorario_0E7RQCE_u24lambda_u2410\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    const/4 v4, 0x0

    .line 104
    .local v4, "$i$a$-runCatching-CitasRepository$actualizarHorario$2\\1\\103\\0":I
    iget-object v5, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;->citasApi:Lorg/ies/tierno/applicationamani/data/remoto/CitasApi;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$actualizarHorario$1;->L$0:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$actualizarHorario$1;->L$1:Ljava/lang/Object;

    iput-wide p1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$actualizarHorario$1;->J$0:J

    iput v4, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$actualizarHorario$1;->I$0:I

    const/4 v6, 0x1

    iput v6, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$actualizarHorario$1;->label:I

    invoke-interface {v5, p1, p2, p3, v0}, Lorg/ies/tierno/applicationamani/data/remoto/CitasApi;->actualizarHorario(JLorg/ies/tierno/applicationamani/dto/agenda/request/HorarioRequestDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_1

    .line 100
    return-object v2

    .line 104
    :cond_1
    move v2, v4

    .line 105
    .end local v4    # "$i$a$-runCatching-CitasRepository$actualizarHorario$2\\1\\103\\0":I
    .restart local v2    # "$i$a$-runCatching-CitasRepository$actualizarHorario$2\\1\\103\\0":I
    :goto_1
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 103
    .end local v2    # "$i$a$-runCatching-CitasRepository$actualizarHorario$2\\1\\103\\0":I
    .end local v3    # "$this$actualizarHorario_0E7RQCE_u24lambda_u2410\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 105
    :goto_2
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final alternarDiaNoDisponible-bMdYcbs(JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16
    .param p1, "idPsicologo"    # J
    .param p3, "fecha"    # Ljava/lang/String;
    .param p4, "yaNoDisponible"    # Z
    .param p5, "horaInicio"    # Ljava/lang/String;
    .param p6, "horaFin"    # Ljava/lang/String;
    .param p7, "motivo"    # Ljava/lang/String;
    .param p8, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p8

    instance-of v0, v6, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$alternarDiaNoDisponible$1;

    if-eqz v0, :cond_0

    move-object v0, v6

    check-cast v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$alternarDiaNoDisponible$1;

    iget v7, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$alternarDiaNoDisponible$1;->label:I

    const/high16 v8, -0x80000000

    and-int/2addr v7, v8

    if-eqz v7, :cond_0

    iget v7, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$alternarDiaNoDisponible$1;->label:I

    sub-int/2addr v7, v8

    iput v7, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$alternarDiaNoDisponible$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$alternarDiaNoDisponible$1;

    invoke-direct {v0, v1, v6}, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$alternarDiaNoDisponible$1;-><init>(Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v7, v0

    .local v7, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v8, v7, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$alternarDiaNoDisponible$1;->result:Ljava/lang/Object;

    .local v8, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 117
    iget v9, v7, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$alternarDiaNoDisponible$1;->label:I

    packed-switch v9, :pswitch_data_0

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    .end local v7    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v8    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v7, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v7    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v8    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget v0, v7, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$alternarDiaNoDisponible$1;->I$0:I

    .local v0, "$i$a$-runCatching-CitasRepository$alternarDiaNoDisponible$2\\1\\124\\0":I
    iget-boolean v5, v7, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$alternarDiaNoDisponible$1;->Z$0:Z

    .end local p4    # "yaNoDisponible":Z
    .local v5, "yaNoDisponible":Z
    iget-wide v2, v7, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$alternarDiaNoDisponible$1;->J$0:J

    .end local p1    # "idPsicologo":J
    .local v2, "idPsicologo":J
    iget-object v9, v7, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$alternarDiaNoDisponible$1;->L$5:Ljava/lang/Object;

    check-cast v9, Lorg/ies/tierno/applicationamani/dto/citas/BloqueoRequestDTO;

    .local v9, "request\\1":Lorg/ies/tierno/applicationamani/dto/citas/BloqueoRequestDTO;
    iget-object v10, v7, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$alternarDiaNoDisponible$1;->L$4:Ljava/lang/Object;

    check-cast v10, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;

    .local v10, "$this$alternarDiaNoDisponible_bMdYcbs_u24lambda_u2412\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    iget-object v11, v7, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$alternarDiaNoDisponible$1;->L$3:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    .end local p7    # "motivo":Ljava/lang/String;
    .local v11, "motivo":Ljava/lang/String;
    iget-object v12, v7, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$alternarDiaNoDisponible$1;->L$2:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    .end local p6    # "horaFin":Ljava/lang/String;
    .local v12, "horaFin":Ljava/lang/String;
    iget-object v13, v7, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$alternarDiaNoDisponible$1;->L$1:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    .end local p5    # "horaInicio":Ljava/lang/String;
    .local v13, "horaInicio":Ljava/lang/String;
    iget-object v14, v7, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$alternarDiaNoDisponible$1;->L$0:Ljava/lang/Object;

    move-object v4, v14

    check-cast v4, Ljava/lang/String;

    .end local p3    # "fecha":Ljava/lang/String;
    .local v4, "fecha":Ljava/lang/String;
    :try_start_0
    invoke-static {v8}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    .line 124
    .end local v0    # "$i$a$-runCatching-CitasRepository$alternarDiaNoDisponible$2\\1\\124\\0":I
    .end local v9    # "request\\1":Lorg/ies/tierno/applicationamani/dto/citas/BloqueoRequestDTO;
    .end local v10    # "$this$alternarDiaNoDisponible_bMdYcbs_u24lambda_u2412\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    :catchall_0
    move-exception v0

    move-object v10, v11

    move-object v14, v12

    goto/16 :goto_6

    .line 117
    .end local v2    # "idPsicologo":J
    .end local v4    # "fecha":Ljava/lang/String;
    .end local v5    # "yaNoDisponible":Z
    .end local v11    # "motivo":Ljava/lang/String;
    .end local v12    # "horaFin":Ljava/lang/String;
    .end local v13    # "horaInicio":Ljava/lang/String;
    .restart local p1    # "idPsicologo":J
    .restart local p3    # "fecha":Ljava/lang/String;
    .restart local p4    # "yaNoDisponible":Z
    .restart local p5    # "horaInicio":Ljava/lang/String;
    .restart local p6    # "horaFin":Ljava/lang/String;
    .restart local p7    # "motivo":Ljava/lang/String;
    :pswitch_1
    iget v0, v7, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$alternarDiaNoDisponible$1;->I$0:I

    .restart local v0    # "$i$a$-runCatching-CitasRepository$alternarDiaNoDisponible$2\\1\\124\\0":I
    iget-boolean v5, v7, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$alternarDiaNoDisponible$1;->Z$0:Z

    .end local p4    # "yaNoDisponible":Z
    .restart local v5    # "yaNoDisponible":Z
    iget-wide v2, v7, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$alternarDiaNoDisponible$1;->J$0:J

    .end local p1    # "idPsicologo":J
    .restart local v2    # "idPsicologo":J
    iget-object v9, v7, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$alternarDiaNoDisponible$1;->L$4:Ljava/lang/Object;

    check-cast v9, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;

    .local v9, "$this$alternarDiaNoDisponible_bMdYcbs_u24lambda_u2412\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    iget-object v10, v7, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$alternarDiaNoDisponible$1;->L$3:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .end local p7    # "motivo":Ljava/lang/String;
    .local v10, "motivo":Ljava/lang/String;
    iget-object v11, v7, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$alternarDiaNoDisponible$1;->L$2:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    .end local p6    # "horaFin":Ljava/lang/String;
    .local v11, "horaFin":Ljava/lang/String;
    iget-object v12, v7, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$alternarDiaNoDisponible$1;->L$1:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    .end local p5    # "horaInicio":Ljava/lang/String;
    .local v12, "horaInicio":Ljava/lang/String;
    iget-object v13, v7, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$alternarDiaNoDisponible$1;->L$0:Ljava/lang/Object;

    move-object v4, v13

    check-cast v4, Ljava/lang/String;

    .end local p3    # "fecha":Ljava/lang/String;
    .restart local v4    # "fecha":Ljava/lang/String;
    :try_start_1
    invoke-static {v8}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 124
    .end local v0    # "$i$a$-runCatching-CitasRepository$alternarDiaNoDisponible$2\\1\\124\\0":I
    .end local v9    # "$this$alternarDiaNoDisponible_bMdYcbs_u24lambda_u2412\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    :catchall_1
    move-exception v0

    move-object v14, v11

    move-object v13, v12

    goto/16 :goto_6

    .line 117
    .end local v2    # "idPsicologo":J
    .end local v4    # "fecha":Ljava/lang/String;
    .end local v5    # "yaNoDisponible":Z
    .end local v10    # "motivo":Ljava/lang/String;
    .end local v11    # "horaFin":Ljava/lang/String;
    .end local v12    # "horaInicio":Ljava/lang/String;
    .restart local p1    # "idPsicologo":J
    .restart local p3    # "fecha":Ljava/lang/String;
    .restart local p4    # "yaNoDisponible":Z
    .restart local p5    # "horaInicio":Ljava/lang/String;
    .restart local p6    # "horaFin":Ljava/lang/String;
    .restart local p7    # "motivo":Ljava/lang/String;
    :pswitch_2
    invoke-static {v8}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 124
    :try_start_2
    sget-object v9, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v9, v1

    check-cast v9, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;

    move-object v10, v9

    .local v10, "$this$alternarDiaNoDisponible_bMdYcbs_u24lambda_u2412\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    const/4 v9, 0x0

    .line 125
    .local v9, "$i$a$-runCatching-CitasRepository$alternarDiaNoDisponible$2\\1\\124\\0":I
    if-eqz v5, :cond_2

    .line 126
    iget-object v11, v10, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;->citasApi:Lorg/ies/tierno/applicationamani/data/remoto/CitasApi;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    iput-object v12, v7, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$alternarDiaNoDisponible$1;->L$0:Ljava/lang/Object;

    invoke-static/range {p5 .. p5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    iput-object v12, v7, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$alternarDiaNoDisponible$1;->L$1:Ljava/lang/Object;

    invoke-static/range {p6 .. p6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    iput-object v12, v7, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$alternarDiaNoDisponible$1;->L$2:Ljava/lang/Object;

    invoke-static/range {p7 .. p7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    iput-object v12, v7, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$alternarDiaNoDisponible$1;->L$3:Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    iput-object v12, v7, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$alternarDiaNoDisponible$1;->L$4:Ljava/lang/Object;

    iput-wide v2, v7, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$alternarDiaNoDisponible$1;->J$0:J

    iput-boolean v5, v7, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$alternarDiaNoDisponible$1;->Z$0:Z

    iput v9, v7, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$alternarDiaNoDisponible$1;->I$0:I

    const/4 v12, 0x1

    iput v12, v7, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$alternarDiaNoDisponible$1;->label:I

    invoke-interface {v11, v2, v3, v4, v7}, Lorg/ies/tierno/applicationamani/data/remoto/CitasApi;->eliminarDiaNoDisponible(JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v0, :cond_1

    .line 117
    return-object v0

    .line 126
    :cond_1
    move-object/from16 v12, p5

    move-object/from16 v11, p6

    move v0, v9

    move-object v9, v10

    move-object/from16 v10, p7

    .end local p1    # "idPsicologo":J
    .end local p3    # "fecha":Ljava/lang/String;
    .end local p4    # "yaNoDisponible":Z
    .end local p5    # "horaInicio":Ljava/lang/String;
    .end local p6    # "horaFin":Ljava/lang/String;
    .end local p7    # "motivo":Ljava/lang/String;
    .restart local v0    # "$i$a$-runCatching-CitasRepository$alternarDiaNoDisponible$2\\1\\124\\0":I
    .restart local v2    # "idPsicologo":J
    .restart local v4    # "fecha":Ljava/lang/String;
    .restart local v5    # "yaNoDisponible":Z
    .local v9, "$this$alternarDiaNoDisponible_bMdYcbs_u24lambda_u2412\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    .local v10, "motivo":Ljava/lang/String;
    .restart local v11    # "horaFin":Ljava/lang/String;
    .restart local v12    # "horaInicio":Ljava/lang/String;
    :goto_1
    goto :goto_4

    .line 128
    .end local v0    # "$i$a$-runCatching-CitasRepository$alternarDiaNoDisponible$2\\1\\124\\0":I
    .end local v2    # "idPsicologo":J
    .end local v4    # "fecha":Ljava/lang/String;
    .end local v5    # "yaNoDisponible":Z
    .end local v11    # "horaFin":Ljava/lang/String;
    .end local v12    # "horaInicio":Ljava/lang/String;
    .local v9, "$i$a$-runCatching-CitasRepository$alternarDiaNoDisponible$2\\1\\124\\0":I
    .local v10, "$this$alternarDiaNoDisponible_bMdYcbs_u24lambda_u2412\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    .restart local p1    # "idPsicologo":J
    .restart local p3    # "fecha":Ljava/lang/String;
    .restart local p4    # "yaNoDisponible":Z
    .restart local p5    # "horaInicio":Ljava/lang/String;
    .restart local p6    # "horaFin":Ljava/lang/String;
    .restart local p7    # "motivo":Ljava/lang/String;
    :cond_2
    new-instance v11, Lorg/ies/tierno/applicationamani/dto/citas/BloqueoRequestDTO;

    .line 129
    nop

    .line 130
    nop

    .line 131
    nop

    .line 132
    if-nez p7, :cond_3

    const-string v12, "No disponible"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_2

    :cond_3
    move-object/from16 v12, p7

    .line 128
    :goto_2
    move-object/from16 v13, p5

    move-object/from16 v14, p6

    :try_start_3
    invoke-direct {v11, v4, v13, v14, v12}, Lorg/ies/tierno/applicationamani/dto/citas/BloqueoRequestDTO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .local v11, "request\\1":Lorg/ies/tierno/applicationamani/dto/citas/BloqueoRequestDTO;
    iget-object v12, v10, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;->citasApi:Lorg/ies/tierno/applicationamani/data/remoto/CitasApi;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    iput-object v15, v7, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$alternarDiaNoDisponible$1;->L$0:Ljava/lang/Object;

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    iput-object v15, v7, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$alternarDiaNoDisponible$1;->L$1:Ljava/lang/Object;

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    iput-object v15, v7, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$alternarDiaNoDisponible$1;->L$2:Ljava/lang/Object;

    invoke-static/range {p7 .. p7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    iput-object v15, v7, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$alternarDiaNoDisponible$1;->L$3:Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    iput-object v15, v7, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$alternarDiaNoDisponible$1;->L$4:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    iput-object v15, v7, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$alternarDiaNoDisponible$1;->L$5:Ljava/lang/Object;

    iput-wide v2, v7, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$alternarDiaNoDisponible$1;->J$0:J

    iput-boolean v5, v7, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$alternarDiaNoDisponible$1;->Z$0:Z

    iput v9, v7, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$alternarDiaNoDisponible$1;->I$0:I

    const/4 v15, 0x2

    iput v15, v7, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$alternarDiaNoDisponible$1;->label:I

    invoke-interface {v12, v2, v3, v11, v7}, Lorg/ies/tierno/applicationamani/data/remoto/CitasApi;->marcarDiaNoDisponible(JLorg/ies/tierno/applicationamani/dto/citas/BloqueoRequestDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne v12, v0, :cond_4

    .line 117
    return-object v0

    .line 134
    :cond_4
    move v0, v9

    move-object v9, v11

    move-object v12, v14

    move-object/from16 v11, p7

    .line 136
    .end local p1    # "idPsicologo":J
    .end local p3    # "fecha":Ljava/lang/String;
    .end local p4    # "yaNoDisponible":Z
    .end local p5    # "horaInicio":Ljava/lang/String;
    .end local p6    # "horaFin":Ljava/lang/String;
    .end local p7    # "motivo":Ljava/lang/String;
    .restart local v0    # "$i$a$-runCatching-CitasRepository$alternarDiaNoDisponible$2\\1\\124\\0":I
    .restart local v2    # "idPsicologo":J
    .restart local v4    # "fecha":Ljava/lang/String;
    .restart local v5    # "yaNoDisponible":Z
    .local v9, "request\\1":Lorg/ies/tierno/applicationamani/dto/citas/BloqueoRequestDTO;
    .local v11, "motivo":Ljava/lang/String;
    .local v12, "horaFin":Ljava/lang/String;
    .restart local v13    # "horaInicio":Ljava/lang/String;
    :goto_3
    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    .end local v0    # "$i$a$-runCatching-CitasRepository$alternarDiaNoDisponible$2\\1\\124\\0":I
    .end local v9    # "request\\1":Lorg/ies/tierno/applicationamani/dto/citas/BloqueoRequestDTO;
    .end local v13    # "horaInicio":Ljava/lang/String;
    .local v10, "motivo":Ljava/lang/String;
    .local v11, "horaFin":Ljava/lang/String;
    .local v12, "horaInicio":Ljava/lang/String;
    :goto_4
    :try_start_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 124
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_7

    .end local v2    # "idPsicologo":J
    .end local v4    # "fecha":Ljava/lang/String;
    .end local v5    # "yaNoDisponible":Z
    .end local v10    # "motivo":Ljava/lang/String;
    .end local v11    # "horaFin":Ljava/lang/String;
    .end local v12    # "horaInicio":Ljava/lang/String;
    .restart local p1    # "idPsicologo":J
    .restart local p3    # "fecha":Ljava/lang/String;
    .restart local p4    # "yaNoDisponible":Z
    .restart local p5    # "horaInicio":Ljava/lang/String;
    .restart local p6    # "horaFin":Ljava/lang/String;
    .restart local p7    # "motivo":Ljava/lang/String;
    :catchall_2
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    :goto_5
    move-object/from16 v10, p7

    .end local p1    # "idPsicologo":J
    .end local p3    # "fecha":Ljava/lang/String;
    .end local p4    # "yaNoDisponible":Z
    .end local p5    # "horaInicio":Ljava/lang/String;
    .end local p6    # "horaFin":Ljava/lang/String;
    .end local p7    # "motivo":Ljava/lang/String;
    .restart local v2    # "idPsicologo":J
    .restart local v4    # "fecha":Ljava/lang/String;
    .restart local v5    # "yaNoDisponible":Z
    .restart local v10    # "motivo":Ljava/lang/String;
    .restart local v13    # "horaInicio":Ljava/lang/String;
    .local v14, "horaFin":Ljava/lang/String;
    :goto_6
    sget-object v9, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v13

    move-object v11, v14

    .line 136
    .end local v13    # "horaInicio":Ljava/lang/String;
    .end local v14    # "horaFin":Ljava/lang/String;
    .restart local v11    # "horaFin":Ljava/lang/String;
    .restart local v12    # "horaInicio":Ljava/lang/String;
    :goto_7
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final cancelarCita-gIAlu-s(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "idCita"    # J
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$cancelarCita$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$cancelarCita$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$cancelarCita$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$cancelarCita$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$cancelarCita$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$cancelarCita$1;

    invoke-direct {v0, p0, p3}, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$cancelarCita$1;-><init>(Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$cancelarCita$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 84
    iget v3, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$cancelarCita$1;->label:I

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
    iget v2, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$cancelarCita$1;->I$0:I

    .local v2, "$i$a$-runCatching-CitasRepository$cancelarCita$2\\1\\84\\0":I
    iget-wide p1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$cancelarCita$1;->J$0:J

    iget-object v3, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$cancelarCita$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;

    .local v3, "$this$cancelarCita_gIAlu_s_u24lambda_u246\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v1

    goto :goto_1

    .end local v2    # "$i$a$-runCatching-CitasRepository$cancelarCita$2\\1\\84\\0":I
    .end local v3    # "$this$cancelarCita_gIAlu_s_u24lambda_u246\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_1
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, p0

    check-cast v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;

    .restart local v3    # "$this$cancelarCita_gIAlu_s_u24lambda_u246\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    const/4 v4, 0x0

    .line 85
    .local v4, "$i$a$-runCatching-CitasRepository$cancelarCita$2\\1\\84\\0":I
    iget-object v5, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;->citasApi:Lorg/ies/tierno/applicationamani/data/remoto/CitasApi;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$cancelarCita$1;->L$0:Ljava/lang/Object;

    iput-wide p1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$cancelarCita$1;->J$0:J

    iput v4, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$cancelarCita$1;->I$0:I

    const/4 v6, 0x1

    iput v6, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$cancelarCita$1;->label:I

    invoke-interface {v5, p1, p2, v0}, Lorg/ies/tierno/applicationamani/data/remoto/CitasApi;->cancelarCita(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_1

    .line 84
    return-object v2

    .line 85
    :cond_1
    move v2, v4

    .end local v4    # "$i$a$-runCatching-CitasRepository$cancelarCita$2\\1\\84\\0":I
    .restart local v2    # "$i$a$-runCatching-CitasRepository$cancelarCita$2\\1\\84\\0":I
    :goto_1
    check-cast v5, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;

    .line 84
    .end local v2    # "$i$a$-runCatching-CitasRepository$cancelarCita$2\\1\\84\\0":I
    .end local v3    # "$this$cancelarCita_gIAlu_s_u24lambda_u246\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 86
    :goto_2
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final crearCita-gIAlu-s(Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "request"    # Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$crearCita$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$crearCita$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$crearCita$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$crearCita$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$crearCita$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$crearCita$1;

    invoke-direct {v0, p0, p2}, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$crearCita$1;-><init>(Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$crearCita$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 56
    iget v3, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$crearCita$1;->label:I

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
    iget v2, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$crearCita$1;->I$0:I

    .local v2, "$i$a$-runCatching-CitasRepository$crearCita$2\\1\\56\\0":I
    iget-object v3, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$crearCita$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;

    .local v3, "$this$crearCita_gIAlu_s_u24lambda_u244\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    iget-object v4, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$crearCita$1;->L$0:Ljava/lang/Object;

    move-object p1, v4

    check-cast p1, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v1

    goto :goto_1

    .end local v2    # "$i$a$-runCatching-CitasRepository$crearCita$2\\1\\56\\0":I
    .end local v3    # "$this$crearCita_gIAlu_s_u24lambda_u244\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_1
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, p0

    check-cast v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;

    .restart local v3    # "$this$crearCita_gIAlu_s_u24lambda_u244\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    const/4 v4, 0x0

    .line 57
    .local v4, "$i$a$-runCatching-CitasRepository$crearCita$2\\1\\56\\0":I
    iget-object v5, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;->citasApi:Lorg/ies/tierno/applicationamani/data/remoto/CitasApi;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$crearCita$1;->L$0:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$crearCita$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$crearCita$1;->I$0:I

    const/4 v6, 0x1

    iput v6, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$crearCita$1;->label:I

    invoke-interface {v5, p1, v0}, Lorg/ies/tierno/applicationamani/data/remoto/CitasApi;->crearCita(Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_1

    .line 56
    return-object v2

    .line 57
    :cond_1
    move v2, v4

    .end local v4    # "$i$a$-runCatching-CitasRepository$crearCita$2\\1\\56\\0":I
    .restart local v2    # "$i$a$-runCatching-CitasRepository$crearCita$2\\1\\56\\0":I
    :goto_1
    check-cast v5, Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;

    .line 56
    .end local v2    # "$i$a$-runCatching-CitasRepository$crearCita$2\\1\\56\\0":I
    .end local v3    # "$this$crearCita_gIAlu_s_u24lambda_u244\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 58
    :goto_2
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final crearCitaPsicologo-eH_QyT8(JJLj$/time/LocalDate;Lj$/time/LocalTime;ILjava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 27
    .param p1, "idPsicologo"    # J
    .param p3, "idPaciente"    # J
    .param p5, "fecha"    # Lj$/time/LocalDate;
    .param p6, "hora"    # Lj$/time/LocalTime;
    .param p7, "duracionMinutos"    # I
    .param p8, "motivo"    # Ljava/lang/String;
    .param p9, "idTipoTerapia"    # J
    .param p11, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lj$/time/LocalDate;",
            "Lj$/time/LocalTime;",
            "I",
            "Ljava/lang/String;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p11

    instance-of v0, v2, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$crearCitaPsicologo$1;

    if-eqz v0, :cond_0

    move-object v0, v2

    check-cast v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$crearCitaPsicologo$1;

    iget v3, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$crearCitaPsicologo$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v3, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$crearCitaPsicologo$1;->label:I

    sub-int/2addr v3, v4

    iput v3, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$crearCitaPsicologo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$crearCitaPsicologo$1;

    invoke-direct {v0, v1, v2}, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$crearCitaPsicologo$1;-><init>(Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v3, v0

    .local v3, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v4, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$crearCitaPsicologo$1;->result:Ljava/lang/Object;

    .local v4, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 61
    iget v5, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$crearCitaPsicologo$1;->label:I

    packed-switch v5, :pswitch_data_0

    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    move/from16 v11, p7

    move-wide/from16 v14, p9

    .end local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v4    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v4    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget v0, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$crearCitaPsicologo$1;->I$1:I

    .local v0, "$i$a$-runCatching-CitasRepository$crearCitaPsicologo$2\\1\\69\\0":I
    iget-wide v5, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$crearCitaPsicologo$1;->J$2:J

    .end local p9    # "idTipoTerapia":J
    .local v5, "idTipoTerapia":J
    iget v7, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$crearCitaPsicologo$1;->I$0:I

    .end local p7    # "duracionMinutos":I
    .local v7, "duracionMinutos":I
    iget-wide v8, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$crearCitaPsicologo$1;->J$1:J

    .end local p3    # "idPaciente":J
    .local v8, "idPaciente":J
    iget-wide v10, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$crearCitaPsicologo$1;->J$0:J

    .end local p1    # "idPsicologo":J
    .local v10, "idPsicologo":J
    iget-object v12, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$crearCitaPsicologo$1;->L$4:Ljava/lang/Object;

    check-cast v12, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;

    .local v12, "request\\1":Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;
    iget-object v13, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$crearCitaPsicologo$1;->L$3:Ljava/lang/Object;

    check-cast v13, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;

    .local v13, "$this$crearCitaPsicologo_eH_QyT8_u24lambda_u245\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    iget-object v14, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$crearCitaPsicologo$1;->L$2:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    .end local p8    # "motivo":Ljava/lang/String;
    .local v14, "motivo":Ljava/lang/String;
    iget-object v15, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$crearCitaPsicologo$1;->L$1:Ljava/lang/Object;

    check-cast v15, Lj$/time/LocalTime;

    move/from16 v16, v0

    .end local v0    # "$i$a$-runCatching-CitasRepository$crearCitaPsicologo$2\\1\\69\\0":I
    .end local p6    # "hora":Lj$/time/LocalTime;
    .local v15, "hora":Lj$/time/LocalTime;
    .local v16, "$i$a$-runCatching-CitasRepository$crearCitaPsicologo$2\\1\\69\\0":I
    iget-object v0, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$crearCitaPsicologo$1;->L$0:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lj$/time/LocalDate;

    .end local p5    # "fecha":Lj$/time/LocalDate;
    .local v17, "fecha":Lj$/time/LocalDate;
    :try_start_0
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    move/from16 v0, v16

    move-wide/from16 v25, v10

    move v11, v7

    move-wide v9, v8

    move-wide/from16 v7, v25

    goto/16 :goto_1

    .line 69
    .end local v12    # "request\\1":Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;
    .end local v13    # "$this$crearCitaPsicologo_eH_QyT8_u24lambda_u245\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    .end local v16    # "$i$a$-runCatching-CitasRepository$crearCitaPsicologo$2\\1\\69\\0":I
    :catchall_0
    move-exception v0

    move-wide/from16 v25, v10

    move v11, v7

    move-wide v9, v8

    move-wide/from16 v7, v25

    goto/16 :goto_6

    .line 61
    .end local v5    # "idTipoTerapia":J
    .end local v7    # "duracionMinutos":I
    .end local v8    # "idPaciente":J
    .end local v10    # "idPsicologo":J
    .end local v14    # "motivo":Ljava/lang/String;
    .end local v15    # "hora":Lj$/time/LocalTime;
    .end local v17    # "fecha":Lj$/time/LocalDate;
    .restart local p1    # "idPsicologo":J
    .restart local p3    # "idPaciente":J
    .restart local p5    # "fecha":Lj$/time/LocalDate;
    .restart local p6    # "hora":Lj$/time/LocalTime;
    .restart local p7    # "duracionMinutos":I
    .restart local p8    # "motivo":Ljava/lang/String;
    .restart local p9    # "idTipoTerapia":J
    :pswitch_1
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 69
    :try_start_1
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v5, v1

    check-cast v5, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;

    move-object v13, v5

    .restart local v13    # "$this$crearCitaPsicologo_eH_QyT8_u24lambda_u245\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    const/4 v5, 0x0

    .line 71
    .local v5, "$i$a$-runCatching-CitasRepository$crearCitaPsicologo$2\\1\\69\\0":I
    new-instance v14, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;

    .line 72
    nop

    .line 73
    nop

    .line 74
    invoke-static/range {p5 .. p6}, Lj$/time/LocalDateTime;->of(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    move-result-object v6

    const-string v7, "of(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    nop

    .line 76
    nop

    .line 77
    sget-object v22, Lorg/ies/tierno/applicationamani/domain/models/enumm/EstadoCita;->pendiente:Lorg/ies/tierno/applicationamani/domain/models/enumm/EstadoCita;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 78
    nop

    .line 71
    move-wide/from16 v17, p1

    move-wide/from16 v15, p3

    move/from16 v20, p7

    move-object/from16 v21, p8

    move-wide/from16 v23, p9

    move-object/from16 v19, v6

    :try_start_2
    invoke-direct/range {v14 .. v24}, Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;-><init>(JJLj$/time/LocalDateTime;ILjava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/enumm/EstadoCita;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    move-object v12, v14

    .line 81
    .restart local v12    # "request\\1":Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;
    :try_start_3
    iget-object v6, v13, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;->citasApi:Lorg/ies/tierno/applicationamani/data/remoto/CitasApi;

    invoke-static/range {p5 .. p5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$crearCitaPsicologo$1;->L$0:Ljava/lang/Object;

    invoke-static/range {p6 .. p6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$crearCitaPsicologo$1;->L$1:Ljava/lang/Object;

    invoke-static/range {p8 .. p8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$crearCitaPsicologo$1;->L$2:Ljava/lang/Object;

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$crearCitaPsicologo$1;->L$3:Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$crearCitaPsicologo$1;->L$4:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    move-wide/from16 v7, p1

    :try_start_4
    iput-wide v7, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$crearCitaPsicologo$1;->J$0:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    move-wide/from16 v9, p3

    :try_start_5
    iput-wide v9, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$crearCitaPsicologo$1;->J$1:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move/from16 v11, p7

    :try_start_6
    iput v11, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$crearCitaPsicologo$1;->I$0:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-wide/from16 v14, p9

    :try_start_7
    iput-wide v14, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$crearCitaPsicologo$1;->J$2:J

    iput v5, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$crearCitaPsicologo$1;->I$1:I

    const/4 v1, 0x1

    iput v1, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$crearCitaPsicologo$1;->label:I

    invoke-interface {v6, v12, v3}, Lorg/ies/tierno/applicationamani/data/remoto/CitasApi;->crearCitaPsicologo(Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-ne v1, v0, :cond_1

    .line 61
    return-object v0

    .line 81
    :cond_1
    move-object/from16 v17, p5

    move v0, v5

    move-wide v5, v14

    move-object/from16 v15, p6

    move-object/from16 v14, p8

    .end local p1    # "idPsicologo":J
    .end local p3    # "idPaciente":J
    .end local p5    # "fecha":Lj$/time/LocalDate;
    .end local p6    # "hora":Lj$/time/LocalTime;
    .end local p7    # "duracionMinutos":I
    .end local p8    # "motivo":Ljava/lang/String;
    .end local p9    # "idTipoTerapia":J
    .restart local v0    # "$i$a$-runCatching-CitasRepository$crearCitaPsicologo$2\\1\\69\\0":I
    .local v5, "idTipoTerapia":J
    .local v7, "idPsicologo":J
    .local v9, "idPaciente":J
    .local v11, "duracionMinutos":I
    .restart local v14    # "motivo":Ljava/lang/String;
    .restart local v15    # "hora":Lj$/time/LocalTime;
    .restart local v17    # "fecha":Lj$/time/LocalDate;
    :goto_1
    :try_start_8
    check-cast v1, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;

    .line 69
    .end local v0    # "$i$a$-runCatching-CitasRepository$crearCitaPsicologo$2\\1\\69\\0":I
    .end local v12    # "request\\1":Lorg/ies/tierno/applicationamani/dto/citas/CrearCitaRequestDTO;
    .end local v13    # "$this$crearCitaPsicologo_eH_QyT8_u24lambda_u245\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_6

    .end local v5    # "idTipoTerapia":J
    .end local v7    # "idPsicologo":J
    .end local v9    # "idPaciente":J
    .end local v11    # "duracionMinutos":I
    .end local v14    # "motivo":Ljava/lang/String;
    .end local v15    # "hora":Lj$/time/LocalTime;
    .end local v17    # "fecha":Lj$/time/LocalDate;
    .restart local p1    # "idPsicologo":J
    .restart local p3    # "idPaciente":J
    .restart local p5    # "fecha":Lj$/time/LocalDate;
    .restart local p6    # "hora":Lj$/time/LocalTime;
    .restart local p7    # "duracionMinutos":I
    .restart local p8    # "motivo":Ljava/lang/String;
    .restart local p9    # "idTipoTerapia":J
    :catchall_2
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_4

    :catchall_4
    move-exception v0

    goto :goto_3

    :catchall_5
    move-exception v0

    goto :goto_2

    :catchall_6
    move-exception v0

    move-wide v9, v15

    move-wide/from16 v7, v17

    move/from16 v11, v20

    move-wide/from16 v14, v23

    goto :goto_5

    :catchall_7
    move-exception v0

    move-wide/from16 v7, p1

    :goto_2
    move-wide/from16 v9, p3

    :goto_3
    move/from16 v11, p7

    :goto_4
    move-wide/from16 v14, p9

    :goto_5
    move-object/from16 v17, p5

    move-wide v5, v14

    move-object/from16 v15, p6

    move-object/from16 v14, p8

    .end local p1    # "idPsicologo":J
    .end local p3    # "idPaciente":J
    .end local p5    # "fecha":Lj$/time/LocalDate;
    .end local p6    # "hora":Lj$/time/LocalTime;
    .end local p7    # "duracionMinutos":I
    .end local p8    # "motivo":Ljava/lang/String;
    .end local p9    # "idTipoTerapia":J
    .restart local v5    # "idTipoTerapia":J
    .restart local v7    # "idPsicologo":J
    .restart local v9    # "idPaciente":J
    .restart local v11    # "duracionMinutos":I
    .restart local v14    # "motivo":Ljava/lang/String;
    .restart local v15    # "hora":Lj$/time/LocalTime;
    .restart local v17    # "fecha":Lj$/time/LocalDate;
    :goto_6
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 82
    :goto_7
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final editarCita-0E7RQCE(JLorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "idCita"    # J
    .param p3, "request"    # Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$editarCita$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$editarCita$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$editarCita$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$editarCita$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$editarCita$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$editarCita$1;

    invoke-direct {v0, p0, p4}, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$editarCita$1;-><init>(Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$editarCita$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 88
    iget v3, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$editarCita$1;->label:I

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
    iget v2, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$editarCita$1;->I$0:I

    .local v2, "$i$a$-runCatching-CitasRepository$editarCita$2\\1\\88\\0":I
    iget-wide p1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$editarCita$1;->J$0:J

    iget-object v3, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$editarCita$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;

    .local v3, "$this$editarCita_0E7RQCE_u24lambda_u247\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    iget-object v4, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$editarCita$1;->L$0:Ljava/lang/Object;

    move-object p3, v4

    check-cast p3, Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v1

    goto :goto_1

    .end local v2    # "$i$a$-runCatching-CitasRepository$editarCita$2\\1\\88\\0":I
    .end local v3    # "$this$editarCita_0E7RQCE_u24lambda_u247\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_1
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, p0

    check-cast v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;

    .restart local v3    # "$this$editarCita_0E7RQCE_u24lambda_u247\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    const/4 v4, 0x0

    .line 89
    .local v4, "$i$a$-runCatching-CitasRepository$editarCita$2\\1\\88\\0":I
    iget-object v5, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;->citasApi:Lorg/ies/tierno/applicationamani/data/remoto/CitasApi;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$editarCita$1;->L$0:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$editarCita$1;->L$1:Ljava/lang/Object;

    iput-wide p1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$editarCita$1;->J$0:J

    iput v4, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$editarCita$1;->I$0:I

    const/4 v6, 0x1

    iput v6, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$editarCita$1;->label:I

    invoke-interface {v5, p1, p2, p3, v0}, Lorg/ies/tierno/applicationamani/data/remoto/CitasApi;->editarCita(JLorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_1

    .line 88
    return-object v2

    .line 89
    :cond_1
    move v2, v4

    .end local v4    # "$i$a$-runCatching-CitasRepository$editarCita$2\\1\\88\\0":I
    .restart local v2    # "$i$a$-runCatching-CitasRepository$editarCita$2\\1\\88\\0":I
    :goto_1
    check-cast v5, Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;

    .line 88
    .end local v2    # "$i$a$-runCatching-CitasRepository$editarCita$2\\1\\88\\0":I
    .end local v3    # "$this$editarCita_0E7RQCE_u24lambda_u247\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 90
    :goto_2
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getAgendaPaciente-0E7RQCE(JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "idPaciente"    # J
    .param p3, "month"    # Ljava/lang/String;
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getAgendaPaciente$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getAgendaPaciente$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getAgendaPaciente$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getAgendaPaciente$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getAgendaPaciente$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getAgendaPaciente$1;

    invoke-direct {v0, p0, p4}, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getAgendaPaciente$1;-><init>(Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getAgendaPaciente$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 22
    iget v3, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getAgendaPaciente$1;->label:I

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
    iget v2, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getAgendaPaciente$1;->I$0:I

    .local v2, "$i$a$-runCatching-CitasRepository$getAgendaPaciente$2\\1\\25\\0":I
    iget-wide p1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getAgendaPaciente$1;->J$0:J

    iget-object v3, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getAgendaPaciente$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;

    .local v3, "$this$getAgendaPaciente_0E7RQCE_u24lambda_u240\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    iget-object v4, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getAgendaPaciente$1;->L$0:Ljava/lang/Object;

    move-object p3, v4

    check-cast p3, Ljava/lang/String;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v1

    goto :goto_1

    .end local v2    # "$i$a$-runCatching-CitasRepository$getAgendaPaciente$2\\1\\25\\0":I
    .end local v3    # "$this$getAgendaPaciente_0E7RQCE_u24lambda_u240\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 25
    :try_start_1
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, p0

    check-cast v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;

    .restart local v3    # "$this$getAgendaPaciente_0E7RQCE_u24lambda_u240\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    const/4 v4, 0x0

    .line 26
    .local v4, "$i$a$-runCatching-CitasRepository$getAgendaPaciente$2\\1\\25\\0":I
    iget-object v5, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;->citasApi:Lorg/ies/tierno/applicationamani/data/remoto/CitasApi;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getAgendaPaciente$1;->L$0:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getAgendaPaciente$1;->L$1:Ljava/lang/Object;

    iput-wide p1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getAgendaPaciente$1;->J$0:J

    iput v4, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getAgendaPaciente$1;->I$0:I

    const/4 v6, 0x1

    iput v6, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getAgendaPaciente$1;->label:I

    invoke-interface {v5, p1, p2, p3, v0}, Lorg/ies/tierno/applicationamani/data/remoto/CitasApi;->getAgendaPaciente(JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_1

    .line 22
    return-object v2

    .line 26
    :cond_1
    move v2, v4

    .end local v4    # "$i$a$-runCatching-CitasRepository$getAgendaPaciente$2\\1\\25\\0":I
    .restart local v2    # "$i$a$-runCatching-CitasRepository$getAgendaPaciente$2\\1\\25\\0":I
    :goto_1
    check-cast v5, Ljava/util/List;

    .line 25
    .end local v2    # "$i$a$-runCatching-CitasRepository$getAgendaPaciente$2\\1\\25\\0":I
    .end local v3    # "$this$getAgendaPaciente_0E7RQCE_u24lambda_u240\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 27
    :goto_2
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getAgendaPsicologo-0E7RQCE(JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "idPsicologo"    # J
    .param p3, "month"    # Ljava/lang/String;
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getAgendaPsicologo$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getAgendaPsicologo$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getAgendaPsicologo$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getAgendaPsicologo$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getAgendaPsicologo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getAgendaPsicologo$1;

    invoke-direct {v0, p0, p4}, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getAgendaPsicologo$1;-><init>(Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getAgendaPsicologo$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 29
    iget v3, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getAgendaPsicologo$1;->label:I

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
    iget v2, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getAgendaPsicologo$1;->I$0:I

    .local v2, "$i$a$-runCatching-CitasRepository$getAgendaPsicologo$2\\1\\32\\0":I
    iget-wide p1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getAgendaPsicologo$1;->J$0:J

    iget-object v3, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getAgendaPsicologo$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;

    .local v3, "$this$getAgendaPsicologo_0E7RQCE_u24lambda_u241\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    iget-object v4, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getAgendaPsicologo$1;->L$0:Ljava/lang/Object;

    move-object p3, v4

    check-cast p3, Ljava/lang/String;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v1

    goto :goto_1

    .end local v2    # "$i$a$-runCatching-CitasRepository$getAgendaPsicologo$2\\1\\32\\0":I
    .end local v3    # "$this$getAgendaPsicologo_0E7RQCE_u24lambda_u241\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 32
    :try_start_1
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, p0

    check-cast v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;

    .restart local v3    # "$this$getAgendaPsicologo_0E7RQCE_u24lambda_u241\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    const/4 v4, 0x0

    .line 33
    .local v4, "$i$a$-runCatching-CitasRepository$getAgendaPsicologo$2\\1\\32\\0":I
    iget-object v5, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;->citasApi:Lorg/ies/tierno/applicationamani/data/remoto/CitasApi;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getAgendaPsicologo$1;->L$0:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getAgendaPsicologo$1;->L$1:Ljava/lang/Object;

    iput-wide p1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getAgendaPsicologo$1;->J$0:J

    iput v4, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getAgendaPsicologo$1;->I$0:I

    const/4 v6, 0x1

    iput v6, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getAgendaPsicologo$1;->label:I

    invoke-interface {v5, p1, p2, p3, v0}, Lorg/ies/tierno/applicationamani/data/remoto/CitasApi;->getAgendaPsicologo(JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_1

    .line 29
    return-object v2

    .line 33
    :cond_1
    move v2, v4

    .end local v4    # "$i$a$-runCatching-CitasRepository$getAgendaPsicologo$2\\1\\32\\0":I
    .restart local v2    # "$i$a$-runCatching-CitasRepository$getAgendaPsicologo$2\\1\\32\\0":I
    :goto_1
    check-cast v5, Ljava/util/List;

    .line 32
    .end local v2    # "$i$a$-runCatching-CitasRepository$getAgendaPsicologo$2\\1\\32\\0":I
    .end local v3    # "$this$getAgendaPsicologo_0E7RQCE_u24lambda_u241\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 34
    :goto_2
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getDisponibilidadDia-BWLJW6A(JLjava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .param p1, "idPsicologo"    # J
    .param p3, "fecha"    # Ljava/lang/String;
    .param p4, "duracionMinutos"    # I
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lorg/ies/tierno/applicationamani/dto/citas/DisponibilidadDiaResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getDisponibilidadDia$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getDisponibilidadDia$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getDisponibilidadDia$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getDisponibilidadDia$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getDisponibilidadDia$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getDisponibilidadDia$1;

    invoke-direct {v0, p0, p5}, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getDisponibilidadDia$1;-><init>(Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v6, v0

    .local v6, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v7, v6, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getDisponibilidadDia$1;->result:Ljava/lang/Object;

    .local v7, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 43
    iget v1, v6, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getDisponibilidadDia$1;->label:I

    packed-switch v1, :pswitch_data_0

    move-wide v2, p1

    .end local v6    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v7    # "$result":Ljava/lang/Object;
    .end local p1    # "idPsicologo":J
    .local v2, "idPsicologo":J
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .end local v2    # "idPsicologo":J
    .restart local v6    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v7    # "$result":Ljava/lang/Object;
    .restart local p1    # "idPsicologo":J
    :pswitch_0
    iget v0, v6, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getDisponibilidadDia$1;->I$1:I

    .local v0, "$i$a$-runCatching-CitasRepository$getDisponibilidadDia$2\\1\\47\\0":I
    iget p4, v6, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getDisponibilidadDia$1;->I$0:I

    iget-wide p1, v6, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getDisponibilidadDia$1;->J$0:J

    iget-object v1, v6, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getDisponibilidadDia$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;

    .local v1, "$this$getDisponibilidadDia_BWLJW6A_u24lambda_u243\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    iget-object v2, v6, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getDisponibilidadDia$1;->L$0:Ljava/lang/Object;

    move-object p3, v2

    check-cast p3, Ljava/lang/String;

    :try_start_0
    invoke-static {v7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v2, p1

    move-object p1, v7

    goto :goto_1

    .line 47
    .end local v0    # "$i$a$-runCatching-CitasRepository$getDisponibilidadDia$2\\1\\47\\0":I
    .end local v1    # "$this$getDisponibilidadDia_BWLJW6A_u24lambda_u243\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 43
    :pswitch_1
    invoke-static {v7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 47
    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;

    move-object v8, v1

    .local v8, "$this$getDisponibilidadDia_BWLJW6A_u24lambda_u243\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    const/4 v9, 0x0

    .line 48
    .local v9, "$i$a$-runCatching-CitasRepository$getDisponibilidadDia$2\\1\\47\\0":I
    iget-object v1, v8, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;->citasApi:Lorg/ies/tierno/applicationamani/data/remoto/CitasApi;

    .line 49
    nop

    .line 50
    nop

    .line 51
    invoke-static {p4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v5

    .line 48
    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v6, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getDisponibilidadDia$1;->L$0:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v6, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getDisponibilidadDia$1;->L$1:Ljava/lang/Object;

    iput-wide p1, v6, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getDisponibilidadDia$1;->J$0:J

    iput p4, v6, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getDisponibilidadDia$1;->I$0:I

    iput v9, v6, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getDisponibilidadDia$1;->I$1:I

    const/4 v2, 0x1

    iput v2, v6, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getDisponibilidadDia$1;->label:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-wide v2, p1

    move-object v4, p3

    .end local p1    # "idPsicologo":J
    .end local p3    # "fecha":Ljava/lang/String;
    .restart local v2    # "idPsicologo":J
    .local v4, "fecha":Ljava/lang/String;
    :try_start_2
    invoke-interface/range {v1 .. v6}, Lorg/ies/tierno/applicationamani/data/remoto/CitasApi;->getDisponibilidadDia(JLjava/lang/String;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne p1, v0, :cond_1

    .line 43
    return-object v0

    .line 48
    :cond_1
    move-object p3, v4

    move-object v1, v8

    move v0, v9

    .line 43
    .end local v4    # "fecha":Ljava/lang/String;
    .end local v8    # "$this$getDisponibilidadDia_BWLJW6A_u24lambda_u243\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    .end local v9    # "$i$a$-runCatching-CitasRepository$getDisponibilidadDia$2\\1\\47\\0":I
    .restart local v0    # "$i$a$-runCatching-CitasRepository$getDisponibilidadDia$2\\1\\47\\0":I
    .restart local v1    # "$this$getDisponibilidadDia_BWLJW6A_u24lambda_u243\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    .restart local p3    # "fecha":Ljava/lang/String;
    :goto_1
    :try_start_3
    check-cast p1, Lorg/ies/tierno/applicationamani/dto/citas/DisponibilidadDiaResponse;

    .line 52
    nop

    .line 47
    .end local v0    # "$i$a$-runCatching-CitasRepository$getDisponibilidadDia$2\\1\\47\\0":I
    .end local v1    # "$this$getDisponibilidadDia_BWLJW6A_u24lambda_u243\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-wide p1, v2

    goto :goto_2

    .end local p3    # "fecha":Ljava/lang/String;
    .restart local v4    # "fecha":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-wide p1, v2

    move-object p3, v4

    goto :goto_2

    .end local v2    # "idPsicologo":J
    .end local v4    # "fecha":Ljava/lang/String;
    .restart local p1    # "idPsicologo":J
    .restart local p3    # "fecha":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-wide v2, p1

    move-object v4, p3

    :goto_2
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-wide v2, p1

    move-object p1, v0

    .line 53
    .end local p1    # "idPsicologo":J
    .restart local v2    # "idPsicologo":J
    :goto_3
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getDuracion-gIAlu-s(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "idPsicologo"    # J
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getDuracion$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getDuracion$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getDuracion$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getDuracion$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getDuracion$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getDuracion$1;

    invoke-direct {v0, p0, p3}, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getDuracion$1;-><init>(Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getDuracion$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 37
    iget v3, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getDuracion$1;->label:I

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
    iget v2, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getDuracion$1;->I$0:I

    .local v2, "$i$a$-runCatching-CitasRepository$getDuracion$2\\1\\39\\0":I
    iget-wide p1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getDuracion$1;->J$0:J

    iget-object v3, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getDuracion$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;

    .local v3, "$this$getDuracion_gIAlu_s_u24lambda_u242\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v1

    goto :goto_1

    .end local v2    # "$i$a$-runCatching-CitasRepository$getDuracion$2\\1\\39\\0":I
    .end local v3    # "$this$getDuracion_gIAlu_s_u24lambda_u242\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 39
    :try_start_1
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, p0

    check-cast v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;

    .restart local v3    # "$this$getDuracion_gIAlu_s_u24lambda_u242\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    const/4 v4, 0x0

    .line 40
    .local v4, "$i$a$-runCatching-CitasRepository$getDuracion$2\\1\\39\\0":I
    iget-object v5, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;->citasApi:Lorg/ies/tierno/applicationamani/data/remoto/CitasApi;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getDuracion$1;->L$0:Ljava/lang/Object;

    iput-wide p1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getDuracion$1;->J$0:J

    iput v4, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getDuracion$1;->I$0:I

    const/4 v6, 0x1

    iput v6, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getDuracion$1;->label:I

    invoke-interface {v5, p1, p2, v0}, Lorg/ies/tierno/applicationamani/data/remoto/CitasApi;->getDuracion(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_1

    .line 37
    return-object v2

    .line 40
    :cond_1
    move v2, v4

    .end local v4    # "$i$a$-runCatching-CitasRepository$getDuracion$2\\1\\39\\0":I
    .restart local v2    # "$i$a$-runCatching-CitasRepository$getDuracion$2\\1\\39\\0":I
    :goto_1
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v4

    .end local v2    # "$i$a$-runCatching-CitasRepository$getDuracion$2\\1\\39\\0":I
    .end local v3    # "$this$getDuracion_gIAlu_s_u24lambda_u242\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v2

    .line 39
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 41
    :goto_2
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getHorarioActual-gIAlu-s(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "idPsicologo"    # J
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lorg/ies/tierno/applicationamani/dto/agenda/request/HorarioRequestDTO;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getHorarioActual$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getHorarioActual$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getHorarioActual$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getHorarioActual$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getHorarioActual$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getHorarioActual$1;

    invoke-direct {v0, p0, p3}, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getHorarioActual$1;-><init>(Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getHorarioActual$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 142
    iget v3, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getHorarioActual$1;->label:I

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
    iget v2, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getHorarioActual$1;->I$0:I

    .local v2, "$i$a$-runCatching-CitasRepository$getHorarioActual$2\\1\\144\\0":I
    iget-wide p1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getHorarioActual$1;->J$0:J

    iget-object v3, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getHorarioActual$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;

    .local v3, "$this$getHorarioActual_gIAlu_s_u24lambda_u2414\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v1

    goto :goto_1

    .end local v2    # "$i$a$-runCatching-CitasRepository$getHorarioActual$2\\1\\144\\0":I
    .end local v3    # "$this$getHorarioActual_gIAlu_s_u24lambda_u2414\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 144
    :try_start_1
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, p0

    check-cast v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;

    .restart local v3    # "$this$getHorarioActual_gIAlu_s_u24lambda_u2414\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    const/4 v4, 0x0

    .line 145
    .local v4, "$i$a$-runCatching-CitasRepository$getHorarioActual$2\\1\\144\\0":I
    iget-object v5, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;->citasApi:Lorg/ies/tierno/applicationamani/data/remoto/CitasApi;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getHorarioActual$1;->L$0:Ljava/lang/Object;

    iput-wide p1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getHorarioActual$1;->J$0:J

    iput v4, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getHorarioActual$1;->I$0:I

    const/4 v6, 0x1

    iput v6, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getHorarioActual$1;->label:I

    invoke-interface {v5, p1, p2, v0}, Lorg/ies/tierno/applicationamani/data/remoto/CitasApi;->getHorarioActual(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_1

    .line 142
    return-object v2

    .line 145
    :cond_1
    move v2, v4

    .end local v4    # "$i$a$-runCatching-CitasRepository$getHorarioActual$2\\1\\144\\0":I
    .restart local v2    # "$i$a$-runCatching-CitasRepository$getHorarioActual$2\\1\\144\\0":I
    :goto_1
    check-cast v5, Lorg/ies/tierno/applicationamani/dto/agenda/request/HorarioRequestDTO;

    .line 144
    .end local v2    # "$i$a$-runCatching-CitasRepository$getHorarioActual$2\\1\\144\\0":I
    .end local v3    # "$this$getHorarioActual_gIAlu_s_u24lambda_u2414\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 146
    :goto_2
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getPacientesDelPsicologo-gIAlu-s(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20
    .param p1, "idPsicologo"    # J
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/login/PacientesAsignadoDTO;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    instance-of v0, v2, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getPacientesDelPsicologo$1;

    if-eqz v0, :cond_0

    move-object v0, v2

    check-cast v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getPacientesDelPsicologo$1;

    iget v3, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getPacientesDelPsicologo$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v3, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getPacientesDelPsicologo$1;->label:I

    sub-int/2addr v3, v4

    iput v3, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getPacientesDelPsicologo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getPacientesDelPsicologo$1;

    invoke-direct {v0, v1, v2}, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getPacientesDelPsicologo$1;-><init>(Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v3, v0

    .local v3, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v4, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getPacientesDelPsicologo$1;->result:Ljava/lang/Object;

    .local v4, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 92
    iget v5, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getPacientesDelPsicologo$1;->label:I

    const/4 v6, 0x1

    packed-switch v5, :pswitch_data_0

    move-wide/from16 v9, p1

    .end local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v4    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v3    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v4    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget v0, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getPacientesDelPsicologo$1;->I$0:I

    .local v0, "$i$a$-runCatching-CitasRepository$getPacientesDelPsicologo$2\\1\\92\\0":I
    iget-wide v7, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getPacientesDelPsicologo$1;->J$0:J

    .end local p1    # "idPsicologo":J
    .local v7, "idPsicologo":J
    iget-object v5, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getPacientesDelPsicologo$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;

    .local v5, "$this$getPacientesDelPsicologo_gIAlu_s_u24lambda_u249\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    :try_start_0
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v4

    goto :goto_1

    .end local v0    # "$i$a$-runCatching-CitasRepository$getPacientesDelPsicologo$2\\1\\92\\0":I
    .end local v5    # "$this$getPacientesDelPsicologo_gIAlu_s_u24lambda_u249\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    :catchall_0
    move-exception v0

    goto/16 :goto_6

    .end local v7    # "idPsicologo":J
    .restart local p1    # "idPsicologo":J
    :pswitch_1
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_1
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v5, v1

    check-cast v5, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;

    .restart local v5    # "$this$getPacientesDelPsicologo_gIAlu_s_u24lambda_u249\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    const/4 v7, 0x0

    .line 93
    .local v7, "$i$a$-runCatching-CitasRepository$getPacientesDelPsicologo$2\\1\\92\\0":I
    iget-object v8, v5, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;->citasApi:Lorg/ies/tierno/applicationamani/data/remoto/CitasApi;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getPacientesDelPsicologo$1;->L$0:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-wide/from16 v9, p1

    :try_start_2
    iput-wide v9, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getPacientesDelPsicologo$1;->J$0:J

    iput v7, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getPacientesDelPsicologo$1;->I$0:I

    iput v6, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getPacientesDelPsicologo$1;->label:I

    invoke-interface {v8, v3}, Lorg/ies/tierno/applicationamani/data/remoto/CitasApi;->getPsicologosConPacientes(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v8, v0, :cond_1

    .line 92
    return-object v0

    .line 93
    :cond_1
    move v0, v7

    move-wide/from16 v18, v9

    move-object v9, v8

    move-wide/from16 v7, v18

    .line 92
    .end local p1    # "idPsicologo":J
    .restart local v0    # "$i$a$-runCatching-CitasRepository$getPacientesDelPsicologo$2\\1\\92\\0":I
    .local v7, "idPsicologo":J
    :goto_1
    :try_start_3
    check-cast v9, Ljava/util/List;

    .line 94
    .local v9, "todosLosPsicologos\\1":Ljava/util/List;
    move-object v10, v9

    check-cast v10, Ljava/lang/Iterable;

    .line 95
    nop

    .local v10, "$this$firstOrNull\\2":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 148
    .local v11, "$i$f$firstOrNull\\2\\95":I
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .local v13, "element\\2":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;

    .local v14, "it\\3":Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;
    const/4 v15, 0x0

    .line 95
    .local v15, "$i$a$-firstOrNull-CitasRepository$getPacientesDelPsicologo$2$1\\3\\148\\1":I
    invoke-virtual {v14}, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->getIdPsicologo()J

    move-result-wide v16

    cmp-long v16, v16, v7

    if-nez v16, :cond_3

    move/from16 v16, v6

    goto :goto_2

    :cond_3
    const/16 v16, 0x0

    .line 148
    .end local v14    # "it\\3":Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;
    .end local v15    # "$i$a$-firstOrNull-CitasRepository$getPacientesDelPsicologo$2$1\\3\\148\\1":I
    :goto_2
    if-eqz v16, :cond_2

    goto :goto_3

    .line 149
    .end local v13    # "element\\2":Ljava/lang/Object;
    :cond_4
    const/4 v13, 0x0

    .line 95
    .end local v10    # "$this$firstOrNull\\2":Ljava/lang/Iterable;
    .end local v11    # "$i$f$firstOrNull\\2\\95":I
    :goto_3
    check-cast v13, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;

    .line 96
    if-eqz v13, :cond_5

    .line 94
    nop

    .line 96
    invoke-virtual {v13}, Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;->getPacientes()Ljava/util/List;

    move-result-object v6

    .line 94
    if-eqz v6, :cond_5

    goto :goto_4

    .line 97
    :cond_5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 92
    .end local v0    # "$i$a$-runCatching-CitasRepository$getPacientesDelPsicologo$2\\1\\92\\0":I
    .end local v5    # "$this$getPacientesDelPsicologo_gIAlu_s_u24lambda_u249\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    .end local v9    # "todosLosPsicologos\\1":Ljava/util/List;
    :goto_4
    invoke-static {v6}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7

    .end local v7    # "idPsicologo":J
    .restart local p1    # "idPsicologo":J
    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-wide/from16 v9, p1

    :goto_5
    move-wide v7, v9

    .end local p1    # "idPsicologo":J
    .restart local v7    # "idPsicologo":J
    :goto_6
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 98
    :goto_7
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getTerapias-IoAF18A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/citas/TerapiaResponseDTO;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getTerapias$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getTerapias$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getTerapias$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getTerapias$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getTerapias$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getTerapias$1;

    invoke-direct {v0, p0, p1}, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getTerapias$1;-><init>(Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getTerapias$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 138
    iget v3, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getTerapias$1;->label:I

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
    iget v2, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getTerapias$1;->I$0:I

    .local v2, "$i$a$-runCatching-CitasRepository$getTerapias$2\\1\\138\\0":I
    iget-object v3, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getTerapias$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;

    .local v3, "$this$getTerapias_IoAF18A_u24lambda_u2413\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v1

    goto :goto_1

    .end local v2    # "$i$a$-runCatching-CitasRepository$getTerapias$2\\1\\138\\0":I
    .end local v3    # "$this$getTerapias_IoAF18A_u24lambda_u2413\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_1
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, p0

    check-cast v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;

    .restart local v3    # "$this$getTerapias_IoAF18A_u24lambda_u2413\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    const/4 v4, 0x0

    .line 139
    .local v4, "$i$a$-runCatching-CitasRepository$getTerapias$2\\1\\138\\0":I
    iget-object v5, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;->citasApi:Lorg/ies/tierno/applicationamani/data/remoto/CitasApi;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getTerapias$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getTerapias$1;->I$0:I

    const/4 v6, 0x1

    iput v6, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository$getTerapias$1;->label:I

    invoke-interface {v5, v0}, Lorg/ies/tierno/applicationamani/data/remoto/CitasApi;->getTerapias(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_1

    .line 138
    return-object v2

    .line 139
    :cond_1
    move v2, v4

    .end local v4    # "$i$a$-runCatching-CitasRepository$getTerapias$2\\1\\138\\0":I
    .restart local v2    # "$i$a$-runCatching-CitasRepository$getTerapias$2\\1\\138\\0":I
    :goto_1
    check-cast v5, Ljava/util/List;

    .line 138
    .end local v2    # "$i$a$-runCatching-CitasRepository$getTerapias$2\\1\\138\\0":I
    .end local v3    # "$this$getTerapias_IoAF18A_u24lambda_u2413\\1":Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;
    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 140
    :goto_2
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
