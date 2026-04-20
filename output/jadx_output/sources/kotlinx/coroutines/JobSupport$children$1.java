package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequenceScope;
import kotlinx.coroutines.internal.LockFreeLinkedListHead;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;

/* JADX INFO: compiled from: JobSupport.kt */
/* JADX INFO: loaded from: classes21.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlin/sequences/SequenceScope;", "Lkotlinx/coroutines/Job;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.JobSupport$children$1", f = "JobSupport.kt", i = {1, 1, 1}, l = {1003, 1005}, m = "invokeSuspend", n = {"$this$sequence", "this_$iv", "cur$iv"}, s = {"L$0", "L$1", "L$2"})
final class JobSupport$children$1 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super Job>, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ JobSupport this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    JobSupport$children$1(JobSupport jobSupport, Continuation<? super JobSupport$children$1> continuation) {
        super(2, continuation);
        this.this$0 = jobSupport;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        JobSupport$children$1 jobSupport$children$1 = new JobSupport$children$1(this.this$0, continuation);
        jobSupport$children$1.L$0 = obj;
        return jobSupport$children$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(SequenceScope<? super Job> sequenceScope, Continuation<? super Unit> continuation) {
        return ((JobSupport$children$1) create(sequenceScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x007d  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0081 -> B:28:0x00a1). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0098 -> B:27:0x009d). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object $result) {
        LockFreeLinkedListHead state;
        LockFreeLinkedListHead cur$iv;
        LockFreeLinkedListNode cur$iv2;
        SequenceScope $this$sequence;
        JobSupport$children$1 jobSupport$children$1;
        SequenceScope $this$sequence2;
        LockFreeLinkedListHead this_$iv;
        LockFreeLinkedListNode cur$iv3;
        JobSupport$children$1 jobSupport$children$12;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                SequenceScope $this$sequence3 = (SequenceScope) this.L$0;
                Object state2 = this.this$0.getState$kotlinx_coroutines_core();
                if (state2 instanceof ChildHandleNode) {
                    this.label = 1;
                    if ($this$sequence3.yield(((ChildHandleNode) state2).childJob, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return Unit.INSTANCE;
                }
                if (!(state2 instanceof Incomplete) || (state = ((Incomplete) state2).getList()) == null) {
                    return Unit.INSTANCE;
                }
                LockFreeLinkedListHead this_$iv2 = state;
                Object next = this_$iv2.getNext();
                Intrinsics.checkNotNull(next, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode");
                LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) next;
                cur$iv = this_$iv2;
                cur$iv2 = lockFreeLinkedListNode;
                $this$sequence = $this$sequence3;
                jobSupport$children$1 = this;
                if (!Intrinsics.areEqual(cur$iv2, cur$iv)) {
                    LockFreeLinkedListNode it = cur$iv2;
                    if (it instanceof ChildHandleNode) {
                        ChildJob childJob = ((ChildHandleNode) it).childJob;
                        jobSupport$children$1.L$0 = $this$sequence;
                        jobSupport$children$1.L$1 = cur$iv;
                        jobSupport$children$1.L$2 = cur$iv2;
                        jobSupport$children$1.label = 2;
                        if ($this$sequence.yield(childJob, jobSupport$children$1) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        $this$sequence2 = $this$sequence;
                        this_$iv = cur$iv;
                        cur$iv3 = cur$iv2;
                        jobSupport$children$12 = jobSupport$children$1;
                        jobSupport$children$1 = jobSupport$children$12;
                        cur$iv2 = cur$iv3;
                        cur$iv = this_$iv;
                        $this$sequence = $this$sequence2;
                    }
                    cur$iv2 = cur$iv2.getNextNode();
                    if (!Intrinsics.areEqual(cur$iv2, cur$iv)) {
                    }
                }
                return Unit.INSTANCE;
            case 1:
                ResultKt.throwOnFailure($result);
                return Unit.INSTANCE;
            case 2:
                LockFreeLinkedListNode cur$iv4 = (LockFreeLinkedListNode) this.L$2;
                LockFreeLinkedListHead this_$iv3 = (LockFreeLinkedListHead) this.L$1;
                SequenceScope $this$sequence4 = (SequenceScope) this.L$0;
                ResultKt.throwOnFailure($result);
                $this$sequence2 = $this$sequence4;
                this_$iv = this_$iv3;
                cur$iv3 = cur$iv4;
                jobSupport$children$12 = this;
                jobSupport$children$1 = jobSupport$children$12;
                cur$iv2 = cur$iv3;
                cur$iv = this_$iv;
                $this$sequence = $this$sequence2;
                cur$iv2 = cur$iv2.getNextNode();
                if (!Intrinsics.areEqual(cur$iv2, cur$iv)) {
                }
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
