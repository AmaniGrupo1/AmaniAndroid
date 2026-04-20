package androidx.datastore.core;

import androidx.autofill.HintConstants;
import androidx.exifinterface.media.ExifInterface;
import java.io.File;
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

/* JADX INFO: compiled from: FileStorage.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B3\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0004\b\f\u0010\rJX\u0010\u0014\u001a\u0002H\u0015\"\u0004\b\u0001\u0010\u00152B\u0010\u0016\u001a>\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0018\u0012\u0013\u0012\u00110\u0019¢\u0006\f\b\u001a\u0012\b\b\u001b\u0012\u0004\b\b(\u001c\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00150\u001d\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u0017¢\u0006\u0002\b\u001fH\u0096@¢\u0006\u0002\u0010 J=\u0010!\u001a\u00020\u000b2-\u0010\u0016\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000#\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u001d\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\"¢\u0006\u0002\b\u001fH\u0096@¢\u0006\u0002\u0010$J\b\u0010%\u001a\u00020\u000bH\u0016J\b\u0010&\u001a\u00020\u000bH\u0002J\f\u0010'\u001a\u00020\u000b*\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006("}, d2 = {"Landroidx/datastore/core/FileStorageConnection;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/datastore/core/StorageConnection;", "file", "Ljava/io/File;", "serializer", "Landroidx/datastore/core/Serializer;", "coordinator", "Landroidx/datastore/core/InterProcessCoordinator;", "onClose", "Lkotlin/Function0;", "", "<init>", "(Ljava/io/File;Landroidx/datastore/core/Serializer;Landroidx/datastore/core/InterProcessCoordinator;Lkotlin/jvm/functions/Function0;)V", "getCoordinator", "()Landroidx/datastore/core/InterProcessCoordinator;", "closed", "Ljava/util/concurrent/atomic/AtomicBoolean;", "transactionMutex", "Lkotlinx/coroutines/sync/Mutex;", "readScope", "R", "block", "Lkotlin/Function3;", "Landroidx/datastore/core/ReadScope;", "", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "locked", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "writeScope", "Lkotlin/Function2;", "Landroidx/datastore/core/WriteScope;", "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "close", "checkNotClosed", "createParentDirectories", "datastore-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class FileStorageConnection<T> implements StorageConnection<T> {
    private final java.util.concurrent.atomic.AtomicBoolean closed;
    private final InterProcessCoordinator coordinator;
    private final File file;
    private final Function0<Unit> onClose;
    private final Serializer<T> serializer;
    private final Mutex transactionMutex;

    /* JADX INFO: renamed from: androidx.datastore.core.FileStorageConnection$readScope$1, reason: invalid class name */
    /* JADX INFO: compiled from: FileStorage.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.datastore.core.FileStorageConnection", f = "FileStorage.kt", i = {0, 0}, l = {96}, m = "readScope", n = {"$this$use$iv", "lock"}, s = {"L$0", "Z$0"}, v = 1)
    static final class AnonymousClass1<R> extends ContinuationImpl {
        Object L$0;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ FileStorageConnection<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(FileStorageConnection<T> fileStorageConnection, Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
            this.this$0 = fileStorageConnection;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.readScope(null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.FileStorageConnection$writeScope$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: FileStorage.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.datastore.core.FileStorageConnection", f = "FileStorage.kt", i = {0, 0, 1, 1, 1}, l = {238, 112}, m = "writeScope", n = {"block", "$this$withLock_u24default$iv", "$this$withLock_u24default$iv", "scratchFile", "$this$use$iv"}, s = {"L$0", "L$1", "L$0", "L$1", "L$2"}, v = 1)
    static final class C06011 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ FileStorageConnection<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C06011(FileStorageConnection<T> fileStorageConnection, Continuation<? super C06011> continuation) {
            super(continuation);
            this.this$0 = fileStorageConnection;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.writeScope(null, this);
        }
    }

    public FileStorageConnection(File file, Serializer<T> serializer, InterProcessCoordinator coordinator, Function0<Unit> onClose) {
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        Intrinsics.checkNotNullParameter(coordinator, "coordinator");
        Intrinsics.checkNotNullParameter(onClose, "onClose");
        this.file = file;
        this.serializer = serializer;
        this.coordinator = coordinator;
        this.onClose = onClose;
        this.closed = new java.util.concurrent.atomic.AtomicBoolean(false);
        this.transactionMutex = MutexKt.Mutex$default(false, 1, null);
    }

    @Override // androidx.datastore.core.StorageConnection
    public InterProcessCoordinator getCoordinator() {
        return this.coordinator;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0090 A[Catch: all -> 0x00a9, TRY_ENTER, TRY_LEAVE, TryCatch #3 {all -> 0x00a9, blocks: (B:38:0x0090, B:18:0x004f), top: B:60:0x004f }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // androidx.datastore.core.StorageConnection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public <R> Object readScope(Function3<? super ReadScope<T>, ? super Boolean, ? super Continuation<? super R>, ? extends Object> function3, Continuation<? super R> continuation) throws Throwable {
        AnonymousClass1 anonymousClass1;
        FileStorageConnection<T> fileStorageConnection;
        boolean lock;
        Closeable $this$use$iv;
        Throwable t$iv;
        FileStorageConnection<T> fileStorageConnection2;
        Object objInvoke;
        Throwable thrown$iv;
        Throwable thrown$iv2;
        Throwable th;
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
                fileStorageConnection = this;
                fileStorageConnection.checkNotClosed();
                lock = Mutex.DefaultImpls.tryLock$default(fileStorageConnection.transactionMutex, null, 1, null);
                try {
                    $this$use$iv = new FileReadScope(fileStorageConnection.file, fileStorageConnection.serializer);
                    try {
                        FileReadScope fileReadScope = (FileReadScope) $this$use$iv;
                        Boolean boolBoxBoolean = Boxing.boxBoolean(lock);
                        anonymousClass1.L$0 = $this$use$iv;
                        anonymousClass1.Z$0 = lock;
                        anonymousClass1.label = 1;
                        objInvoke = function3.invoke(fileReadScope, boolBoxBoolean, anonymousClass1);
                        if (objInvoke == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        thrown$iv = null;
                        try {
                            $this$use$iv.close();
                            break;
                        } catch (Throwable t$iv2) {
                            thrown$iv = t$iv2;
                        }
                        if (thrown$iv == null) {
                            throw thrown$iv;
                        }
                        if (lock) {
                            Mutex.DefaultImpls.unlock$default(fileStorageConnection.transactionMutex, null, 1, null);
                        }
                        return objInvoke;
                    } catch (Throwable th2) {
                        t$iv = th2;
                        fileStorageConnection2 = fileStorageConnection;
                        thrown$iv2 = t$iv;
                        try {
                            try {
                                $this$use$iv.close();
                                throw thrown$iv2;
                            } catch (Throwable th3) {
                                fileStorageConnection = fileStorageConnection2;
                                th = th3;
                                if (lock) {
                                    Mutex.DefaultImpls.unlock$default(fileStorageConnection.transactionMutex, null, 1, null);
                                }
                                throw th;
                            }
                        } catch (Throwable t$iv3) {
                            ExceptionsKt.addSuppressed(thrown$iv2, t$iv3);
                            throw thrown$iv2;
                        }
                    }
                } catch (Throwable th4) {
                    th = th4;
                    if (lock) {
                    }
                    throw th;
                }
            case 1:
                fileStorageConnection2 = this;
                lock = anonymousClass1.Z$0;
                thrown$iv = null;
                $this$use$iv = (Closeable) anonymousClass1.L$0;
                try {
                    ResultKt.throwOnFailure($result);
                    fileStorageConnection = fileStorageConnection2;
                    objInvoke = $result;
                    $this$use$iv.close();
                    if (thrown$iv == null) {
                    }
                } catch (Throwable th5) {
                    t$iv = th5;
                    thrown$iv2 = t$iv;
                    $this$use$iv.close();
                    throw thrown$iv2;
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00cf A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00df A[Catch: IOException -> 0x0127, all -> 0x0152, TRY_ENTER, TryCatch #1 {all -> 0x0152, blocks: (B:37:0x00df, B:39:0x00e5, B:42:0x00ee, B:43:0x0118, B:45:0x011a, B:49:0x0126, B:67:0x0147, B:69:0x014d, B:71:0x0151, B:23:0x008e, B:25:0x00ae), top: B:75:0x0028 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0126 A[Catch: IOException -> 0x0127, all -> 0x0152, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x0152, blocks: (B:37:0x00df, B:39:0x00e5, B:42:0x00ee, B:43:0x0118, B:45:0x011a, B:49:0x0126, B:67:0x0147, B:69:0x014d, B:71:0x0151, B:23:0x008e, B:25:0x00ae), top: B:75:0x0028 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x014d A[Catch: all -> 0x0152, TryCatch #1 {all -> 0x0152, blocks: (B:37:0x00df, B:39:0x00e5, B:42:0x00ee, B:43:0x0118, B:45:0x011a, B:49:0x0126, B:67:0x0147, B:69:0x014d, B:71:0x0151, B:23:0x008e, B:25:0x00ae), top: B:75:0x0028 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    @Override // androidx.datastore.core.StorageConnection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object writeScope(Function2<? super WriteScope<T>, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super Unit> continuation) throws IOException {
        C06011 c06011;
        FileStorageConnection<T> fileStorageConnection;
        Function2<? super WriteScope<T>, ? super Continuation<? super Unit>, ? extends Object> function22;
        Mutex $this$withLock_u24default$iv;
        Mutex $this$withLock_u24default$iv2;
        Object owner$iv;
        int $i$f$use;
        File scratchFile;
        Closeable $this$use$iv;
        int $i$f$use2;
        Mutex mutex;
        int $i$f$withLock;
        FileWriteScope it;
        Throwable thrown$iv;
        Throwable thrown$iv2;
        if (continuation instanceof C06011) {
            c06011 = (C06011) continuation;
            if ((c06011.label & Integer.MIN_VALUE) != 0) {
                c06011.label -= Integer.MIN_VALUE;
            } else {
                c06011 = new C06011(this, continuation);
            }
        }
        C06011 c060112 = c06011;
        Object $result = c060112.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            switch (c060112.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    fileStorageConnection = this;
                    function22 = function2;
                    fileStorageConnection.checkNotClosed();
                    fileStorageConnection.createParentDirectories(fileStorageConnection.file);
                    Mutex $this$withLock_u24default$iv3 = fileStorageConnection.transactionMutex;
                    c060112.L$0 = function22;
                    c060112.L$1 = $this$withLock_u24default$iv3;
                    c060112.label = 1;
                    if ($this$withLock_u24default$iv3.lock(null, c060112) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    $this$withLock_u24default$iv = $this$withLock_u24default$iv3;
                    $this$withLock_u24default$iv2 = null;
                    owner$iv = null;
                    $i$f$use = 0;
                    scratchFile = new File(fileStorageConnection.file.getAbsolutePath() + ".tmp");
                    try {
                        $this$use$iv = new FileWriteScope(scratchFile, fileStorageConnection.serializer);
                        $i$f$use2 = 0;
                        try {
                            it = (FileWriteScope) $this$use$iv;
                            c060112.L$0 = $this$withLock_u24default$iv;
                            c060112.L$1 = scratchFile;
                            c060112.L$2 = $this$use$iv;
                            c060112.label = 2;
                            if (function22.invoke(it, c060112) != coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            thrown$iv = null;
                            try {
                                Unit unit = Unit.INSTANCE;
                                try {
                                    $this$use$iv.close();
                                    break;
                                } catch (Throwable t$iv) {
                                    thrown$iv = t$iv;
                                }
                                if (thrown$iv == null) {
                                    throw thrown$iv;
                                }
                                if (scratchFile.exists() && !FileMoves_androidKt.atomicMoveTo(scratchFile, fileStorageConnection.file)) {
                                    throw new IOException("Unable to rename " + scratchFile + " to " + fileStorageConnection.file + ". This likely means that there are multiple instances of DataStore for this file. Ensure that you are only creating a single instance of datastore for this file.");
                                }
                                Unit unit2 = Unit.INSTANCE;
                                $this$withLock_u24default$iv.unlock(owner$iv);
                                return Unit.INSTANCE;
                            } catch (Throwable th) {
                                t$iv = th;
                                mutex = $this$withLock_u24default$iv2;
                                $i$f$withLock = $i$f$use;
                                thrown$iv2 = t$iv;
                                try {
                                    try {
                                        $this$use$iv.close();
                                        throw thrown$iv2;
                                    } catch (Throwable t$iv2) {
                                        ExceptionsKt.addSuppressed(thrown$iv2, t$iv2);
                                        throw thrown$iv2;
                                    }
                                } catch (IOException e) {
                                    ex = e;
                                    if (scratchFile.exists()) {
                                    }
                                    throw ex;
                                } catch (Throwable th2) {
                                    ex = th2;
                                    $this$withLock_u24default$iv.unlock(owner$iv);
                                    throw ex;
                                }
                            }
                        } catch (Throwable th3) {
                            t$iv = th3;
                            mutex = $this$withLock_u24default$iv2;
                            $i$f$withLock = 0;
                            thrown$iv2 = t$iv;
                            $this$use$iv.close();
                            throw thrown$iv2;
                        }
                    } catch (IOException e2) {
                        ex = e2;
                        if (scratchFile.exists()) {
                            scratchFile.delete();
                        }
                        throw ex;
                    }
                case 1:
                    fileStorageConnection = this;
                    $this$withLock_u24default$iv2 = null;
                    Mutex $this$withLock_u24default$iv4 = (Mutex) c060112.L$1;
                    function22 = (Function2) c060112.L$0;
                    ResultKt.throwOnFailure($result);
                    $this$withLock_u24default$iv = $this$withLock_u24default$iv4;
                    owner$iv = null;
                    $i$f$use = 0;
                    scratchFile = new File(fileStorageConnection.file.getAbsolutePath() + ".tmp");
                    $this$use$iv = new FileWriteScope(scratchFile, fileStorageConnection.serializer);
                    $i$f$use2 = 0;
                    it = (FileWriteScope) $this$use$iv;
                    c060112.L$0 = $this$withLock_u24default$iv;
                    c060112.L$1 = scratchFile;
                    c060112.L$2 = $this$use$iv;
                    c060112.label = 2;
                    if (function22.invoke(it, c060112) != coroutine_suspended) {
                    }
                    break;
                case 2:
                    mutex = null;
                    $i$f$withLock = 0;
                    thrown$iv = null;
                    $this$use$iv = (Closeable) c060112.L$2;
                    scratchFile = (File) c060112.L$1;
                    owner$iv = null;
                    $this$withLock_u24default$iv = (Mutex) c060112.L$0;
                    try {
                        ResultKt.throwOnFailure($result);
                        $i$f$use2 = 0;
                        $i$f$use = 0;
                        $this$withLock_u24default$iv2 = null;
                        fileStorageConnection = this;
                        Unit unit3 = Unit.INSTANCE;
                        $this$use$iv.close();
                        if (thrown$iv == null) {
                        }
                    } catch (Throwable th4) {
                        t$iv = th4;
                        thrown$iv2 = t$iv;
                        $this$use$iv.close();
                        throw thrown$iv2;
                    }
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } catch (Throwable th5) {
            ex = th5;
        }
    }

    @Override // androidx.datastore.core.Closeable
    public void close() {
        this.closed.set(true);
        this.onClose.invoke();
    }

    private final void checkNotClosed() {
        if (this.closed.get()) {
            throw new IllegalStateException("StorageConnection has already been disposed.".toString());
        }
    }

    private final void createParentDirectories(File $this$createParentDirectories) throws IOException {
        File parent = $this$createParentDirectories.getCanonicalFile().getParentFile();
        if (parent != null) {
            parent.mkdirs();
            if (!parent.isDirectory()) {
                throw new IOException("Unable to create parent directories of " + $this$createParentDirectories);
            }
        }
    }
}
