package androidx.datastore.core;

import androidx.compose.ui.spatial.RectListKt;
import androidx.core.view.MotionEventCompat;
import androidx.exifinterface.media.ExifInterface;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileLock;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: compiled from: MultiProcessCoordinator.android.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\b\u0000\u0018\u0000 52\u00020\u0001:\u00015B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J2\u0010\u000f\u001a\u0002H\u0010\"\u0004\b\u0000\u0010\u00102\u001c\u0010\u0011\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00100\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0012H\u0096@¢\u0006\u0002\u0010\u0015J8\u0010\u0016\u001a\u0002H\u0010\"\u0004\b\u0000\u0010\u00102\"\u0010\u0011\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0018\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00100\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0017H\u0096@¢\u0006\u0002\u0010\u0019J\u000e\u0010\u001a\u001a\u00020\u001bH\u0096@¢\u0006\u0002\u0010\u001cJ\u000e\u0010\u001d\u001a\u00020\u001bH\u0096@¢\u0006\u0002\u0010\u001cJ\u0010\u00100\u001a\u00020\u00052\u0006\u00101\u001a\u00020\u001fH\u0002J\f\u00102\u001a\u00020\f*\u00020\u0005H\u0002J\f\u00103\u001a\u00020\f*\u00020\u0005H\u0002J:\u00104\u001a\u0002H\u0010\"\u0004\b\u0000\u0010\u00102$\b\u0004\u0010\u0011\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020*\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00100\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0017H\u0082H¢\u0006\u0002\u0010\u0019R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u00020\u0005X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\u001e\u001a\u00020\u001fX\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u001fX\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u001fX\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010$\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b%\u0010\tR\u0014\u0010(\u001a\b\u0012\u0004\u0012\u00020*0)X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010+\u001a\u00020*8BX\u0082\u0084\u0002¢\u0006\f\u001a\u0004\b.\u0010/*\u0004\b,\u0010-¨\u00066"}, d2 = {"Landroidx/datastore/core/MultiProcessCoordinator;", "Landroidx/datastore/core/InterProcessCoordinator;", "context", "Lkotlin/coroutines/CoroutineContext;", "file", "Ljava/io/File;", "<init>", "(Lkotlin/coroutines/CoroutineContext;Ljava/io/File;)V", "getFile", "()Ljava/io/File;", "updateNotifications", "Lkotlinx/coroutines/flow/Flow;", "", "getUpdateNotifications", "()Lkotlinx/coroutines/flow/Flow;", "lock", ExifInterface.GPS_DIRECTION_TRUE, "block", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "tryLock", "Lkotlin/Function2;", "", "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getVersion", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "incrementAndGetVersion", "LOCK_SUFFIX", "", "VERSION_SUFFIX", "LOCK_ERROR_MESSAGE", "inMemoryMutex", "Lkotlinx/coroutines/sync/Mutex;", "lockFile", "getLockFile", "lockFile$delegate", "Lkotlin/Lazy;", "lazySharedCounter", "Lkotlin/Lazy;", "Landroidx/datastore/core/SharedCounter;", "sharedCounter", "getSharedCounter$delegate", "(Landroidx/datastore/core/MultiProcessCoordinator;)Ljava/lang/Object;", "getSharedCounter", "()Landroidx/datastore/core/SharedCounter;", "fileWithSuffix", "suffix", "createIfNotExists", "createParentDirectories", "withLazyCounter", "Companion", "datastore-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class MultiProcessCoordinator implements InterProcessCoordinator {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String DEADLOCK_ERROR_MESSAGE = "Resource deadlock would occur";
    private static final long INITIAL_WAIT_MILLIS = 10;
    private static final long MAX_WAIT_MILLIS = 60000;
    private final String LOCK_ERROR_MESSAGE;
    private final String LOCK_SUFFIX;
    private final String VERSION_SUFFIX;
    private final CoroutineContext context;
    private final File file;
    private final Mutex inMemoryMutex;
    private final Lazy<SharedCounter> lazySharedCounter;

    /* JADX INFO: renamed from: lockFile$delegate, reason: from kotlin metadata */
    private final Lazy lockFile;
    private final Flow<Unit> updateNotifications;

    /* JADX INFO: renamed from: androidx.datastore.core.MultiProcessCoordinator$lock$1, reason: invalid class name */
    /* JADX INFO: compiled from: MultiProcessCoordinator.android.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.datastore.core.MultiProcessCoordinator", f = "MultiProcessCoordinator.android.kt", i = {0, 0, 1, 1, 2, 2}, l = {213, MotionEventCompat.AXIS_GENERIC_16, 48}, m = "lock", n = {"block", "$this$withLock_u24default$iv", "block", "$this$withLock_u24default$iv", "$this$withLock_u24default$iv", "lock"}, s = {"L$0", "L$1", "L$0", "L$1", "L$0", "L$2"}, v = 1)
    static final class AnonymousClass1<T> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return MultiProcessCoordinator.this.lock(null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.MultiProcessCoordinator$tryLock$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: MultiProcessCoordinator.android.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.datastore.core.MultiProcessCoordinator", f = "MultiProcessCoordinator.android.kt", i = {0, 0, 1, 1, 1}, l = {RectListKt.BitOffsetForGesturable, 92}, m = "tryLock", n = {"$this$withTryLock_u24default$iv", "locked$iv", "$this$withTryLock_u24default$iv", "lock", "locked$iv"}, s = {"L$0", "Z$0", "L$0", "L$2", "Z$0"}, v = 1)
    static final class C06021<T> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        C06021(Continuation<? super C06021> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return MultiProcessCoordinator.this.tryLock(null, this);
        }
    }

    public MultiProcessCoordinator(CoroutineContext context, File file) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(file, "file");
        this.context = context;
        this.file = file;
        this.updateNotifications = MulticastFileObserver.INSTANCE.observe(this.file);
        this.LOCK_SUFFIX = ".lock";
        this.VERSION_SUFFIX = ".version";
        this.LOCK_ERROR_MESSAGE = "fcntl failed: EAGAIN";
        this.inMemoryMutex = MutexKt.Mutex$default(false, 1, null);
        this.lockFile = LazyKt.lazy(new Function0() { // from class: androidx.datastore.core.MultiProcessCoordinator$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MultiProcessCoordinator.lockFile_delegate$lambda$0(this.f$0);
            }
        });
        this.lazySharedCounter = LazyKt.lazy(new Function0() { // from class: androidx.datastore.core.MultiProcessCoordinator$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SharedCounter.INSTANCE.create$datastore_core(new Function0() { // from class: androidx.datastore.core.MultiProcessCoordinator$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return MultiProcessCoordinator.lazySharedCounter$lambda$0$0(multiProcessCoordinator);
                    }
                });
            }
        });
    }

    protected final File getFile() {
        return this.file;
    }

    @Override // androidx.datastore.core.InterProcessCoordinator
    public Flow<Unit> getUpdateNotifications() {
        return this.updateNotifications;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00c4 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00da A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00df A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0100 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    @Override // androidx.datastore.core.InterProcessCoordinator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public <T> Object lock(Function1<? super Continuation<? super T>, ? extends Object> function1, Continuation<? super T> continuation) throws Throwable {
        AnonymousClass1 anonymousClass1;
        Mutex $this$withLock_u24default$iv;
        Object owner$iv;
        MultiProcessCoordinator multiProcessCoordinator;
        Function1<? super Continuation<? super T>, ? extends Object> function12;
        Function1 block;
        FileOutputStream fileOutputStream;
        Throwable th;
        int i;
        Function1 function13;
        int $i$f$withLock;
        FileLock lock;
        Object exclusiveFileLockWithRetryIfDeadlock;
        Object objInvoke;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        }
        AnonymousClass1 anonymousClass12 = anonymousClass1;
        Object $result = anonymousClass12.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        Object owner$iv2 = null;
        try {
            switch (anonymousClass12.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    multiProcessCoordinator = this;
                    Mutex $this$withLock_u24default$iv2 = multiProcessCoordinator.inMemoryMutex;
                    anonymousClass12.L$0 = function1;
                    anonymousClass12.L$1 = $this$withLock_u24default$iv2;
                    anonymousClass12.label = 1;
                    if ($this$withLock_u24default$iv2.lock(null, anonymousClass12) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    function12 = function1;
                    $this$withLock_u24default$iv = $this$withLock_u24default$iv2;
                    owner$iv = null;
                    block = null;
                    fileOutputStream = new FileOutputStream(multiProcessCoordinator.getLockFile());
                    try {
                        FileOutputStream lockFileStream = fileOutputStream;
                        i = 0;
                        try {
                            Companion companion = INSTANCE;
                            anonymousClass12.L$0 = function12;
                            anonymousClass12.L$1 = $this$withLock_u24default$iv;
                            anonymousClass12.L$2 = fileOutputStream;
                            anonymousClass12.label = 2;
                            exclusiveFileLockWithRetryIfDeadlock = companion.getExclusiveFileLockWithRetryIfDeadlock(lockFileStream, anonymousClass12);
                            if (exclusiveFileLockWithRetryIfDeadlock == coroutine_suspended) {
                                function13 = block;
                                $i$f$withLock = 0;
                                lock = null;
                                try {
                                    lock = (FileLock) exclusiveFileLockWithRetryIfDeadlock;
                                    anonymousClass12.L$0 = $this$withLock_u24default$iv;
                                    anonymousClass12.L$1 = fileOutputStream;
                                    anonymousClass12.L$2 = lock;
                                    anonymousClass12.label = 3;
                                    objInvoke = function12.invoke(anonymousClass12);
                                    if (objInvoke == coroutine_suspended) {
                                        return coroutine_suspended;
                                    }
                                    if (lock != null) {
                                        try {
                                            lock.release();
                                            break;
                                        } catch (Throwable th2) {
                                            th = th2;
                                            try {
                                                throw th;
                                            } catch (Throwable th3) {
                                                kotlin.io.CloseableKt.closeFinally(fileOutputStream, th);
                                                throw th3;
                                            }
                                        }
                                    }
                                    try {
                                        kotlin.io.CloseableKt.closeFinally(fileOutputStream, null);
                                        $this$withLock_u24default$iv.unlock(owner$iv);
                                        return objInvoke;
                                    } catch (Throwable th4) {
                                        th = th4;
                                        $this$withLock_u24default$iv.unlock(owner$iv);
                                        throw th;
                                    }
                                } catch (Throwable th5) {
                                    th = th5;
                                    owner$iv2 = owner$iv;
                                    if (lock != null) {
                                        try {
                                            lock.release();
                                        } catch (Throwable th6) {
                                            owner$iv = owner$iv2;
                                            th = th6;
                                            throw th;
                                        }
                                    }
                                    throw th;
                                }
                            } else {
                                return coroutine_suspended;
                            }
                        } catch (Throwable th7) {
                            th = th7;
                            function13 = block;
                            owner$iv2 = owner$iv;
                            $i$f$withLock = 0;
                            lock = null;
                            if (lock != null) {
                            }
                            throw th;
                        }
                    } catch (Throwable th8) {
                        th = th8;
                        throw th;
                    }
                    break;
                case 1:
                    multiProcessCoordinator = this;
                    block = null;
                    owner$iv = null;
                    Mutex $this$withLock_u24default$iv3 = (Mutex) anonymousClass12.L$1;
                    Function1<? super Continuation<? super T>, ? extends Object> function14 = (Function1) anonymousClass12.L$0;
                    ResultKt.throwOnFailure($result);
                    $this$withLock_u24default$iv = $this$withLock_u24default$iv3;
                    function12 = function14;
                    fileOutputStream = new FileOutputStream(multiProcessCoordinator.getLockFile());
                    FileOutputStream lockFileStream2 = fileOutputStream;
                    i = 0;
                    Companion companion2 = INSTANCE;
                    anonymousClass12.L$0 = function12;
                    anonymousClass12.L$1 = $this$withLock_u24default$iv;
                    anonymousClass12.L$2 = fileOutputStream;
                    anonymousClass12.label = 2;
                    exclusiveFileLockWithRetryIfDeadlock = companion2.getExclusiveFileLockWithRetryIfDeadlock(lockFileStream2, anonymousClass12);
                    if (exclusiveFileLockWithRetryIfDeadlock == coroutine_suspended) {
                    }
                    break;
                case 2:
                    function13 = null;
                    $i$f$withLock = 0;
                    lock = null;
                    fileOutputStream = (java.io.Closeable) anonymousClass12.L$2;
                    Mutex $this$withLock_u24default$iv4 = (Mutex) anonymousClass12.L$1;
                    function12 = (Function1) anonymousClass12.L$0;
                    try {
                        ResultKt.throwOnFailure($result);
                        i = 0;
                        owner$iv = null;
                        $this$withLock_u24default$iv = $this$withLock_u24default$iv4;
                        exclusiveFileLockWithRetryIfDeadlock = $result;
                        lock = (FileLock) exclusiveFileLockWithRetryIfDeadlock;
                        anonymousClass12.L$0 = $this$withLock_u24default$iv;
                        anonymousClass12.L$1 = fileOutputStream;
                        anonymousClass12.L$2 = lock;
                        anonymousClass12.label = 3;
                        objInvoke = function12.invoke(anonymousClass12);
                        if (objInvoke == coroutine_suspended) {
                        }
                        if (lock != null) {
                        }
                        kotlin.io.CloseableKt.closeFinally(fileOutputStream, null);
                        $this$withLock_u24default$iv.unlock(owner$iv);
                        return objInvoke;
                    } catch (Throwable th9) {
                        th = th9;
                        owner$iv2 = null;
                        $this$withLock_u24default$iv = $this$withLock_u24default$iv4;
                        if (lock != null) {
                        }
                        throw th;
                    }
                case 3:
                    function13 = null;
                    $i$f$withLock = 0;
                    lock = (FileLock) anonymousClass12.L$2;
                    fileOutputStream = (java.io.Closeable) anonymousClass12.L$1;
                    $this$withLock_u24default$iv = (Mutex) anonymousClass12.L$0;
                    try {
                        ResultKt.throwOnFailure($result);
                        owner$iv = null;
                        objInvoke = $result;
                        if (lock != null) {
                        }
                        kotlin.io.CloseableKt.closeFinally(fileOutputStream, null);
                        $this$withLock_u24default$iv.unlock(owner$iv);
                        return objInvoke;
                    } catch (Throwable th10) {
                        th = th10;
                        if (lock != null) {
                        }
                        throw th;
                    }
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } catch (Throwable th11) {
            th = th11;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:117:0x0187 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0151 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x010b A[Catch: all -> 0x00fa, TryCatch #13 {all -> 0x00fa, blocks: (B:46:0x00f1, B:54:0x010b, B:56:0x0111, B:64:0x0126), top: B:131:0x00f1 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0126 A[Catch: all -> 0x00fa, TRY_LEAVE, TryCatch #13 {all -> 0x00fa, blocks: (B:46:0x00f1, B:54:0x010b, B:56:0x0111, B:64:0x0126), top: B:131:0x00f1 }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0165  */
    @Override // androidx.datastore.core.InterProcessCoordinator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public <T> Object tryLock(Function2<? super Boolean, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super T> continuation) throws Throwable {
        C06021 c06021;
        Mutex $this$withTryLock_u24default$iv;
        boolean locked$iv;
        Mutex $this$withTryLock_u24default$iv2;
        Object objInvoke;
        Throwable th;
        int $i$f$withTryLock;
        boolean locked$iv2;
        int i;
        java.io.Closeable closeable;
        FileLock lock;
        boolean z;
        boolean z2;
        boolean z3;
        FileLock lock2;
        boolean z4;
        Object objInvoke2;
        if (continuation instanceof C06021) {
            c06021 = (C06021) continuation;
            if ((c06021.label & Integer.MIN_VALUE) != 0) {
                c06021.label -= Integer.MIN_VALUE;
            } else {
                c06021 = new C06021(continuation);
            }
        }
        C06021 c060212 = c06021;
        Object $result = c060212.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        Object owner$iv = null;
        switch (c060212.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                $this$withTryLock_u24default$iv = this.inMemoryMutex;
                boolean locked$iv3 = $this$withTryLock_u24default$iv.tryLock(null);
                if (locked$iv3) {
                    try {
                        FileInputStream fileInputStream = new FileInputStream(getLockFile());
                        try {
                            FileInputStream lockFileStream = fileInputStream;
                            try {
                                FileLock lock3 = lockFileStream.getChannel().tryLock(0L, Long.MAX_VALUE, true);
                                lock2 = lock3;
                                z3 = false;
                                z2 = true;
                            } catch (IOException ex) {
                                try {
                                    String message = ex.getMessage();
                                    if (message != null) {
                                        try {
                                            z = StringsKt.startsWith$default(message, this.LOCK_ERROR_MESSAGE, false, 2, (Object) null);
                                            if (z) {
                                                String message2 = ex.getMessage();
                                                if (message2 != null) {
                                                    z3 = false;
                                                    z2 = true;
                                                    if (StringsKt.startsWith$default(message2, DEADLOCK_ERROR_MESSAGE, false, 2, (Object) null)) {
                                                        z4 = true;
                                                    }
                                                    if (z4) {
                                                        throw ex;
                                                    }
                                                } else {
                                                    z2 = true;
                                                    z3 = false;
                                                }
                                                z4 = z3;
                                                if (z4) {
                                                }
                                            } else {
                                                z2 = true;
                                                z3 = false;
                                            }
                                            lock2 = null;
                                        } catch (Throwable th2) {
                                            ex = th2;
                                            owner$iv = null;
                                            $i$f$withTryLock = 0;
                                            locked$iv2 = locked$iv3;
                                            i = 0;
                                            closeable = fileInputStream;
                                            lock = null;
                                            if (lock != null) {
                                            }
                                            throw ex;
                                        }
                                    }
                                    if (z) {
                                    }
                                    lock2 = null;
                                } catch (Throwable th3) {
                                    ex = th3;
                                    owner$iv = null;
                                    $i$f$withTryLock = 0;
                                    locked$iv2 = locked$iv3;
                                    i = 0;
                                    closeable = fileInputStream;
                                    lock = null;
                                }
                            } catch (Throwable th4) {
                                ex = th4;
                                owner$iv = null;
                                $i$f$withTryLock = 0;
                                locked$iv2 = locked$iv3;
                                i = 0;
                                closeable = fileInputStream;
                                lock = null;
                                if (lock != null) {
                                }
                                throw ex;
                            }
                            if (lock2 == null) {
                                z2 = z3;
                            }
                            try {
                                Boolean boolBoxBoolean = Boxing.boxBoolean(z2);
                                c060212.L$0 = $this$withTryLock_u24default$iv;
                                c060212.L$1 = fileInputStream;
                                c060212.L$2 = lock2;
                                c060212.Z$0 = locked$iv3;
                                c060212.label = 2;
                                objInvoke2 = function2.invoke(boolBoxBoolean, c060212);
                                if (objInvoke2 == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                                owner$iv = null;
                                $i$f$withTryLock = 0;
                                locked$iv2 = locked$iv3;
                                i = 0;
                                closeable = fileInputStream;
                                lock = lock2;
                                if (lock != null) {
                                    try {
                                        lock.release();
                                        break;
                                    } catch (Throwable th5) {
                                        th = th5;
                                        locked$iv = locked$iv2;
                                        fileInputStream = closeable;
                                        $this$withTryLock_u24default$iv2 = $this$withTryLock_u24default$iv;
                                        try {
                                            throw th;
                                        } catch (Throwable th6) {
                                            try {
                                                kotlin.io.CloseableKt.closeFinally(fileInputStream, th);
                                                throw th6;
                                            } catch (Throwable th7) {
                                                th = th7;
                                            }
                                        }
                                    }
                                }
                                try {
                                    kotlin.io.CloseableKt.closeFinally(closeable, null);
                                    if (locked$iv2) {
                                        $this$withTryLock_u24default$iv.unlock(owner$iv);
                                    }
                                    return objInvoke2;
                                } catch (Throwable th8) {
                                    th = th8;
                                    $this$withTryLock_u24default$iv2 = $this$withTryLock_u24default$iv;
                                    locked$iv = locked$iv2;
                                }
                            } catch (Throwable th9) {
                                ex = th9;
                                owner$iv = null;
                                $i$f$withTryLock = 0;
                                locked$iv2 = locked$iv3;
                                i = 0;
                                closeable = fileInputStream;
                                lock = lock2;
                                if (lock != null) {
                                    try {
                                        lock.release();
                                    } catch (Throwable th10) {
                                        th = th10;
                                        locked$iv = locked$iv2;
                                        fileInputStream = closeable;
                                        $this$withTryLock_u24default$iv2 = $this$withTryLock_u24default$iv;
                                        throw th;
                                    }
                                }
                                throw ex;
                            }
                        } catch (Throwable th11) {
                            th = th11;
                            owner$iv = null;
                            locked$iv = locked$iv3;
                            $this$withTryLock_u24default$iv2 = $this$withTryLock_u24default$iv;
                            throw th;
                        }
                    } catch (Throwable th12) {
                        th = th12;
                        owner$iv = null;
                        locked$iv = locked$iv3;
                        $this$withTryLock_u24default$iv2 = $this$withTryLock_u24default$iv;
                    }
                } else {
                    try {
                        Boolean boolBoxBoolean2 = Boxing.boxBoolean(false);
                        c060212.L$0 = $this$withTryLock_u24default$iv;
                        c060212.Z$0 = locked$iv3;
                        c060212.label = 1;
                        objInvoke = function2.invoke(boolBoxBoolean2, c060212);
                        if (objInvoke == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        owner$iv = null;
                        locked$iv = locked$iv3;
                        $this$withTryLock_u24default$iv2 = $this$withTryLock_u24default$iv;
                        if (locked$iv) {
                            $this$withTryLock_u24default$iv2.unlock(owner$iv);
                        }
                        return objInvoke;
                    } catch (Throwable th13) {
                        th = th13;
                        owner$iv = null;
                        locked$iv = locked$iv3;
                        $this$withTryLock_u24default$iv2 = $this$withTryLock_u24default$iv;
                    }
                }
                if (locked$iv) {
                    $this$withTryLock_u24default$iv2.unlock(owner$iv);
                }
                throw th;
            case 1:
                locked$iv = c060212.Z$0;
                $this$withTryLock_u24default$iv2 = (Mutex) c060212.L$0;
                try {
                    ResultKt.throwOnFailure($result);
                    objInvoke = $result;
                    if (locked$iv) {
                    }
                    return objInvoke;
                } catch (Throwable th14) {
                    th = th14;
                }
                break;
            case 2:
                i = 0;
                $i$f$withTryLock = 0;
                locked$iv2 = c060212.Z$0;
                lock = (FileLock) c060212.L$2;
                closeable = (java.io.Closeable) c060212.L$1;
                $this$withTryLock_u24default$iv = (Mutex) c060212.L$0;
                try {
                    ResultKt.throwOnFailure($result);
                    objInvoke2 = $result;
                    if (lock != null) {
                    }
                    kotlin.io.CloseableKt.closeFinally(closeable, null);
                    if (locked$iv2) {
                    }
                    return objInvoke2;
                } catch (Throwable th15) {
                    ex = th15;
                    if (lock != null) {
                    }
                    throw ex;
                }
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @Override // androidx.datastore.core.InterProcessCoordinator
    public Object getVersion(Continuation<? super Integer> continuation) {
        if (!this.lazySharedCounter.isInitialized()) {
            return BuildersKt.withContext(this.context, new MultiProcessCoordinator$getVersion$$inlined$withLazyCounter$1(this, null), continuation);
        }
        SharedCounter it = getSharedCounter();
        return Boxing.boxInt(it.getValue());
    }

    @Override // androidx.datastore.core.InterProcessCoordinator
    public Object incrementAndGetVersion(Continuation<? super Integer> continuation) {
        if (!this.lazySharedCounter.isInitialized()) {
            return BuildersKt.withContext(this.context, new MultiProcessCoordinator$incrementAndGetVersion$$inlined$withLazyCounter$1(this, null), continuation);
        }
        SharedCounter it = getSharedCounter();
        return Boxing.boxInt(it.incrementAndGetValue());
    }

    private final File getLockFile() {
        return (File) this.lockFile.getValue();
    }

    static final File lockFile_delegate$lambda$0(MultiProcessCoordinator this$0) throws IOException {
        File lockFile = this$0.fileWithSuffix(this$0.LOCK_SUFFIX);
        this$0.createIfNotExists(lockFile);
        return lockFile;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final File lazySharedCounter$lambda$0$0(MultiProcessCoordinator this$0) throws IOException {
        File versionFile = this$0.fileWithSuffix(this$0.VERSION_SUFFIX);
        this$0.createIfNotExists(versionFile);
        return versionFile;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SharedCounter getSharedCounter() {
        return this.lazySharedCounter.getValue();
    }

    private final File fileWithSuffix(String suffix) {
        return new File(this.file.getAbsolutePath() + suffix);
    }

    private final void createIfNotExists(File $this$createIfNotExists) throws IOException {
        createParentDirectories($this$createIfNotExists);
        if (!$this$createIfNotExists.exists()) {
            $this$createIfNotExists.createNewFile();
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

    private final <T> Object withLazyCounter(Function2<? super SharedCounter, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super T> continuation) {
        if (this.lazySharedCounter.isInitialized()) {
            return function2.invoke(getSharedCounter(), continuation);
        }
        return BuildersKt.withContext(this.context, new AnonymousClass2(function2, this, null), continuation);
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: androidx.datastore.core.MultiProcessCoordinator$withLazyCounter$2, reason: invalid class name */
    /* JADX INFO: compiled from: MultiProcessCoordinator.android.kt */
    @Metadata(d1 = {"\u0000\b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.datastore.core.MultiProcessCoordinator$withLazyCounter$2", f = "MultiProcessCoordinator.android.kt", i = {}, l = {166}, m = "invokeSuspend", n = {}, s = {}, v = 1)
    public static final class AnonymousClass2<T> extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super T>, Object> {
        final /* synthetic */ Function2<SharedCounter, Continuation<? super T>, Object> $block;
        int label;
        final /* synthetic */ MultiProcessCoordinator this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(Function2<? super SharedCounter, ? super Continuation<? super T>, ? extends Object> function2, MultiProcessCoordinator multiProcessCoordinator, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$block = function2;
            this.this$0 = multiProcessCoordinator;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$block, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super T> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    Function2<SharedCounter, Continuation<? super T>, Object> function2 = this.$block;
                    SharedCounter sharedCounter = this.this$0.getSharedCounter();
                    this.label = 1;
                    Object objInvoke = function2.invoke(sharedCounter, this);
                    return objInvoke == coroutine_suspended ? coroutine_suspended : objInvoke;
                case 1:
                    ResultKt.throwOnFailure($result);
                    return $result;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        public final Object invokeSuspend$$forInline(Object $result) {
            return this.$block.invoke(this.this$0.getSharedCounter(), this);
        }
    }

    /* JADX INFO: compiled from: MultiProcessCoordinator.android.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0082@¢\u0006\u0002\u0010\bR\u000e\u0010\t\u001a\u00020\nX\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\fX\u0082D¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Landroidx/datastore/core/MultiProcessCoordinator$Companion;", "", "<init>", "()V", "getExclusiveFileLockWithRetryIfDeadlock", "Ljava/nio/channels/FileLock;", "lockFileStream", "Ljava/io/FileOutputStream;", "(Ljava/io/FileOutputStream;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "DEADLOCK_ERROR_MESSAGE", "", "INITIAL_WAIT_MILLIS", "", "MAX_WAIT_MILLIS", "datastore-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:31:0x00a5  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x0060 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x009d -> B:29:0x009f). Please report as a decompilation issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object getExclusiveFileLockWithRetryIfDeadlock(FileOutputStream lockFileStream, Continuation<? super FileLock> continuation) throws IOException {
            MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1 multiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1;
            long backoff;
            FileOutputStream lockFileStream2;
            Object obj;
            MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1 multiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$12;
            FileOutputStream lockFileStream3;
            long backoff2;
            if (continuation instanceof MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1) {
                multiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1 = (MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1) continuation;
                if ((multiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1.label & Integer.MIN_VALUE) != 0) {
                    multiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1.label -= Integer.MIN_VALUE;
                } else {
                    multiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1 = new MultiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1(this, continuation);
                }
            }
            Object $result = multiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1.result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (multiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    backoff = MultiProcessCoordinator.INITIAL_WAIT_MILLIS;
                    lockFileStream2 = lockFileStream;
                    obj = coroutine_suspended;
                    multiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$12 = multiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1;
                    if (backoff > MultiProcessCoordinator.MAX_WAIT_MILLIS) {
                        try {
                        } catch (IOException ex) {
                            String message = ex.getMessage();
                            boolean z = false;
                            if (message != null && StringsKt.contains$default((CharSequence) message, (CharSequence) MultiProcessCoordinator.DEADLOCK_ERROR_MESSAGE, false, 2, (Object) null)) {
                                z = true;
                            }
                            if (!z) {
                                throw ex;
                            }
                            multiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$12.L$0 = lockFileStream2;
                            multiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$12.J$0 = backoff;
                            multiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$12.label = 1;
                            if (DelayKt.delay(backoff, multiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$12) == obj) {
                                return obj;
                            }
                            lockFileStream3 = lockFileStream2;
                            backoff2 = backoff;
                            break;
                        }
                        FileLock fileLockLock = lockFileStream2.getChannel().lock(0L, Long.MAX_VALUE, false);
                        Intrinsics.checkNotNullExpressionValue(fileLockLock, "lock(...)");
                        return fileLockLock;
                    }
                    FileLock fileLockLock2 = lockFileStream2.getChannel().lock(0L, Long.MAX_VALUE, false);
                    Intrinsics.checkNotNullExpressionValue(fileLockLock2, "lock(...)");
                    return fileLockLock2;
                case 1:
                    backoff2 = multiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1.J$0;
                    FileOutputStream lockFileStream4 = (FileOutputStream) multiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1.L$0;
                    ResultKt.throwOnFailure($result);
                    lockFileStream3 = lockFileStream4;
                    obj = coroutine_suspended;
                    multiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$12 = multiProcessCoordinator$Companion$getExclusiveFileLockWithRetryIfDeadlock$1;
                    backoff = backoff2 * ((long) 2);
                    lockFileStream2 = lockFileStream3;
                    if (backoff > MultiProcessCoordinator.MAX_WAIT_MILLIS) {
                    }
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }
}
