package androidx.compose.ui.input.nestedscroll;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.node.TraversableNodeKt;
import androidx.compose.ui.unit.Velocity;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: compiled from: NestedScrollNode.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\b\b\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0019\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\"2\u0006\u0010$\u001a\u00020%H\u0016¢\u0006\u0004\b&\u0010'J'\u0010(\u001a\u00020\"2\u0006\u0010)\u001a\u00020\"2\u0006\u0010#\u001a\u00020\"2\u0006\u0010$\u001a\u00020%H\u0016¢\u0006\u0004\b*\u0010+J\u0018\u0010,\u001a\u00020-2\u0006\u0010#\u001a\u00020-H\u0096@¢\u0006\u0004\b.\u0010/J \u00100\u001a\u00020-2\u0006\u0010)\u001a\u00020-2\u0006\u0010#\u001a\u00020-H\u0096@¢\u0006\u0004\b1\u00102J\u0012\u00103\u001a\u0002042\b\u00105\u001a\u0004\u0018\u00010\u0006H\u0002J\b\u00106\u001a\u000204H\u0016J\b\u00107\u001a\u000204H\u0016J\b\u00108\u001a\u000204H\u0002J\b\u00109\u001a\u000204H\u0002J\u001f\u0010:\u001a\u0002042\u0006\u0010\u0004\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0000¢\u0006\u0002\b;R\u001a\u0010\u0004\u001a\u00020\u0002X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u000e\u0010\r\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0000X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0013\u001a\u0004\u0018\u00010\u00008@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0010R\u0016\u0010\u0015\u001a\u0004\u0018\u00010\u00028BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\nR\u0014\u0010\u0017\u001a\u00020\u0018X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u001c8BX\u0082\u0004¢\u0006\f\u0012\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 ¨\u0006<"}, d2 = {"Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;", "Landroidx/compose/ui/node/TraversableNode;", "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;", "Landroidx/compose/ui/Modifier$Node;", "connection", "dispatcher", "Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;", "<init>", "(Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)V", "getConnection", "()Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;", "setConnection", "(Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;)V", "resolvedDispatcher", "lastKnownParentNode", "getLastKnownParentNode$ui", "()Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;", "setLastKnownParentNode$ui", "(Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;)V", "parentNestedScrollNode", "getParentNestedScrollNode$ui", "parentConnection", "getParentConnection", "traverseKey", "", "getTraverseKey", "()Ljava/lang/Object;", "nestedCoroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "getNestedCoroutineScope$annotations", "()V", "getNestedCoroutineScope", "()Lkotlinx/coroutines/CoroutineScope;", "onPreScroll", "Landroidx/compose/ui/geometry/Offset;", "available", "source", "Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;", "onPreScroll-OzD1aCk", "(JI)J", "onPostScroll", "consumed", "onPostScroll-DzOQY0M", "(JJI)J", "onPreFling", "Landroidx/compose/ui/unit/Velocity;", "onPreFling-QWom1Mo", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onPostFling", "onPostFling-RZ2iAVY", "(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "updateDispatcher", "", "newDispatcher", "onAttach", "onDetach", "updateDispatcherFields", "resetDispatcherFields", "updateNode", "updateNode$ui", "ui"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class NestedScrollNode extends Modifier.Node implements TraversableNode, NestedScrollConnection {
    public static final int $stable = 8;
    private NestedScrollConnection connection;
    private NestedScrollNode lastKnownParentNode;
    private NestedScrollDispatcher resolvedDispatcher;
    private final Object traverseKey;

    private static /* synthetic */ void getNestedCoroutineScope$annotations() {
    }

    public NestedScrollNode(NestedScrollConnection connection, NestedScrollDispatcher dispatcher) {
        this.connection = connection;
        this.resolvedDispatcher = dispatcher == null ? new NestedScrollDispatcher() : dispatcher;
        this.traverseKey = "androidx.compose.ui.input.nestedscroll.NestedScrollNode";
    }

    public final NestedScrollConnection getConnection() {
        return this.connection;
    }

    public final void setConnection(NestedScrollConnection nestedScrollConnection) {
        this.connection = nestedScrollConnection;
    }

    /* JADX INFO: renamed from: getLastKnownParentNode$ui, reason: from getter */
    public final NestedScrollNode getLastKnownParentNode() {
        return this.lastKnownParentNode;
    }

    public final void setLastKnownParentNode$ui(NestedScrollNode nestedScrollNode) {
        this.lastKnownParentNode = nestedScrollNode;
    }

    public final NestedScrollNode getParentNestedScrollNode$ui() {
        if (getIsAttached()) {
            return (NestedScrollNode) TraversableNodeKt.findNearestAncestor(this);
        }
        return null;
    }

    private final NestedScrollConnection getParentConnection() {
        if (getIsAttached()) {
            return getParentNestedScrollNode$ui();
        }
        return null;
    }

    @Override // androidx.compose.ui.node.TraversableNode
    public Object getTraverseKey() {
        return this.traverseKey;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CoroutineScope getNestedCoroutineScope() {
        NestedScrollNode parentNestedScrollNode$ui = getParentNestedScrollNode$ui();
        CoroutineScope parentCoroutineScope = parentNestedScrollNode$ui != null ? parentNestedScrollNode$ui.getNestedCoroutineScope() : null;
        boolean z = false;
        if (parentCoroutineScope != null && CoroutineScopeKt.isActive(parentCoroutineScope)) {
            z = true;
        }
        if (z) {
            return parentCoroutineScope;
        }
        CoroutineScope scope = this.resolvedDispatcher.getScope();
        if (scope != null) {
            return scope;
        }
        throw new IllegalStateException("in order to access nested coroutine scope you need to attach dispatcher to the `Modifier.nestedScroll` first.");
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* JADX INFO: renamed from: onPreScroll-OzD1aCk */
    public long mo896onPreScrollOzD1aCk(long available, int source) {
        NestedScrollConnection parentConnection = getParentConnection();
        long parentPreConsumed = parentConnection != null ? parentConnection.mo896onPreScrollOzD1aCk(available, source) : Offset.INSTANCE.m4468getZeroF1C5BW0();
        long selfPreConsumed = this.connection.mo896onPreScrollOzD1aCk(Offset.m4456minusMKHz9U(available, parentPreConsumed), source);
        return Offset.m4457plusMKHz9U(parentPreConsumed, selfPreConsumed);
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* JADX INFO: renamed from: onPostScroll-DzOQY0M */
    public long mo573onPostScrollDzOQY0M(long consumed, long available, int source) {
        long selfConsumed = this.connection.mo573onPostScrollDzOQY0M(consumed, available, source);
        NestedScrollConnection parentConnection = getParentConnection();
        long parentConsumed = parentConnection != null ? parentConnection.mo573onPostScrollDzOQY0M(Offset.m4457plusMKHz9U(consumed, selfConsumed), Offset.m4456minusMKHz9U(available, selfConsumed), source) : Offset.INSTANCE.m4468getZeroF1C5BW0();
        return Offset.m4457plusMKHz9U(selfConsumed, parentConsumed);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0077 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* JADX INFO: renamed from: onPreFling-QWom1Mo */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object mo895onPreFlingQWom1Mo(long j, Continuation<? super Velocity> continuation) {
        NestedScrollNode$onPreFling$1 nestedScrollNode$onPreFling$1;
        NestedScrollNode nestedScrollNode;
        long parentPreConsumed;
        NestedScrollNode nestedScrollNode2;
        Object obj;
        long j2;
        Object objMo895onPreFlingQWom1Mo;
        if (continuation instanceof NestedScrollNode$onPreFling$1) {
            nestedScrollNode$onPreFling$1 = (NestedScrollNode$onPreFling$1) continuation;
            if ((nestedScrollNode$onPreFling$1.label & Integer.MIN_VALUE) != 0) {
                nestedScrollNode$onPreFling$1.label -= Integer.MIN_VALUE;
            } else {
                nestedScrollNode$onPreFling$1 = new NestedScrollNode$onPreFling$1(this, continuation);
            }
        }
        Object $result = nestedScrollNode$onPreFling$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (nestedScrollNode$onPreFling$1.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                nestedScrollNode = this;
                NestedScrollConnection parentConnection = nestedScrollNode.getParentConnection();
                if (parentConnection == null) {
                    parentPreConsumed = Velocity.INSTANCE.m7754getZero9UxMQ8M();
                    NestedScrollConnection nestedScrollConnection = nestedScrollNode.connection;
                    long jM7746minusAH228Gc = Velocity.m7746minusAH228Gc(j, parentPreConsumed);
                    nestedScrollNode$onPreFling$1.J$0 = parentPreConsumed;
                    nestedScrollNode$onPreFling$1.label = 2;
                    objMo895onPreFlingQWom1Mo = nestedScrollConnection.mo895onPreFlingQWom1Mo(jM7746minusAH228Gc, nestedScrollNode$onPreFling$1);
                    if (objMo895onPreFlingQWom1Mo == coroutine_suspended) {
                    }
                    long selfPreConsumed = ((Velocity) objMo895onPreFlingQWom1Mo).getPackedValue();
                    return Velocity.m7734boximpl(Velocity.m7747plusAH228Gc(parentPreConsumed, selfPreConsumed));
                }
                nestedScrollNode$onPreFling$1.J$0 = j;
                nestedScrollNode$onPreFling$1.label = 1;
                Object objMo895onPreFlingQWom1Mo2 = parentConnection.mo895onPreFlingQWom1Mo(j, nestedScrollNode$onPreFling$1);
                if (objMo895onPreFlingQWom1Mo2 == coroutine_suspended) {
                    return coroutine_suspended;
                }
                nestedScrollNode2 = nestedScrollNode;
                obj = objMo895onPreFlingQWom1Mo2;
                j2 = j;
                parentPreConsumed = ((Velocity) obj).getPackedValue();
                long j3 = j2;
                nestedScrollNode = nestedScrollNode2;
                j = j3;
                NestedScrollConnection nestedScrollConnection2 = nestedScrollNode.connection;
                long jM7746minusAH228Gc2 = Velocity.m7746minusAH228Gc(j, parentPreConsumed);
                nestedScrollNode$onPreFling$1.J$0 = parentPreConsumed;
                nestedScrollNode$onPreFling$1.label = 2;
                objMo895onPreFlingQWom1Mo = nestedScrollConnection2.mo895onPreFlingQWom1Mo(jM7746minusAH228Gc2, nestedScrollNode$onPreFling$1);
                if (objMo895onPreFlingQWom1Mo == coroutine_suspended) {
                    return coroutine_suspended;
                }
                long selfPreConsumed2 = ((Velocity) objMo895onPreFlingQWom1Mo).getPackedValue();
                return Velocity.m7734boximpl(Velocity.m7747plusAH228Gc(parentPreConsumed, selfPreConsumed2));
            case 1:
                nestedScrollNode2 = this;
                j2 = nestedScrollNode$onPreFling$1.J$0;
                ResultKt.throwOnFailure($result);
                obj = $result;
                parentPreConsumed = ((Velocity) obj).getPackedValue();
                long j32 = j2;
                nestedScrollNode = nestedScrollNode2;
                j = j32;
                NestedScrollConnection nestedScrollConnection22 = nestedScrollNode.connection;
                long jM7746minusAH228Gc22 = Velocity.m7746minusAH228Gc(j, parentPreConsumed);
                nestedScrollNode$onPreFling$1.J$0 = parentPreConsumed;
                nestedScrollNode$onPreFling$1.label = 2;
                objMo895onPreFlingQWom1Mo = nestedScrollConnection22.mo895onPreFlingQWom1Mo(jM7746minusAH228Gc22, nestedScrollNode$onPreFling$1);
                if (objMo895onPreFlingQWom1Mo == coroutine_suspended) {
                }
                long selfPreConsumed22 = ((Velocity) objMo895onPreFlingQWom1Mo).getPackedValue();
                return Velocity.m7734boximpl(Velocity.m7747plusAH228Gc(parentPreConsumed, selfPreConsumed22));
            case 2:
                long parentPreConsumed2 = nestedScrollNode$onPreFling$1.J$0;
                ResultKt.throwOnFailure($result);
                parentPreConsumed = parentPreConsumed2;
                objMo895onPreFlingQWom1Mo = $result;
                long selfPreConsumed222 = ((Velocity) objMo895onPreFlingQWom1Mo).getPackedValue();
                return Velocity.m7734boximpl(Velocity.m7747plusAH228Gc(parentPreConsumed, selfPreConsumed222));
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* JADX INFO: renamed from: onPostFling-RZ2iAVY */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object mo572onPostFlingRZ2iAVY(long j, long j2, Continuation<? super Velocity> continuation) {
        NestedScrollNode$onPostFling$1 nestedScrollNode$onPostFling$1;
        NestedScrollNode nestedScrollNode;
        Object objMo572onPostFlingRZ2iAVY;
        long j3;
        long j4;
        NestedScrollNode parent;
        long selfConsumed;
        long parentConsumed;
        Object objMo572onPostFlingRZ2iAVY2;
        if (continuation instanceof NestedScrollNode$onPostFling$1) {
            nestedScrollNode$onPostFling$1 = (NestedScrollNode$onPostFling$1) continuation;
            if ((nestedScrollNode$onPostFling$1.label & Integer.MIN_VALUE) != 0) {
                nestedScrollNode$onPostFling$1.label -= Integer.MIN_VALUE;
            } else {
                nestedScrollNode$onPostFling$1 = new NestedScrollNode$onPostFling$1(this, continuation);
            }
        }
        NestedScrollNode$onPostFling$1 nestedScrollNode$onPostFling$12 = nestedScrollNode$onPostFling$1;
        Object $result = nestedScrollNode$onPostFling$12.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (nestedScrollNode$onPostFling$12.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                nestedScrollNode = this;
                NestedScrollConnection nestedScrollConnection = nestedScrollNode.connection;
                nestedScrollNode$onPostFling$12.J$0 = j;
                nestedScrollNode$onPostFling$12.J$1 = j2;
                nestedScrollNode$onPostFling$12.label = 1;
                objMo572onPostFlingRZ2iAVY = nestedScrollConnection.mo572onPostFlingRZ2iAVY(j, j2, nestedScrollNode$onPostFling$12);
                if (objMo572onPostFlingRZ2iAVY == coroutine_suspended) {
                    return coroutine_suspended;
                }
                j3 = j;
                j4 = j2;
                long selfConsumed2 = ((Velocity) objMo572onPostFlingRZ2iAVY).getPackedValue();
                parent = !nestedScrollNode.getIsAttached() ? nestedScrollNode.getParentConnection() : nestedScrollNode.lastKnownParentNode;
                if (parent == null) {
                    long jM7747plusAH228Gc = Velocity.m7747plusAH228Gc(j3, selfConsumed2);
                    long jM7746minusAH228Gc = Velocity.m7746minusAH228Gc(j4, selfConsumed2);
                    nestedScrollNode$onPostFling$12.J$0 = selfConsumed2;
                    nestedScrollNode$onPostFling$12.label = 2;
                    selfConsumed = selfConsumed2;
                    objMo572onPostFlingRZ2iAVY2 = parent.mo572onPostFlingRZ2iAVY(jM7747plusAH228Gc, jM7746minusAH228Gc, nestedScrollNode$onPostFling$12);
                    if (objMo572onPostFlingRZ2iAVY2 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    parentConsumed = ((Velocity) objMo572onPostFlingRZ2iAVY2).getPackedValue();
                    return Velocity.m7734boximpl(Velocity.m7747plusAH228Gc(selfConsumed, parentConsumed));
                }
                selfConsumed = selfConsumed2;
                parentConsumed = Velocity.INSTANCE.m7754getZero9UxMQ8M();
                return Velocity.m7734boximpl(Velocity.m7747plusAH228Gc(selfConsumed, parentConsumed));
            case 1:
                long j5 = nestedScrollNode$onPostFling$12.J$1;
                long j6 = nestedScrollNode$onPostFling$12.J$0;
                ResultKt.throwOnFailure($result);
                nestedScrollNode = this;
                j4 = j5;
                j3 = j6;
                objMo572onPostFlingRZ2iAVY = $result;
                long selfConsumed22 = ((Velocity) objMo572onPostFlingRZ2iAVY).getPackedValue();
                if (!nestedScrollNode.getIsAttached()) {
                }
                if (parent == null) {
                }
                break;
            case 2:
                long selfConsumed3 = nestedScrollNode$onPostFling$12.J$0;
                ResultKt.throwOnFailure($result);
                selfConsumed = selfConsumed3;
                objMo572onPostFlingRZ2iAVY2 = $result;
                parentConsumed = ((Velocity) objMo572onPostFlingRZ2iAVY2).getPackedValue();
                return Velocity.m7734boximpl(Velocity.m7747plusAH228Gc(selfConsumed, parentConsumed));
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    private final void updateDispatcher(NestedScrollDispatcher newDispatcher) {
        resetDispatcherFields();
        if (newDispatcher == null) {
            this.resolvedDispatcher = new NestedScrollDispatcher();
        } else if (!Intrinsics.areEqual(newDispatcher, this.resolvedDispatcher)) {
            this.resolvedDispatcher = newDispatcher;
        }
        if (getIsAttached()) {
            updateDispatcherFields();
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        updateDispatcherFields();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onDetach() {
        this.lastKnownParentNode = (NestedScrollNode) NestedScrollNodeKt.findNearestAttachedAncestor(this);
        this.resolvedDispatcher.setLastKnownParentNode$ui(this.lastKnownParentNode);
        resetDispatcherFields();
    }

    private final void updateDispatcherFields() {
        this.resolvedDispatcher.setNestedScrollNode$ui(this);
        this.resolvedDispatcher.setLastKnownParentNode$ui(null);
        this.lastKnownParentNode = null;
        this.resolvedDispatcher.setCalculateNestedScrollScope$ui(new Function0<CoroutineScope>() { // from class: androidx.compose.ui.input.nestedscroll.NestedScrollNode.updateDispatcherFields.1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final CoroutineScope invoke() {
                return NestedScrollNode.this.getNestedCoroutineScope();
            }
        });
        this.resolvedDispatcher.setScope$ui(getCoroutineScope());
    }

    private final void resetDispatcherFields() {
        if (this.resolvedDispatcher.getNestedScrollNode() == this) {
            this.resolvedDispatcher.setNestedScrollNode$ui(null);
        }
    }

    public final void updateNode$ui(NestedScrollConnection connection, NestedScrollDispatcher dispatcher) {
        this.connection = connection;
        updateDispatcher(dispatcher);
    }
}
