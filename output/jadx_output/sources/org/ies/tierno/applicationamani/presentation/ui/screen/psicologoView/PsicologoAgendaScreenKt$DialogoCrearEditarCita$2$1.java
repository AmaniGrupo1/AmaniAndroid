package org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView;

import androidx.compose.runtime.MutableState;
import j$.time.LocalTime;
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
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: PsicologoAgendaScreen.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$DialogoCrearEditarCita$2$1", f = "PsicologoAgendaScreen.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class PsicologoAgendaScreenKt$DialogoCrearEditarCita$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ boolean $esEdicion;
    final /* synthetic */ MutableState<LocalTime> $horaSeleccionada$delegate;
    final /* synthetic */ List<LocalTime> $horasDisponibles;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PsicologoAgendaScreenKt$DialogoCrearEditarCita$2$1(boolean z, List<LocalTime> list, MutableState<LocalTime> mutableState, Continuation<? super PsicologoAgendaScreenKt$DialogoCrearEditarCita$2$1> continuation) {
        super(2, continuation);
        this.$esEdicion = z;
        this.$horasDisponibles = list;
        this.$horaSeleccionada$delegate = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PsicologoAgendaScreenKt$DialogoCrearEditarCita$2$1(this.$esEdicion, this.$horasDisponibles, this.$horaSeleccionada$delegate, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((PsicologoAgendaScreenKt$DialogoCrearEditarCita$2$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object $result) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                if (!this.$esEdicion && (PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$186(this.$horaSeleccionada$delegate) == null || !CollectionsKt.contains(this.$horasDisponibles, PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$186(this.$horaSeleccionada$delegate)))) {
                    this.$horaSeleccionada$delegate.setValue((LocalTime) CollectionsKt.firstOrNull((List) this.$horasDisponibles));
                }
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
