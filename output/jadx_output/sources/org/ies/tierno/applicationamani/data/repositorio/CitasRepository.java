package org.ies.tierno.applicationamani.data.repositorio;

import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.time.LocalTime;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.jvm.internal.Intrinsics;
import org.ies.tierno.applicationamani.data.remoto.CitasApi;
import org.ies.tierno.applicationamani.domain.models.citas.AgendaItemDTO;
import org.ies.tierno.applicationamani.domain.models.enumm.EstadoCita;
import org.ies.tierno.applicationamani.dto.agenda.request.HorarioRequestDTO;
import org.ies.tierno.applicationamani.dto.citas.BloqueoRequestDTO;
import org.ies.tierno.applicationamani.dto.citas.CitaAdminResponseDTO;
import org.ies.tierno.applicationamani.dto.citas.CrearCitaRequestDTO;
import org.ies.tierno.applicationamani.dto.citas.DisponibilidadDiaResponse;
import org.ies.tierno.applicationamani.dto.citas.TerapiaResponseDTO;
import org.ies.tierno.applicationamani.dto.login.ListaPacientesAndPsicologo;
import org.ies.tierno.applicationamani.dto.login.PacientesAsignadoDTO;
import org.ies.tierno.applicationamani.dto.requestPaciente.CitaRequest;

