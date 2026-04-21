package androidx.room.coroutines;

import androidx.room.Transactor;
import androidx.room.concurrent.ThreadLocal_jvmAndroidKt;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteDriver;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.TimeoutKt;

/* JADX INFO: compiled from: ConnectionPoolImpl.kt */
/* JADX INFO: loaded from: classes21.dex */
@Metadata(d1 = {"\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0019\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007B)\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0006\u0010\u000bJ@\u0010\"\u001a\u0002H#\"\u0004\b\u0000\u0010#2\u0006\u0010$\u001a\u00020\u00192\"\u0010%\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020'\u0012\n\u0012\b\u0012\u0004\u0012\u0002H#0(\u0012\u0006\u0012\u0004\u0018\u00010)0&H\u0096@¢\u0006\u0002\u0010*J\"\u0010+\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010-\u0012\u0006\u0012\u0004\u0018\u00010.0,*\u00020\rH\u0082H¢\u0006\u0002\u0010/J\u0010\u00100\u001a\u0002012\u0006\u00102\u001a\u00020\u0011H\u0002J\u0010\u00103\u001a\u0002042\u0006\u0010$\u001a\u00020\u0019H\u0002J\b\u00105\u001a\u000206H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\u00110\u0010j\b\u0012\u0004\u0012\u00020\u0011`\u0012X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0013R\u0014\u0010\u0014\u001a\u00060\u0015j\u0002`\u0016X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0017R\u0014\u0010\u0018\u001a\u00020\u00198BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u001aR\u001c\u0010\u001b\u001a\u00020\u001cX\u0080\u000e¢\u0006\u0010\n\u0002\u0010!\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u00067"}, d2 = {"Landroidx/room/coroutines/ConnectionPoolImpl;", "Landroidx/room/coroutines/ConnectionPool;", "driver", "Landroidx/sqlite/SQLiteDriver;", "fileName", "", "<init>", "(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;)V", "maxNumOfReaders", "", "maxNumOfWriters", "(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;II)V", "readers", "Landroidx/room/coroutines/Pool;", "writers", "threadLocal", "Ljava/lang/ThreadLocal;", "Landroidx/room/coroutines/PooledConnectionImpl;", "Landroidx/room/concurrent/ThreadLocal;", "Ljava/lang/ThreadLocal;", "_isClosed", "Ljava/util/concurrent/atomic/AtomicBoolean;", "Landroidx/room/concurrent/AtomicBoolean;", "Ljava/util/concurrent/atomic/AtomicBoolean;", "isClosed", "", "()Z", "timeout", "Lkotlin/time/Duration;", "getTimeout-UwyO8pc$room_runtime_release", "()J", "setTimeout-LRDsOJo$room_runtime_release", "(J)V", "J", "useConnection", "R", "isReadOnly", "block", "Lkotlin/Function2;", "Landroidx/room/Transactor;", "Lkotlin/coroutines/Continuation;", "", "(ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "acquireWithTimeout", "Lkotlin/Pair;", "Landroidx/room/coroutines/ConnectionWithLock;", "", "(Landroidx/room/coroutines/Pool;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "createConnectionContext", "Lkotlin/coroutines/CoroutineContext;", "connection", "throwTimeoutException", "", "close", "", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ConnectionPoolImpl implements ConnectionPool {
    private final AtomicBoolean _isClosed;
    private final SQLiteDriver driver;
    private final Pool readers;
    private final ThreadLocal<PooledConnectionImpl> threadLocal;
    private long timeout;
    private final Pool writers;

    /* JADX INFO: renamed from: androidx.room.coroutines.ConnectionPoolImpl$useConnection$1, reason: invalid class name */
    /* JADX INFO: compiled from: ConnectionPoolImpl.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.room.coroutines.ConnectionPoolImpl", f = "ConnectionPoolImpl.kt", i = {2, 2, 2, 2, 2, 2, 2, 3, 3}, l = {114, 118, 541, 147}, m = "useConnection", n = {"this", "block", "pool", "connection", "currentContext", "connection$iv", "isReadOnly", "pool", "connection"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "Z$0", "L$0", "L$1"})
    static final class AnonymousClass1<R> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ConnectionPoolImpl.this.useConnection(false, null, this);
        }
    }

    private final boolean isClosed() {
        return this._isClosed.get();
    }

    /* JADX INFO: renamed from: getTimeout-UwyO8pc$room_runtime_release, reason: not valid java name and from getter */
    public final long getTimeout() {
        return this.timeout;
    }

    /* JADX INFO: renamed from: setTimeout-LRDsOJo$room_runtime_release, reason: not valid java name */
    public final void m8061setTimeoutLRDsOJo$room_runtime_release(long j) {
        this.timeout = j;
    }

    public ConnectionPoolImpl(final SQLiteDriver driver, final String fileName) {
        Intrinsics.checkNotNullParameter(driver, "driver");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        this.threadLocal = new ThreadLocal<>();
        this._isClosed = new AtomicBoolean(false);
        Duration.Companion companion = Duration.INSTANCE;
        this.timeout = DurationKt.toDuration(30, DurationUnit.SECONDS);
        this.driver = driver;
        this.readers = new Pool(1, new Function0() { // from class: androidx.room.coroutines.ConnectionPoolImpl$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return driver.open(fileName);
            }
        });
        this.writers = this.readers;
    }

    public ConnectionPoolImpl(final SQLiteDriver driver, final String fileName, int maxNumOfReaders, int maxNumOfWriters) {
        Intrinsics.checkNotNullParameter(driver, "driver");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        this.threadLocal = new ThreadLocal<>();
        this._isClosed = new AtomicBoolean(false);
        Duration.Companion companion = Duration.INSTANCE;
        this.timeout = DurationKt.toDuration(30, DurationUnit.SECONDS);
        if (!(maxNumOfReaders > 0)) {
            throw new IllegalArgumentException("Maximum number of readers must be greater than 0".toString());
        }
        if (!(maxNumOfWriters > 0)) {
            throw new IllegalArgumentException("Maximum number of writers must be greater than 0".toString());
        }
        this.driver = driver;
        this.readers = new Pool(maxNumOfReaders, new Function0() { // from class: androidx.room.coroutines.ConnectionPoolImpl$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ConnectionPoolImpl._init_$lambda$4(driver, fileName);
            }
        });
        this.writers = new Pool(maxNumOfWriters, new Function0() { // from class: androidx.room.coroutines.ConnectionPoolImpl$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return driver.open(fileName);
            }
        });
    }

    static final SQLiteConnection _init_$lambda$4(SQLiteDriver $driver, String $fileName) {
        SQLiteConnection newConnection = $driver.open($fileName);
        SQLite.execSQL(newConnection, "PRAGMA query_only = 1");
        return newConnection;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0195 A[Catch: all -> 0x021e, TryCatch #8 {all -> 0x021e, blocks: (B:72:0x017f, B:74:0x0195, B:79:0x01a7, B:81:0x01ad, B:85:0x01b7, B:86:0x01bf, B:88:0x01c2, B:90:0x01c6, B:103:0x0210, B:104:0x021b, B:106:0x021d), top: B:141:0x017f }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01c0  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01f7 A[Catch: all -> 0x020c, TRY_LEAVE, TryCatch #7 {all -> 0x020c, blocks: (B:95:0x01f1, B:97:0x01f7), top: B:139:0x01f1 }] */
    @Override // androidx.room.coroutines.ConnectionPool
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public <R> Object useConnection(boolean z, Function2<? super Transactor, ? super Continuation<? super R>, ? extends Object> function2, Continuation<? super R> continuation) {
        AnonymousClass1 anonymousClass1;
        Function2<? super Transactor, ? super Continuation<? super R>, ? extends Object> function22;
        boolean z2;
        Pool pool;
        Ref.ObjectRef objectRef;
        Pool pool2;
        Ref.ObjectRef objectRef2;
        CoroutineContext coroutineContext;
        ConnectionPoolImpl connectionPoolImpl;
        Throwable th;
        Ref.ObjectRef objectRef3;
        long j;
        AnonymousClass2 anonymousClass2;
        Throwable th2;
        Throwable th3;
        Object objWithContext;
        PooledConnectionImpl pooledConnectionImpl;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        }
        AnonymousClass1 anonymousClass12 = anonymousClass1;
        Object obj = anonymousClass12.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (anonymousClass12.label) {
            case 0:
                ResultKt.throwOnFailure(obj);
                function22 = function2;
                z2 = z;
                if (isClosed()) {
                    SQLite.throwSQLiteException(21, "Connection pool is closed");
                    throw new KotlinNothingValueException();
                }
                PooledConnectionImpl connectionWrapper = this.threadLocal.get();
                if (connectionWrapper == null) {
                    ConnectionElement connectionElement = (ConnectionElement) anonymousClass12.get$context().get(ConnectionElement.INSTANCE);
                    connectionWrapper = connectionElement != null ? connectionElement.getConnectionWrapper() : null;
                }
                if (connectionWrapper != null) {
                    if (!z2 && connectionWrapper.getIsReadOnly()) {
                        SQLite.throwSQLiteException(1, "Cannot upgrade connection from reader to writer");
                        throw new KotlinNothingValueException();
                    }
                    if (anonymousClass12.get$context().get(ConnectionElement.INSTANCE) != null) {
                        anonymousClass12.label = 2;
                        Object objInvoke = function22.invoke(connectionWrapper, anonymousClass12);
                        return objInvoke == coroutine_suspended ? coroutine_suspended : objInvoke;
                    }
                    CoroutineContext coroutineContextCreateConnectionContext = createConnectionContext(connectionWrapper);
                    C06292 c06292 = new C06292(function22, connectionWrapper, null);
                    anonymousClass12.label = 1;
                    Object objWithContext2 = BuildersKt.withContext(coroutineContextCreateConnectionContext, c06292, anonymousClass12);
                    return objWithContext2 == coroutine_suspended ? coroutine_suspended : objWithContext2;
                }
                Pool pool3 = z2 ? this.readers : this.writers;
                Ref.ObjectRef objectRef4 = new Ref.ObjectRef();
                try {
                    CoroutineContext coroutineContext2 = anonymousClass12.get$context();
                    Ref.ObjectRef objectRef5 = new Ref.ObjectRef();
                    try {
                        j = this.timeout;
                        try {
                            anonymousClass2 = new AnonymousClass2(objectRef5, pool3, null);
                            try {
                                anonymousClass12.L$0 = this;
                                anonymousClass12.L$1 = function22;
                                anonymousClass12.L$2 = pool3;
                                anonymousClass12.L$3 = objectRef4;
                                anonymousClass12.L$4 = coroutineContext2;
                                anonymousClass12.L$5 = objectRef5;
                                anonymousClass12.Z$0 = z2;
                                anonymousClass12.label = 3;
                            } catch (Throwable th4) {
                                th = th4;
                                pool2 = pool3;
                                objectRef2 = objectRef4;
                                coroutineContext = coroutineContext2;
                                connectionPoolImpl = this;
                                th = null;
                                objectRef3 = objectRef5;
                                th2 = th;
                            }
                        } catch (Throwable th5) {
                            th = th5;
                            pool2 = pool3;
                            objectRef2 = objectRef4;
                            coroutineContext = coroutineContext2;
                            connectionPoolImpl = this;
                            th = null;
                            objectRef3 = objectRef5;
                        }
                    } catch (Throwable th6) {
                        th = th6;
                        pool2 = pool3;
                        objectRef2 = objectRef4;
                        coroutineContext = coroutineContext2;
                        connectionPoolImpl = this;
                        th = null;
                        objectRef3 = objectRef5;
                    }
                    if (TimeoutKt.m10048withTimeoutKLykuaI(j, anonymousClass2, anonymousClass12) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    pool2 = pool3;
                    objectRef2 = objectRef4;
                    coroutineContext = coroutineContext2;
                    connectionPoolImpl = this;
                    th = null;
                    th2 = null;
                    objectRef3 = objectRef5;
                    try {
                        Pair pair = TuplesKt.to(objectRef3.element, th2);
                        ConnectionWithLock connectionWithLock = (ConnectionWithLock) pair.component1();
                        th3 = (Throwable) pair.component2();
                        objectRef2.element = connectionWithLock == null ? new PooledConnectionImpl(connectionWithLock.markAcquired(coroutineContext), connectionPoolImpl.readers != connectionPoolImpl.writers && z2) : 0;
                        if (!(th3 instanceof TimeoutCancellationException)) {
                            connectionPoolImpl.throwTimeoutException(z2);
                            throw new KotlinNothingValueException();
                        }
                        if (th3 != null) {
                            throw th3;
                        }
                        if (objectRef2.element == 0) {
                            throw new IllegalArgumentException("Required value was null.".toString());
                        }
                        CoroutineContext coroutineContextCreateConnectionContext2 = connectionPoolImpl.createConnectionContext((PooledConnectionImpl) objectRef2.element);
                        AnonymousClass4 anonymousClass4 = new AnonymousClass4(function22, objectRef2, null);
                        anonymousClass12.L$0 = pool2;
                        anonymousClass12.L$1 = objectRef2;
                        anonymousClass12.L$2 = null;
                        anonymousClass12.L$3 = null;
                        anonymousClass12.L$4 = null;
                        anonymousClass12.L$5 = null;
                        anonymousClass12.label = 4;
                        objWithContext = BuildersKt.withContext(coroutineContextCreateConnectionContext2, anonymousClass4, anonymousClass12);
                        if (objWithContext == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        objectRef = objectRef2;
                        pool = pool2;
                        Object obj2 = objWithContext;
                        try {
                            pooledConnectionImpl = (PooledConnectionImpl) objectRef.element;
                            if (pooledConnectionImpl != null) {
                                pooledConnectionImpl.markRecycled();
                                pooledConnectionImpl.getDelegate().markReleased();
                                pool.recycle(pooledConnectionImpl.getDelegate());
                            }
                            break;
                        } catch (Throwable th7) {
                        }
                        return obj2;
                    } catch (Throwable th8) {
                        th = th8;
                        objectRef = objectRef2;
                        pool = pool2;
                        Throwable th9 = th;
                        try {
                            throw th;
                        } finally {
                        }
                    }
                } catch (Throwable th10) {
                    th = th10;
                    pool = pool3;
                    objectRef = objectRef4;
                    Throwable th92 = th;
                    throw th;
                }
                break;
            case 1:
                ResultKt.throwOnFailure(obj);
                return obj;
            case 2:
                ResultKt.throwOnFailure(obj);
                return obj;
            case 3:
                z2 = anonymousClass12.Z$0;
                th2 = null;
                objectRef3 = (Ref.ObjectRef) anonymousClass12.L$5;
                coroutineContext = (CoroutineContext) anonymousClass12.L$4;
                objectRef2 = (Ref.ObjectRef) anonymousClass12.L$3;
                th = null;
                pool2 = (Pool) anonymousClass12.L$2;
                function22 = (Function2) anonymousClass12.L$1;
                connectionPoolImpl = (ConnectionPoolImpl) anonymousClass12.L$0;
                try {
                    ResultKt.throwOnFailure(obj);
                } catch (Throwable th11) {
                    th = th11;
                    th2 = th;
                }
                Pair pair2 = TuplesKt.to(objectRef3.element, th2);
                ConnectionWithLock connectionWithLock2 = (ConnectionWithLock) pair2.component1();
                th3 = (Throwable) pair2.component2();
                if (connectionWithLock2 == null) {
                }
                objectRef2.element = connectionWithLock2 == null ? new PooledConnectionImpl(connectionWithLock2.markAcquired(coroutineContext), connectionPoolImpl.readers != connectionPoolImpl.writers && z2) : 0;
                if (!(th3 instanceof TimeoutCancellationException)) {
                }
                break;
            case 4:
                objectRef = (Ref.ObjectRef) anonymousClass12.L$1;
                pool = (Pool) anonymousClass12.L$0;
                try {
                    ResultKt.throwOnFailure(obj);
                    objWithContext = obj;
                    Object obj22 = objWithContext;
                    pooledConnectionImpl = (PooledConnectionImpl) objectRef.element;
                    if (pooledConnectionImpl != null) {
                    }
                    return obj22;
                } catch (Throwable th12) {
                    th = th12;
                    Throwable th922 = th;
                    throw th;
                }
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: androidx.room.coroutines.ConnectionPoolImpl$useConnection$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ConnectionPoolImpl.kt */
    @Metadata(d1 = {"\u0000\b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "R", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.room.coroutines.ConnectionPoolImpl$useConnection$2", f = "ConnectionPoolImpl.kt", i = {}, l = {115}, m = "invokeSuspend", n = {}, s = {})
    static final class C06292<R> extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super R>, Object> {
        final /* synthetic */ Function2<Transactor, Continuation<? super R>, Object> $block;
        final /* synthetic */ PooledConnectionImpl $confinedConnection;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C06292(Function2<? super Transactor, ? super Continuation<? super R>, ? extends Object> function2, PooledConnectionImpl pooledConnectionImpl, Continuation<? super C06292> continuation) {
            super(2, continuation);
            this.$block = function2;
            this.$confinedConnection = pooledConnectionImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C06292(this.$block, this.$confinedConnection, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super R> continuation) {
            return ((C06292) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    Function2<Transactor, Continuation<? super R>, Object> function2 = this.$block;
                    PooledConnectionImpl pooledConnectionImpl = this.$confinedConnection;
                    this.label = 1;
                    Object objInvoke = function2.invoke(pooledConnectionImpl, this);
                    if (objInvoke == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return objInvoke;
                case 1:
                    ResultKt.throwOnFailure($result);
                    return $result;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: androidx.room.coroutines.ConnectionPoolImpl$useConnection$4, reason: invalid class name */
    /* JADX INFO: compiled from: ConnectionPoolImpl.kt */
    @Metadata(d1 = {"\u0000\b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "R", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.room.coroutines.ConnectionPoolImpl$useConnection$4", f = "ConnectionPoolImpl.kt", i = {}, l = {147}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass4<R> extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super R>, Object> {
        final /* synthetic */ Function2<Transactor, Continuation<? super R>, Object> $block;
        final /* synthetic */ Ref.ObjectRef<PooledConnectionImpl> $connection;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass4(Function2<? super Transactor, ? super Continuation<? super R>, ? extends Object> function2, Ref.ObjectRef<PooledConnectionImpl> objectRef, Continuation<? super AnonymousClass4> continuation) {
            super(2, continuation);
            this.$block = function2;
            this.$connection = objectRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass4(this.$block, this.$connection, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super R> continuation) {
            return ((AnonymousClass4) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to androidx.room.coroutines.ConnectionPoolImpl$useConnection$4<R> for r4v1 'this'  java.lang.Object
            	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
            	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
            	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
            	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
            	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
            */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final java.lang.Object invokeSuspend(java.lang.Object r5) {
            /*
                r4 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r4.label
                switch(r1) {
                    case 0: goto L16;
                    case 1: goto L11;
                    default: goto L9;
                }
            L9:
                java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r5.<init>(r0)
                throw r5
            L11:
                kotlin.ResultKt.throwOnFailure(r5)
                r1 = r5
                goto L29
            L16:
                kotlin.ResultKt.throwOnFailure(r5)
                kotlin.jvm.functions.Function2<androidx.room.Transactor, kotlin.coroutines.Continuation<? super R>, java.lang.Object> r1 = r4.$block
                kotlin.jvm.internal.Ref$ObjectRef<androidx.room.coroutines.PooledConnectionImpl> r2 = r4.$connection
                T r2 = r2.element
                r3 = 1
                r4.label = r3
                java.lang.Object r1 = r1.invoke(r2, r4)
                if (r1 != r0) goto L29
                return r0
            L29:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.room.coroutines.ConnectionPoolImpl.AnonymousClass4.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    private final Object acquireWithTimeout(Pool $this$acquireWithTimeout, Continuation<? super Pair<ConnectionWithLock, ? extends Throwable>> continuation) {
        Ref.ObjectRef connection = new Ref.ObjectRef();
        Throwable exceptionThrown = null;
        try {
            TimeoutKt.m10048withTimeoutKLykuaI(this.timeout, new AnonymousClass2(connection, $this$acquireWithTimeout, null), continuation);
        } catch (Throwable ex) {
            exceptionThrown = ex;
        }
        return TuplesKt.to(connection.element, exceptionThrown);
    }

    /* JADX INFO: renamed from: androidx.room.coroutines.ConnectionPoolImpl$acquireWithTimeout$2, reason: invalid class name */
    /* JADX INFO: compiled from: ConnectionPoolImpl.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.room.coroutines.ConnectionPoolImpl$acquireWithTimeout$2", f = "ConnectionPoolImpl.kt", i = {}, l = {171}, m = "invokeSuspend", n = {}, s = {})
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Ref.ObjectRef<ConnectionWithLock> $connection;
        final /* synthetic */ Pool $this_acquireWithTimeout;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Ref.ObjectRef<ConnectionWithLock> objectRef, Pool pool, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$connection = objectRef;
            this.$this_acquireWithTimeout = pool;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$connection, this.$this_acquireWithTimeout, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Ref.ObjectRef<ConnectionWithLock> objectRef;
            T t;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    objectRef = this.$connection;
                    this.L$0 = objectRef;
                    this.label = 1;
                    Object objAcquire = this.$this_acquireWithTimeout.acquire(this);
                    if (objAcquire == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    t = objAcquire;
                    break;
                case 1:
                    Ref.ObjectRef<ConnectionWithLock> objectRef2 = (Ref.ObjectRef) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    objectRef = objectRef2;
                    t = obj;
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            objectRef.element = t;
            return Unit.INSTANCE;
        }
    }

    private final CoroutineContext createConnectionContext(PooledConnectionImpl connection) {
        return new ConnectionElement(connection).plus(ThreadLocal_jvmAndroidKt.asContextElement(this.threadLocal, connection));
    }

    private final Void throwTimeoutException(boolean isReadOnly) {
        String readOrWrite = isReadOnly ? "reader" : "writer";
        StringBuilder $this$throwTimeoutException_u24lambda_u248 = new StringBuilder();
        $this$throwTimeoutException_u24lambda_u248.append("Timed out attempting to acquire a " + readOrWrite + " connection.").append('\n');
        $this$throwTimeoutException_u24lambda_u248.append('\n');
        $this$throwTimeoutException_u24lambda_u248.append("Writer pool:").append('\n');
        this.writers.dump($this$throwTimeoutException_u24lambda_u248);
        $this$throwTimeoutException_u24lambda_u248.append("Reader pool:").append('\n');
        this.readers.dump($this$throwTimeoutException_u24lambda_u248);
        String message = $this$throwTimeoutException_u24lambda_u248.toString();
        SQLite.throwSQLiteException(5, message);
        throw new KotlinNothingValueException();
    }

    @Override // androidx.room.coroutines.ConnectionPool, java.lang.AutoCloseable
    public void close() {
        if (this._isClosed.compareAndSet(false, true)) {
            this.readers.close();
            this.writers.close();
        }
    }
}
