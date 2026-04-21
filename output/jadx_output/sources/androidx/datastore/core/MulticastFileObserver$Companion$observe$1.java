package androidx.datastore.core;

import androidx.datastore.core.MulticastFileObserver;
import androidx.media3.container.MdtaMetadataEntry;
import java.io.File;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.channels.ChannelsKt;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;

/* JADX INFO: compiled from: MulticastFileObserver.android.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00010\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "androidx.datastore.core.MulticastFileObserver$Companion$observe$1", f = "MulticastFileObserver.android.kt", i = {0, 0}, l = {MdtaMetadataEntry.TYPE_INDICATOR_UNSIGNED_INT64, 79}, m = "invokeSuspend", n = {"$this$channelFlow", "disposeListener"}, s = {"L$0", "L$1"}, v = 1)
final class MulticastFileObserver$Companion$observe$1 extends SuspendLambda implements Function2<ProducerScope<? super Unit>, Continuation<? super Unit>, Object> {
    final /* synthetic */ File $file;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MulticastFileObserver$Companion$observe$1(File file, Continuation<? super MulticastFileObserver$Companion$observe$1> continuation) {
        super(2, continuation);
        this.$file = file;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        MulticastFileObserver$Companion$observe$1 multicastFileObserver$Companion$observe$1 = new MulticastFileObserver$Companion$observe$1(this.$file, continuation);
        multicastFileObserver$Companion$observe$1.L$0 = obj;
        return multicastFileObserver$Companion$observe$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(ProducerScope<? super Unit> producerScope, Continuation<? super Unit> continuation) {
        return ((MulticastFileObserver$Companion$observe$1) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0068 A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object $result) {
        final ProducerScope $this$channelFlow;
        final DisposableHandle disposeListener;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                $this$channelFlow = (ProducerScope) this.L$0;
                final File file = this.$file;
                Function1 flowObserver = new Function1() { // from class: androidx.datastore.core.MulticastFileObserver$Companion$observe$1$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return MulticastFileObserver$Companion$observe$1.invokeSuspend$lambda$0(file, $this$channelFlow, (String) obj);
                    }
                };
                MulticastFileObserver.Companion companion = MulticastFileObserver.INSTANCE;
                File parentFile = this.$file.getParentFile();
                Intrinsics.checkNotNull(parentFile);
                disposeListener = companion.observe(parentFile, flowObserver);
                this.L$0 = $this$channelFlow;
                this.L$1 = disposeListener;
                this.label = 1;
                if ($this$channelFlow.send(Unit.INSTANCE, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                this.L$0 = null;
                this.L$1 = null;
                this.label = 2;
                if (ProduceKt.awaitClose($this$channelFlow, new Function0() { // from class: androidx.datastore.core.MulticastFileObserver$Companion$observe$1$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return MulticastFileObserver$Companion$observe$1.invokeSuspend$lambda$1(disposeListener);
                    }
                }, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return Unit.INSTANCE;
            case 1:
                disposeListener = (DisposableHandle) this.L$1;
                $this$channelFlow = (ProducerScope) this.L$0;
                ResultKt.throwOnFailure($result);
                this.L$0 = null;
                this.L$1 = null;
                this.label = 2;
                if (ProduceKt.awaitClose($this$channelFlow, new Function0() { // from class: androidx.datastore.core.MulticastFileObserver$Companion$observe$1$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return MulticastFileObserver$Companion$observe$1.invokeSuspend$lambda$1(disposeListener);
                    }
                }, this) == coroutine_suspended) {
                }
                return Unit.INSTANCE;
            case 2:
                ResultKt.throwOnFailure($result);
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    static final Unit invokeSuspend$lambda$0(File $file, ProducerScope $$this$channelFlow, String fileName) {
        if (Intrinsics.areEqual(fileName, $file.getName())) {
            ChannelsKt.trySendBlocking($$this$channelFlow, Unit.INSTANCE);
        }
        return Unit.INSTANCE;
    }

    static final Unit invokeSuspend$lambda$1(DisposableHandle $disposeListener) {
        $disposeListener.dispose();
        return Unit.INSTANCE;
    }
}
