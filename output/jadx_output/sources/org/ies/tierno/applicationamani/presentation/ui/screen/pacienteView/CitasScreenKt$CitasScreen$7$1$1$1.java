package org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView;

import android.content.Context;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.compose.material3.SnackbarDuration;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.SnackbarResult;
import androidx.compose.runtime.MutableState;
import j$.time.LocalDate;
import j$.time.LocalTime;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;
import org.ies.tierno.applicationamani.presentation.ui.componente.FranjaHoraria;
import org.ies.tierno.applicationamani.presentation.viewmodels.CitasViewModel;
import org.ies.tierno.applicationamani.utils.CalendarUtilsKt;

/* JADX INFO: compiled from: CitasScreen.kt */
/* JADX INFO: loaded from: classes15.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreenKt$CitasScreen$7$1$1$1", f = "CitasScreen.kt", i = {0, 1, 1, 2, 2}, l = {507, 517, 536}, m = "invokeSuspend", n = {"hora", "hora", "result", "hora", "result"}, s = {"L$0", "L$0", "L$1", "L$0", "L$1"})
final class CitasScreenKt$CitasScreen$7$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Context $context;
    final /* synthetic */ MutableState<LocalDate> $fechaSeleccionada$delegate;
    final /* synthetic */ MutableState<FranjaHoraria> $franjaSeleccionadaTemp$delegate;
    final /* synthetic */ MutableState<Boolean> $mostrarDialogoMotivo$delegate;
    final /* synthetic */ MutableState<String> $motivoCita$delegate;
    final /* synthetic */ ManagedActivityResultLauncher<String, Boolean> $notifPermissionLauncher;
    final /* synthetic */ MutableState<Pair<LocalDate, LocalTime>> $pendingRecordatorio$delegate;
    final /* synthetic */ SnackbarHostState $snackbarHostState;
    final /* synthetic */ CitasViewModel $viewModel;
    Object L$0;
    Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CitasScreenKt$CitasScreen$7$1$1$1(CitasViewModel citasViewModel, SnackbarHostState snackbarHostState, Context context, MutableState<FranjaHoraria> mutableState, MutableState<LocalDate> mutableState2, MutableState<String> mutableState3, ManagedActivityResultLauncher<String, Boolean> managedActivityResultLauncher, MutableState<Pair<LocalDate, LocalTime>> mutableState4, MutableState<Boolean> mutableState5, Continuation<? super CitasScreenKt$CitasScreen$7$1$1$1> continuation) {
        super(2, continuation);
        this.$viewModel = citasViewModel;
        this.$snackbarHostState = snackbarHostState;
        this.$context = context;
        this.$franjaSeleccionadaTemp$delegate = mutableState;
        this.$fechaSeleccionada$delegate = mutableState2;
        this.$motivoCita$delegate = mutableState3;
        this.$notifPermissionLauncher = managedActivityResultLauncher;
        this.$pendingRecordatorio$delegate = mutableState4;
        this.$mostrarDialogoMotivo$delegate = mutableState5;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CitasScreenKt$CitasScreen$7$1$1$1(this.$viewModel, this.$snackbarHostState, this.$context, this.$franjaSeleccionadaTemp$delegate, this.$fechaSeleccionada$delegate, this.$motivoCita$delegate, this.$notifPermissionLauncher, this.$pendingRecordatorio$delegate, this.$mostrarDialogoMotivo$delegate, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((CitasScreenKt$CitasScreen$7$1$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0129  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object $result) {
        Object result;
        LocalTime hora;
        String message;
        Object objShowSnackbar$default;
        LocalTime hora2;
        SnackbarResult actionResult;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        String str = "Consulta psicológica";
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                FranjaHoraria franjaHorariaCitasScreen$lambda$18 = CitasScreenKt.CitasScreen$lambda$18(this.$franjaSeleccionadaTemp$delegate);
                Intrinsics.checkNotNull(franjaHorariaCitasScreen$lambda$18);
                LocalTime hora3 = LocalTime.parse(franjaHorariaCitasScreen$lambda$18.getHoraInicio());
                CitasViewModel citasViewModel = this.$viewModel;
                LocalDate localDateCitasScreen$lambda$5 = CitasScreenKt.CitasScreen$lambda$5(this.$fechaSeleccionada$delegate);
                Intrinsics.checkNotNull(localDateCitasScreen$lambda$5);
                Intrinsics.checkNotNull(hora3);
                String strCitasScreen$lambda$21 = CitasScreenKt.CitasScreen$lambda$21(this.$motivoCita$delegate);
                if (StringsKt.isBlank(strCitasScreen$lambda$21)) {
                    strCitasScreen$lambda$21 = "Consulta psicológica";
                }
                this.L$0 = hora3;
                this.label = 1;
                result = citasViewModel.m10485reservarCitayxL6bBk(localDateCitasScreen$lambda$5, hora3, strCitasScreen$lambda$21, 60, this);
                if (result == coroutine_suspended) {
                    return coroutine_suspended;
                }
                hora = hora3;
                if (Result.m8549isSuccessimpl(result)) {
                    SnackbarHostState snackbarHostState = this.$snackbarHostState;
                    Throwable thM8545exceptionOrNullimpl = Result.m8545exceptionOrNullimpl(result);
                    if (thM8545exceptionOrNullimpl == null || (message = thM8545exceptionOrNullimpl.getMessage()) == null) {
                        message = "❌ No se pudo reservar la cita";
                    }
                    this.L$0 = SpillingKt.nullOutSpilledVariable(hora);
                    this.L$1 = SpillingKt.nullOutSpilledVariable(result);
                    this.label = 3;
                    return SnackbarHostState.showSnackbar$default(snackbarHostState, message, null, false, null, this, 14, null) == coroutine_suspended ? coroutine_suspended : Unit.INSTANCE;
                }
                ManagedActivityResultLauncher<String, Boolean> managedActivityResultLauncher = this.$notifPermissionLauncher;
                Context context = this.$context;
                MutableState<Pair<LocalDate, LocalTime>> mutableState = this.$pendingRecordatorio$delegate;
                LocalDate localDateCitasScreen$lambda$52 = CitasScreenKt.CitasScreen$lambda$5(this.$fechaSeleccionada$delegate);
                Intrinsics.checkNotNull(localDateCitasScreen$lambda$52);
                Intrinsics.checkNotNull(hora);
                CitasScreenKt.CitasScreen$programarConPermiso(managedActivityResultLauncher, context, mutableState, localDateCitasScreen$lambda$52, hora);
                SnackbarHostState snackbarHostState2 = this.$snackbarHostState;
                FranjaHoraria franjaHorariaCitasScreen$lambda$182 = CitasScreenKt.CitasScreen$lambda$18(this.$franjaSeleccionadaTemp$delegate);
                Intrinsics.checkNotNull(franjaHorariaCitasScreen$lambda$182);
                String horaInicio = franjaHorariaCitasScreen$lambda$182.getHoraInicio();
                this.L$0 = hora;
                this.L$1 = SpillingKt.nullOutSpilledVariable(result);
                this.label = 2;
                objShowSnackbar$default = SnackbarHostState.showSnackbar$default(snackbarHostState2, "✅ Cita agendada a las " + horaInicio, "Calendario", false, SnackbarDuration.Long, this, 4, null);
                if (objShowSnackbar$default == coroutine_suspended) {
                    return coroutine_suspended;
                }
                hora2 = hora;
                actionResult = (SnackbarResult) objShowSnackbar$default;
                if (actionResult == SnackbarResult.ActionPerformed) {
                    Context context2 = this.$context;
                    LocalDate localDateCitasScreen$lambda$53 = CitasScreenKt.CitasScreen$lambda$5(this.$fechaSeleccionada$delegate);
                    Intrinsics.checkNotNull(localDateCitasScreen$lambda$53);
                    Intrinsics.checkNotNull(hora2);
                    String strCitasScreen$lambda$212 = CitasScreenKt.CitasScreen$lambda$21(this.$motivoCita$delegate);
                    if (!StringsKt.isBlank(strCitasScreen$lambda$212)) {
                        str = strCitasScreen$lambda$212;
                    }
                    CalendarUtilsKt.enviarCitaAlCalendario(context2, localDateCitasScreen$lambda$53, hora2, 60, "Cita - Amani", str);
                }
                CitasScreenKt.CitasScreen$lambda$16(this.$mostrarDialogoMotivo$delegate, false);
                this.$franjaSeleccionadaTemp$delegate.setValue(null);
                Unit unit = Unit.INSTANCE;
            case 1:
                hora = (LocalTime) this.L$0;
                ResultKt.throwOnFailure($result);
                result = ((Result) $result).getValue();
                if (Result.m8549isSuccessimpl(result)) {
                }
                break;
            case 2:
                Object result2 = this.L$1;
                LocalTime hora4 = (LocalTime) this.L$0;
                ResultKt.throwOnFailure($result);
                objShowSnackbar$default = $result;
                hora2 = hora4;
                actionResult = (SnackbarResult) objShowSnackbar$default;
                if (actionResult == SnackbarResult.ActionPerformed) {
                }
                CitasScreenKt.CitasScreen$lambda$16(this.$mostrarDialogoMotivo$delegate, false);
                this.$franjaSeleccionadaTemp$delegate.setValue(null);
                Unit unit2 = Unit.INSTANCE;
            case 3:
                Object obj = this.L$1;
                ResultKt.throwOnFailure($result);
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
