package org.ies.tierno.applicationamani.presentation.viewmodels.chat;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.media3.exoplayer.upstream.CmcdData;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import org.ies.tierno.applicationamani.data.local.UserSession;
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore;
import org.ies.tierno.applicationamani.domain.usecases.profileUseCase.ProfileUseCaseGeneral;
import org.ies.tierno.applicationamani.domain.usecases.psicologosUseCase.ListarPacientesByPsicologo;
import org.ies.tierno.applicationamani.dto.perfil.PacienteProfileResponseDTO;
import org.ies.tierno.applicationamani.dto.perfil.PsicologoProfileResponseDTO;
import org.ies.tierno.applicationamani.dto.perfil.UsuarioProfileResponseDTO;
import org.ies.tierno.applicationamani.dto.psicologo.PacientePsicologoResponseDTO;

/* JADX INFO: compiled from: ChatListViewModel.kt */
/* JADX INFO: loaded from: classes16.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001f\u001a\u00020\u0012H\u0002J\b\u0010 \u001a\u00020!H\u0002J\u0010\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020\fH\u0002J\b\u0010$\u001a\u00020!H\u0002J\u0010\u0010%\u001a\u00020!2\u0006\u0010&\u001a\u00020\fH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0019\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0010R\u0016\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0019\u0010\u0016\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0010R\u0014\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00120\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00120\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0010R\u0014\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001c0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001c0\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0010¨\u0006'"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatListViewModel;", "Landroidx/lifecycle/ViewModel;", "userSessionDataStore", "Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;", "profileUseCaseGeneral", "Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral;", "listarPacientesByPsicologo", "Lorg/ies/tierno/applicationamani/domain/usecases/psicologosUseCase/ListarPacientesByPsicologo;", "<init>", "(Lorg/ies/tierno/applicationamani/data/local/UserSessionDataStore;Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral;Lorg/ies/tierno/applicationamani/domain/usecases/psicologosUseCase/ListarPacientesByPsicologo;)V", "_currentUserId", "Lkotlinx/coroutines/flow/MutableStateFlow;", "", "currentUserId", "Lkotlinx/coroutines/flow/StateFlow;", "getCurrentUserId", "()Lkotlinx/coroutines/flow/StateFlow;", "_currentUserRol", "", "currentUserRol", "getCurrentUserRol", "_partnerId", "partnerId", "getPartnerId", "_partnerNombre", "partnerNombre", "getPartnerNombre", "_isLoading", "", "isLoading", "normalizeRole", "role", "loadCurrentUser", "", "resolvePacienteParaChat", "idPaciente", "loadFirstAssignedPatient", "loadPsicologoNombre", "idUsuarioPsicologo", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class ChatListViewModel extends ViewModel {
    public static final int $stable = 8;
    private final MutableStateFlow<Long> _currentUserId;
    private final MutableStateFlow<String> _currentUserRol;
    private final MutableStateFlow<Boolean> _isLoading;
    private final MutableStateFlow<Long> _partnerId;
    private final MutableStateFlow<String> _partnerNombre;
    private final StateFlow<Long> currentUserId;
    private final StateFlow<String> currentUserRol;
    private final StateFlow<Boolean> isLoading;
    private final ListarPacientesByPsicologo listarPacientesByPsicologo;
    private final StateFlow<Long> partnerId;
    private final StateFlow<String> partnerNombre;
    private final ProfileUseCaseGeneral profileUseCaseGeneral;
    private final UserSessionDataStore userSessionDataStore;

    public ChatListViewModel(UserSessionDataStore userSessionDataStore, ProfileUseCaseGeneral profileUseCaseGeneral, ListarPacientesByPsicologo listarPacientesByPsicologo) {
        Intrinsics.checkNotNullParameter(userSessionDataStore, "userSessionDataStore");
        Intrinsics.checkNotNullParameter(profileUseCaseGeneral, "profileUseCaseGeneral");
        Intrinsics.checkNotNullParameter(listarPacientesByPsicologo, "listarPacientesByPsicologo");
        this.userSessionDataStore = userSessionDataStore;
        this.profileUseCaseGeneral = profileUseCaseGeneral;
        this.listarPacientesByPsicologo = listarPacientesByPsicologo;
        this._currentUserId = StateFlowKt.MutableStateFlow(null);
        this.currentUserId = FlowKt.asStateFlow(this._currentUserId);
        this._currentUserRol = StateFlowKt.MutableStateFlow("");
        this.currentUserRol = FlowKt.asStateFlow(this._currentUserRol);
        this._partnerId = StateFlowKt.MutableStateFlow(null);
        this.partnerId = FlowKt.asStateFlow(this._partnerId);
        this._partnerNombre = StateFlowKt.MutableStateFlow("");
        this.partnerNombre = FlowKt.asStateFlow(this._partnerNombre);
        this._isLoading = StateFlowKt.MutableStateFlow(false);
        this.isLoading = FlowKt.asStateFlow(this._isLoading);
        loadCurrentUser();
    }

    public final StateFlow<Long> getCurrentUserId() {
        return this.currentUserId;
    }

    public final StateFlow<String> getCurrentUserRol() {
        return this.currentUserRol;
    }

    public final StateFlow<Long> getPartnerId() {
        return this.partnerId;
    }

    public final StateFlow<String> getPartnerNombre() {
        return this.partnerNombre;
    }

    public final StateFlow<Boolean> isLoading() {
        return this.isLoading;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String normalizeRole(String role) {
        String lowerCase = role.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        return StringsKt.replace$default(StringsKt.replace$default(StringsKt.trim((CharSequence) lowerCase).toString(), "ó", "o", false, 4, (Object) null), "á", CmcdData.OBJECT_TYPE_AUDIO_ONLY, false, 4, (Object) null);
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatListViewModel$loadCurrentUser$1, reason: invalid class name */
    /* JADX INFO: compiled from: ChatListViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatListViewModel$loadCurrentUser$1", f = "ChatListViewModel.kt", i = {}, l = {54}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ChatListViewModel.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00b8  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x00d0  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object $result) {
            Object session;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    ChatListViewModel.this._isLoading.setValue(Boxing.boxBoolean(true));
                    this.label = 1;
                    session = ChatListViewModel.this.userSessionDataStore.getSession(this);
                    if (session == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    break;
                case 1:
                    ResultKt.throwOnFailure($result);
                    session = $result;
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            UserSession session2 = (UserSession) session;
            ChatListViewModel chatListViewModel = ChatListViewModel.this;
            if (session2 != null) {
                chatListViewModel._currentUserId.setValue(Boxing.boxLong(session2.getIdUsuario()));
                ChatListViewModel.this._currentUserRol.setValue(session2.getRol());
                String strNormalizeRole = ChatListViewModel.this.normalizeRole(session2.getRol());
                switch (strNormalizeRole.hashCode()) {
                    case -372981169:
                        if (!strNormalizeRole.equals("psicologa")) {
                            ChatListViewModel.this._isLoading.setValue(Boxing.boxBoolean(false));
                        } else {
                            Long idPaciente = session2.getIdPaciente();
                            ChatListViewModel chatListViewModel2 = ChatListViewModel.this;
                            if (idPaciente != null) {
                                chatListViewModel2.resolvePacienteParaChat(session2.getIdPaciente().longValue());
                            } else {
                                chatListViewModel2.loadFirstAssignedPatient();
                            }
                        }
                        break;
                    case -372981155:
                        if (!strNormalizeRole.equals("psicologo")) {
                        }
                        break;
                    case 749146993:
                        if (strNormalizeRole.equals("paciente")) {
                            Long idPsicologo = session2.getIdPsicologo();
                            ChatListViewModel chatListViewModel3 = ChatListViewModel.this;
                            if (idPsicologo != null) {
                                chatListViewModel3._partnerId.setValue(session2.getIdPsicologo());
                                ChatListViewModel.this.loadPsicologoNombre(session2.getIdPsicologo().longValue());
                            } else {
                                chatListViewModel3._isLoading.setValue(Boxing.boxBoolean(false));
                            }
                            break;
                        }
                        break;
                }
            } else {
                chatListViewModel._isLoading.setValue(Boxing.boxBoolean(false));
            }
            return Unit.INSTANCE;
        }
    }

    private final void loadCurrentUser() {
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new AnonymousClass1(null), 3, null);
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatListViewModel$resolvePacienteParaChat$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ChatListViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatListViewModel$resolvePacienteParaChat$1", f = "ChatListViewModel.kt", i = {}, l = {98}, m = "invokeSuspend", n = {}, s = {})
    static final class C08281 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ long $idPaciente;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C08281(long j, Continuation<? super C08281> continuation) {
            super(2, continuation);
            this.$idPaciente = j;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ChatListViewModel.this.new C08281(this.$idPaciente, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C08281) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object result;
            String apellido;
            String nombre;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            boolean z = true;
            try {
                switch (this.label) {
                    case 0:
                        ResultKt.throwOnFailure($result);
                        ChatListViewModel.this._isLoading.setValue(Boxing.boxBoolean(true));
                        this.label = 1;
                        Object objM10393getPacienteByIdFirebasegIAlus = ChatListViewModel.this.profileUseCaseGeneral.m10393getPacienteByIdFirebasegIAlus(this.$idPaciente, this);
                        if (objM10393getPacienteByIdFirebasegIAlus == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        result = objM10393getPacienteByIdFirebasegIAlus;
                        break;
                        break;
                    case 1:
                        ResultKt.throwOnFailure($result);
                        result = ((Result) $result).getValue();
                        break;
                    default:
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ChatListViewModel chatListViewModel = ChatListViewModel.this;
                if (Result.m8549isSuccessimpl(result)) {
                    PacienteProfileResponseDTO pacienteProfileResponseDTO = (PacienteProfileResponseDTO) result;
                    UsuarioProfileResponseDTO usuario = pacienteProfileResponseDTO.getUsuario();
                    if ((usuario != null ? usuario.getIdUsuario() : null) != null) {
                        chatListViewModel._partnerId.setValue(pacienteProfileResponseDTO.getUsuario().getIdUsuario());
                        StringBuilder sb = new StringBuilder();
                        UsuarioProfileResponseDTO usuario2 = pacienteProfileResponseDTO.getUsuario();
                        if (usuario2 != null && (nombre = usuario2.getNombre()) != null) {
                            sb.append(nombre);
                        }
                        UsuarioProfileResponseDTO usuario3 = pacienteProfileResponseDTO.getUsuario();
                        if (usuario3 != null && (apellido = usuario3.getApellido()) != null) {
                            if (sb.length() > 0) {
                                sb.append(" ");
                            }
                            sb.append(apellido);
                        }
                        String string = sb.toString();
                        MutableStateFlow mutableStateFlow = chatListViewModel._partnerNombre;
                        String str = string;
                        if (str.length() != 0) {
                            z = false;
                        }
                        if (z) {
                            str = "Tu Paciente";
                        }
                        mutableStateFlow.setValue(str);
                    } else {
                        chatListViewModel._partnerNombre.setValue("Tu Paciente");
                    }
                }
                ChatListViewModel chatListViewModel2 = ChatListViewModel.this;
                if (Result.m8545exceptionOrNullimpl(result) != null) {
                    chatListViewModel2._partnerNombre.setValue("Tu Paciente");
                }
                ChatListViewModel.this._isLoading.setValue(Boxing.boxBoolean(false));
                return Unit.INSTANCE;
            } catch (Throwable th) {
                ChatListViewModel.this._isLoading.setValue(Boxing.boxBoolean(false));
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void resolvePacienteParaChat(long idPaciente) {
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C08281(idPaciente, null), 3, null);
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatListViewModel$loadFirstAssignedPatient$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ChatListViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatListViewModel$loadFirstAssignedPatient$1", f = "ChatListViewModel.kt", i = {}, l = {128}, m = "invokeSuspend", n = {}, s = {})
    static final class C08261 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C08261(Continuation<? super C08261> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ChatListViewModel.this.new C08261(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C08261) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object objFirst;
            Long pacienteId;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            try {
                switch (this.label) {
                    case 0:
                        ResultKt.throwOnFailure($result);
                        ChatListViewModel.this._isLoading.setValue(Boxing.boxBoolean(true));
                        this.label = 1;
                        objFirst = FlowKt.first(ChatListViewModel.this.listarPacientesByPsicologo.invoke(), this);
                        if (objFirst == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        break;
                    case 1:
                        ResultKt.throwOnFailure($result);
                        objFirst = $result;
                        break;
                    default:
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                List pacientes = (List) objFirst;
                PacientePsicologoResponseDTO first = (PacientePsicologoResponseDTO) CollectionsKt.firstOrNull(pacientes);
                if (first == null || (pacienteId = first.getIdUsuario()) == null) {
                    pacienteId = first != null ? first.getIdPaciente() : null;
                }
                ChatListViewModel chatListViewModel = ChatListViewModel.this;
                if (pacienteId != null) {
                    chatListViewModel.resolvePacienteParaChat(pacienteId.longValue());
                } else {
                    chatListViewModel._isLoading.setValue(Boxing.boxBoolean(false));
                }
            } catch (Exception e) {
                ChatListViewModel.this._isLoading.setValue(Boxing.boxBoolean(false));
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadFirstAssignedPatient() {
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C08261(null), 3, null);
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatListViewModel$loadPsicologoNombre$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ChatListViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatListViewModel$loadPsicologoNombre$1", f = "ChatListViewModel.kt", i = {}, l = {148}, m = "invokeSuspend", n = {}, s = {})
    static final class C08271 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ long $idUsuarioPsicologo;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C08271(long j, Continuation<? super C08271> continuation) {
            super(2, continuation);
            this.$idUsuarioPsicologo = j;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ChatListViewModel.this.new C08271(this.$idUsuarioPsicologo, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C08271) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object result;
            String apellido;
            String nombre;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            boolean z = true;
            try {
                switch (this.label) {
                    case 0:
                        ResultKt.throwOnFailure($result);
                        ChatListViewModel.this._isLoading.setValue(Boxing.boxBoolean(true));
                        this.label = 1;
                        Object objM10395getPsicologoByIdgIAlus = ChatListViewModel.this.profileUseCaseGeneral.m10395getPsicologoByIdgIAlus(this.$idUsuarioPsicologo, this);
                        if (objM10395getPsicologoByIdgIAlus == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        result = objM10395getPsicologoByIdgIAlus;
                        break;
                        break;
                    case 1:
                        ResultKt.throwOnFailure($result);
                        result = ((Result) $result).getValue();
                        break;
                    default:
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ChatListViewModel chatListViewModel = ChatListViewModel.this;
                if (Result.m8549isSuccessimpl(result)) {
                    PsicologoProfileResponseDTO psicologoProfileResponseDTO = (PsicologoProfileResponseDTO) result;
                    StringBuilder sb = new StringBuilder();
                    UsuarioProfileResponseDTO usuario = psicologoProfileResponseDTO.getUsuario();
                    if (usuario != null && (nombre = usuario.getNombre()) != null) {
                        sb.append(nombre);
                    }
                    UsuarioProfileResponseDTO usuario2 = psicologoProfileResponseDTO.getUsuario();
                    if (usuario2 != null && (apellido = usuario2.getApellido()) != null) {
                        if (sb.length() > 0) {
                            sb.append(" ");
                        }
                        sb.append(apellido);
                    }
                    String string = sb.toString();
                    MutableStateFlow mutableStateFlow = chatListViewModel._partnerNombre;
                    String str = string;
                    if (str.length() != 0) {
                        z = false;
                    }
                    if (z) {
                        str = "Tu Psicólogo";
                    }
                    mutableStateFlow.setValue(str);
                }
                ChatListViewModel chatListViewModel2 = ChatListViewModel.this;
                if (Result.m8545exceptionOrNullimpl(result) != null) {
                    chatListViewModel2._partnerNombre.setValue("Tu Psicólogo");
                }
                ChatListViewModel.this._isLoading.setValue(Boxing.boxBoolean(false));
                return Unit.INSTANCE;
            } catch (Throwable th) {
                ChatListViewModel.this._isLoading.setValue(Boxing.boxBoolean(false));
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadPsicologoNombre(long idUsuarioPsicologo) {
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C08271(idUsuarioPsicologo, null), 3, null);
    }
}
