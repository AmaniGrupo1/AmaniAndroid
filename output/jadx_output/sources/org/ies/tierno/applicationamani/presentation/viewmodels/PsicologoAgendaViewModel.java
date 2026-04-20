package org.ies.tierno.applicationamani.presentation.viewmodels;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.time.LocalTime;
import j$.time.YearMonth;
import java.math.BigDecimal;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import org.ies.tierno.applicationamani.data.AuthRepository;
import org.ies.tierno.applicationamani.data.local.UserSession;
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore;
import org.ies.tierno.applicationamani.data.repositorio.CitasRepository;
import org.ies.tierno.applicationamani.domain.models.citas.AgendaItemDTO;
import org.ies.tierno.applicationamani.domain.models.enumm.MetodoPago;
import org.ies.tierno.applicationamani.dto.agenda.request.FranjaHorarioDTO;
import org.ies.tierno.applicationamani.dto.agenda.request.HorarioRequestDTO;
import org.ies.tierno.applicationamani.dto.citas.DisponibilidadDiaResponse;
import org.ies.tierno.applicationamani.dto.psicologo.PacientePsicologoResponseDTO;
import org.ies.tierno.applicationamani.dto.requestPaciente.CitaRequest;

/* JADX INFO: compiled from: PsicologoAgendaViewModel.kt */
/* JADX INFO: loaded from: classes14.dex */
@Metadata(d1 = {"\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\t\n\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\r\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ\r\u0010\r\u001a\u00020\n¢\u0006\u0004\b\r\u0010\fJ\r\u0010\u000e\u001a\u00020\n¢\u0006\u0004\b\u000e\u0010\fJ\u0015\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u001b\u0010\u0016\u001a\u00020\n2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013¢\u0006\u0004\b\u0016\u0010\u0017JA\u0010 \u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001a2\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001c2\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u001c¢\u0006\u0004\b \u0010!J\r\u0010\"\u001a\u00020\n¢\u0006\u0004\b\"\u0010\fJ\r\u0010#\u001a\u00020\n¢\u0006\u0004\b#\u0010\fJ\u001f\u0010&\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u00182\b\b\u0002\u0010%\u001a\u00020$¢\u0006\u0004\b&\u0010'J\r\u0010(\u001a\u00020\n¢\u0006\u0004\b(\u0010\fJ\r\u0010)\u001a\u00020\n¢\u0006\u0004\b)\u0010\fJ\u0015\u0010+\u001a\u00020\n2\u0006\u0010*\u001a\u00020$¢\u0006\u0004\b+\u0010,JM\u00107\u001a\u00020\n2\u0006\u0010.\u001a\u00020-2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u00100\u001a\u00020/2\u0006\u00101\u001a\u00020$2\u0006\u0010\u001f\u001a\u00020\u001c2\u0006\u00102\u001a\u00020-2\u0006\u00104\u001a\u0002032\u0006\u00106\u001a\u000205¢\u0006\u0004\b7\u00108JU\u0010:\u001a\u00020\n2\u0006\u00109\u001a\u00020-2\u0006\u0010.\u001a\u00020-2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u00100\u001a\u00020/2\u0006\u00101\u001a\u00020$2\u0006\u0010\u001f\u001a\u00020\u001c2\u0006\u00102\u001a\u00020-2\u0006\u00104\u001a\u0002032\u0006\u00106\u001a\u000205¢\u0006\u0004\b:\u0010;J\u001d\u0010<\u001a\u00020\n2\u0006\u00109\u001a\u00020-2\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b<\u0010=R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010>R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010?R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010@R\u001c\u0010C\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010B0A8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bC\u0010DR\u001f\u0010F\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010B0E8\u0006¢\u0006\f\n\u0004\bF\u0010G\u001a\u0004\bH\u0010IR \u0010K\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020J0\u00130A8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bK\u0010DR#\u0010L\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020J0\u00130E8\u0006¢\u0006\f\n\u0004\bL\u0010G\u001a\u0004\bM\u0010IR\"\u0010O\u001a\u0010\u0012\f\u0012\n N*\u0004\u0018\u00010\u000f0\u000f0A8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bO\u0010DR\u001d\u0010P\u001a\b\u0012\u0004\u0012\u00020\u000f0E8\u0006¢\u0006\f\n\u0004\bP\u0010G\u001a\u0004\bQ\u0010IR\u001a\u0010R\u001a\b\u0012\u0004\u0012\u00020\u001a0A8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bR\u0010DR\u001d\u0010S\u001a\b\u0012\u0004\u0012\u00020\u001a0E8\u0006¢\u0006\f\n\u0004\bS\u0010G\u001a\u0004\bS\u0010IR\u001c\u0010T\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001c0A8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bT\u0010DR\u001f\u0010U\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001c0E8\u0006¢\u0006\f\n\u0004\bU\u0010G\u001a\u0004\bV\u0010IR\u001c\u0010W\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001c0A8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bW\u0010DR\u001f\u0010X\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001c0E8\u0006¢\u0006\f\n\u0004\bX\u0010G\u001a\u0004\bY\u0010IR \u0010[\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020Z0\u00130A8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b[\u0010DR#\u0010\\\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020Z0\u00130E8\u0006¢\u0006\f\n\u0004\b\\\u0010G\u001a\u0004\b]\u0010IR\u001c\u0010^\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001c0A8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b^\u0010DR\u001f\u0010_\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001c0E8\u0006¢\u0006\f\n\u0004\b_\u0010G\u001a\u0004\b`\u0010IR\u001c\u0010b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010a0A8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bb\u0010DR\u001f\u0010c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010a0E8\u0006¢\u0006\f\n\u0004\bc\u0010G\u001a\u0004\bd\u0010IR\u001a\u0010e\u001a\b\u0012\u0004\u0012\u00020$0A8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\be\u0010DR\u001d\u0010f\u001a\b\u0012\u0004\u0012\u00020$0E8\u0006¢\u0006\f\n\u0004\bf\u0010G\u001a\u0004\bg\u0010IR\u001c\u0010i\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010h0A8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bi\u0010DR\u001f\u0010j\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010h0E8\u0006¢\u0006\f\n\u0004\bj\u0010G\u001a\u0004\bk\u0010I¨\u0006l"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/viewmodels/PsicologoAgendaViewModel;", "Landroidx/lifecycle/ViewModel;", "Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;", "citasRepository", "Lorg/ies/tierno/applicationamani/data/AuthRepository;", "authRepository", "Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;", "userSessionDataStore", "<init>", "(Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;Lorg/ies/tierno/applicationamani/data/AuthRepository;Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;)V", "", "cargarHorarioActual", "()V", "clearError", "clearSuccess", "j$/time/YearMonth", "month", "cargarAgendaMensual", "(Lj$/time/YearMonth;)V", "", "Lorg/ies/tierno/applicationamani/dto/agenda/request/FranjaHorarioDTO;", "franjas", "actualizarHorario", "(Ljava/util/List;)V", "j$/time/LocalDate", "fecha", "", "yaNoDisponible", "", "horaInicio", "horaFin", "motivo", "alternarDiaNoDisponible", "(Lj$/time/LocalDate;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "cargarPacientesAsignados", "reintentarCargarPacientes", "", "durationMinutes", "cargarDisponibilidadDia", "(Lj$/time/LocalDate;I)V", "limpiarDisponibilidad", "cargarDuracionCita", "nuevaDuracion", "actualizarDuracionCita", "(I)V", "", "idPaciente", "j$/time/LocalTime", "hora", "duracionMinutos", "idTipoTerapia", "Lorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;", "metodoPago", "Ljava/math/BigDecimal;", "monto", "crearCita", "(JLj$/time/LocalDate;Lj$/time/LocalTime;ILjava/lang/String;JLorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;Ljava/math/BigDecimal;)V", "idCita", "editarCita", "(JJLj$/time/LocalDate;Lj$/time/LocalTime;ILjava/lang/String;JLorg/ies/tierno/applicationamani/domain/models/enumm/MetodoPago;Ljava/math/BigDecimal;)V", "cancelarCita", "(JLj$/time/LocalDate;)V", "Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;", "Lorg/ies/tierno/applicationamani/data/AuthRepository;", "Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lorg/ies/tierno/applicationamani/data/local/UserSession;", "_userSession", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lkotlinx/coroutines/flow/StateFlow;", "userSession", "Lkotlinx/coroutines/flow/StateFlow;", "getUserSession", "()Lkotlinx/coroutines/flow/StateFlow;", "Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;", "_agendaMensual", "agendaMensual", "getAgendaMensual", "kotlin.jvm.PlatformType", "_mesVisible", "mesVisible", "getMesVisible", "_isLoading", "isLoading", "_errorMessage", "errorMessage", "getErrorMessage", "_successMessage", "successMessage", "getSuccessMessage", "Lorg/ies/tierno/applicationamani/dto/psicologo/PacientePsicologoResponseDTO;", "_pacientesAsignados", "pacientesAsignados", "getPacientesAsignados", "_pacientesError", "pacientesError", "getPacientesError", "Lorg/ies/tierno/applicationamani/dto/citas/DisponibilidadDiaResponse;", "_disponibilidadDia", "disponibilidadDia", "getDisponibilidadDia", "_duracionCita", "duracionCita", "getDuracionCita", "Lorg/ies/tierno/applicationamani/dto/agenda/request/HorarioRequestDTO;", "_horarioActual", "horarioActual", "getHorarioActual", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class PsicologoAgendaViewModel extends ViewModel {
    public static final int $stable = 8;
    private final MutableStateFlow<List<AgendaItemDTO>> _agendaMensual;
    private final MutableStateFlow<DisponibilidadDiaResponse> _disponibilidadDia;
    private final MutableStateFlow<Integer> _duracionCita;
    private final MutableStateFlow<String> _errorMessage;
    private final MutableStateFlow<HorarioRequestDTO> _horarioActual;
    private final MutableStateFlow<Boolean> _isLoading;
    private final MutableStateFlow<YearMonth> _mesVisible;
    private final MutableStateFlow<List<PacientePsicologoResponseDTO>> _pacientesAsignados;
    private final MutableStateFlow<String> _pacientesError;
    private final MutableStateFlow<String> _successMessage;
    private final MutableStateFlow<UserSession> _userSession;
    private final StateFlow<List<AgendaItemDTO>> agendaMensual;
    private final AuthRepository authRepository;
    private final CitasRepository citasRepository;
    private final StateFlow<DisponibilidadDiaResponse> disponibilidadDia;
    private final StateFlow<Integer> duracionCita;
    private final StateFlow<String> errorMessage;
    private final StateFlow<HorarioRequestDTO> horarioActual;
    private final StateFlow<Boolean> isLoading;
    private final StateFlow<YearMonth> mesVisible;
    private final StateFlow<List<PacientePsicologoResponseDTO>> pacientesAsignados;
    private final StateFlow<String> pacientesError;
    private final StateFlow<String> successMessage;
    private final StateFlow<UserSession> userSession;
    private final UserSessionDataStore userSessionDataStore;

    public PsicologoAgendaViewModel(CitasRepository citasRepository, AuthRepository authRepository, UserSessionDataStore userSessionDataStore) {
        Intrinsics.checkNotNullParameter(citasRepository, "citasRepository");
        Intrinsics.checkNotNullParameter(authRepository, "authRepository");
        Intrinsics.checkNotNullParameter(userSessionDataStore, "userSessionDataStore");
        this.citasRepository = citasRepository;
        this.authRepository = authRepository;
        this.userSessionDataStore = userSessionDataStore;
        this._userSession = StateFlowKt.MutableStateFlow(null);
        this.userSession = FlowKt.asStateFlow(this._userSession);
        this._agendaMensual = StateFlowKt.MutableStateFlow(CollectionsKt.emptyList());
        this.agendaMensual = FlowKt.asStateFlow(this._agendaMensual);
        this._mesVisible = StateFlowKt.MutableStateFlow(YearMonth.now());
        this.mesVisible = FlowKt.asStateFlow(this._mesVisible);
        this._isLoading = StateFlowKt.MutableStateFlow(false);
        this.isLoading = FlowKt.asStateFlow(this._isLoading);
        this._errorMessage = StateFlowKt.MutableStateFlow(null);
        this.errorMessage = FlowKt.asStateFlow(this._errorMessage);
        this._successMessage = StateFlowKt.MutableStateFlow(null);
        this.successMessage = FlowKt.asStateFlow(this._successMessage);
        this._pacientesAsignados = StateFlowKt.MutableStateFlow(CollectionsKt.emptyList());
        this.pacientesAsignados = FlowKt.asStateFlow(this._pacientesAsignados);
        this._pacientesError = StateFlowKt.MutableStateFlow(null);
        this.pacientesError = FlowKt.asStateFlow(this._pacientesError);
        this._disponibilidadDia = StateFlowKt.MutableStateFlow(null);
        this.disponibilidadDia = FlowKt.asStateFlow(this._disponibilidadDia);
        this._duracionCita = StateFlowKt.MutableStateFlow(60);
        this.duracionCita = FlowKt.asStateFlow(this._duracionCita);
        this._horarioActual = StateFlowKt.MutableStateFlow(null);
        this.horarioActual = FlowKt.asStateFlow(this._horarioActual);
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new AnonymousClass1(null), 3, null);
    }

    public final StateFlow<UserSession> getUserSession() {
        return this.userSession;
    }

    public final StateFlow<List<AgendaItemDTO>> getAgendaMensual() {
        return this.agendaMensual;
    }

    public final StateFlow<YearMonth> getMesVisible() {
        return this.mesVisible;
    }

    public final StateFlow<Boolean> isLoading() {
        return this.isLoading;
    }

    public final StateFlow<String> getErrorMessage() {
        return this.errorMessage;
    }

    public final StateFlow<String> getSuccessMessage() {
        return this.successMessage;
    }

    public final StateFlow<List<PacientePsicologoResponseDTO>> getPacientesAsignados() {
        return this.pacientesAsignados;
    }

    public final StateFlow<String> getPacientesError() {
        return this.pacientesError;
    }

    public final StateFlow<DisponibilidadDiaResponse> getDisponibilidadDia() {
        return this.disponibilidadDia;
    }

    public final StateFlow<Integer> getDuracionCita() {
        return this.duracionCita;
    }

    public final StateFlow<HorarioRequestDTO> getHorarioActual() {
        return this.horarioActual;
    }

    public final void cargarHorarioActual() {
        Long idPsicologo;
        UserSession value = this._userSession.getValue();
        if (value != null && (idPsicologo = value.getIdPsicologo()) != null) {
            long id = idPsicologo.longValue();
            BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C08221(id, null), 3, null);
        }
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel$cargarHorarioActual$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PsicologoAgendaViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel$cargarHorarioActual$1", f = "PsicologoAgendaViewModel.kt", i = {}, l = {70}, m = "invokeSuspend", n = {}, s = {})
    static final class C08221 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ long $id;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C08221(long j, Continuation<? super C08221> continuation) {
            super(2, continuation);
            this.$id = j;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PsicologoAgendaViewModel.this.new C08221(this.$id, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C08221) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object value;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    this.label = 1;
                    Object objM10368getHorarioActualgIAlus = PsicologoAgendaViewModel.this.citasRepository.m10368getHorarioActualgIAlus(this.$id, this);
                    if (objM10368getHorarioActualgIAlus == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    value = objM10368getHorarioActualgIAlus;
                    break;
                    break;
                case 1:
                    ResultKt.throwOnFailure($result);
                    value = ((Result) $result).getValue();
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            PsicologoAgendaViewModel psicologoAgendaViewModel = PsicologoAgendaViewModel.this;
            if (Result.m8549isSuccessimpl(value)) {
                psicologoAgendaViewModel._horarioActual.setValue((HorarioRequestDTO) value);
            }
            PsicologoAgendaViewModel psicologoAgendaViewModel2 = PsicologoAgendaViewModel.this;
            if (Result.m8545exceptionOrNullimpl(value) != null) {
                psicologoAgendaViewModel2._errorMessage.setValue("Error cargando horario");
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel$1, reason: invalid class name */
    /* JADX INFO: compiled from: PsicologoAgendaViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel$1", f = "PsicologoAgendaViewModel.kt", i = {}, l = {82}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PsicologoAgendaViewModel.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    Flow<UserSession> sessionFlow = PsicologoAgendaViewModel.this.userSessionDataStore.getSessionFlow();
                    final PsicologoAgendaViewModel psicologoAgendaViewModel = PsicologoAgendaViewModel.this;
                    this.label = 1;
                    if (sessionFlow.collect(new FlowCollector() { // from class: org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel.1.1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public /* bridge */ /* synthetic */ Object emit(Object value, Continuation $completion) {
                            return emit((UserSession) value, (Continuation<? super Unit>) $completion);
                        }

                        public final Object emit(UserSession session, Continuation<? super Unit> continuation) {
                            psicologoAgendaViewModel._userSession.setValue(session);
                            if ((session != null ? session.getIdPsicologo() : null) != null) {
                                if (((List) psicologoAgendaViewModel._pacientesAsignados.getValue()).isEmpty()) {
                                    psicologoAgendaViewModel.cargarPacientesAsignados();
                                }
                                psicologoAgendaViewModel.cargarDuracionCita();
                            }
                            return Unit.INSTANCE;
                        }
                    }, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    break;
                case 1:
                    ResultKt.throwOnFailure($result);
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return Unit.INSTANCE;
        }
    }

    public final void clearError() {
        this._errorMessage.setValue(null);
    }

    public final void clearSuccess() {
        this._successMessage.setValue(null);
    }

    public final void cargarAgendaMensual(YearMonth month) {
        Intrinsics.checkNotNullParameter(month, "month");
        UserSession session = this._userSession.getValue();
        Long psychologistId = session != null ? session.getIdPsicologo() : null;
        if (psychologistId == null) {
            this._errorMessage.setValue("No hay sesión de psicólogo o id nulo.");
            this._agendaMensual.setValue(CollectionsKt.emptyList());
        } else {
            this._mesVisible.setValue(month);
            BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C08191(psychologistId, month, null), 3, null);
        }
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel$cargarAgendaMensual$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PsicologoAgendaViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel$cargarAgendaMensual$1", f = "PsicologoAgendaViewModel.kt", i = {}, l = {115}, m = "invokeSuspend", n = {}, s = {})
    static final class C08191 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ YearMonth $month;
        final /* synthetic */ Long $psychologistId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C08191(Long l, YearMonth yearMonth, Continuation<? super C08191> continuation) {
            super(2, continuation);
            this.$psychologistId = l;
            this.$month = yearMonth;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PsicologoAgendaViewModel.this.new C08191(this.$psychologistId, this.$month, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C08191) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object value;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    PsicologoAgendaViewModel.this._isLoading.setValue(Boxing.boxBoolean(true));
                    CitasRepository citasRepository = PsicologoAgendaViewModel.this.citasRepository;
                    long jLongValue = this.$psychologistId.longValue();
                    String string = this.$month.toString();
                    Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                    this.label = 1;
                    Object objM10365getAgendaPsicologo0E7RQCE = citasRepository.m10365getAgendaPsicologo0E7RQCE(jLongValue, string, this);
                    if (objM10365getAgendaPsicologo0E7RQCE == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    value = objM10365getAgendaPsicologo0E7RQCE;
                    break;
                    break;
                case 1:
                    ResultKt.throwOnFailure($result);
                    value = ((Result) $result).getValue();
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            PsicologoAgendaViewModel psicologoAgendaViewModel = PsicologoAgendaViewModel.this;
            if (Result.m8549isSuccessimpl(value)) {
                psicologoAgendaViewModel._agendaMensual.setValue((List) value);
                psicologoAgendaViewModel._errorMessage.setValue(null);
            }
            PsicologoAgendaViewModel psicologoAgendaViewModel2 = PsicologoAgendaViewModel.this;
            Throwable thM8545exceptionOrNullimpl = Result.m8545exceptionOrNullimpl(value);
            if (thM8545exceptionOrNullimpl != null) {
                MutableStateFlow mutableStateFlow = psicologoAgendaViewModel2._errorMessage;
                String message = thM8545exceptionOrNullimpl.getMessage();
                if (message == null) {
                    message = "No se pudo cargar la agenda";
                }
                mutableStateFlow.setValue(message);
                psicologoAgendaViewModel2._agendaMensual.setValue(CollectionsKt.emptyList());
            }
            PsicologoAgendaViewModel.this._isLoading.setValue(Boxing.boxBoolean(false));
            return Unit.INSTANCE;
        }
    }

    public final void actualizarHorario(List<FranjaHorarioDTO> franjas) {
        Intrinsics.checkNotNullParameter(franjas, "franjas");
        if (franjas.isEmpty()) {
            this._errorMessage.setValue("No hay franjas configuradas");
            return;
        }
        UserSession session = this._userSession.getValue();
        if (session == null) {
            this._errorMessage.setValue("No hay sesión de psicólogo");
            return;
        }
        Long idPsicologo = session.getIdPsicologo();
        if (idPsicologo != null) {
            long psychologistId = idPsicologo.longValue();
            BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C08161(psychologistId, franjas, null), 3, null);
        } else {
            this._errorMessage.setValue("idPsicologo nulo");
        }
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel$actualizarHorario$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PsicologoAgendaViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel$actualizarHorario$1", f = "PsicologoAgendaViewModel.kt", i = {}, l = {147}, m = "invokeSuspend", n = {}, s = {})
    static final class C08161 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ List<FranjaHorarioDTO> $franjas;
        final /* synthetic */ long $psychologistId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C08161(long j, List<FranjaHorarioDTO> list, Continuation<? super C08161> continuation) {
            super(2, continuation);
            this.$psychologistId = j;
            this.$franjas = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PsicologoAgendaViewModel.this.new C08161(this.$psychologistId, this.$franjas, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C08161) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object value;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    PsicologoAgendaViewModel.this._isLoading.setValue(Boxing.boxBoolean(true));
                    this.label = 1;
                    Object objM10358actualizarHorario0E7RQCE = PsicologoAgendaViewModel.this.citasRepository.m10358actualizarHorario0E7RQCE(this.$psychologistId, new HorarioRequestDTO(this.$franjas), this);
                    if (objM10358actualizarHorario0E7RQCE == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    value = objM10358actualizarHorario0E7RQCE;
                    break;
                    break;
                case 1:
                    ResultKt.throwOnFailure($result);
                    value = ((Result) $result).getValue();
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            PsicologoAgendaViewModel psicologoAgendaViewModel = PsicologoAgendaViewModel.this;
            if (Result.m8549isSuccessimpl(value)) {
                Object value2 = psicologoAgendaViewModel._mesVisible.getValue();
                Intrinsics.checkNotNullExpressionValue(value2, "<get-value>(...)");
                psicologoAgendaViewModel.cargarAgendaMensual((YearMonth) value2);
                DisponibilidadDiaResponse disponibilidadDiaResponse = (DisponibilidadDiaResponse) psicologoAgendaViewModel._disponibilidadDia.getValue();
                LocalDate fecha = disponibilidadDiaResponse != null ? disponibilidadDiaResponse.getFecha() : null;
                psicologoAgendaViewModel._disponibilidadDia.setValue(null);
                if (fecha != null) {
                    PsicologoAgendaViewModel.cargarDisponibilidadDia$default(psicologoAgendaViewModel, fecha, 0, 2, null);
                }
                psicologoAgendaViewModel._successMessage.setValue("Horario actualizado correctamente");
                BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(psicologoAgendaViewModel), null, null, new PsicologoAgendaViewModel$actualizarHorario$1$1$1(null), 3, null);
            }
            PsicologoAgendaViewModel psicologoAgendaViewModel2 = PsicologoAgendaViewModel.this;
            Throwable thM8545exceptionOrNullimpl = Result.m8545exceptionOrNullimpl(value);
            if (thM8545exceptionOrNullimpl != null) {
                MutableStateFlow mutableStateFlow = psicologoAgendaViewModel2._errorMessage;
                String message = thM8545exceptionOrNullimpl.getMessage();
                if (message == null) {
                    message = "Error al actualizar el horario";
                }
                mutableStateFlow.setValue(message);
            }
            PsicologoAgendaViewModel.this._isLoading.setValue(Boxing.boxBoolean(false));
            return Unit.INSTANCE;
        }
    }

    public static /* synthetic */ void alternarDiaNoDisponible$default(PsicologoAgendaViewModel psicologoAgendaViewModel, LocalDate localDate, boolean z, String str, String str2, String str3, int i, Object obj) {
        if ((i & 4) != 0) {
            str = null;
        }
        if ((i & 8) != 0) {
            str2 = null;
        }
        if ((i & 16) != 0) {
            str3 = null;
        }
        psicologoAgendaViewModel.alternarDiaNoDisponible(localDate, z, str, str2, str3);
    }

    public final void alternarDiaNoDisponible(LocalDate fecha, boolean yaNoDisponible, String horaInicio, String horaFin, String motivo) {
        Intrinsics.checkNotNullParameter(fecha, "fecha");
        UserSession value = this._userSession.getValue();
        if (value == null) {
            this._errorMessage.setValue("No hay sesión de psicólogo");
            return;
        }
        Long idPsicologo = value.getIdPsicologo();
        if (idPsicologo != null) {
            long psychologistId = idPsicologo.longValue();
            BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C08171(psychologistId, fecha, yaNoDisponible, horaInicio, horaFin, motivo, null), 3, null);
        } else {
            this._errorMessage.setValue("idPsicologo nulo");
        }
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel$alternarDiaNoDisponible$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PsicologoAgendaViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel$alternarDiaNoDisponible$1", f = "PsicologoAgendaViewModel.kt", i = {}, l = {187}, m = "invokeSuspend", n = {}, s = {})
    static final class C08171 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ LocalDate $fecha;
        final /* synthetic */ String $horaFin;
        final /* synthetic */ String $horaInicio;
        final /* synthetic */ String $motivo;
        final /* synthetic */ long $psychologistId;
        final /* synthetic */ boolean $yaNoDisponible;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C08171(long j, LocalDate localDate, boolean z, String str, String str2, String str3, Continuation<? super C08171> continuation) {
            super(2, continuation);
            this.$psychologistId = j;
            this.$fecha = localDate;
            this.$yaNoDisponible = z;
            this.$horaInicio = str;
            this.$horaFin = str2;
            this.$motivo = str3;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PsicologoAgendaViewModel.this.new C08171(this.$psychologistId, this.$fecha, this.$yaNoDisponible, this.$horaInicio, this.$horaFin, this.$motivo, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C08171) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object value;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    PsicologoAgendaViewModel.this._isLoading.setValue(Boxing.boxBoolean(true));
                    CitasRepository citasRepository = PsicologoAgendaViewModel.this.citasRepository;
                    long j = this.$psychologistId;
                    String string = this.$fecha.toString();
                    Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                    this.label = 1;
                    Object objM10359alternarDiaNoDisponiblebMdYcbs = citasRepository.m10359alternarDiaNoDisponiblebMdYcbs(j, string, this.$yaNoDisponible, this.$horaInicio, this.$horaFin, this.$motivo, this);
                    if (objM10359alternarDiaNoDisponiblebMdYcbs == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    value = objM10359alternarDiaNoDisponiblebMdYcbs;
                    break;
                    break;
                case 1:
                    ResultKt.throwOnFailure($result);
                    value = ((Result) $result).getValue();
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            PsicologoAgendaViewModel psicologoAgendaViewModel = PsicologoAgendaViewModel.this;
            if (Result.m8549isSuccessimpl(value)) {
                Object value2 = psicologoAgendaViewModel._mesVisible.getValue();
                Intrinsics.checkNotNullExpressionValue(value2, "<get-value>(...)");
                psicologoAgendaViewModel.cargarAgendaMensual((YearMonth) value2);
            }
            PsicologoAgendaViewModel psicologoAgendaViewModel2 = PsicologoAgendaViewModel.this;
            Throwable thM8545exceptionOrNullimpl = Result.m8545exceptionOrNullimpl(value);
            if (thM8545exceptionOrNullimpl != null) {
                MutableStateFlow mutableStateFlow = psicologoAgendaViewModel2._errorMessage;
                String message = thM8545exceptionOrNullimpl.getMessage();
                if (message == null) {
                    message = "Error al alternar día no disponible";
                }
                mutableStateFlow.setValue(message);
            }
            PsicologoAgendaViewModel.this._isLoading.setValue(Boxing.boxBoolean(false));
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel$cargarPacientesAsignados$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PsicologoAgendaViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel$cargarPacientesAsignados$1", f = "PsicologoAgendaViewModel.kt", i = {}, l = {208}, m = "invokeSuspend", n = {}, s = {})
    static final class C08231 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C08231(Continuation<? super C08231> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PsicologoAgendaViewModel.this.new C08231(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C08231) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    PsicologoAgendaViewModel.this._pacientesError.setValue(null);
                    Flow<List<PacientePsicologoResponseDTO>> pacientesByPsicologo = PsicologoAgendaViewModel.this.authRepository.getPacientesByPsicologo();
                    final PsicologoAgendaViewModel psicologoAgendaViewModel = PsicologoAgendaViewModel.this;
                    this.label = 1;
                    if (pacientesByPsicologo.collect(new FlowCollector() { // from class: org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel.cargarPacientesAsignados.1.1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public /* bridge */ /* synthetic */ Object emit(Object value, Continuation $completion) {
                            return emit((List<PacientePsicologoResponseDTO>) value, (Continuation<? super Unit>) $completion);
                        }

                        public final Object emit(List<PacientePsicologoResponseDTO> list, Continuation<? super Unit> continuation) {
                            psicologoAgendaViewModel._pacientesAsignados.setValue(list);
                            if (list.isEmpty()) {
                                psicologoAgendaViewModel._pacientesError.setValue("No hay pacientes asignados");
                            }
                            return Unit.INSTANCE;
                        }
                    }, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    break;
                case 1:
                    ResultKt.throwOnFailure($result);
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return Unit.INSTANCE;
        }
    }

    public final void cargarPacientesAsignados() {
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C08231(null), 3, null);
    }

    public final void reintentarCargarPacientes() {
        cargarPacientesAsignados();
    }

    public static /* synthetic */ void cargarDisponibilidadDia$default(PsicologoAgendaViewModel psicologoAgendaViewModel, LocalDate localDate, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = psicologoAgendaViewModel._duracionCita.getValue().intValue();
        }
        psicologoAgendaViewModel.cargarDisponibilidadDia(localDate, i);
    }

    public final void cargarDisponibilidadDia(LocalDate fecha, int durationMinutes) {
        Long idPsicologo;
        Intrinsics.checkNotNullParameter(fecha, "fecha");
        UserSession value = this._userSession.getValue();
        if (value != null && (idPsicologo = value.getIdPsicologo()) != null) {
            long psychologistId = idPsicologo.longValue();
            BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C08201(psychologistId, fecha, durationMinutes, null), 3, null);
        }
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel$cargarDisponibilidadDia$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PsicologoAgendaViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel$cargarDisponibilidadDia$1", f = "PsicologoAgendaViewModel.kt", i = {}, l = {230}, m = "invokeSuspend", n = {}, s = {})
    static final class C08201 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ int $durationMinutes;
        final /* synthetic */ LocalDate $fecha;
        final /* synthetic */ long $psychologistId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C08201(long j, LocalDate localDate, int i, Continuation<? super C08201> continuation) {
            super(2, continuation);
            this.$psychologistId = j;
            this.$fecha = localDate;
            this.$durationMinutes = i;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PsicologoAgendaViewModel.this.new C08201(this.$psychologistId, this.$fecha, this.$durationMinutes, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C08201) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object value;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    PsicologoAgendaViewModel.this._isLoading.setValue(Boxing.boxBoolean(true));
                    PsicologoAgendaViewModel.this._disponibilidadDia.setValue(null);
                    CitasRepository citasRepository = PsicologoAgendaViewModel.this.citasRepository;
                    long j = this.$psychologistId;
                    String string = this.$fecha.toString();
                    Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                    this.label = 1;
                    Object objM10366getDisponibilidadDiaBWLJW6A = citasRepository.m10366getDisponibilidadDiaBWLJW6A(j, string, this.$durationMinutes, this);
                    if (objM10366getDisponibilidadDiaBWLJW6A == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    value = objM10366getDisponibilidadDiaBWLJW6A;
                    break;
                    break;
                case 1:
                    ResultKt.throwOnFailure($result);
                    value = ((Result) $result).getValue();
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            PsicologoAgendaViewModel psicologoAgendaViewModel = PsicologoAgendaViewModel.this;
            if (Result.m8549isSuccessimpl(value)) {
                psicologoAgendaViewModel._disponibilidadDia.setValue((DisponibilidadDiaResponse) value);
            }
            PsicologoAgendaViewModel psicologoAgendaViewModel2 = PsicologoAgendaViewModel.this;
            Throwable thM8545exceptionOrNullimpl = Result.m8545exceptionOrNullimpl(value);
            if (thM8545exceptionOrNullimpl != null) {
                MutableStateFlow mutableStateFlow = psicologoAgendaViewModel2._errorMessage;
                String message = thM8545exceptionOrNullimpl.getMessage();
                if (message == null) {
                    message = "Error al cargar disponibilidad";
                }
                mutableStateFlow.setValue(message);
            }
            PsicologoAgendaViewModel.this._isLoading.setValue(Boxing.boxBoolean(false));
            return Unit.INSTANCE;
        }
    }

    public final void limpiarDisponibilidad() {
        this._disponibilidadDia.setValue(null);
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel$cargarDuracionCita$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PsicologoAgendaViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel$cargarDuracionCita$1", f = "PsicologoAgendaViewModel.kt", i = {}, l = {254}, m = "invokeSuspend", n = {}, s = {})
    static final class C08211 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ long $psychologistId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C08211(long j, Continuation<? super C08211> continuation) {
            super(2, continuation);
            this.$psychologistId = j;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PsicologoAgendaViewModel.this.new C08211(this.$psychologistId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C08211) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object value;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    this.label = 1;
                    Object objM10367getDuraciongIAlus = PsicologoAgendaViewModel.this.citasRepository.m10367getDuraciongIAlus(this.$psychologistId, this);
                    if (objM10367getDuraciongIAlus == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    value = objM10367getDuraciongIAlus;
                    break;
                    break;
                case 1:
                    ResultKt.throwOnFailure($result);
                    value = ((Result) $result).getValue();
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            PsicologoAgendaViewModel psicologoAgendaViewModel = PsicologoAgendaViewModel.this;
            if (Result.m8549isSuccessimpl(value)) {
                psicologoAgendaViewModel._duracionCita.setValue(Boxing.boxInt(((Number) value).intValue()));
            }
            PsicologoAgendaViewModel psicologoAgendaViewModel2 = PsicologoAgendaViewModel.this;
            Throwable thM8545exceptionOrNullimpl = Result.m8545exceptionOrNullimpl(value);
            if (thM8545exceptionOrNullimpl != null) {
                MutableStateFlow mutableStateFlow = psicologoAgendaViewModel2._errorMessage;
                String message = thM8545exceptionOrNullimpl.getMessage();
                if (message == null) {
                    message = "Error al cargar la duración de las citas";
                }
                mutableStateFlow.setValue(message);
            }
            return Unit.INSTANCE;
        }
    }

    public final void cargarDuracionCita() {
        Long idPsicologo;
        UserSession value = this._userSession.getValue();
        if (value != null && (idPsicologo = value.getIdPsicologo()) != null) {
            long psychologistId = idPsicologo.longValue();
            BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C08211(psychologistId, null), 3, null);
        }
    }

    public final void actualizarDuracionCita(int nuevaDuracion) {
        Long idPsicologo;
        UserSession value = this._userSession.getValue();
        if (value != null && (idPsicologo = value.getIdPsicologo()) != null) {
            long psychologistId = idPsicologo.longValue();
            BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C08151(psychologistId, nuevaDuracion, null), 3, null);
        } else {
            this._errorMessage.setValue("No hay sesión de psicólogo");
        }
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel$actualizarDuracionCita$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PsicologoAgendaViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel$actualizarDuracionCita$1", f = "PsicologoAgendaViewModel.kt", i = {}, l = {275}, m = "invokeSuspend", n = {}, s = {})
    static final class C08151 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ int $nuevaDuracion;
        final /* synthetic */ long $psychologistId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C08151(long j, int i, Continuation<? super C08151> continuation) {
            super(2, continuation);
            this.$psychologistId = j;
            this.$nuevaDuracion = i;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PsicologoAgendaViewModel.this.new C08151(this.$psychologistId, this.$nuevaDuracion, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C08151) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object value;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    PsicologoAgendaViewModel.this._isLoading.setValue(Boxing.boxBoolean(true));
                    this.label = 1;
                    Object objM10357actualizarDuracion0E7RQCE = PsicologoAgendaViewModel.this.citasRepository.m10357actualizarDuracion0E7RQCE(this.$psychologistId, this.$nuevaDuracion, this);
                    if (objM10357actualizarDuracion0E7RQCE == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    value = objM10357actualizarDuracion0E7RQCE;
                    break;
                    break;
                case 1:
                    ResultKt.throwOnFailure($result);
                    value = ((Result) $result).getValue();
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            PsicologoAgendaViewModel psicologoAgendaViewModel = PsicologoAgendaViewModel.this;
            int i = this.$nuevaDuracion;
            if (Result.m8549isSuccessimpl(value)) {
                psicologoAgendaViewModel._duracionCita.setValue(Boxing.boxInt(i));
                psicologoAgendaViewModel._successMessage.setValue("Duración de citas actualizada a " + i + " minutos");
                DisponibilidadDiaResponse disponibilidadDiaResponse = (DisponibilidadDiaResponse) psicologoAgendaViewModel._disponibilidadDia.getValue();
                LocalDate fecha = disponibilidadDiaResponse != null ? disponibilidadDiaResponse.getFecha() : null;
                if (fecha != null) {
                    psicologoAgendaViewModel.cargarDisponibilidadDia(fecha, i);
                }
            }
            PsicologoAgendaViewModel psicologoAgendaViewModel2 = PsicologoAgendaViewModel.this;
            Throwable thM8545exceptionOrNullimpl = Result.m8545exceptionOrNullimpl(value);
            if (thM8545exceptionOrNullimpl != null) {
                MutableStateFlow mutableStateFlow = psicologoAgendaViewModel2._errorMessage;
                String message = thM8545exceptionOrNullimpl.getMessage();
                if (message == null) {
                    message = "Error al actualizar la duración de las citas";
                }
                mutableStateFlow.setValue(message);
            }
            PsicologoAgendaViewModel.this._isLoading.setValue(Boxing.boxBoolean(false));
            return Unit.INSTANCE;
        }
    }

    public final void crearCita(long idPaciente, LocalDate fecha, LocalTime hora, int duracionMinutos, String motivo, long idTipoTerapia, MetodoPago metodoPago, BigDecimal monto) {
        Long idPsicologo;
        Intrinsics.checkNotNullParameter(fecha, "fecha");
        Intrinsics.checkNotNullParameter(hora, "hora");
        Intrinsics.checkNotNullParameter(motivo, "motivo");
        Intrinsics.checkNotNullParameter(metodoPago, "metodoPago");
        Intrinsics.checkNotNullParameter(monto, "monto");
        UserSession value = this._userSession.getValue();
        if (value != null && (idPsicologo = value.getIdPsicologo()) != null) {
            long psychologistId = idPsicologo.longValue();
            BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C08241(fecha, hora, metodoPago, idPaciente, psychologistId, duracionMinutos, monto, motivo, idTipoTerapia, null), 3, null);
        } else {
            this._errorMessage.setValue("No hay sesión de psicólogo");
        }
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel$crearCita$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PsicologoAgendaViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel$crearCita$1", f = "PsicologoAgendaViewModel.kt", i = {0, 0}, l = {329}, m = "invokeSuspend", n = {"startDatetime", "request"}, s = {"L$0", "L$1"})
    static final class C08241 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ int $duracionMinutos;
        final /* synthetic */ LocalDate $fecha;
        final /* synthetic */ LocalTime $hora;
        final /* synthetic */ long $idPaciente;
        final /* synthetic */ long $idTipoTerapia;
        final /* synthetic */ MetodoPago $metodoPago;
        final /* synthetic */ BigDecimal $monto;
        final /* synthetic */ String $motivo;
        final /* synthetic */ long $psychologistId;
        Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C08241(LocalDate localDate, LocalTime localTime, MetodoPago metodoPago, long j, long j2, int i, BigDecimal bigDecimal, String str, long j3, Continuation<? super C08241> continuation) {
            super(2, continuation);
            this.$fecha = localDate;
            this.$hora = localTime;
            this.$metodoPago = metodoPago;
            this.$idPaciente = j;
            this.$psychologistId = j2;
            this.$duracionMinutos = i;
            this.$monto = bigDecimal;
            this.$motivo = str;
            this.$idTipoTerapia = j3;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PsicologoAgendaViewModel.this.new C08241(this.$fecha, this.$hora, this.$metodoPago, this.$idPaciente, this.$psychologistId, this.$duracionMinutos, this.$monto, this.$motivo, this.$idTipoTerapia, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C08241) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object objM10361crearCitagIAlus;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    PsicologoAgendaViewModel.this._isLoading.setValue(Boxing.boxBoolean(true));
                    LocalDateTime startDatetime = LocalDateTime.of(this.$fecha, this.$hora);
                    String string = startDatetime.toString();
                    Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                    CitaRequest request = new CitaRequest(this.$idPaciente, this.$psychologistId, string, Boxing.boxInt(this.$duracionMinutos), this.$metodoPago.name(), this.$monto, this.$metodoPago == MetodoPago.ONLINE ? "PAGADO" : "PENDIENTE", "PENDIENTE", this.$motivo, Boxing.boxLong(this.$idTipoTerapia));
                    this.L$0 = SpillingKt.nullOutSpilledVariable(startDatetime);
                    this.L$1 = SpillingKt.nullOutSpilledVariable(request);
                    this.label = 1;
                    objM10361crearCitagIAlus = PsicologoAgendaViewModel.this.citasRepository.m10361crearCitagIAlus(request, this);
                    if (objM10361crearCitagIAlus == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    break;
                case 1:
                    ResultKt.throwOnFailure($result);
                    objM10361crearCitagIAlus = ((Result) $result).getValue();
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            PsicologoAgendaViewModel psicologoAgendaViewModel = PsicologoAgendaViewModel.this;
            LocalDate localDate = this.$fecha;
            if (Result.m8549isSuccessimpl(objM10361crearCitagIAlus)) {
                Object value = psicologoAgendaViewModel._mesVisible.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "<get-value>(...)");
                psicologoAgendaViewModel.cargarAgendaMensual((YearMonth) value);
                PsicologoAgendaViewModel.cargarDisponibilidadDia$default(psicologoAgendaViewModel, localDate, 0, 2, null);
                psicologoAgendaViewModel._successMessage.setValue("Cita creada correctamente");
            }
            PsicologoAgendaViewModel psicologoAgendaViewModel2 = PsicologoAgendaViewModel.this;
            Throwable thM8545exceptionOrNullimpl = Result.m8545exceptionOrNullimpl(objM10361crearCitagIAlus);
            if (thM8545exceptionOrNullimpl != null) {
                MutableStateFlow mutableStateFlow = psicologoAgendaViewModel2._errorMessage;
                String message = thM8545exceptionOrNullimpl.getMessage();
                if (message == null) {
                    message = "Error al crear la cita";
                }
                mutableStateFlow.setValue(message);
            }
            PsicologoAgendaViewModel.this._isLoading.setValue(Boxing.boxBoolean(false));
            return Unit.INSTANCE;
        }
    }

    public final void editarCita(long idCita, long idPaciente, LocalDate fecha, LocalTime hora, int duracionMinutos, String motivo, long idTipoTerapia, MetodoPago metodoPago, BigDecimal monto) {
        Long idPsicologo;
        Intrinsics.checkNotNullParameter(fecha, "fecha");
        Intrinsics.checkNotNullParameter(hora, "hora");
        Intrinsics.checkNotNullParameter(motivo, "motivo");
        Intrinsics.checkNotNullParameter(metodoPago, "metodoPago");
        Intrinsics.checkNotNullParameter(monto, "monto");
        UserSession value = this._userSession.getValue();
        if (value != null && (idPsicologo = value.getIdPsicologo()) != null) {
            long psychologistId = idPsicologo.longValue();
            BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C08251(fecha, hora, metodoPago, idPaciente, psychologistId, duracionMinutos, monto, motivo, idTipoTerapia, idCita, null), 3, null);
        } else {
            this._errorMessage.setValue("No hay sesión de psicólogo");
        }
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel$editarCita$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PsicologoAgendaViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel$editarCita$1", f = "PsicologoAgendaViewModel.kt", i = {0, 0}, l = {376}, m = "invokeSuspend", n = {"startDatetime", "request"}, s = {"L$0", "L$1"})
    static final class C08251 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ int $duracionMinutos;
        final /* synthetic */ LocalDate $fecha;
        final /* synthetic */ LocalTime $hora;
        final /* synthetic */ long $idCita;
        final /* synthetic */ long $idPaciente;
        final /* synthetic */ long $idTipoTerapia;
        final /* synthetic */ MetodoPago $metodoPago;
        final /* synthetic */ BigDecimal $monto;
        final /* synthetic */ String $motivo;
        final /* synthetic */ long $psychologistId;
        Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C08251(LocalDate localDate, LocalTime localTime, MetodoPago metodoPago, long j, long j2, int i, BigDecimal bigDecimal, String str, long j3, long j4, Continuation<? super C08251> continuation) {
            super(2, continuation);
            this.$fecha = localDate;
            this.$hora = localTime;
            this.$metodoPago = metodoPago;
            this.$idPaciente = j;
            this.$psychologistId = j2;
            this.$duracionMinutos = i;
            this.$monto = bigDecimal;
            this.$motivo = str;
            this.$idTipoTerapia = j3;
            this.$idCita = j4;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PsicologoAgendaViewModel.this.new C08251(this.$fecha, this.$hora, this.$metodoPago, this.$idPaciente, this.$psychologistId, this.$duracionMinutos, this.$monto, this.$motivo, this.$idTipoTerapia, this.$idCita, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C08251) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object objM10363editarCita0E7RQCE;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    PsicologoAgendaViewModel.this._isLoading.setValue(Boxing.boxBoolean(true));
                    LocalDateTime startDatetime = LocalDateTime.of(this.$fecha, this.$hora);
                    String string = startDatetime.toString();
                    Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                    CitaRequest request = new CitaRequest(this.$idPaciente, this.$psychologistId, string, Boxing.boxInt(this.$duracionMinutos), this.$metodoPago.name(), this.$monto, this.$metodoPago == MetodoPago.ONLINE ? "PAGADO" : "PENDIENTE", "PENDIENTE", this.$motivo, Boxing.boxLong(this.$idTipoTerapia));
                    this.L$0 = SpillingKt.nullOutSpilledVariable(startDatetime);
                    this.L$1 = SpillingKt.nullOutSpilledVariable(request);
                    this.label = 1;
                    objM10363editarCita0E7RQCE = PsicologoAgendaViewModel.this.citasRepository.m10363editarCita0E7RQCE(this.$idCita, request, this);
                    if (objM10363editarCita0E7RQCE == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    break;
                case 1:
                    ResultKt.throwOnFailure($result);
                    objM10363editarCita0E7RQCE = ((Result) $result).getValue();
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            PsicologoAgendaViewModel psicologoAgendaViewModel = PsicologoAgendaViewModel.this;
            LocalDate localDate = this.$fecha;
            if (Result.m8549isSuccessimpl(objM10363editarCita0E7RQCE)) {
                Object value = psicologoAgendaViewModel._mesVisible.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "<get-value>(...)");
                psicologoAgendaViewModel.cargarAgendaMensual((YearMonth) value);
                PsicologoAgendaViewModel.cargarDisponibilidadDia$default(psicologoAgendaViewModel, localDate, 0, 2, null);
                psicologoAgendaViewModel._successMessage.setValue("Cita editada correctamente");
            }
            PsicologoAgendaViewModel psicologoAgendaViewModel2 = PsicologoAgendaViewModel.this;
            Throwable thM8545exceptionOrNullimpl = Result.m8545exceptionOrNullimpl(objM10363editarCita0E7RQCE);
            if (thM8545exceptionOrNullimpl != null) {
                MutableStateFlow mutableStateFlow = psicologoAgendaViewModel2._errorMessage;
                String message = thM8545exceptionOrNullimpl.getMessage();
                if (message == null) {
                    message = "Error al editar la cita";
                }
                mutableStateFlow.setValue(message);
            }
            PsicologoAgendaViewModel.this._isLoading.setValue(Boxing.boxBoolean(false));
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel$cancelarCita$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PsicologoAgendaViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel$cancelarCita$1", f = "PsicologoAgendaViewModel.kt", i = {}, l = {394}, m = "invokeSuspend", n = {}, s = {})
    static final class C08181 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ LocalDate $fecha;
        final /* synthetic */ long $idCita;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C08181(long j, LocalDate localDate, Continuation<? super C08181> continuation) {
            super(2, continuation);
            this.$idCita = j;
            this.$fecha = localDate;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PsicologoAgendaViewModel.this.new C08181(this.$idCita, this.$fecha, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C08181) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object value;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    PsicologoAgendaViewModel.this._isLoading.setValue(Boxing.boxBoolean(true));
                    this.label = 1;
                    Object objM10360cancelarCitagIAlus = PsicologoAgendaViewModel.this.citasRepository.m10360cancelarCitagIAlus(this.$idCita, this);
                    if (objM10360cancelarCitagIAlus == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    value = objM10360cancelarCitagIAlus;
                    break;
                    break;
                case 1:
                    ResultKt.throwOnFailure($result);
                    value = ((Result) $result).getValue();
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            PsicologoAgendaViewModel psicologoAgendaViewModel = PsicologoAgendaViewModel.this;
            LocalDate localDate = this.$fecha;
            if (Result.m8549isSuccessimpl(value)) {
                Object value2 = psicologoAgendaViewModel._mesVisible.getValue();
                Intrinsics.checkNotNullExpressionValue(value2, "<get-value>(...)");
                psicologoAgendaViewModel.cargarAgendaMensual((YearMonth) value2);
                PsicologoAgendaViewModel.cargarDisponibilidadDia$default(psicologoAgendaViewModel, localDate, 0, 2, null);
                psicologoAgendaViewModel._successMessage.setValue("Cita cancelada correctamente");
            }
            PsicologoAgendaViewModel psicologoAgendaViewModel2 = PsicologoAgendaViewModel.this;
            Throwable thM8545exceptionOrNullimpl = Result.m8545exceptionOrNullimpl(value);
            if (thM8545exceptionOrNullimpl != null) {
                MutableStateFlow mutableStateFlow = psicologoAgendaViewModel2._errorMessage;
                String message = thM8545exceptionOrNullimpl.getMessage();
                if (message == null) {
                    message = "Error al cancelar la cita";
                }
                mutableStateFlow.setValue(message);
            }
            PsicologoAgendaViewModel.this._isLoading.setValue(Boxing.boxBoolean(false));
            return Unit.INSTANCE;
        }
    }

    public final void cancelarCita(long idCita, LocalDate fecha) {
        Intrinsics.checkNotNullParameter(fecha, "fecha");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C08181(idCita, fecha, null), 3, null);
    }
}
