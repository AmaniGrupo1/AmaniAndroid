package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView;

import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.State;
import androidx.media3.extractor.ts.TsExtractor;
import androidx.navigation.NavController;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel;

/* JADX INFO: compiled from: AgregaPsicologoScreen.kt */
/* JADX INFO: loaded from: classes8.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$AgregaPsicologoScreen$2$1", f = "AgregaPsicologoScreen.kt", i = {}, l = {TsExtractor.TS_STREAM_TYPE_E_AC3}, m = "invokeSuspend", n = {}, s = {})
final class AgregaPsicologoScreenKt$AgregaPsicologoScreen$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ LoginViewModel $loginViewModel;
    final /* synthetic */ NavController $navController;
    final /* synthetic */ State<Boolean> $registerSuccess$delegate;
    final /* synthetic */ CoroutineScope $scope;
    final /* synthetic */ SnackbarHostState $snackbarHostState;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AgregaPsicologoScreenKt$AgregaPsicologoScreen$2$1(SnackbarHostState snackbarHostState, CoroutineScope coroutineScope, State<Boolean> state, LoginViewModel loginViewModel, NavController navController, Continuation<? super AgregaPsicologoScreenKt$AgregaPsicologoScreen$2$1> continuation) {
        super(2, continuation);
        this.$snackbarHostState = snackbarHostState;
        this.$scope = coroutineScope;
        this.$registerSuccess$delegate = state;
        this.$loginViewModel = loginViewModel;
        this.$navController = navController;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AgregaPsicologoScreenKt$AgregaPsicologoScreen$2$1(this.$snackbarHostState, this.$scope, this.$registerSuccess$delegate, this.$loginViewModel, this.$navController, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((AgregaPsicologoScreenKt$AgregaPsicologoScreen$2$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object $result) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                if (AgregaPsicologoScreenKt.AgregaPsicologoScreen$lambda$18(this.$registerSuccess$delegate)) {
                    this.label = 1;
                    if (SnackbarHostState.showSnackbar$default(this.$snackbarHostState, "Psicólogo registrado exitosamente", null, false, null, this, 14, null) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    BuildersKt__Builders_commonKt.launch$default(this.$scope, null, null, new AnonymousClass1(this.$loginViewModel, this.$navController, null), 3, null);
                }
                return Unit.INSTANCE;
            case 1:
                ResultKt.throwOnFailure($result);
                BuildersKt__Builders_commonKt.launch$default(this.$scope, null, null, new AnonymousClass1(this.$loginViewModel, this.$navController, null), 3, null);
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$AgregaPsicologoScreen$2$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: AgregaPsicologoScreen.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.AgregaPsicologoScreenKt$AgregaPsicologoScreen$2$1$1", f = "AgregaPsicologoScreen.kt", i = {}, l = {137}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ LoginViewModel $loginViewModel;
        final /* synthetic */ NavController $navController;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(LoginViewModel loginViewModel, NavController navController, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$loginViewModel = loginViewModel;
            this.$navController = navController;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$loginViewModel, this.$navController, continuation);
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
                    this.label = 1;
                    if (DelayKt.delay(1500L, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    break;
                case 1:
                    ResultKt.throwOnFailure($result);
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            this.$loginViewModel.limpiarFormularioPsicologo();
            this.$navController.popBackStack();
            return Unit.INSTANCE;
        }
    }
}
