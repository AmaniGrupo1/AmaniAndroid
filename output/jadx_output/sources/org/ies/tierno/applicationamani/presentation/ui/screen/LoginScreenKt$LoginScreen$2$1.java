package org.ies.tierno.applicationamani.presentation.ui.screen;

import androidx.compose.runtime.State;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.navigation.NavController;
import androidx.navigation.NavOptionsBuilder;
import androidx.navigation.PopUpToBuilder;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;
import org.ies.tierno.applicationamani.domain.models.login.LoginResponseDTO;
import org.ies.tierno.applicationamani.presentation.navigation.screen.Screens;
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel;

/* JADX INFO: compiled from: LoginScreen.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenKt$LoginScreen$2$1", f = "LoginScreen.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class LoginScreenKt$LoginScreen$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ State<Result<LoginResponseDTO>> $loginResult$delegate;
    final /* synthetic */ LoginViewModel $loginViewModel;
    final /* synthetic */ NavController $navController;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LoginScreenKt$LoginScreen$2$1(State<Result<LoginResponseDTO>> state, NavController navController, LoginViewModel loginViewModel, Continuation<? super LoginScreenKt$LoginScreen$2$1> continuation) {
        super(2, continuation);
        this.$loginResult$delegate = state;
        this.$navController = navController;
        this.$loginViewModel = loginViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LoginScreenKt$LoginScreen$2$1(this.$loginResult$delegate, this.$navController, this.$loginViewModel, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((LoginScreenKt$LoginScreen$2$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x009c  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object $result) {
        String strCreateRoute;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                Result resultLoginScreen$lambda$2 = LoginScreenKt.LoginScreen$lambda$2(this.$loginResult$delegate);
                if (resultLoginScreen$lambda$2 == null) {
                    return Unit.INSTANCE;
                }
                Object result = resultLoginScreen$lambda$2.getValue();
                NavController navController = this.$navController;
                LoginViewModel loginViewModel = this.$loginViewModel;
                if (Result.m8549isSuccessimpl(result)) {
                    LoginResponseDTO loginResponseDTO = (LoginResponseDTO) result;
                    String lowerCase = loginResponseDTO.getRol().toLowerCase(Locale.ROOT);
                    Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                    String strReplace$default = StringsKt.replace$default(StringsKt.replace$default(StringsKt.trim((CharSequence) lowerCase).toString(), "ó", "o", false, 4, (Object) null), "á", CmcdData.OBJECT_TYPE_AUDIO_ONLY, false, 4, (Object) null);
                    switch (strReplace$default.hashCode()) {
                        case -652245315:
                            if (strReplace$default.equals("administrador")) {
                                strCreateRoute = Screens.adminHome.INSTANCE.getRoute();
                            } else {
                                Screens.pacienteHome pacientehome = Screens.pacienteHome.INSTANCE;
                                Long idPaciente = loginResponseDTO.getIdPaciente();
                                strCreateRoute = pacientehome.createRoute(idPaciente != null ? idPaciente.longValue() : 0L);
                            }
                            break;
                        case -372981169:
                            if (strReplace$default.equals("psicologa")) {
                                strCreateRoute = Screens.psicologoHome.INSTANCE.getRoute();
                                break;
                            }
                            break;
                        case -372981155:
                            if (!strReplace$default.equals("psicologo")) {
                            }
                            break;
                        case 92668751:
                            if (!strReplace$default.equals("admin")) {
                            }
                            break;
                    }
                    navController.navigate(strCreateRoute, new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenKt$LoginScreen$2$1$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return LoginScreenKt$LoginScreen$2$1.invokeSuspend$lambda$2$lambda$1((NavOptionsBuilder) obj);
                        }
                    });
                    loginViewModel.clearLoginFields();
                    loginViewModel.resetLoginState();
                }
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    static final Unit invokeSuspend$lambda$2$lambda$1(NavOptionsBuilder $this$navigate) {
        $this$navigate.popUpTo(Screens.login.INSTANCE.getRoute(), new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenKt$LoginScreen$2$1$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LoginScreenKt$LoginScreen$2$1.invokeSuspend$lambda$2$lambda$1$lambda$0((PopUpToBuilder) obj);
            }
        });
        $this$navigate.setLaunchSingleTop(true);
        return Unit.INSTANCE;
    }

    static final Unit invokeSuspend$lambda$2$lambda$1$lambda$0(PopUpToBuilder $this$popUpTo) {
        $this$popUpTo.setInclusive(true);
        return Unit.INSTANCE;
    }
}
