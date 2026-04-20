package com.google.firebase.storage;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.storage.TaskState;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.channels.ChannelsKt;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.channels.SendChannel;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: compiled from: Storage.kt */
/* JADX INFO: loaded from: classes22.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/channels/ProducerScope;", "Lcom/google/firebase/storage/TaskState;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "com.google.firebase.storage.StorageKt$taskState$1", f = "Storage.kt", i = {}, l = {173}, m = "invokeSuspend", n = {}, s = {})
final class StorageKt$taskState$1<T> extends SuspendLambda implements Function2<ProducerScope<? super TaskState<T>>, Continuation<? super Unit>, Object> {
    final /* synthetic */ StorageTask<T> $this_taskState;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    StorageKt$taskState$1(StorageTask<T> storageTask, Continuation<? super StorageKt$taskState$1> continuation) {
        super(2, continuation);
        this.$this_taskState = storageTask;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        StorageKt$taskState$1 storageKt$taskState$1 = new StorageKt$taskState$1(this.$this_taskState, continuation);
        storageKt$taskState$1.L$0 = obj;
        return storageKt$taskState$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(ProducerScope<? super TaskState<T>> producerScope, Continuation<? super Unit> continuation) {
        return ((StorageKt$taskState$1) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object $result) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                final ProducerScope $this$callbackFlow = (ProducerScope) this.L$0;
                final OnProgressListener progressListener = new OnProgressListener() { // from class: com.google.firebase.storage.StorageKt$taskState$1$$ExternalSyntheticLambda1
                    @Override // com.google.firebase.storage.OnProgressListener
                    public final void onProgress(Object obj) {
                        StorageTaskScheduler.getInstance().scheduleCallback(new Runnable() { // from class: com.google.firebase.storage.StorageKt$taskState$1$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                ChannelsKt.trySendBlocking(producerScope, new TaskState.InProgress(snapshotBase));
                            }
                        });
                    }
                };
                final OnPausedListener pauseListener = new OnPausedListener() { // from class: com.google.firebase.storage.StorageKt$taskState$1$$ExternalSyntheticLambda2
                    @Override // com.google.firebase.storage.OnPausedListener
                    public final void onPaused(Object obj) {
                        StorageTaskScheduler.getInstance().scheduleCallback(new Runnable() { // from class: com.google.firebase.storage.StorageKt$taskState$1$$ExternalSyntheticLambda4
                            @Override // java.lang.Runnable
                            public final void run() {
                                ChannelsKt.trySendBlocking(producerScope, new TaskState.Paused(snapshotBase));
                            }
                        });
                    }
                };
                final OnCompleteListener completionListener = new OnCompleteListener() { // from class: com.google.firebase.storage.StorageKt$taskState$1$$ExternalSyntheticLambda3
                    @Override // com.google.android.gms.tasks.OnCompleteListener
                    public final void onComplete(Task task) {
                        StorageKt$taskState$1.invokeSuspend$lambda$4($this$callbackFlow, task);
                    }
                };
                this.$this_taskState.addOnProgressListener(progressListener);
                this.$this_taskState.addOnPausedListener(pauseListener);
                this.$this_taskState.addOnCompleteListener(completionListener);
                final StorageTask<T> storageTask = this.$this_taskState;
                this.label = 1;
                if (ProduceKt.awaitClose($this$callbackFlow, new Function0<Unit>() { // from class: com.google.firebase.storage.StorageKt$taskState$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        storageTask.removeOnProgressListener(progressListener);
                        storageTask.removeOnPausedListener(pauseListener);
                        storageTask.removeOnCompleteListener(completionListener);
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

    static final void invokeSuspend$lambda$4(ProducerScope $$this$callbackFlow, Task task) {
        if (task.isSuccessful()) {
            SendChannel.DefaultImpls.close$default($$this$callbackFlow, null, 1, null);
        } else {
            Exception exception = task.getException();
            CoroutineScopeKt.cancel($$this$callbackFlow, "Error getting the TaskState", exception);
        }
    }
}
