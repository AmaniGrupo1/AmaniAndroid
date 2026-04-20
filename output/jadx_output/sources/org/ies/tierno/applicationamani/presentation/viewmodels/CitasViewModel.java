package org.ies.tierno.applicationamani.presentation.viewmodels;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import j$.time.LocalDate;
import j$.time.LocalTime;
import j$.time.YearMonth;
import java.util.List;
import kotlin.KotlinNothingValueException;
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
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import org.ies.tierno.applicationamani.data.local.UserSession;
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore;
import org.ies.tierno.applicationamani.data.repositorio.CitasRepository;
import org.ies.tierno.applicationamani.data.repositorio.ProfileRepository;
import org.ies.tierno.applicationamani.domain.events.HorarioEvents;
import org.ies.tierno.applicationamani.domain.models.citas.AgendaItemDTO;
import org.ies.tierno.applicationamani.dto.citas.DisponibilidadDiaResponse;
import org.ies.tierno.applicationamani.dto.perfil.PsicologoProfileResponseDTO;
import org.ies.tierno.applicationamani.dto.requestPaciente.CitaRequest;

/* JADX INFO: compiled from: CitasViewModel.kt */
/* JADX INFO: loaded from: classes14.dex */
@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\r\u0010\u000f\u001a\u00020\f¢\u0006\u0004\b\u000f\u0010\u0010J\u0015\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\u0015\u0010\u0017\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0017\u0010\u0018J:\u0010\"\u001a\b\u0012\u0004\u0012\u00020\f0\u001f2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u00192\b\b\u0002\u0010\u001c\u001a\u00020\u001b2\b\b\u0002\u0010\u001e\u001a\u00020\u001dH\u0086@¢\u0006\u0004\b \u0010!J\u0015\u0010$\u001a\u00020\f2\u0006\u0010#\u001a\u00020\n¢\u0006\u0004\b$\u0010\u000eR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010%R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010&R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010'R\u001c\u0010*\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010)0(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+R\u001f\u0010-\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010)0,8\u0006¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b/\u00100R\u001c\u00101\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u0010+R\u001f\u00102\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0,8\u0006¢\u0006\f\n\u0004\b2\u0010.\u001a\u0004\b3\u00100R \u00106\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u000205040(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u0010+R#\u00107\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u000205040,8\u0006¢\u0006\f\n\u0004\b7\u0010.\u001a\u0004\b8\u00100R\u001c\u0010:\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001090(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b:\u0010+R\u001f\u0010;\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001090,8\u0006¢\u0006\f\n\u0004\b;\u0010.\u001a\u0004\b<\u00100R\u001a\u0010>\u001a\b\u0012\u0004\u0012\u00020=0(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b>\u0010+R\u001d\u0010?\u001a\b\u0012\u0004\u0012\u00020=0,8\u0006¢\u0006\f\n\u0004\b?\u0010.\u001a\u0004\b?\u00100R\u001c\u0010@\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001b0(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b@\u0010+R\u001f\u0010A\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001b0,8\u0006¢\u0006\f\n\u0004\bA\u0010.\u001a\u0004\bB\u00100¨\u0006C"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/viewmodels/CitasViewModel;", "Landroidx/lifecycle/ViewModel;", "Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;", "citasRepository", "Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;", "profileRepository", "Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;", "userSessionDataStore", "<init>", "(Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;)V", "", "idPaciente", "", "cargarPsicologoAsignado", "(J)V", "clearError", "()V", "j$/time/YearMonth", "month", "cargarAgendaMensual", "(Lj$/time/YearMonth;)V", "j$/time/LocalDate", "fecha", "cargarDisponibilidad", "(Lj$/time/LocalDate;)V", "j$/time/LocalTime", "hora", "", "motivo", "", "duracionMinutos", "Lkotlin/Result;", "reservarCita-yxL6bBk", "(Lj$/time/LocalDate;Lj$/time/LocalTime;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "reservarCita", "idCita", "cancelarCita", "Lorg/ies/tierno/applicationamani/data/repositorio/CitasRepository;", "Lorg/ies/tierno/applicationamani/data/repositorio/ProfileRepository;", "Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lorg/ies/tierno/applicationamani/data/local/UserSession;", "_userSession", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lkotlinx/coroutines/flow/StateFlow;", "userSession", "Lkotlinx/coroutines/flow/StateFlow;", "getUserSession", "()Lkotlinx/coroutines/flow/StateFlow;", "_psicologoId", "psicologoId", "getPsicologoId", "", "Lorg/ies/tierno/applicationamani/domain/models/citas/AgendaItemDTO;", "_agendaMensual", "agendaMensual", "getAgendaMensual", "Lorg/ies/tierno/applicationamani/dto/citas/DisponibilidadDiaResponse;", "_disponibilidadDia", "disponibilidadDia", "getDisponibilidadDia", "", "_isLoading", "isLoading", "_errorMessage", "errorMessage", "getErrorMessage", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class CitasViewModel extends ViewModel {
    public static final int $stable = 8;
    private final MutableStateFlow<List<AgendaItemDTO>> _agendaMensual;
    private final MutableStateFlow<DisponibilidadDiaResponse> _disponibilidadDia;
    private final MutableStateFlow<String> _errorMessage;
    private final MutableStateFlow<Boolean> _isLoading;
    private final MutableStateFlow<Long> _psicologoId;
    private final MutableStateFlow<UserSession> _userSession;
    private final StateFlow<List<AgendaItemDTO>> agendaMensual;
    private final CitasRepository citasRepository;
    private final StateFlow<DisponibilidadDiaResponse> disponibilidadDia;
    private final StateFlow<String> errorMessage;
    private final StateFlow<Boolean> isLoading;
    private final ProfileRepository profileRepository;
    private final StateFlow<Long> psicologoId;
    private final StateFlow<UserSession> userSession;
    private final UserSessionDataStore userSessionDataStore;

    public CitasViewModel(CitasRepository citasRepository, ProfileRepository profileRepository, UserSessionDataStore userSessionDataStore) {
        Intrinsics.checkNotNullParameter(citasRepository, "citasRepository");
        Intrinsics.checkNotNullParameter(profileRepository, "profileRepository");
        Intrinsics.checkNotNullParameter(userSessionDataStore, "userSessionDataStore");
        this.citasRepository = citasRepository;
        this.profileRepository = profileRepository;
        this.userSessionDataStore = userSessionDataStore;
        this._userSession = StateFlowKt.MutableStateFlow(null);
        this.userSession = FlowKt.asStateFlow(this._userSession);
        this._psicologoId = StateFlowKt.MutableStateFlow(null);
        this.psicologoId = FlowKt.asStateFlow(this._psicologoId);
        this._agendaMensual = StateFlowKt.MutableStateFlow(CollectionsKt.emptyList());
        this.agendaMensual = FlowKt.asStateFlow(this._agendaMensual);
        this._disponibilidadDia = StateFlowKt.MutableStateFlow(null);
        this.disponibilidadDia = FlowKt.asStateFlow(this._disponibilidadDia);
        this._isLoading = StateFlowKt.MutableStateFlow(false);
        this.isLoading = FlowKt.asStateFlow(this._isLoading);
        this._errorMessage = StateFlowKt.MutableStateFlow(null);
        this.errorMessage = FlowKt.asStateFlow(this._errorMessage);
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new AnonymousClass1(null), 3, null);
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new AnonymousClass2(null), 3, null);
    }

    public final StateFlow<UserSession> getUserSession() {
        return this.userSession;
    }

    public final StateFlow<Long> getPsicologoId() {
        return this.psicologoId;
    }

    public final StateFlow<List<AgendaItemDTO>> getAgendaMensual() {
        return this.agendaMensual;
    }

    public final StateFlow<DisponibilidadDiaResponse> getDisponibilidadDia() {
        return this.disponibilidadDia;
    }

    public final StateFlow<Boolean> isLoading() {
        return this.isLoading;
    }

    public final StateFlow<String> getErrorMessage() {
        return this.errorMessage;
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.CitasViewModel$1, reason: invalid class name */
    /* JADX INFO: compiled from: CitasViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.CitasViewModel$1", f = "CitasViewModel.kt", i = {}, l = {48}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return CitasViewModel.this.new AnonymousClass1(continuation);
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
                    Flow<UserSession> sessionFlow = CitasViewModel.this.userSessionDataStore.getSessionFlow();
                    final CitasViewModel citasViewModel = CitasViewModel.this;
                    this.label = 1;
                    if (sessionFlow.collect(new FlowCollector() { // from class: org.ies.tierno.applicationamani.presentation.viewmodels.CitasViewModel.1.1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public /* bridge */ /* synthetic */ Object emit(Object value, Continuation $completion) {
                            return emit((UserSession) value, (Continuation<? super Unit>) $completion);
                        }

                        public final Object emit(UserSession session, Continuation<? super Unit> continuation) {
                            citasViewModel._userSession.setValue(session);
                            if ((session != null ? session.getIdPsicologo() : null) != null) {
                                citasViewModel._psicologoId.setValue(session.getIdPsicologo());
                            } else {
                                if ((session != null ? session.getIdPaciente() : null) != null) {
                                    citasViewModel.cargarPsicologoAsignado(session.getIdPaciente().longValue());
                                }
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

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.CitasViewModel$2, reason: invalid class name */
    /* JADX INFO: compiled from: CitasViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.CitasViewModel$2", f = "CitasViewModel.kt", i = {}, l = {60}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return CitasViewModel.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    SharedFlow<Unit> horarioActualizado = HorarioEvents.INSTANCE.getHorarioActualizado();
                    final CitasViewModel citasViewModel = CitasViewModel.this;
                    this.label = 1;
                    if (horarioActualizado.collect(new FlowCollector() { // from class: org.ies.tierno.applicationamani.presentation.viewmodels.CitasViewModel.2.1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public /* bridge */ /* synthetic */ Object emit(Object value, Continuation $completion) {
                            return emit((Unit) value, (Continuation<? super Unit>) $completion);
                        }

                        public final Object emit(Unit it, Continuation<? super Unit> continuation) {
                            LocalDate fecha;
                            DisponibilidadDiaResponse disponibilidadDiaResponse = (DisponibilidadDiaResponse) citasViewModel._disponibilidadDia.getValue();
                            if (disponibilidadDiaResponse != null && (fecha = disponibilidadDiaResponse.getFecha()) != null) {
                                citasViewModel.cargarDisponibilidad(fecha);
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
            throw new KotlinNothingValueException();
        }
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.CitasViewModel$cargarPsicologoAsignado$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CitasViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.CitasViewModel$cargarPsicologoAsignado$1", f = "CitasViewModel.kt", i = {}, l = {70}, m = "invokeSuspend", n = {}, s = {})
    static final class C08091 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ long $idPaciente;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C08091(long j, Continuation<? super C08091> continuation) {
            super(2, continuation);
            this.$idPaciente = j;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return CitasViewModel.this.new C08091(this.$idPaciente, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C08091) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object value;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    this.label = 1;
                    Object objM10375obtenerPsicologoAsignadogIAlus = CitasViewModel.this.profileRepository.m10375obtenerPsicologoAsignadogIAlus(this.$idPaciente, this);
                    if (objM10375obtenerPsicologoAsignadogIAlus == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    value = objM10375obtenerPsicologoAsignadogIAlus;
                    break;
                    break;
                case 1:
                    ResultKt.throwOnFailure($result);
                    value = ((Result) $result).getValue();
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            CitasViewModel citasViewModel = CitasViewModel.this;
            if (Result.m8549isSuccessimpl(value)) {
                citasViewModel._psicologoId.setValue(((PsicologoProfileResponseDTO) value).getIdPsicologo());
            }
            CitasViewModel citasViewModel2 = CitasViewModel.this;
            Throwable thM8545exceptionOrNullimpl = Result.m8545exceptionOrNullimpl(value);
            if (thM8545exceptionOrNullimpl != null) {
                citasViewModel2._errorMessage.setValue("No se pudo obtener el psicólogo asignado: " + thM8545exceptionOrNullimpl.getMessage());
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void cargarPsicologoAsignado(long idPaciente) {
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C08091(idPaciente, null), 3, null);
    }

    public final void clearError() {
        this._errorMessage.setValue(null);
    }

    public final void cargarAgendaMensual(YearMonth month) {
        Intrinsics.checkNotNullParameter(month, "month");
        UserSession session = this._userSession.getValue();
        if (session == null) {
            return;
        }
        Long idPaciente = session.getIdPaciente();
        long idPaciente2 = idPaciente != null ? idPaciente.longValue() : session.getIdUsuario();
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C08071(idPaciente2, month, null), 3, null);
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.CitasViewModel$cargarAgendaMensual$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CitasViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.CitasViewModel$cargarAgendaMensual$1", f = "CitasViewModel.kt", i = {}, l = {92}, m = "invokeSuspend", n = {}, s = {})
    static final class C08071 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ long $idPaciente;
        final /* synthetic */ YearMonth $month;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C08071(long j, YearMonth yearMonth, Continuation<? super C08071> continuation) {
            super(2, continuation);
            this.$idPaciente = j;
            this.$month = yearMonth;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return CitasViewModel.this.new C08071(this.$idPaciente, this.$month, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C08071) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object value;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    CitasViewModel.this._isLoading.setValue(Boxing.boxBoolean(true));
                    CitasRepository citasRepository = CitasViewModel.this.citasRepository;
                    long j = this.$idPaciente;
                    String string = this.$month.toString();
                    Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                    this.label = 1;
                    Object objM10364getAgendaPaciente0E7RQCE = citasRepository.m10364getAgendaPaciente0E7RQCE(j, string, this);
                    if (objM10364getAgendaPaciente0E7RQCE == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    value = objM10364getAgendaPaciente0E7RQCE;
                    break;
                    break;
                case 1:
                    ResultKt.throwOnFailure($result);
                    value = ((Result) $result).getValue();
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            CitasViewModel citasViewModel = CitasViewModel.this;
            if (Result.m8549isSuccessimpl(value)) {
                citasViewModel._agendaMensual.setValue((List) value);
                citasViewModel._errorMessage.setValue(null);
            }
            CitasViewModel citasViewModel2 = CitasViewModel.this;
            Throwable thM8545exceptionOrNullimpl = Result.m8545exceptionOrNullimpl(value);
            if (thM8545exceptionOrNullimpl != null) {
                MutableStateFlow mutableStateFlow = citasViewModel2._errorMessage;
                String message = thM8545exceptionOrNullimpl.getMessage();
                if (message == null) {
                    message = "Error cargando agenda";
                }
                mutableStateFlow.setValue(message);
                citasViewModel2._agendaMensual.setValue(CollectionsKt.emptyList());
            }
            CitasViewModel.this._isLoading.setValue(Boxing.boxBoolean(false));
            return Unit.INSTANCE;
        }
    }

    public final void cargarDisponibilidad(LocalDate fecha) {
        Intrinsics.checkNotNullParameter(fecha, "fecha");
        Long value = this._psicologoId.getValue();
        if (value == null) {
            UserSession value2 = this._userSession.getValue();
            value = value2 != null ? value2.getIdPsicologo() : null;
            if (value == null) {
                return;
            }
        }
        long idPsicologo = value.longValue();
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C08081(idPsicologo, fecha, null), 3, null);
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.CitasViewModel$cargarDisponibilidad$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CitasViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.CitasViewModel$cargarDisponibilidad$1", f = "CitasViewModel.kt", i = {}, l = {110}, m = "invokeSuspend", n = {}, s = {})
    static final class C08081 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ LocalDate $fecha;
        final /* synthetic */ long $idPsicologo;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C08081(long j, LocalDate localDate, Continuation<? super C08081> continuation) {
            super(2, continuation);
            this.$idPsicologo = j;
            this.$fecha = localDate;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return CitasViewModel.this.new C08081(this.$idPsicologo, this.$fecha, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C08081) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object value;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    CitasViewModel.this._isLoading.setValue(Boxing.boxBoolean(true));
                    CitasRepository citasRepository = CitasViewModel.this.citasRepository;
                    long j = this.$idPsicologo;
                    String string = this.$fecha.toString();
                    Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                    this.label = 1;
                    Object objM10366getDisponibilidadDiaBWLJW6A = citasRepository.m10366getDisponibilidadDiaBWLJW6A(j, string, 60, this);
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
            CitasViewModel citasViewModel = CitasViewModel.this;
            if (Result.m8549isSuccessimpl(value)) {
                citasViewModel._disponibilidadDia.setValue((DisponibilidadDiaResponse) value);
                citasViewModel._errorMessage.setValue(null);
            }
            CitasViewModel citasViewModel2 = CitasViewModel.this;
            Throwable thM8545exceptionOrNullimpl = Result.m8545exceptionOrNullimpl(value);
            if (thM8545exceptionOrNullimpl != null) {
                MutableStateFlow mutableStateFlow = citasViewModel2._errorMessage;
                String message = thM8545exceptionOrNullimpl.getMessage();
                if (message == null) {
                    message = "Error disponibilidad";
                }
                mutableStateFlow.setValue(message);
            }
            CitasViewModel.this._isLoading.setValue(Boxing.boxBoolean(false));
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: reservarCita-yxL6bBk$default, reason: not valid java name */
    public static /* synthetic */ Object m10484reservarCitayxL6bBk$default(CitasViewModel citasViewModel, LocalDate localDate, LocalTime localTime, String str, int i, Continuation continuation, int i2, Object obj) {
        String str2;
        int i3;
        if ((i2 & 4) == 0) {
            str2 = str;
        } else {
            str2 = "Cita psicológica";
        }
        if ((i2 & 8) == 0) {
            i3 = i;
        } else {
            i3 = 60;
        }
        return citasViewModel.m10485reservarCitayxL6bBk(localDate, localTime, str2, i3, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x001a  */
    /* JADX INFO: renamed from: reservarCita-yxL6bBk, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10485reservarCitayxL6bBk(LocalDate fecha, LocalTime hora, String motivo, int duracionMinutos, Continuation<? super Result<Unit>> continuation) {
        CitasViewModel$reservarCita$1 citasViewModel$reservarCita$1;
        Object value;
        LocalDate fecha2 = fecha;
        if (continuation instanceof CitasViewModel$reservarCita$1) {
            citasViewModel$reservarCita$1 = (CitasViewModel$reservarCita$1) continuation;
            if ((citasViewModel$reservarCita$1.label & Integer.MIN_VALUE) != 0) {
                citasViewModel$reservarCita$1.label -= Integer.MIN_VALUE;
            } else {
                citasViewModel$reservarCita$1 = new CitasViewModel$reservarCita$1(this, continuation);
            }
        }
        Object $result = citasViewModel$reservarCita$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (citasViewModel$reservarCita$1.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                UserSession session = this._userSession.getValue();
                if (session == null) {
                    Result.Companion companion = Result.INSTANCE;
                    return Result.m8542constructorimpl(ResultKt.createFailure(new Exception("No hay sesión")));
                }
                Long value2 = this._psicologoId.getValue();
                if (value2 == null && (value2 = session.getIdPsicologo()) == null) {
                    Result.Companion companion2 = Result.INSTANCE;
                    return Result.m8542constructorimpl(ResultKt.createFailure(new Exception("No hay psicólogo asignado")));
                }
                long idPsicologo = value2.longValue();
                Long idPaciente = session.getIdPaciente();
                long idPaciente2 = idPaciente != null ? idPaciente.longValue() : session.getIdUsuario();
                CitaRequest request = new CitaRequest(idPaciente2, idPsicologo, fecha2 + ExifInterface.GPS_DIRECTION_TRUE + hora, Boxing.boxInt(duracionMinutos), null, null, null, "pendiente", motivo, null, 624, null);
                CitasRepository citasRepository = this.citasRepository;
                citasViewModel$reservarCita$1.L$0 = fecha2;
                citasViewModel$reservarCita$1.L$1 = SpillingKt.nullOutSpilledVariable(hora);
                citasViewModel$reservarCita$1.L$2 = SpillingKt.nullOutSpilledVariable(motivo);
                citasViewModel$reservarCita$1.L$3 = SpillingKt.nullOutSpilledVariable(session);
                citasViewModel$reservarCita$1.L$4 = SpillingKt.nullOutSpilledVariable(request);
                citasViewModel$reservarCita$1.I$0 = duracionMinutos;
                citasViewModel$reservarCita$1.J$0 = idPsicologo;
                citasViewModel$reservarCita$1.J$1 = idPaciente2;
                citasViewModel$reservarCita$1.label = 1;
                Object objM10361crearCitagIAlus = citasRepository.m10361crearCitagIAlus(request, citasViewModel$reservarCita$1);
                if (objM10361crearCitagIAlus == coroutine_suspended) {
                    return coroutine_suspended;
                }
                value = objM10361crearCitagIAlus;
                break;
                break;
            case 1:
                long j = citasViewModel$reservarCita$1.J$1;
                long j2 = citasViewModel$reservarCita$1.J$0;
                int i = citasViewModel$reservarCita$1.I$0;
                fecha2 = (LocalDate) citasViewModel$reservarCita$1.L$0;
                ResultKt.throwOnFailure($result);
                value = ((Result) $result).getValue();
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        if (!Result.m8549isSuccessimpl(value)) {
            return Result.m8542constructorimpl(value);
        }
        Result.Companion companion3 = Result.INSTANCE;
        YearMonth yearMonthFrom = YearMonth.from(fecha2);
        Intrinsics.checkNotNullExpressionValue(yearMonthFrom, "from(...)");
        cargarAgendaMensual(yearMonthFrom);
        cargarDisponibilidad(fecha2);
        return Result.m8542constructorimpl(Unit.INSTANCE);
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.CitasViewModel$cancelarCita$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CitasViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.CitasViewModel$cancelarCita$1", f = "CitasViewModel.kt", i = {}, l = {156}, m = "invokeSuspend", n = {}, s = {})
    static final class C08061 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ long $idCita;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C08061(long j, Continuation<? super C08061> continuation) {
            super(2, continuation);
            this.$idCita = j;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return CitasViewModel.this.new C08061(this.$idCita, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C08061) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object value;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    CitasViewModel.this._isLoading.setValue(Boxing.boxBoolean(true));
                    this.label = 1;
                    Object objM10360cancelarCitagIAlus = CitasViewModel.this.citasRepository.m10360cancelarCitagIAlus(this.$idCita, this);
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
            CitasViewModel citasViewModel = CitasViewModel.this;
            if (Result.m8549isSuccessimpl(value)) {
                citasViewModel._errorMessage.setValue(null);
            }
            CitasViewModel citasViewModel2 = CitasViewModel.this;
            Throwable thM8545exceptionOrNullimpl = Result.m8545exceptionOrNullimpl(value);
            if (thM8545exceptionOrNullimpl != null) {
                MutableStateFlow mutableStateFlow = citasViewModel2._errorMessage;
                String message = thM8545exceptionOrNullimpl.getMessage();
                if (message == null) {
                    message = "Error al cancelar la cita";
                }
                mutableStateFlow.setValue(message);
            }
            CitasViewModel.this._isLoading.setValue(Boxing.boxBoolean(false));
            return Unit.INSTANCE;
        }
    }

    public final void cancelarCita(long idCita) {
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C08061(idCita, null), 3, null);
    }
}
