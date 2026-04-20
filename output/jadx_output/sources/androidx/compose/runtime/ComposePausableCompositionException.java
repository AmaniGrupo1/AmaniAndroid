package androidx.compose.runtime;

import androidx.collection.IntList;
import androidx.collection.ObjectList;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequenceScope;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: PausableComposition.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002BA\u0012\u000e\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004\u0012\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\r\u0010\u000eJ\u000e\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0002R\u0016\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u00118VX\u0096\u0004¢\u0006\f\u0012\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Landroidx/compose/runtime/ComposePausableCompositionException;", "Ljava/lang/RuntimeException;", "Lkotlin/RuntimeException;", "instances", "Landroidx/collection/ObjectList;", "", "reused", "operations", "Landroidx/collection/IntList;", "lastOperation", "", "cause", "", "<init>", "(Landroidx/collection/ObjectList;Landroidx/collection/ObjectList;Landroidx/collection/IntList;ILjava/lang/Throwable;)V", "operationsSequence", "Lkotlin/sequences/Sequence;", "", "message", "getMessage$annotations", "()V", "getMessage", "()Ljava/lang/String;", "runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class ComposePausableCompositionException extends RuntimeException {
    private final ObjectList<Object> instances;
    private final int lastOperation;
    private final IntList operations;
    private final ObjectList<Object> reused;

    public static /* synthetic */ void getMessage$annotations() {
    }

    public ComposePausableCompositionException(ObjectList<Object> objectList, ObjectList<Object> objectList2, IntList operations, int lastOperation, Throwable cause) {
        super(cause);
        this.instances = objectList;
        this.reused = objectList2;
        this.operations = operations;
        this.lastOperation = lastOperation;
    }

    /* JADX INFO: renamed from: androidx.compose.runtime.ComposePausableCompositionException$operationsSequence$1, reason: invalid class name */
    /* JADX INFO: compiled from: PausableComposition.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlin/sequences/SequenceScope;", ""}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.runtime.ComposePausableCompositionException$operationsSequence$1", f = "PausableComposition.kt", i = {0, 0, 0, 0}, l = {579}, m = "invokeSuspend", n = {"$this$sequence", "currentOperation", "currentInstance", "currentReused"}, s = {"L$0", "I$0", "I$1", "I$2"}, v = 1)
    static final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super String>, Continuation<? super Unit>, Object> {
        int I$0;
        int I$1;
        int I$2;
        private /* synthetic */ Object L$0;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = ComposePausableCompositionException.this.new AnonymousClass1(continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SequenceScope<? super String> sequenceScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(sequenceScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Incorrect condition in loop: B:9:0x0047 */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object $result) {
            int currentInstance;
            int currentOperation;
            SequenceScope $this$sequence;
            int currentReused;
            AnonymousClass1 anonymousClass1;
            String stringValue;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    SequenceScope $this$sequence2 = (SequenceScope) this.L$0;
                    currentInstance = 0;
                    currentOperation = 0;
                    $this$sequence = $this$sequence2;
                    currentReused = 0;
                    anonymousClass1 = this;
                    break;
                case 1:
                    currentReused = this.I$2;
                    int currentInstance2 = this.I$1;
                    int currentOperation2 = this.I$0;
                    $this$sequence = (SequenceScope) this.L$0;
                    ResultKt.throwOnFailure($result);
                    currentOperation = currentInstance2;
                    currentInstance = currentOperation2;
                    anonymousClass1 = this;
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            while (currentInstance < Math.min(i, this_$iv._size)) {
                int index = currentInstance;
                int currentOperation3 = currentInstance + 1;
                int operation = ComposePausableCompositionException.this.operations.get(currentInstance);
                switch (operation) {
                    case 0:
                        stringValue = "up";
                        break;
                    case 1:
                        int currentInstance3 = currentOperation + 1;
                        Object node = ComposePausableCompositionException.this.instances.get(currentOperation);
                        stringValue = "down " + node;
                        currentOperation = currentInstance3;
                        break;
                    case 2:
                        int currentOperation4 = currentOperation3 + 1;
                        int index2 = ComposePausableCompositionException.this.operations.get(currentOperation3);
                        int count = ComposePausableCompositionException.this.operations.get(currentOperation4);
                        stringValue = "remove " + index2 + ' ' + count;
                        currentOperation3 = currentOperation4 + 1;
                        break;
                    case 3:
                        int currentOperation5 = currentOperation3 + 1;
                        int from = ComposePausableCompositionException.this.operations.get(currentOperation3);
                        int currentOperation6 = currentOperation5 + 1;
                        int to = ComposePausableCompositionException.this.operations.get(currentOperation5);
                        int count2 = ComposePausableCompositionException.this.operations.get(currentOperation6);
                        stringValue = "move " + from + ' ' + to + ' ' + count2;
                        currentOperation3 = currentOperation6 + 1;
                        break;
                    case 4:
                        stringValue = "clear";
                        break;
                    case 5:
                        int index3 = ComposePausableCompositionException.this.operations.get(currentOperation3);
                        int currentInstance4 = currentOperation + 1;
                        Object instance = ComposePausableCompositionException.this.instances.get(currentOperation);
                        stringValue = "insertBottomUp " + index3 + ' ' + instance;
                        currentOperation3++;
                        currentOperation = currentInstance4;
                        break;
                    case 6:
                        int index4 = ComposePausableCompositionException.this.operations.get(currentOperation3);
                        int currentInstance5 = currentOperation + 1;
                        Object instance2 = ComposePausableCompositionException.this.instances.get(currentOperation);
                        stringValue = "insertTopDown " + index4 + ' ' + instance2;
                        currentOperation3++;
                        currentOperation = currentInstance5;
                        break;
                    case 7:
                        int currentInstance6 = currentOperation + 1;
                        Object obj = ComposePausableCompositionException.this.instances.get(currentOperation);
                        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type @[ExtensionFunctionType] kotlin.Function2<kotlin.Any?, kotlin.Any?, kotlin.Unit>");
                        Function2 block = (Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(obj, 2);
                        stringValue = "apply " + block;
                        currentOperation = currentInstance6 + 1;
                        break;
                    case 8:
                        stringValue = "reuse " + ComposePausableCompositionException.this.reused.get(currentReused);
                        currentReused++;
                        break;
                    case 9:
                        stringValue = "recompose pending";
                        break;
                    default:
                        stringValue = "unknown op: " + operation;
                        break;
                }
                anonymousClass1.L$0 = $this$sequence;
                anonymousClass1.I$0 = currentOperation3;
                anonymousClass1.I$1 = currentOperation;
                anonymousClass1.I$2 = currentReused;
                anonymousClass1.label = 1;
                if ($this$sequence.yield(index + ": " + stringValue, anonymousClass1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                currentInstance = currentOperation3;
            }
            return Unit.INSTANCE;
        }
    }

    private final Sequence<String> operationsSequence() {
        return SequencesKt.sequence(new AnonymousClass1(null));
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return StringsKt.trimMargin$default("\n            |Failed to execute op number " + this.lastOperation + ":\n            |" + CollectionsKt.joinToString$default(CollectionsKt.takeLast(SequencesKt.toList(operationsSequence()), 50), "\n", null, null, 0, null, null, 62, null) + "\n            ", null, 1, null);
    }
}
