package org.ies.tierno.applicationamani.presentation.viewmodels.admin;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
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
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.CrearPreguntaUseCase;
import org.ies.tierno.applicationamani.dto.opcionAdminDTO.PreguntaRequest;

/* JADX INFO: compiled from: CrearPreguntaViewModel.kt */
/* JADX INFO: loaded from: classes16.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u000b\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000eJ\u000e\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u000eJ\u000e\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000eJ\u000e\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000eJ\u000e\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000eJ\u000e\u0010\u001e\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000eJ\b\u0010\u001f\u001a\u00020\u0017H\u0002J\u0006\u0010 \u001a\u00020\u0017J\u0006\u0010!\u001a\u00020\u0017R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\n¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00130\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\n¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\f¨\u0006\""}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/CrearPreguntaViewModel;", "Landroidx/lifecycle/ViewModel;", "crearPreguntaUseCase", "Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/CrearPreguntaUseCase;", "<init>", "(Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/CrearPreguntaUseCase;)V", "_request", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/PreguntaRequest;", "request", "Lkotlinx/coroutines/flow/StateFlow;", "getRequest", "()Lkotlinx/coroutines/flow/StateFlow;", "_opcion1", "", "_opcion2", "_opcion3", "_opcion4", "_guardadoExitoso", "", "guardadoExitoso", "getGuardadoExitoso", "setTexto", "", "texto", "setTipo", "tipo", "setOpcion1", "setOpcion2", "setOpcion3", "setOpcion4", "actualizarOpciones", "guardarPregunta", "limpiarEstadoGuardado", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class CrearPreguntaViewModel extends ViewModel {
    public static final int $stable = 8;
    private final MutableStateFlow<Boolean> _guardadoExitoso;
    private final MutableStateFlow<String> _opcion1;
    private final MutableStateFlow<String> _opcion2;
    private final MutableStateFlow<String> _opcion3;
    private final MutableStateFlow<String> _opcion4;
    private final MutableStateFlow<PreguntaRequest> _request;
    private final CrearPreguntaUseCase crearPreguntaUseCase;
    private final StateFlow<Boolean> guardadoExitoso;
    private final StateFlow<PreguntaRequest> request;

    public CrearPreguntaViewModel(CrearPreguntaUseCase crearPreguntaUseCase) {
        Intrinsics.checkNotNullParameter(crearPreguntaUseCase, "crearPreguntaUseCase");
        this.crearPreguntaUseCase = crearPreguntaUseCase;
        this._request = StateFlowKt.MutableStateFlow(new PreguntaRequest("", "", CollectionsKt.emptyList()));
        this.request = FlowKt.asStateFlow(this._request);
        this._opcion1 = StateFlowKt.MutableStateFlow("");
        this._opcion2 = StateFlowKt.MutableStateFlow("");
        this._opcion3 = StateFlowKt.MutableStateFlow("");
        this._opcion4 = StateFlowKt.MutableStateFlow("");
        this._guardadoExitoso = StateFlowKt.MutableStateFlow(false);
        this.guardadoExitoso = FlowKt.asStateFlow(this._guardadoExitoso);
    }

    public final StateFlow<PreguntaRequest> getRequest() {
        return this.request;
    }

    public final StateFlow<Boolean> getGuardadoExitoso() {
        return this.guardadoExitoso;
    }

    public final void setTexto(String texto) {
        Intrinsics.checkNotNullParameter(texto, "texto");
        this._request.setValue(PreguntaRequest.copy$default(this._request.getValue(), texto, null, null, 6, null));
    }

    public final void setTipo(String tipo) {
        Intrinsics.checkNotNullParameter(tipo, "tipo");
        this._request.setValue(PreguntaRequest.copy$default(this._request.getValue(), null, tipo, null, 5, null));
    }

    public final void setOpcion1(String texto) {
        Intrinsics.checkNotNullParameter(texto, "texto");
        this._opcion1.setValue(texto);
        actualizarOpciones();
    }

    public final void setOpcion2(String texto) {
        Intrinsics.checkNotNullParameter(texto, "texto");
        this._opcion2.setValue(texto);
        actualizarOpciones();
    }

    public final void setOpcion3(String texto) {
        Intrinsics.checkNotNullParameter(texto, "texto");
        this._opcion3.setValue(texto);
        actualizarOpciones();
    }

    public final void setOpcion4(String texto) {
        Intrinsics.checkNotNullParameter(texto, "texto");
        this._opcion4.setValue(texto);
        actualizarOpciones();
    }

    private final void actualizarOpciones() {
        MutableStateFlow<PreguntaRequest> mutableStateFlow = this._request;
        PreguntaRequest value = this._request.getValue();
        Iterable iterableListOf = CollectionsKt.listOf((Object[]) new String[]{this._opcion1.getValue(), this._opcion2.getValue(), this._opcion3.getValue(), this._opcion4.getValue()});
        Collection arrayList = new ArrayList();
        for (Object obj : iterableListOf) {
            if (!StringsKt.isBlank((String) obj)) {
                arrayList.add(obj);
            }
        }
        mutableStateFlow.setValue(PreguntaRequest.copy$default(value, null, null, (List) arrayList, 3, null));
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.admin.CrearPreguntaViewModel$guardarPregunta$1, reason: invalid class name */
    /* JADX INFO: compiled from: CrearPreguntaViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.admin.CrearPreguntaViewModel$guardarPregunta$1", f = "CrearPreguntaViewModel.kt", i = {}, l = {84}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return CrearPreguntaViewModel.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            try {
                switch (this.label) {
                    case 0:
                        ResultKt.throwOnFailure($result);
                        this.label = 1;
                        if (CrearPreguntaViewModel.this.crearPreguntaUseCase.invoke((PreguntaRequest) CrearPreguntaViewModel.this._request.getValue(), this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        break;
                    case 1:
                        ResultKt.throwOnFailure($result);
                        break;
                    default:
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                CrearPreguntaViewModel.this._guardadoExitoso.setValue(Boxing.boxBoolean(true));
            } catch (Exception e) {
                CrearPreguntaViewModel.this._guardadoExitoso.setValue(Boxing.boxBoolean(false));
            }
            return Unit.INSTANCE;
        }
    }

    public final void guardarPregunta() {
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new AnonymousClass1(null), 3, null);
    }

    public final void limpiarEstadoGuardado() {
        this._guardadoExitoso.setValue(false);
    }
}
