package org.ies.tierno.applicationamani.data.local;

import androidx.core.app.NotificationCompat;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: compiled from: AuthEventChannel.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0006H\u0086@¢\u0006\u0002\u0010\u000eR\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\b¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000f"}, d2 = {"Lorg/ies/tierno/applicationamani/data/local/AuthEventChannel;", "", "<init>", "()V", "_eventChannel", "Lkotlinx/coroutines/channels/Channel;", "Lorg/ies/tierno/applicationamani/data/local/AuthEvent;", "events", "Lkotlinx/coroutines/flow/Flow;", "getEvents", "()Lkotlinx/coroutines/flow/Flow;", "sendEvent", "", NotificationCompat.CATEGORY_EVENT, "(Lorg/ies/tierno/applicationamani/data/local/AuthEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class AuthEventChannel {
    public static final int $stable = 8;
    private final Channel<AuthEvent> _eventChannel = ChannelKt.Channel$default(-2, null, null, 6, null);
    private final Flow<AuthEvent> events = FlowKt.receiveAsFlow(this._eventChannel);

    public final Flow<AuthEvent> getEvents() {
        return this.events;
    }

    public final Object sendEvent(AuthEvent event, Continuation<? super Unit> continuation) {
        Object objSend = this._eventChannel.send(event, continuation);
        return objSend == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objSend : Unit.INSTANCE;
    }
}
