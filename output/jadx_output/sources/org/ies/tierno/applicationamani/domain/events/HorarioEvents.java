package org.ies.tierno.applicationamani.domain.events;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharedFlowKt;

/* JADX INFO: compiled from: HorarioEvents.kt */
/* JADX INFO: loaded from: classes13.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u000b\u001a\u00020\u0006H\u0086@¢\u0006\u0002\u0010\fR\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\b¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lorg/ies/tierno/applicationamani/domain/events/HorarioEvents;", "", "<init>", "()V", "_horarioActualizado", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "", "horarioActualizado", "Lkotlinx/coroutines/flow/SharedFlow;", "getHorarioActualizado", "()Lkotlinx/coroutines/flow/SharedFlow;", "notificar", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class HorarioEvents {
    public static final HorarioEvents INSTANCE = new HorarioEvents();
    private static final MutableSharedFlow<Unit> _horarioActualizado = SharedFlowKt.MutableSharedFlow$default(0, 0, null, 6, null);
    private static final SharedFlow<Unit> horarioActualizado = FlowKt.asSharedFlow(_horarioActualizado);
    public static final int $stable = 8;

    private HorarioEvents() {
    }

    public final SharedFlow<Unit> getHorarioActualizado() {
        return horarioActualizado;
    }

    public final Object notificar(Continuation<? super Unit> continuation) {
        Object objEmit = _horarioActualizado.emit(Unit.INSTANCE, continuation);
        return objEmit == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objEmit : Unit.INSTANCE;
    }
}
