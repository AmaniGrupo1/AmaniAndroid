package org.ies.tierno.applicationamani.presentation.viewmodels.admin;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.ListarPsicologoAdminUseCase;
import org.ies.tierno.applicationamani.dto.psicologo.PsicologoSelfResponseDTO;

/* JADX INFO: compiled from: ListarPsicologosAdminViewModel.kt */
/* JADX INFO: loaded from: classes16.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u001a\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n0\r¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPsicologosAdminViewModel;", "Landroidx/lifecycle/ViewModel;", "listarPsicologoAdminUseCase", "Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/ListarPsicologoAdminUseCase;", "<init>", "(Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/ListarPsicologoAdminUseCase;)V", "getListarPsicologoAdminUseCase", "()Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/ListarPsicologoAdminUseCase;", "_psicologo", "Lkotlinx/coroutines/flow/MutableStateFlow;", "", "Lorg/ies/tierno/applicationamani/dto/psicologo/PsicologoSelfResponseDTO;", "psicologos", "Lkotlinx/coroutines/flow/StateFlow;", "getPsicologos", "()Lkotlinx/coroutines/flow/StateFlow;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class ListarPsicologosAdminViewModel extends ViewModel {
    public static final int $stable = 8;
    private final MutableStateFlow<List<PsicologoSelfResponseDTO>> _psicologo;
    private final ListarPsicologoAdminUseCase listarPsicologoAdminUseCase;
    private final StateFlow<List<PsicologoSelfResponseDTO>> psicologos;

    public final ListarPsicologoAdminUseCase getListarPsicologoAdminUseCase() {
        return this.listarPsicologoAdminUseCase;
    }

    public ListarPsicologosAdminViewModel(ListarPsicologoAdminUseCase listarPsicologoAdminUseCase) {
        Intrinsics.checkNotNullParameter(listarPsicologoAdminUseCase, "listarPsicologoAdminUseCase");
        this.listarPsicologoAdminUseCase = listarPsicologoAdminUseCase;
        this._psicologo = StateFlowKt.MutableStateFlow(CollectionsKt.emptyList());
        this.psicologos = this._psicologo;
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new AnonymousClass1(null), 3, null);
    }

    public final StateFlow<List<PsicologoSelfResponseDTO>> getPsicologos() {
        return this.psicologos;
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPsicologosAdminViewModel$1, reason: invalid class name */
    /* JADX INFO: compiled from: ListarPsicologosAdminViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPsicologosAdminViewModel$1", f = "ListarPsicologosAdminViewModel.kt", i = {}, l = {21}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ListarPsicologosAdminViewModel.this.new AnonymousClass1(continuation);
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
                    Flow<List<PsicologoSelfResponseDTO>> flowInvoke = ListarPsicologosAdminViewModel.this.getListarPsicologoAdminUseCase().invoke();
                    final ListarPsicologosAdminViewModel listarPsicologosAdminViewModel = ListarPsicologosAdminViewModel.this;
                    this.label = 1;
                    if (flowInvoke.collect(new FlowCollector() { // from class: org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPsicologosAdminViewModel.1.1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public /* bridge */ /* synthetic */ Object emit(Object value, Continuation $completion) {
                            return emit((List<PsicologoSelfResponseDTO>) value, (Continuation<? super Unit>) $completion);
                        }

                        public final Object emit(List<PsicologoSelfResponseDTO> list, Continuation<? super Unit> continuation) {
                            listarPsicologosAdminViewModel._psicologo.setValue(list);
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
}
