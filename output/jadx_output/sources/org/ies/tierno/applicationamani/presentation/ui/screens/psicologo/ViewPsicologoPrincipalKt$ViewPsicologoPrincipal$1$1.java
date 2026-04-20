package org.ies.tierno.applicationamani.presentation.ui.screens.psicologo;

import androidx.compose.runtime.MutableState;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import org.ies.tierno.applicationamani.data.local.UserSession;
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore;
import org.ies.tierno.applicationamani.presentation.viewmodels.profile.ProfilePsicologoViewModel;

/* JADX INFO: compiled from: ViewPsicologoPrincipal.kt */
/* JADX INFO: loaded from: classes14.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.ui.screens.psicologo.ViewPsicologoPrincipalKt$ViewPsicologoPrincipal$1$1", f = "ViewPsicologoPrincipal.kt", i = {}, l = {132}, m = "invokeSuspend", n = {}, s = {})
final class ViewPsicologoPrincipalKt$ViewPsicologoPrincipal$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ MutableState<Long> $idPsicologo$delegate;
    final /* synthetic */ MutableState<Boolean> $isLoadingSession$delegate;
    final /* synthetic */ ProfilePsicologoViewModel $profilePsicologoViewModel;
    final /* synthetic */ UserSessionDataStore $userSessionDataStore;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ViewPsicologoPrincipalKt$ViewPsicologoPrincipal$1$1(UserSessionDataStore userSessionDataStore, ProfilePsicologoViewModel profilePsicologoViewModel, MutableState<Long> mutableState, MutableState<Boolean> mutableState2, Continuation<? super ViewPsicologoPrincipalKt$ViewPsicologoPrincipal$1$1> continuation) {
        super(2, continuation);
        this.$userSessionDataStore = userSessionDataStore;
        this.$profilePsicologoViewModel = profilePsicologoViewModel;
        this.$idPsicologo$delegate = mutableState;
        this.$isLoadingSession$delegate = mutableState2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ViewPsicologoPrincipalKt$ViewPsicologoPrincipal$1$1(this.$userSessionDataStore, this.$profilePsicologoViewModel, this.$idPsicologo$delegate, this.$isLoadingSession$delegate, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((ViewPsicologoPrincipalKt$ViewPsicologoPrincipal$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object $result) {
        Object session;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                this.label = 1;
                session = this.$userSessionDataStore.getSession(this);
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
        this.$idPsicologo$delegate.setValue(session2 != null ? session2.getIdPsicologo() : null);
        ViewPsicologoPrincipalKt.ViewPsicologoPrincipal$lambda$9(this.$isLoadingSession$delegate, false);
        System.out.println((Object) "=== SESIÓN OBTENIDA EN ViewPsicologoPrincipal ===");
        System.out.println((Object) ("ID Psicólogo: " + ViewPsicologoPrincipalKt.ViewPsicologoPrincipal$lambda$5(this.$idPsicologo$delegate)));
        System.out.println((Object) ("Session: " + session2));
        if (ViewPsicologoPrincipalKt.ViewPsicologoPrincipal$lambda$5(this.$idPsicologo$delegate) != null) {
            ProfilePsicologoViewModel profilePsicologoViewModel = this.$profilePsicologoViewModel;
            Long lViewPsicologoPrincipal$lambda$5 = ViewPsicologoPrincipalKt.ViewPsicologoPrincipal$lambda$5(this.$idPsicologo$delegate);
            Intrinsics.checkNotNull(lViewPsicologoPrincipal$lambda$5);
            profilePsicologoViewModel.fetchProfile(lViewPsicologoPrincipal$lambda$5.longValue());
        }
        return Unit.INSTANCE;
    }
}
