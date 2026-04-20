package androidx.datastore.core.okio;

import androidx.autofill.HintConstants;
import androidx.datastore.core.Closeable;
import androidx.datastore.core.InterProcessCoordinator;
import androidx.datastore.core.ReadScope;
import androidx.datastore.core.StorageConnection;
import androidx.datastore.core.WriteScope;
import androidx.exifinterface.media.ExifInterface;
import java.io.IOException;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import okio.FileSystem;
import okio.Path;

/* JADX INFO: compiled from: OkioStorage.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B;\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f¢\u0006\u0004\b\u000e\u0010\u000fJX\u0010\u0016\u001a\u0002H\u0017\"\u0004\b\u0001\u0010\u00172B\u0010\u0018\u001a>\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u001a\u0012\u0013\u0012\u00110\u001b¢\u0006\f\b\u001c\u0012\b\b\u001d\u0012\u0004\b\b(\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00170\u001f\u0012\u0006\u0012\u0004\u0018\u00010 0\u0019¢\u0006\u0002\b!H\u0096@¢\u0006\u0002\u0010\"J=\u0010#\u001a\u00020\r2-\u0010\u0018\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000%\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\u001f\u0012\u0006\u0012\u0004\u0018\u00010 0$¢\u0006\u0002\b!H\u0096@¢\u0006\u0002\u0010&J\b\u0010'\u001a\u00020\rH\u0002J\b\u0010(\u001a\u00020\rH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\nX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006)"}, d2 = {"Landroidx/datastore/core/okio/OkioStorageConnection;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/datastore/core/StorageConnection;", "fileSystem", "Lokio/FileSystem;", "path", "Lokio/Path;", "serializer", "Landroidx/datastore/core/okio/OkioSerializer;", "coordinator", "Landroidx/datastore/core/InterProcessCoordinator;", "onClose", "Lkotlin/Function0;", "", "<init>", "(Lokio/FileSystem;Lokio/Path;Landroidx/datastore/core/okio/OkioSerializer;Landroidx/datastore/core/InterProcessCoordinator;Lkotlin/jvm/functions/Function0;)V", "getCoordinator", "()Landroidx/datastore/core/InterProcessCoordinator;", "closed", "Landroidx/datastore/core/okio/AtomicBoolean;", "transactionMutex", "Lkotlinx/coroutines/sync/Mutex;", "readScope", "R", "block", "Lkotlin/Function3;", "Landroidx/datastore/core/ReadScope;", "", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "locked", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "writeScope", "Lkotlin/Function2;", "Landroidx/datastore/core/WriteScope;", "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "checkNotClosed", "close", "datastore-core-okio"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class OkioStorageConnection<T> implements StorageConnection<T> {
    private final AtomicBoolean closed;
    private final InterProcessCoordinator coordinator;
    private final FileSystem fileSystem;
    private final Function0<Unit> onClose;
    private final Path path;
    private final OkioSerializer<T> serializer;
    private final Mutex transactionMutex;

    /* JADX INFO: renamed from: androidx.datastore.core.okio.OkioStorageConnection$readScope$1, reason: invalid class name */
    /* JADX INFO: compiled from: OkioStorage.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.datastore.core.okio.OkioStorageConnection", f = "OkioStorage.kt", i = {0, 0}, l = {113}, m = "readScope", n = {"$this$use$iv", "lock"}, s = {"L$0", "Z$0"}, v = 1)
    static final class AnonymousClass1<R> extends ContinuationImpl {
        Object L$0;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ OkioStorageConnection<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(OkioStorageConnection<T> okioStorageConnection, Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
            this.this$0 = okioStorageConnection;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.readScope(null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.okio.OkioStorageConnection$writeScope$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: OkioStorage.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.datastore.core.okio.OkioStorageConnection", f = "OkioStorage.kt", i = {0, 0, 0, 1, 1, 1}, l = {242, 131}, m = "writeScope", n = {"block", "parentDir", "$this$withLock_u24default$iv", "$this$withLock_u24default$iv", "scratchPath", "$this$use$iv"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2"}, v = 1)
    static final class C06051 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ OkioStorageConnection<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C06051(OkioStorageConnection<T> okioStorageConnection, Continuation<? super C06051> continuation) {
            super(continuation);
            this.this$0 = okioStorageConnection;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.writeScope(null, this);
        }
    }

    public OkioStorageConnection(FileSystem fileSystem, Path path, OkioSerializer<T> serializer, InterProcessCoordinator coordinator, Function0<Unit> onClose) {
        Intrinsics.checkNotNullParameter(fileSystem, "fileSystem");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        Intrinsics.checkNotNullParameter(coordinator, "coordinator");
        Intrinsics.checkNotNullParameter(onClose, "onClose");
        this.fileSystem = fileSystem;
        this.path = path;
        this.serializer = serializer;
        this.coordinator = coordinator;
        this.onClose = onClose;
        this.closed = new AtomicBoolean(false);
        this.transactionMutex = MutexKt.Mutex$default(false, 1, null);
    }

    @Override // androidx.datastore.core.StorageConnection
    public InterProcessCoordinator getCoordinator() {
        return this.coordinator;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x008d A[Catch: all -> 0x00a6, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x00a6, blocks: (B:36:0x008d, B:18:0x004f), top: B:54:0x004f }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // androidx.datastore.core.StorageConnection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public <R> Object readScope(Function3<? super ReadScope<T>, ? super Boolean, ? super Continuation<? super R>, ? extends Object> function3, Continuation<? super R> continuation) throws Throwable {
        AnonymousClass1 anonymousClass1;
        OkioStorageConnection<T> okioStorageConnection;
        boolean lock;
        OkioReadScope $this$use$iv;
        Throwable th;
        Throwable t$iv;
        OkioStorageConnection<T> okioStorageConnection2;
        Object objInvoke;
        Throwable thrown$iv;
        Throwable th2;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(this, continuation);
            }
        }
        Object $result = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (anonymousClass1.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                okioStorageConnection = this;
                okioStorageConnection.checkNotClosed();
                lock = Mutex.DefaultImpls.tryLock$default(okioStorageConnection.transactionMutex, null, 1, null);
                try {
                    $this$use$iv = new OkioReadScope(okioStorageConnection.fileSystem, okioStorageConnection.path, okioStorageConnection.serializer);
                    th = null;
                    try {
                        OkioReadScope okioReadScope = $this$use$iv;
                        Boolean boolBoxBoolean = Boxing.boxBoolean(lock);
                        anonymousClass1.L$0 = $this$use$iv;
                        anonymousClass1.Z$0 = lock;
                        anonymousClass1.label = 1;
                        objInvoke = function3.invoke(okioReadScope, boolBoxBoolean, anonymousClass1);
                        if (objInvoke == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        try {
                            $this$use$iv.close();
                            break;
                        } catch (Throwable th3) {
                            th = th3;
                        }
                        if (th == null) {
                            throw th;
                        }
                        if (lock) {
                            Mutex.DefaultImpls.unlock$default(okioStorageConnection.transactionMutex, null, 1, null);
                        }
                        return objInvoke;
                    } catch (Throwable th4) {
                        t$iv = th4;
                        okioStorageConnection2 = okioStorageConnection;
                        thrown$iv = t$iv;
                        try {
                            try {
                                $this$use$iv.close();
                                throw thrown$iv;
                            } catch (Throwable th5) {
                                okioStorageConnection = okioStorageConnection2;
                                th2 = th5;
                                if (lock) {
                                    Mutex.DefaultImpls.unlock$default(okioStorageConnection.transactionMutex, null, 1, null);
                                }
                                throw th2;
                            }
                        } catch (Throwable t$iv2) {
                            ExceptionsKt.addSuppressed(thrown$iv, t$iv2);
                            throw thrown$iv;
                        }
                    }
                } catch (Throwable th6) {
                    th2 = th6;
                    if (lock) {
                    }
                    throw th2;
                }
            case 1:
                okioStorageConnection2 = this;
                lock = anonymousClass1.Z$0;
                $this$use$iv = (Closeable) anonymousClass1.L$0;
                try {
                    ResultKt.throwOnFailure($result);
                    okioStorageConnection = okioStorageConnection2;
                    objInvoke = $result;
                    th = null;
                    $this$use$iv.close();
                    if (th == null) {
                    }
                } catch (Throwable th7) {
                    t$iv = th7;
                    thrown$iv = t$iv;
                    $this$use$iv.close();
                    throw thrown$iv;
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 11, insn: 0x012c: MOVE (r9 I:??[OBJECT, ARRAY]) = (r11 I:??[OBJECT, ARRAY] A[D('scratchPath' okio.Path)]), block:B:59:0x012b */
    /* JADX WARN: Not initialized variable reg: 12, insn: 0x0144: INVOKE 
      (r13v0 ?? I:kotlinx.coroutines.sync.Mutex A[D('$this$withLock_u24default$iv' kotlinx.coroutines.sync.Mutex)])
      (r12 I:java.lang.Object A[D('owner$iv' java.lang.Object)])
     INTERFACE call: kotlinx.coroutines.sync.Mutex.unlock(java.lang.Object):void A[MD:(java.lang.Object):void (m)], block:B:70:0x0144 */
    /* JADX WARN: Not initialized variable reg: 13, insn: 0x0144: INVOKE 
      (r13 I:kotlinx.coroutines.sync.Mutex A[D('$this$withLock_u24default$iv' kotlinx.coroutines.sync.Mutex)])
      (r12 I:java.lang.Object A[D('owner$iv' java.lang.Object)])
     INTERFACE call: kotlinx.coroutines.sync.Mutex.unlock(java.lang.Object):void A[MD:(java.lang.Object):void (m)], block:B:70:0x0144 */
    /* JADX WARN: Not initialized variable reg: 7, insn: 0x012b: MOVE (r8 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = 
      (r7 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY] A[D('$i$a$-withLock$default-OkioStorageConnection$writeScope$2' int)])
    , block:B:59:0x012b */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00de A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00f5 A[Catch: all -> 0x0127, IOException -> 0x012a, TRY_ENTER, TryCatch #0 {IOException -> 0x012a, blocks: (B:38:0x00f5, B:40:0x00fd, B:46:0x0111, B:55:0x0126, B:53:0x0121), top: B:74:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0111 A[Catch: all -> 0x0127, IOException -> 0x012a, TRY_ENTER, TRY_LEAVE, TryCatch #0 {IOException -> 0x012a, blocks: (B:38:0x00f5, B:40:0x00fd, B:46:0x0111, B:55:0x0126, B:53:0x0121), top: B:74:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    /* JADX WARN: Type inference failed for: r5v0, types: [int] */
    /* JADX WARN: Type inference failed for: r5v3, types: [androidx.datastore.core.okio.OkioStorageConnection] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v8 */
    @Override // androidx.datastore.core.StorageConnection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object writeScope(Function2<? super WriteScope<T>, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super Unit> continuation) throws Throwable {
        C06051 c06051;
        Mutex mutexUnlock;
        Object objUnlock;
        Path path;
        Path pathResolve;
        Function2<? super WriteScope<T>, ? super Continuation<? super Unit>, ? extends Object> function22;
        Path path2;
        Mutex mutex;
        Mutex mutex2;
        Object obj;
        Closeable okioWriteScope;
        Path path3;
        Throwable th;
        Throwable th2;
        OkioStorageConnection okioStorageConnection;
        if (continuation instanceof C06051) {
            c06051 = (C06051) continuation;
            if ((c06051.label & Integer.MIN_VALUE) != 0) {
                c06051.label -= Integer.MIN_VALUE;
            } else {
                c06051 = new C06051(this, continuation);
            }
        }
        C06051 c060512 = c06051;
        Object obj2 = c060512.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        OkioStorageConnection okioStorageConnection2 = c060512.label;
        try {
            try {
                try {
                    switch (okioStorageConnection2) {
                        case 0:
                            ResultKt.throwOnFailure(obj2);
                            OkioStorageConnection<T> okioStorageConnection3 = this;
                            function22 = function2;
                            okioStorageConnection3.checkNotClosed();
                            Path pathParent = okioStorageConnection3.path.parent();
                            if (pathParent == null) {
                                throw new IllegalStateException("must have a parent path".toString());
                            }
                            path2 = pathParent;
                            okioStorageConnection3.fileSystem.createDirectories(path2, false);
                            Mutex mutex3 = okioStorageConnection3.transactionMutex;
                            c060512.L$0 = function22;
                            c060512.L$1 = path2;
                            c060512.L$2 = mutex3;
                            c060512.label = 1;
                            if (mutex3.lock(null, c060512) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            mutex = mutex3;
                            mutex2 = null;
                            obj = null;
                            okioStorageConnection2 = okioStorageConnection3;
                            pathResolve = path2.resolve(okioStorageConnection2.path.name() + ".tmp");
                            try {
                                okioStorageConnection2.fileSystem.delete(pathResolve, false);
                                okioWriteScope = new OkioWriteScope(okioStorageConnection2.fileSystem, pathResolve, okioStorageConnection2.serializer);
                                try {
                                    c060512.L$0 = mutex;
                                    c060512.L$1 = pathResolve;
                                    c060512.L$2 = okioWriteScope;
                                    c060512.label = 2;
                                    if (function22.invoke((OkioWriteScope) okioWriteScope, c060512) != coroutine_suspended) {
                                        return coroutine_suspended;
                                    }
                                    path3 = pathResolve;
                                    th = null;
                                    okioStorageConnection = okioStorageConnection2;
                                    Unit unit = Unit.INSTANCE;
                                    try {
                                        okioWriteScope.close();
                                        break;
                                    } catch (Throwable th3) {
                                        th = th3;
                                    }
                                    if (th == null) {
                                        throw th;
                                    }
                                    if (okioStorageConnection.fileSystem.exists(path3)) {
                                        okioStorageConnection.fileSystem.atomicMove(path3, okioStorageConnection.path);
                                    }
                                    Unit unit2 = Unit.INSTANCE;
                                    mutex.unlock(obj);
                                    return Unit.INSTANCE;
                                } catch (Throwable th4) {
                                    th = th4;
                                    th2 = th;
                                    try {
                                        okioWriteScope.close();
                                        throw th2;
                                    } catch (Throwable th5) {
                                        ExceptionsKt.addSuppressed(th2, th5);
                                        throw th2;
                                    }
                                }
                            } catch (IOException e) {
                                e = e;
                                IOException iOException = e;
                                if (!okioStorageConnection2.fileSystem.exists(pathResolve)) {
                                    throw iOException;
                                }
                                try {
                                    okioStorageConnection2.fileSystem.delete(pathResolve);
                                    throw iOException;
                                } catch (IOException e2) {
                                    throw iOException;
                                }
                            }
                        case 1:
                            okioStorageConnection2 = this;
                            mutex2 = null;
                            Mutex mutex4 = (Mutex) c060512.L$2;
                            path2 = (Path) c060512.L$1;
                            function22 = (Function2) c060512.L$0;
                            ResultKt.throwOnFailure(obj2);
                            mutex = mutex4;
                            obj = null;
                            pathResolve = path2.resolve(okioStorageConnection2.path.name() + ".tmp");
                            okioStorageConnection2.fileSystem.delete(pathResolve, false);
                            okioWriteScope = new OkioWriteScope(okioStorageConnection2.fileSystem, pathResolve, okioStorageConnection2.serializer);
                            c060512.L$0 = mutex;
                            c060512.L$1 = pathResolve;
                            c060512.L$2 = okioWriteScope;
                            c060512.label = 2;
                            if (function22.invoke((OkioWriteScope) okioWriteScope, c060512) != coroutine_suspended) {
                            }
                            break;
                        case 2:
                            okioStorageConnection = this;
                            th = null;
                            okioWriteScope = (Closeable) c060512.L$2;
                            path3 = (Path) c060512.L$1;
                            obj = null;
                            mutex = (Mutex) c060512.L$0;
                            try {
                                ResultKt.throwOnFailure(obj2);
                                Unit unit3 = Unit.INSTANCE;
                                okioWriteScope.close();
                                if (th == null) {
                                }
                            } catch (Throwable th6) {
                                th = th6;
                                th2 = th;
                                okioWriteScope.close();
                                throw th2;
                            }
                            break;
                        default:
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } catch (IOException e3) {
                    e = e3;
                    pathResolve = path;
                }
            } catch (Throwable th7) {
                th = th7;
                mutexUnlock.unlock(objUnlock);
                throw th;
            }
        } catch (Throwable th8) {
            th = th8;
            mutexUnlock.unlock(objUnlock);
            throw th;
        }
    }

    private final void checkNotClosed() {
        if (this.closed.get()) {
            throw new IllegalStateException("StorageConnection has already been disposed.".toString());
        }
    }

    @Override // androidx.datastore.core.Closeable
    public void close() {
        this.closed.set(true);
        this.onClose.invoke();
    }
}
