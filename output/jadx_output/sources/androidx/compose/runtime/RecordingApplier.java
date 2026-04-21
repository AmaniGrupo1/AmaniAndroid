package androidx.compose.runtime;

import androidx.collection.MutableIntList;
import androidx.collection.MutableObjectList;
import androidx.compose.runtime.internal.RememberEventDispatcher;
import com.google.firebase.firestore.model.Values;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

/* JADX INFO: compiled from: PausableComposition.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0001\u0018\u0000 +*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002:\u0001+B\u000f\u0012\u0006\u0010\u0003\u001a\u00028\u0000¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0005J\b\u0010\u0013\u001a\u00020\u0011H\u0016J\u0018\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0016H\u0016J \u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0016H\u0016J\b\u0010\u001b\u001a\u00020\u0011H\u0016J\u001d\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u001d\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u001eJ\u001d\u0010\u001f\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u001d\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u001eJ3\u0010 \u001a\u00020\u00112\u001f\u0010!\u001a\u001b\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00010\n\u0012\u0004\u0012\u00020\u00110\"¢\u0006\u0002\b#2\b\u0010$\u001a\u0004\u0018\u00010\nH\u0016J\b\u0010%\u001a\u00020\u0011H\u0016J\u001c\u0010&\u001a\u00020\u00112\f\u0010'\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010(\u001a\u00020)J\u0006\u0010*\u001a\u00020\u0011R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u000b\u001a\u00028\u0000X\u0096\u000e¢\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u0005¨\u0006,"}, d2 = {"Landroidx/compose/runtime/RecordingApplier;", "N", "Landroidx/compose/runtime/Applier;", "root", "<init>", "(Ljava/lang/Object;)V", "operations", "Landroidx/collection/MutableIntList;", "instances", "Landroidx/collection/MutableObjectList;", "", "current", "getCurrent", "()Ljava/lang/Object;", "setCurrent", "Ljava/lang/Object;", "down", "", "node", "up", "remove", "index", "", "count", "move", "from", "to", "clear", "insertBottomUp", "instance", "(ILjava/lang/Object;)V", "insertTopDown", "apply", "block", "Lkotlin/Function2;", "Lkotlin/ExtensionFunctionType;", Values.VECTOR_MAP_VECTORS_KEY, "reuse", "playTo", "applier", "rememberManager", "Landroidx/compose/runtime/internal/RememberEventDispatcher;", "markRecomposePending", "Companion", "runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class RecordingApplier<N> implements Applier<N> {
    public static final int APPLY = 7;
    public static final int CLEAR = 4;
    public static final int DOWN = 1;
    public static final int INSERT_BOTTOM_UP = 5;
    public static final int INSERT_TOP_DOWN = 6;
    public static final int MOVE = 3;
    public static final int RECOMPOSE_PENDING = 9;
    public static final int REMOVE = 2;
    public static final int REUSE = 8;
    public static final int UP = 0;
    private N current;
    public static final int $stable = 8;
    private final MutableIntList operations = new MutableIntList(0, 1, null);
    private final MutableObjectList<Object> instances = new MutableObjectList<>(0, 1, null);

    public RecordingApplier(N n) {
        this.current = n;
    }

    @Override // androidx.compose.runtime.Applier
    public N getCurrent() {
        return this.current;
    }

    public void setCurrent(N n) {
        this.current = n;
    }

    @Override // androidx.compose.runtime.Applier
    public void down(N node) {
        this.operations.add(1);
        this.instances.add(node);
    }

    @Override // androidx.compose.runtime.Applier
    public void up() {
        this.operations.add(0);
    }

    @Override // androidx.compose.runtime.Applier
    public void remove(int index, int count) {
        this.operations.add(2);
        this.operations.add(index);
        this.operations.add(count);
    }

    @Override // androidx.compose.runtime.Applier
    public void move(int from, int to, int count) {
        this.operations.add(3);
        this.operations.add(from);
        this.operations.add(to);
        this.operations.add(count);
    }

    @Override // androidx.compose.runtime.Applier
    public void clear() {
        this.operations.add(4);
    }

    @Override // androidx.compose.runtime.Applier
    public void insertBottomUp(int index, N instance) {
        this.operations.add(5);
        this.operations.add(index);
        this.instances.add(instance);
    }

    @Override // androidx.compose.runtime.Applier
    public void insertTopDown(int index, N instance) {
        this.operations.add(6);
        this.operations.add(index);
        this.instances.add(instance);
    }

    @Override // androidx.compose.runtime.Applier
    public void apply(Function2<? super N, Object, Unit> block, Object value) {
        this.operations.add(7);
        this.instances.add(block);
        this.instances.add(value);
    }

    @Override // androidx.compose.runtime.Applier
    public void reuse() {
        this.operations.add(8);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void playTo(Applier<N> applier, RememberEventDispatcher rememberManager) throws Exception {
        Exception e;
        int to;
        int currentOperation;
        int index;
        int currentInstance;
        Function2 block;
        int currentInstance2;
        MutableIntList operations = this.operations;
        MutableIntList this_$iv = operations;
        int size = this_$iv._size;
        MutableObjectList<Object> mutableObjectList = this.instances;
        MutableObjectList reused = new MutableObjectList(0, 1, null);
        applier.onBeginChanges();
        int currentInstance3 = 0;
        int currentInstance4 = 0;
        while (currentInstance4 < size) {
            int currentOperation2 = currentInstance4 + 1;
            try {
                int operation = operations.get(currentInstance4);
                switch (operation) {
                    case 0:
                        applier.up();
                        currentInstance4 = currentOperation2;
                        break;
                    case 1:
                        int currentInstance5 = currentInstance3 + 1;
                        Object node = mutableObjectList.get(currentInstance3);
                        applier.down(node);
                        currentInstance3 = currentInstance5;
                        currentInstance4 = currentOperation2;
                        break;
                    case 2:
                        int currentOperation3 = currentOperation2 + 1;
                        int index2 = operations.get(currentOperation2);
                        int currentOperation4 = currentOperation3 + 1;
                        int count = operations.get(currentOperation3);
                        applier.remove(index2, count);
                        currentInstance4 = currentOperation4;
                        break;
                    case 3:
                        int currentOperation5 = currentOperation2 + 1;
                        int from = operations.get(currentOperation2);
                        int currentOperation6 = currentOperation5 + 1;
                        try {
                            to = operations.get(currentOperation5);
                            currentOperation = currentOperation6 + 1;
                        } catch (Exception e2) {
                            e = e2;
                            currentInstance4 = currentOperation6;
                        } catch (Throwable th) {
                            e = th;
                        }
                        try {
                            int count2 = operations.get(currentOperation6);
                            applier.move(from, to, count2);
                            currentInstance4 = currentOperation;
                        } catch (Exception e3) {
                            e = e3;
                            currentInstance4 = currentOperation;
                            throw new ComposePausableCompositionException(mutableObjectList, reused, operations, currentInstance4 - 1, e);
                        } catch (Throwable th2) {
                            e = th2;
                            applier.onEndChanges();
                            throw e;
                        }
                        break;
                    case 4:
                        applier.clear();
                        currentInstance4 = currentOperation2;
                        break;
                    case 5:
                        currentInstance4 = currentOperation2 + 1;
                        int index3 = operations.get(currentOperation2);
                        int currentInstance6 = currentInstance3 + 1;
                        Object instance = mutableObjectList.get(currentInstance3);
                        applier.insertBottomUp(index3, instance);
                        currentInstance3 = currentInstance6;
                        break;
                    case 6:
                        currentInstance4 = currentOperation2 + 1;
                        try {
                            try {
                                index = operations.get(currentOperation2);
                                currentInstance = currentInstance3 + 1;
                            } catch (Exception e4) {
                                e = e4;
                            }
                        } catch (Throwable th3) {
                            e = th3;
                        }
                        try {
                            Object instance2 = mutableObjectList.get(currentInstance3);
                            applier.insertTopDown(index, instance2);
                            currentInstance3 = currentInstance;
                        } catch (Exception e5) {
                            e = e5;
                            throw new ComposePausableCompositionException(mutableObjectList, reused, operations, currentInstance4 - 1, e);
                        } catch (Throwable th4) {
                            e = th4;
                            applier.onEndChanges();
                            throw e;
                        }
                        break;
                    case 7:
                        int currentInstance7 = currentInstance3 + 1;
                        try {
                            Object obj = mutableObjectList.get(currentInstance3);
                            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type @[ExtensionFunctionType] kotlin.Function2<kotlin.Any?, kotlin.Any?, kotlin.Unit>");
                            block = (Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(obj, 2);
                            currentInstance2 = currentInstance7 + 1;
                        } catch (Exception e6) {
                            e = e6;
                            currentInstance4 = currentOperation2;
                        } catch (Throwable th5) {
                            e = th5;
                        }
                        try {
                            Object value = mutableObjectList.get(currentInstance7);
                            applier.apply(block, value);
                            currentInstance4 = currentOperation2;
                            currentInstance3 = currentInstance2;
                        } catch (Exception e7) {
                            e = e7;
                            currentInstance4 = currentOperation2;
                            throw new ComposePausableCompositionException(mutableObjectList, reused, operations, currentInstance4 - 1, e);
                        } catch (Throwable th6) {
                            e = th6;
                            applier.onEndChanges();
                            throw e;
                        }
                        break;
                    case 8:
                        Object current = applier.getCurrent();
                        if (current instanceof ComposeNodeLifecycleCallback) {
                            rememberManager.dispatchOnDeactivateIfNecessary((ComposeNodeLifecycleCallback) current);
                        }
                        reused.add(current);
                        applier.reuse();
                        currentInstance4 = currentOperation2;
                        break;
                    default:
                        currentInstance4 = currentOperation2;
                        break;
                }
            } catch (Exception e8) {
                e = e8;
                currentInstance4 = currentOperation2;
            } catch (Throwable th7) {
                e = th7;
            }
        }
        boolean value$iv = currentInstance3 == mutableObjectList.getSize();
        if (!value$iv) {
            ComposerKt.composeImmediateRuntimeError("Applier operation size mismatch");
        }
        mutableObjectList.clear();
        operations.clear();
        applier.onEndChanges();
    }

    public final void markRecomposePending() {
        this.operations.add(9);
    }
}