/* JADX INFO: compiled from: CitasRepository.kt */
/* JADX INFO: loaded from: classes16.dex */
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0000\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J,\u0010\u000f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b0\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0086@¢\u0006\u0004\b\r\u0010\u000eJ,\u0010\u0012\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b0\n2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0086@¢\u0006\u0004\b\u0011\u0010\u000eJ\u001e\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00130\n2\u0006\u0010\u0010\u001a\u00020\u0006H\u0086@¢\u0006\u0004\b\u0014\u0010\u0015J.\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00190\n2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\u0013H\u0086@¢\u0006\u0004\b\u001a\u0010\u001bJ\u001e\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u001f0\n2\u0006\u0010\u001e\u001a\u00020\u001dH\u0086@¢\u0006\u0004\b \u0010!JN\u0010*\u001a\b\u0012\u0004\u0012\u00020\f0\n2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020#2\u0006\u0010%\u001a\u00020$2\u0006\u0010\u0018\u001a\u00020\u00132\u0006\u0010&\u001a\u00020\b2\u0006\u0010'\u001a\u00020\u0006H\u0086@¢\u0006\u0004\b(\u0010)J\u001e\u0010-\u001a\b\u0012\u0004\u0012\u00020\f0\n2\u0006\u0010+\u001a\u00020\u0006H\u0086@¢\u0006\u0004\b,\u0010\u0015J&\u00100\u001a\b\u0012\u0004\u0012\u00020\f0\n2\u0006\u0010+\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u001dH\u0086@¢\u0006\u0004\b.\u0010/J$\u00103\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002010\u000b0\n2\u0006\u0010\u0010\u001a\u00020\u0006H\u0086@¢\u0006\u0004\b2\u0010\u0015J&\u00108\u001a\b\u0012\u0004\u0012\u0002050\n2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u000204H\u0086@¢\u0006\u0004\b6\u00107J&\u0010<\u001a\b\u0012\u0004\u0012\u0002050\n2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u00109\u001a\u00020\u0013H\u0086@¢\u0006\u0004\b:\u0010;JR\u0010C\u001a\b\u0012\u0004\u0012\u0002050\n2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\b2\u0006\u0010>\u001a\u00020=2\n\b\u0002\u0010?\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010@\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\bH\u0086@¢\u0006\u0004\bA\u0010BJ\u001c\u0010G\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020D0\u000b0\nH\u0086@¢\u0006\u0004\bE\u0010FJ\u001e\u0010I\u001a\b\u0012\u0004\u0012\u0002040\n2\u0006\u0010\u0010\u001a\u00020\u0006H\u0086@¢\u0006\u0004\bH\u0010\u0015R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010J¨\u0006K"}, d2 = {"Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;", "", "Lorg/ies/tierno/applicationamani/data/remoto/CitasApi;", "citasApi", "<init>", "(Lorg/ies/tierno/applicationamani/data/remoto/CitasApi;)V", "", "idPaciente", "", "month", "Lkotlin/Result;", "", "Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;", "getAgendaPaciente-0E7RQCE", "(JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getAgendaPaciente", "idPsicologo", "getAgendaPsicologo-0E7RQCE", "getAgendaPsicologo", "", "getDuracion-gIAlu-s", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getDuracion", "fecha", "duracionMinutos", "Lorg/ies/tierno/applicationamani/dto/citas/DisponibilidadDiaResponse;", "getDisponibilidadDia-BWLJW6A", "(JLjava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getDisponibilidadDia", "Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;", "request", "Lorg/ies/tierno/applicationamani/dto/citas/CitaAdminResponseDTO;", "crearCita-gIAlu-s", "(Lorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "crearCita", "j$/time/LocalDate", "j$/time/LocalTime", "hora", "motivo", "idTipoTerapia", "crearCitaPsicologo-eH_QyT8", "(JJLj$/time/LocalDate;Lj$/time/LocalTime;ILjava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "crearCitaPsicologo", "idCita", "cancelarCita-gIAlu-s", "cancelarCita", "editarCita-0E7RQCE", "(JLorg/ies/tierno/applicationamani/dto/requestPaciente/CitaRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "editarCita", "Lorg/ies/tierno/applicationamani/dto/login/PacientesAsignadoDTO;", "getPacientesDelPsicologo-gIAlu-s", "getPacientesDelPsicologo", "Lorg/ies/tierno/applicationamani/dto/agenda/request/HorarioRequestDTO;", "", "actualizarHorario-0E7RQCE", "(JLorg/ies/tierno/applicationamani/dto/agenda/request/HorarioRequestDTO;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "actualizarHorario", "duracion", "actualizarDuracion-0E7RQCE", "(JILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "actualizarDuracion", "", "yaNoDisponible", "horaInicio", "horaFin", "alternarDiaNoDisponible-bMdYcbs", "(JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "alternarDiaNoDisponible", "Lorg/ies/tierno/applicationamani/dto/citas/TerapiaResponseDTO;", "getTerapias-IoAF18A", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getTerapias", "getHorarioActual-gIAlu-s", "getHorarioActual", "Lorg/ies/tierno/applicationamani/data/remoto/CitasApi;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class CitasRepository {
    public static final int $stable = 8;
    private final CitasApi citasApi;

    public CitasRepository(CitasApi citasApi) {
        Intrinsics.checkNotNullParameter(citasApi, "citasApi");
        this.citasApi = citasApi;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: getAgendaPaciente-0E7RQCE, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10364getAgendaPaciente0E7RQCE(long idPaciente, String month, Continuation<? super Result<? extends List<AgendaItemDTO>>> continuation) {
        CitasRepository$getAgendaPaciente$1 citasRepository$getAgendaPaciente$1;
        Object agendaPaciente;
        if (continuation instanceof CitasRepository$getAgendaPaciente$1) {
            citasRepository$getAgendaPaciente$1 = (CitasRepository$getAgendaPaciente$1) continuation;
            if ((citasRepository$getAgendaPaciente$1.label & Integer.MIN_VALUE) != 0) {
                citasRepository$getAgendaPaciente$1.label -= Integer.MIN_VALUE;
            } else {
                citasRepository$getAgendaPaciente$1 = new CitasRepository$getAgendaPaciente$1(this, continuation);
            }
        }
        Object $result = citasRepository$getAgendaPaciente$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            switch (citasRepository$getAgendaPaciente$1.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    Result.Companion companion = Result.INSTANCE;
                    CitasRepository citasRepository = this;
                    CitasApi citasApi = citasRepository.citasApi;
                    citasRepository$getAgendaPaciente$1.L$0 = SpillingKt.nullOutSpilledVariable(month);
                    citasRepository$getAgendaPaciente$1.L$1 = SpillingKt.nullOutSpilledVariable(citasRepository);
                    citasRepository$getAgendaPaciente$1.J$0 = idPaciente;
                    citasRepository$getAgendaPaciente$1.I$0 = 0;
                    citasRepository$getAgendaPaciente$1.label = 1;
                    agendaPaciente = citasApi.getAgendaPaciente(idPaciente, month, citasRepository$getAgendaPaciente$1);
                    if (agendaPaciente == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    break;
                case 1:
                    int i = citasRepository$getAgendaPaciente$1.I$0;
                    long idPaciente2 = citasRepository$getAgendaPaciente$1.J$0;
                    ResultKt.throwOnFailure($result);
                    agendaPaciente = $result;
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return Result.m8542constructorimpl((List) agendaPaciente);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m8542constructorimpl(ResultKt.createFailure(th));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: getAgendaPsicologo-0E7RQCE, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10365getAgendaPsicologo0E7RQCE(long idPsicologo, String month, Continuation<? super Result<? extends List<AgendaItemDTO>>> continuation) {
        CitasRepository$getAgendaPsicologo$1 citasRepository$getAgendaPsicologo$1;
        Object agendaPsicologo;
        if (continuation instanceof CitasRepository$getAgendaPsicologo$1) {
            citasRepository$getAgendaPsicologo$1 = (CitasRepository$getAgendaPsicologo$1) continuation;
            if ((citasRepository$getAgendaPsicologo$1.label & Integer.MIN_VALUE) != 0) {
                citasRepository$getAgendaPsicologo$1.label -= Integer.MIN_VALUE;
            } else {
                citasRepository$getAgendaPsicologo$1 = new CitasRepository$getAgendaPsicologo$1(this, continuation);
            }
        }
        Object $result = citasRepository$getAgendaPsicologo$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            switch (citasRepository$getAgendaPsicologo$1.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    Result.Companion companion = Result.INSTANCE;
                    CitasRepository citasRepository = this;
                    CitasApi citasApi = citasRepository.citasApi;
                    citasRepository$getAgendaPsicologo$1.L$0 = SpillingKt.nullOutSpilledVariable(month);
                    citasRepository$getAgendaPsicologo$1.L$1 = SpillingKt.nullOutSpilledVariable(citasRepository);
                    citasRepository$getAgendaPsicologo$1.J$0 = idPsicologo;
                    citasRepository$getAgendaPsicologo$1.I$0 = 0;
                    citasRepository$getAgendaPsicologo$1.label = 1;
                    agendaPsicologo = citasApi.getAgendaPsicologo(idPsicologo, month, citasRepository$getAgendaPsicologo$1);
                    if (agendaPsicologo == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    break;
                case 1:
                    int i = citasRepository$getAgendaPsicologo$1.I$0;
                    long idPsicologo2 = citasRepository$getAgendaPsicologo$1.J$0;
                    ResultKt.throwOnFailure($result);
                    agendaPsicologo = $result;
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return Result.m8542constructorimpl((List) agendaPsicologo);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m8542constructorimpl(ResultKt.createFailure(th));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: getDuracion-gIAlu-s, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10367getDuraciongIAlus(long idPsicologo, Continuation<? super Result<Integer>> continuation) {
        CitasRepository$getDuracion$1 citasRepository$getDuracion$1;
        Object duracion;
        if (continuation instanceof CitasRepository$getDuracion$1) {
            citasRepository$getDuracion$1 = (CitasRepository$getDuracion$1) continuation;
            if ((citasRepository$getDuracion$1.label & Integer.MIN_VALUE) != 0) {
                citasRepository$getDuracion$1.label -= Integer.MIN_VALUE;
            } else {
                citasRepository$getDuracion$1 = new CitasRepository$getDuracion$1(this, continuation);
            }
        }
        Object $result = citasRepository$getDuracion$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            switch (citasRepository$getDuracion$1.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    Result.Companion companion = Result.INSTANCE;
                    CitasRepository citasRepository = this;
                    CitasApi citasApi = citasRepository.citasApi;
                    citasRepository$getDuracion$1.L$0 = SpillingKt.nullOutSpilledVariable(citasRepository);
                    citasRepository$getDuracion$1.J$0 = idPsicologo;
                    citasRepository$getDuracion$1.I$0 = 0;
                    citasRepository$getDuracion$1.label = 1;
                    duracion = citasApi.getDuracion(idPsicologo, citasRepository$getDuracion$1);
                    if (duracion == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    break;
                case 1:
                    int i = citasRepository$getDuracion$1.I$0;
                    long idPsicologo2 = citasRepository$getDuracion$1.J$0;
                    ResultKt.throwOnFailure($result);
                    duracion = $result;
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return Result.m8542constructorimpl(Boxing.boxInt(((Number) duracion).intValue()));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m8542constructorimpl(ResultKt.createFailure(th));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: getDisponibilidadDia-BWLJW6A, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10366getDisponibilidadDiaBWLJW6A(long idPsicologo, String fecha, int duracionMinutos, Continuation<? super Result<DisponibilidadDiaResponse>> continuation) {
        CitasRepository$getDisponibilidadDia$1 citasRepository$getDisponibilidadDia$1;
        long idPsicologo2;
        Object disponibilidadDia;
        if (continuation instanceof CitasRepository$getDisponibilidadDia$1) {
            citasRepository$getDisponibilidadDia$1 = (CitasRepository$getDisponibilidadDia$1) continuation;
            if ((citasRepository$getDisponibilidadDia$1.label & Integer.MIN_VALUE) != 0) {
                citasRepository$getDisponibilidadDia$1.label -= Integer.MIN_VALUE;
            } else {
                citasRepository$getDisponibilidadDia$1 = new CitasRepository$getDisponibilidadDia$1(this, continuation);
            }
        }
        CitasRepository$getDisponibilidadDia$1 citasRepository$getDisponibilidadDia$12 = citasRepository$getDisponibilidadDia$1;
        Object $result = citasRepository$getDisponibilidadDia$12.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (citasRepository$getDisponibilidadDia$12.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                try {
                    Result.Companion companion = Result.INSTANCE;
                    CitasRepository citasRepository = this;
                    CitasApi citasApi = citasRepository.citasApi;
                    Integer numBoxInt = Boxing.boxInt(duracionMinutos);
                    citasRepository$getDisponibilidadDia$12.L$0 = SpillingKt.nullOutSpilledVariable(fecha);
                    citasRepository$getDisponibilidadDia$12.L$1 = SpillingKt.nullOutSpilledVariable(citasRepository);
                    citasRepository$getDisponibilidadDia$12.J$0 = idPsicologo;
                    citasRepository$getDisponibilidadDia$12.I$0 = duracionMinutos;
                    citasRepository$getDisponibilidadDia$12.I$1 = 0;
                    citasRepository$getDisponibilidadDia$12.label = 1;
                    idPsicologo2 = idPsicologo;
                    try {
                        disponibilidadDia = citasApi.getDisponibilidadDia(idPsicologo2, fecha, numBoxInt, citasRepository$getDisponibilidadDia$12);
                        if (disponibilidadDia == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        try {
                            return Result.m8542constructorimpl((DisponibilidadDiaResponse) disponibilidadDia);
                        } catch (Throwable th) {
                            th = th;
                            idPsicologo = idPsicologo2;
                            Result.Companion companion2 = Result.INSTANCE;
                            return Result.m8542constructorimpl(ResultKt.createFailure(th));
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        idPsicologo = idPsicologo2;
                        Result.Companion companion22 = Result.INSTANCE;
                        return Result.m8542constructorimpl(ResultKt.createFailure(th));
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
                break;
            case 1:
                int i = citasRepository$getDisponibilidadDia$12.I$1;
                int duracionMinutos2 = citasRepository$getDisponibilidadDia$12.I$0;
                idPsicologo = citasRepository$getDisponibilidadDia$12.J$0;
                try {
                    ResultKt.throwOnFailure($result);
                    idPsicologo2 = idPsicologo;
                    disponibilidadDia = $result;
                    return Result.m8542constructorimpl((DisponibilidadDiaResponse) disponibilidadDia);
                } catch (Throwable th4) {
                    th = th4;
                    Result.Companion companion222 = Result.INSTANCE;
                    return Result.m8542constructorimpl(ResultKt.createFailure(th));
                }
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: crearCita-gIAlu-s, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10361crearCitagIAlus(CitaRequest request, Continuation<? super Result<CitaAdminResponseDTO>> continuation) {
        CitasRepository$crearCita$1 citasRepository$crearCita$1;
        Object objCrearCita;
        if (continuation instanceof CitasRepository$crearCita$1) {
            citasRepository$crearCita$1 = (CitasRepository$crearCita$1) continuation;
            if ((citasRepository$crearCita$1.label & Integer.MIN_VALUE) != 0) {
                citasRepository$crearCita$1.label -= Integer.MIN_VALUE;
            } else {
                citasRepository$crearCita$1 = new CitasRepository$crearCita$1(this, continuation);
            }
        }
        Object $result = citasRepository$crearCita$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            switch (citasRepository$crearCita$1.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    Result.Companion companion = Result.INSTANCE;
                    CitasRepository citasRepository = this;
                    CitasApi citasApi = citasRepository.citasApi;
                    citasRepository$crearCita$1.L$0 = SpillingKt.nullOutSpilledVariable(request);
                    citasRepository$crearCita$1.L$1 = SpillingKt.nullOutSpilledVariable(citasRepository);
                    citasRepository$crearCita$1.I$0 = 0;
                    citasRepository$crearCita$1.label = 1;
                    objCrearCita = citasApi.crearCita(request, citasRepository$crearCita$1);
                    if (objCrearCita == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    break;
                case 1:
                    int i = citasRepository$crearCita$1.I$0;
                    ResultKt.throwOnFailure($result);
                    objCrearCita = $result;
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return Result.m8542constructorimpl((CitaAdminResponseDTO) objCrearCita);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m8542constructorimpl(ResultKt.createFailure(th));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    /* JADX INFO: renamed from: crearCitaPsicologo-eH_QyT8, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10362crearCitaPsicologoeH_QyT8(long idPsicologo, long idPaciente, LocalDate fecha, LocalTime hora, int duracionMinutos, String motivo, long idTipoTerapia, Continuation<? super Result<AgendaItemDTO>> continuation) {
        CitasRepository$crearCitaPsicologo$1 citasRepository$crearCitaPsicologo$1;
        long j;
        CrearCitaRequestDTO crearCitaRequestDTO;
        CitasApi citasApi;
        Object objCrearCitaPsicologo;
        if (continuation instanceof CitasRepository$crearCitaPsicologo$1) {
            citasRepository$crearCitaPsicologo$1 = (CitasRepository$crearCitaPsicologo$1) continuation;
            if ((citasRepository$crearCitaPsicologo$1.label & Integer.MIN_VALUE) != 0) {
                citasRepository$crearCitaPsicologo$1.label -= Integer.MIN_VALUE;
            } else {
                citasRepository$crearCitaPsicologo$1 = new CitasRepository$crearCitaPsicologo$1(this, continuation);
            }
        }
        CitasRepository$crearCitaPsicologo$1 citasRepository$crearCitaPsicologo$12 = citasRepository$crearCitaPsicologo$1;
        Object $result = citasRepository$crearCitaPsicologo$12.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (citasRepository$crearCitaPsicologo$12.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                try {
                    Result.Companion companion = Result.INSTANCE;
                    CitasRepository citasRepository = this;
                    LocalDateTime localDateTimeOf = LocalDateTime.of(fecha, hora);
                    Intrinsics.checkNotNullExpressionValue(localDateTimeOf, "of(...)");
                    try {
                        crearCitaRequestDTO = new CrearCitaRequestDTO(idPaciente, idPsicologo, localDateTimeOf, duracionMinutos, motivo, EstadoCita.pendiente, idTipoTerapia);
                        citasApi = citasRepository.citasApi;
                        citasRepository$crearCitaPsicologo$12.L$0 = SpillingKt.nullOutSpilledVariable(fecha);
                        citasRepository$crearCitaPsicologo$12.L$1 = SpillingKt.nullOutSpilledVariable(hora);
                        citasRepository$crearCitaPsicologo$12.L$2 = SpillingKt.nullOutSpilledVariable(motivo);
                        citasRepository$crearCitaPsicologo$12.L$3 = SpillingKt.nullOutSpilledVariable(citasRepository);
                        citasRepository$crearCitaPsicologo$12.L$4 = SpillingKt.nullOutSpilledVariable(crearCitaRequestDTO);
                        try {
                            citasRepository$crearCitaPsicologo$12.J$0 = idPsicologo;
                        } catch (Throwable th) {
                            th = th;
                            j = idTipoTerapia;
                            Result.Companion companion2 = Result.INSTANCE;
                            return Result.m8542constructorimpl(ResultKt.createFailure(th));
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        j = idTipoTerapia;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
                try {
                    citasRepository$crearCitaPsicologo$12.J$1 = idPaciente;
                    try {
                        citasRepository$crearCitaPsicologo$12.I$0 = duracionMinutos;
                        j = idTipoTerapia;
                        try {
                            citasRepository$crearCitaPsicologo$12.J$2 = j;
                            citasRepository$crearCitaPsicologo$12.I$1 = 0;
                            citasRepository$crearCitaPsicologo$12.label = 1;
                            objCrearCitaPsicologo = citasApi.crearCitaPsicologo(crearCitaRequestDTO, citasRepository$crearCitaPsicologo$12);
                            if (objCrearCitaPsicologo == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            try {
                                return Result.m8542constructorimpl((AgendaItemDTO) objCrearCitaPsicologo);
                            } catch (Throwable th4) {
                                th = th4;
                                Result.Companion companion22 = Result.INSTANCE;
                                return Result.m8542constructorimpl(ResultKt.createFailure(th));
                            }
                        } catch (Throwable th5) {
                            th = th5;
                            Result.Companion companion222 = Result.INSTANCE;
                            return Result.m8542constructorimpl(ResultKt.createFailure(th));
                        }
                    } catch (Throwable th6) {
                        th = th6;
                        j = idTipoTerapia;
                        Result.Companion companion2222 = Result.INSTANCE;
                        return Result.m8542constructorimpl(ResultKt.createFailure(th));
                    }
                } catch (Throwable th7) {
                    th = th7;
                    j = idTipoTerapia;
                    Result.Companion companion22222 = Result.INSTANCE;
                    return Result.m8542constructorimpl(ResultKt.createFailure(th));
                }
            case 1:
                int i = citasRepository$crearCitaPsicologo$12.I$1;
                long j2 = citasRepository$crearCitaPsicologo$12.J$2;
                int i2 = citasRepository$crearCitaPsicologo$12.I$0;
                long j3 = citasRepository$crearCitaPsicologo$12.J$1;
                long j4 = citasRepository$crearCitaPsicologo$12.J$0;
                try {
                    ResultKt.throwOnFailure($result);
                    objCrearCitaPsicologo = $result;
                    return Result.m8542constructorimpl((AgendaItemDTO) objCrearCitaPsicologo);
                } catch (Throwable th8) {
                    th = th8;
                    Result.Companion companion222222 = Result.INSTANCE;
                    return Result.m8542constructorimpl(ResultKt.createFailure(th));
                }
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: cancelarCita-gIAlu-s, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10360cancelarCitagIAlus(long idCita, Continuation<? super Result<AgendaItemDTO>> continuation) {
        CitasRepository$cancelarCita$1 citasRepository$cancelarCita$1;
        Object objCancelarCita;
        if (continuation instanceof CitasRepository$cancelarCita$1) {
            citasRepository$cancelarCita$1 = (CitasRepository$cancelarCita$1) continuation;
            if ((citasRepository$cancelarCita$1.label & Integer.MIN_VALUE) != 0) {
                citasRepository$cancelarCita$1.label -= Integer.MIN_VALUE;
            } else {
                citasRepository$cancelarCita$1 = new CitasRepository$cancelarCita$1(this, continuation);
            }
        }
        Object $result = citasRepository$cancelarCita$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            switch (citasRepository$cancelarCita$1.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    Result.Companion companion = Result.INSTANCE;
                    CitasRepository citasRepository = this;
                    CitasApi citasApi = citasRepository.citasApi;
                    citasRepository$cancelarCita$1.L$0 = SpillingKt.nullOutSpilledVariable(citasRepository);
                    citasRepository$cancelarCita$1.J$0 = idCita;
                    citasRepository$cancelarCita$1.I$0 = 0;
                    citasRepository$cancelarCita$1.label = 1;
                    objCancelarCita = citasApi.cancelarCita(idCita, citasRepository$cancelarCita$1);
                    if (objCancelarCita == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    break;
                case 1:
                    int i = citasRepository$cancelarCita$1.I$0;
                    long idCita2 = citasRepository$cancelarCita$1.J$0;
                    ResultKt.throwOnFailure($result);
                    objCancelarCita = $result;
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return Result.m8542constructorimpl((AgendaItemDTO) objCancelarCita);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m8542constructorimpl(ResultKt.createFailure(th));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: editarCita-0E7RQCE, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10363editarCita0E7RQCE(long idCita, CitaRequest request, Continuation<? super Result<AgendaItemDTO>> continuation) {
        CitasRepository$editarCita$1 citasRepository$editarCita$1;
        Object objEditarCita;
        if (continuation instanceof CitasRepository$editarCita$1) {
            citasRepository$editarCita$1 = (CitasRepository$editarCita$1) continuation;
            if ((citasRepository$editarCita$1.label & Integer.MIN_VALUE) != 0) {
                citasRepository$editarCita$1.label -= Integer.MIN_VALUE;
            } else {
                citasRepository$editarCita$1 = new CitasRepository$editarCita$1(this, continuation);
            }
        }
        Object $result = citasRepository$editarCita$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            switch (citasRepository$editarCita$1.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    Result.Companion companion = Result.INSTANCE;
                    CitasRepository citasRepository = this;
                    CitasApi citasApi = citasRepository.citasApi;
                    citasRepository$editarCita$1.L$0 = SpillingKt.nullOutSpilledVariable(request);
                    citasRepository$editarCita$1.L$1 = SpillingKt.nullOutSpilledVariable(citasRepository);
                    citasRepository$editarCita$1.J$0 = idCita;
                    citasRepository$editarCita$1.I$0 = 0;
                    citasRepository$editarCita$1.label = 1;
                    objEditarCita = citasApi.editarCita(idCita, request, citasRepository$editarCita$1);
                    if (objEditarCita == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    break;
                case 1:
                    int i = citasRepository$editarCita$1.I$0;
                    long idCita2 = citasRepository$editarCita$1.J$0;
                    ResultKt.throwOnFailure($result);
                    objEditarCita = $result;
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return Result.m8542constructorimpl((AgendaItemDTO) objEditarCita);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m8542constructorimpl(ResultKt.createFailure(th));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x007b A[Catch: all -> 0x0041, TryCatch #0 {all -> 0x0041, blocks: (B:13:0x003c, B:24:0x006a, B:25:0x0075, B:27:0x007b, B:34:0x0094, B:36:0x0099, B:40:0x00a4, B:39:0x00a0), top: B:49:0x003c }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00a0 A[Catch: all -> 0x0041, TryCatch #0 {all -> 0x0041, blocks: (B:13:0x003c, B:24:0x006a, B:25:0x0075, B:27:0x007b, B:34:0x0094, B:36:0x0099, B:40:0x00a4, B:39:0x00a0), top: B:49:0x003c }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0093 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    /* JADX INFO: renamed from: getPacientesDelPsicologo-gIAlu-s, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10369getPacientesDelPsicologogIAlus(long idPsicologo, Continuation<? super Result<? extends List<PacientesAsignadoDTO>>> continuation) {
        CitasRepository$getPacientesDelPsicologo$1 citasRepository$getPacientesDelPsicologo$1;
        long j;
        Object obj;
        long idPsicologo2;
        Iterator it;
        Object next;
        ListaPacientesAndPsicologo listaPacientesAndPsicologo;
        List<PacientesAsignadoDTO> listEmptyList;
        if (continuation instanceof CitasRepository$getPacientesDelPsicologo$1) {
            citasRepository$getPacientesDelPsicologo$1 = (CitasRepository$getPacientesDelPsicologo$1) continuation;
            if ((citasRepository$getPacientesDelPsicologo$1.label & Integer.MIN_VALUE) != 0) {
                citasRepository$getPacientesDelPsicologo$1.label -= Integer.MIN_VALUE;
            } else {
                citasRepository$getPacientesDelPsicologo$1 = new CitasRepository$getPacientesDelPsicologo$1(this, continuation);
            }
        }
        CitasRepository$getPacientesDelPsicologo$1 citasRepository$getPacientesDelPsicologo$12 = citasRepository$getPacientesDelPsicologo$1;
        Object $result = citasRepository$getPacientesDelPsicologo$12.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (citasRepository$getPacientesDelPsicologo$12.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                try {
                    Result.Companion companion = Result.INSTANCE;
                    CitasRepository citasRepository = this;
                    CitasApi citasApi = citasRepository.citasApi;
                    citasRepository$getPacientesDelPsicologo$12.L$0 = SpillingKt.nullOutSpilledVariable(citasRepository);
                    j = idPsicologo;
                    try {
                        citasRepository$getPacientesDelPsicologo$12.J$0 = j;
                        citasRepository$getPacientesDelPsicologo$12.I$0 = 0;
                        citasRepository$getPacientesDelPsicologo$12.label = 1;
                        Object psicologosConPacientes = citasApi.getPsicologosConPacientes(citasRepository$getPacientesDelPsicologo$12);
                        if (psicologosConPacientes == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        obj = psicologosConPacientes;
                        idPsicologo2 = j;
                        it = ((List) obj).iterator();
                        while (true) {
                            if (it.hasNext()) {
                                next = null;
                            } else {
                                next = it.next();
                                if (((ListaPacientesAndPsicologo) next).getIdPsicologo() == idPsicologo2) {
                                }
                            }
                        }
                        listaPacientesAndPsicologo = (ListaPacientesAndPsicologo) next;
                        if (listaPacientesAndPsicologo != null || (listEmptyList = listaPacientesAndPsicologo.getPacientes()) == null) {
                            listEmptyList = CollectionsKt.emptyList();
                        }
                        return Result.m8542constructorimpl(listEmptyList);
                    } catch (Throwable th) {
                        th = th;
                        Result.Companion companion2 = Result.INSTANCE;
                        return Result.m8542constructorimpl(ResultKt.createFailure(th));
                    }
                } catch (Throwable th2) {
                    th = th2;
                    j = idPsicologo;
                }
                break;
            case 1:
                int i = citasRepository$getPacientesDelPsicologo$12.I$0;
                idPsicologo2 = citasRepository$getPacientesDelPsicologo$12.J$0;
                try {
                    ResultKt.throwOnFailure($result);
                    obj = $result;
                    it = ((List) obj).iterator();
                    while (true) {
                        if (it.hasNext()) {
                        }
                    }
                    listaPacientesAndPsicologo = (ListaPacientesAndPsicologo) next;
                    if (listaPacientesAndPsicologo != null) {
                        listEmptyList = CollectionsKt.emptyList();
                    }
                    return Result.m8542constructorimpl(listEmptyList);
                } catch (Throwable th3) {
                    th = th3;
                    Result.Companion companion22 = Result.INSTANCE;
                    return Result.m8542constructorimpl(ResultKt.createFailure(th));
                }
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: actualizarHorario-0E7RQCE, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10358actualizarHorario0E7RQCE(long idPsicologo, HorarioRequestDTO request, Continuation<? super Result<Unit>> continuation) {
        CitasRepository$actualizarHorario$1 citasRepository$actualizarHorario$1;
        if (continuation instanceof CitasRepository$actualizarHorario$1) {
            citasRepository$actualizarHorario$1 = (CitasRepository$actualizarHorario$1) continuation;
            if ((citasRepository$actualizarHorario$1.label & Integer.MIN_VALUE) != 0) {
                citasRepository$actualizarHorario$1.label -= Integer.MIN_VALUE;
            } else {
                citasRepository$actualizarHorario$1 = new CitasRepository$actualizarHorario$1(this, continuation);
            }
        }
        Object $result = citasRepository$actualizarHorario$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            switch (citasRepository$actualizarHorario$1.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    Result.Companion companion = Result.INSTANCE;
                    CitasRepository citasRepository = this;
                    CitasApi citasApi = citasRepository.citasApi;
                    citasRepository$actualizarHorario$1.L$0 = SpillingKt.nullOutSpilledVariable(request);
                    citasRepository$actualizarHorario$1.L$1 = SpillingKt.nullOutSpilledVariable(citasRepository);
                    citasRepository$actualizarHorario$1.J$0 = idPsicologo;
                    citasRepository$actualizarHorario$1.I$0 = 0;
                    citasRepository$actualizarHorario$1.label = 1;
                    if (citasApi.actualizarHorario(idPsicologo, request, citasRepository$actualizarHorario$1) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    break;
                case 1:
                    int i = citasRepository$actualizarHorario$1.I$0;
                    long idPsicologo2 = citasRepository$actualizarHorario$1.J$0;
                    ResultKt.throwOnFailure($result);
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return Result.m8542constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m8542constructorimpl(ResultKt.createFailure(th));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: actualizarDuracion-0E7RQCE, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10357actualizarDuracion0E7RQCE(long idPsicologo, int duracion, Continuation<? super Result<Unit>> continuation) {
        CitasRepository$actualizarDuracion$1 citasRepository$actualizarDuracion$1;
        if (continuation instanceof CitasRepository$actualizarDuracion$1) {
            citasRepository$actualizarDuracion$1 = (CitasRepository$actualizarDuracion$1) continuation;
            if ((citasRepository$actualizarDuracion$1.label & Integer.MIN_VALUE) != 0) {
                citasRepository$actualizarDuracion$1.label -= Integer.MIN_VALUE;
            } else {
                citasRepository$actualizarDuracion$1 = new CitasRepository$actualizarDuracion$1(this, continuation);
            }
        }
        Object $result = citasRepository$actualizarDuracion$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            switch (citasRepository$actualizarDuracion$1.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    Result.Companion companion = Result.INSTANCE;
                    CitasRepository citasRepository = this;
                    CitasApi citasApi = citasRepository.citasApi;
                    citasRepository$actualizarDuracion$1.L$0 = SpillingKt.nullOutSpilledVariable(citasRepository);
                    citasRepository$actualizarDuracion$1.J$0 = idPsicologo;
                    citasRepository$actualizarDuracion$1.I$0 = duracion;
                    citasRepository$actualizarDuracion$1.I$1 = 0;
                    citasRepository$actualizarDuracion$1.label = 1;
                    if (citasApi.actualizarDuracion(idPsicologo, duracion, citasRepository$actualizarDuracion$1) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    break;
                case 1:
                    int i = citasRepository$actualizarDuracion$1.I$1;
                    int duracion2 = citasRepository$actualizarDuracion$1.I$0;
                    long idPsicologo2 = citasRepository$actualizarDuracion$1.J$0;
                    ResultKt.throwOnFailure($result);
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return Result.m8542constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m8542constructorimpl(ResultKt.createFailure(th));
        }
    }

    /* JADX INFO: renamed from: alternarDiaNoDisponible-bMdYcbs$default, reason: not valid java name */
    public static /* synthetic */ Object m10356alternarDiaNoDisponiblebMdYcbs$default(CitasRepository citasRepository, long j, String str, boolean z, String str2, String str3, String str4, Continuation continuation, int i, Object obj) {
        if ((i & 8) != 0) {
            str2 = null;
        }
        if ((i & 16) != 0) {
            str3 = null;
        }
        if ((i & 32) != 0) {
            str4 = null;
        }
        return citasRepository.m10359alternarDiaNoDisponiblebMdYcbs(j, str, z, str2, str3, str4, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x001e  */
    /* JADX INFO: renamed from: alternarDiaNoDisponible-bMdYcbs, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10359alternarDiaNoDisponiblebMdYcbs(long idPsicologo, String fecha, boolean yaNoDisponible, String horaInicio, String horaFin, String motivo, Continuation<? super Result<Unit>> continuation) {
        CitasRepository$alternarDiaNoDisponible$1 citasRepository$alternarDiaNoDisponible$1;
        String horaInicio2;
        String horaFin2;
        String horaFin3;
        String motivo2;
        String horaFin4;
        String motivo3;
        if (continuation instanceof CitasRepository$alternarDiaNoDisponible$1) {
            citasRepository$alternarDiaNoDisponible$1 = (CitasRepository$alternarDiaNoDisponible$1) continuation;
            if ((citasRepository$alternarDiaNoDisponible$1.label & Integer.MIN_VALUE) != 0) {
                citasRepository$alternarDiaNoDisponible$1.label -= Integer.MIN_VALUE;
            } else {
                citasRepository$alternarDiaNoDisponible$1 = new CitasRepository$alternarDiaNoDisponible$1(this, continuation);
            }
        }
        CitasRepository$alternarDiaNoDisponible$1 citasRepository$alternarDiaNoDisponible$12 = citasRepository$alternarDiaNoDisponible$1;
        Object $result = citasRepository$alternarDiaNoDisponible$12.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (citasRepository$alternarDiaNoDisponible$12.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                try {
                    Result.Companion companion = Result.INSTANCE;
                    CitasRepository citasRepository = this;
                    if (yaNoDisponible) {
                        CitasApi citasApi = citasRepository.citasApi;
                        citasRepository$alternarDiaNoDisponible$12.L$0 = SpillingKt.nullOutSpilledVariable(fecha);
                        citasRepository$alternarDiaNoDisponible$12.L$1 = SpillingKt.nullOutSpilledVariable(horaInicio);
                        citasRepository$alternarDiaNoDisponible$12.L$2 = SpillingKt.nullOutSpilledVariable(horaFin);
                        citasRepository$alternarDiaNoDisponible$12.L$3 = SpillingKt.nullOutSpilledVariable(motivo);
                        citasRepository$alternarDiaNoDisponible$12.L$4 = SpillingKt.nullOutSpilledVariable(citasRepository);
                        citasRepository$alternarDiaNoDisponible$12.J$0 = idPsicologo;
                        citasRepository$alternarDiaNoDisponible$12.Z$0 = yaNoDisponible;
                        citasRepository$alternarDiaNoDisponible$12.I$0 = 0;
                        citasRepository$alternarDiaNoDisponible$12.label = 1;
                        if (citasApi.eliminarDiaNoDisponible(idPsicologo, fecha, citasRepository$alternarDiaNoDisponible$12) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        horaFin4 = horaInicio;
                        motivo3 = horaFin;
                        return Result.m8542constructorimpl(Unit.INSTANCE);
                    }
                    horaInicio2 = horaInicio;
                    horaFin2 = horaFin;
                    try {
                        BloqueoRequestDTO bloqueoRequestDTO = new BloqueoRequestDTO(fecha, horaInicio2, horaFin2, motivo == null ? "No disponible" : motivo);
                        CitasApi citasApi2 = citasRepository.citasApi;
                        citasRepository$alternarDiaNoDisponible$12.L$0 = SpillingKt.nullOutSpilledVariable(fecha);
                        citasRepository$alternarDiaNoDisponible$12.L$1 = SpillingKt.nullOutSpilledVariable(horaInicio2);
                        citasRepository$alternarDiaNoDisponible$12.L$2 = SpillingKt.nullOutSpilledVariable(horaFin2);
                        citasRepository$alternarDiaNoDisponible$12.L$3 = SpillingKt.nullOutSpilledVariable(motivo);
                        citasRepository$alternarDiaNoDisponible$12.L$4 = SpillingKt.nullOutSpilledVariable(citasRepository);
                        citasRepository$alternarDiaNoDisponible$12.L$5 = SpillingKt.nullOutSpilledVariable(bloqueoRequestDTO);
                        citasRepository$alternarDiaNoDisponible$12.J$0 = idPsicologo;
                        citasRepository$alternarDiaNoDisponible$12.Z$0 = yaNoDisponible;
                        citasRepository$alternarDiaNoDisponible$12.I$0 = 0;
                        citasRepository$alternarDiaNoDisponible$12.label = 2;
                        if (citasApi2.marcarDiaNoDisponible(idPsicologo, bloqueoRequestDTO, citasRepository$alternarDiaNoDisponible$12) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        horaFin3 = horaFin2;
                        motivo2 = motivo;
                        motivo3 = horaFin3;
                        horaFin4 = horaInicio2;
                        return Result.m8542constructorimpl(Unit.INSTANCE);
                    } catch (Throwable th) {
                        th = th;
                        Result.Companion companion2 = Result.INSTANCE;
                        return Result.m8542constructorimpl(ResultKt.createFailure(th));
                    }
                } catch (Throwable th2) {
                    th = th2;
                    horaInicio2 = horaInicio;
                    horaFin2 = horaFin;
                }
                break;
            case 1:
                int i = citasRepository$alternarDiaNoDisponible$12.I$0;
                boolean z = citasRepository$alternarDiaNoDisponible$12.Z$0;
                long j = citasRepository$alternarDiaNoDisponible$12.J$0;
                motivo3 = (String) citasRepository$alternarDiaNoDisponible$12.L$2;
                horaFin4 = (String) citasRepository$alternarDiaNoDisponible$12.L$1;
                try {
                    ResultKt.throwOnFailure($result);
                    return Result.m8542constructorimpl(Unit.INSTANCE);
                } catch (Throwable th3) {
                    th = th3;
                    horaFin2 = motivo3;
                    horaInicio2 = horaFin4;
                    Result.Companion companion22 = Result.INSTANCE;
                    return Result.m8542constructorimpl(ResultKt.createFailure(th));
                }
            case 2:
                int i2 = citasRepository$alternarDiaNoDisponible$12.I$0;
                boolean z2 = citasRepository$alternarDiaNoDisponible$12.Z$0;
                long j2 = citasRepository$alternarDiaNoDisponible$12.J$0;
                motivo2 = (String) citasRepository$alternarDiaNoDisponible$12.L$3;
                horaFin3 = (String) citasRepository$alternarDiaNoDisponible$12.L$2;
                horaInicio2 = (String) citasRepository$alternarDiaNoDisponible$12.L$1;
                try {
                    ResultKt.throwOnFailure($result);
                    motivo3 = horaFin3;
                    horaFin4 = horaInicio2;
                    return Result.m8542constructorimpl(Unit.INSTANCE);
                } catch (Throwable th4) {
                    th = th4;
                    horaFin2 = horaFin3;
                    Result.Companion companion222 = Result.INSTANCE;
                    return Result.m8542constructorimpl(ResultKt.createFailure(th));
                }
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: getTerapias-IoAF18A, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10370getTerapiasIoAF18A(Continuation<? super Result<? extends List<TerapiaResponseDTO>>> continuation) {
        CitasRepository$getTerapias$1 citasRepository$getTerapias$1;
        Object terapias;
        if (continuation instanceof CitasRepository$getTerapias$1) {
            citasRepository$getTerapias$1 = (CitasRepository$getTerapias$1) continuation;
            if ((citasRepository$getTerapias$1.label & Integer.MIN_VALUE) != 0) {
                citasRepository$getTerapias$1.label -= Integer.MIN_VALUE;
            } else {
                citasRepository$getTerapias$1 = new CitasRepository$getTerapias$1(this, continuation);
            }
        }
        Object $result = citasRepository$getTerapias$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            switch (citasRepository$getTerapias$1.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    Result.Companion companion = Result.INSTANCE;
                    CitasRepository citasRepository = this;
                    CitasApi citasApi = citasRepository.citasApi;
                    citasRepository$getTerapias$1.L$0 = SpillingKt.nullOutSpilledVariable(citasRepository);
                    citasRepository$getTerapias$1.I$0 = 0;
                    citasRepository$getTerapias$1.label = 1;
                    terapias = citasApi.getTerapias(citasRepository$getTerapias$1);
                    if (terapias == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    break;
                case 1:
                    int i = citasRepository$getTerapias$1.I$0;
                    ResultKt.throwOnFailure($result);
                    terapias = $result;
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return Result.m8542constructorimpl((List) terapias);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m8542constructorimpl(ResultKt.createFailure(th));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: getHorarioActual-gIAlu-s, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10368getHorarioActualgIAlus(long idPsicologo, Continuation<? super Result<HorarioRequestDTO>> continuation) {
        CitasRepository$getHorarioActual$1 citasRepository$getHorarioActual$1;
        Object horarioActual;
        if (continuation instanceof CitasRepository$getHorarioActual$1) {
            citasRepository$getHorarioActual$1 = (CitasRepository$getHorarioActual$1) continuation;
            if ((citasRepository$getHorarioActual$1.label & Integer.MIN_VALUE) != 0) {
                citasRepository$getHorarioActual$1.label -= Integer.MIN_VALUE;
            } else {
                citasRepository$getHorarioActual$1 = new CitasRepository$getHorarioActual$1(this, continuation);
            }
        }
        Object $result = citasRepository$getHorarioActual$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            switch (citasRepository$getHorarioActual$1.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    Result.Companion companion = Result.INSTANCE;
                    CitasRepository citasRepository = this;
                    CitasApi citasApi = citasRepository.citasApi;
                    citasRepository$getHorarioActual$1.L$0 = SpillingKt.nullOutSpilledVariable(citasRepository);
                    citasRepository$getHorarioActual$1.J$0 = idPsicologo;
                    citasRepository$getHorarioActual$1.I$0 = 0;
                    citasRepository$getHorarioActual$1.label = 1;
                    horarioActual = citasApi.getHorarioActual(idPsicologo, citasRepository$getHorarioActual$1);
                    if (horarioActual == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    break;
                case 1:
                    int i = citasRepository$getHorarioActual$1.I$0;
                    long idPsicologo2 = citasRepository$getHorarioActual$1.J$0;
                    ResultKt.throwOnFailure($result);
                    horarioActual = $result;
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return Result.m8542constructorimpl((HorarioRequestDTO) horarioActual);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m8542constructorimpl(ResultKt.createFailure(th));
        }
    }
}
