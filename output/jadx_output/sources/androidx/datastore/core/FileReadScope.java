package androidx.datastore.core;

import androidx.exifinterface.media.ExifInterface;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FileStorage.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0010\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u000e\u0010\u000f\u001a\u00028\u0000H\u0096@¢\u0006\u0002\u0010\u0010J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0012H\u0004R\u0014\u0010\u0003\u001a\u00020\u0004X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001a\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Landroidx/datastore/core/FileReadScope;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/datastore/core/ReadScope;", "file", "Ljava/io/File;", "serializer", "Landroidx/datastore/core/Serializer;", "<init>", "(Ljava/io/File;Landroidx/datastore/core/Serializer;)V", "getFile", "()Ljava/io/File;", "getSerializer", "()Landroidx/datastore/core/Serializer;", "closed", "Ljava/util/concurrent/atomic/AtomicBoolean;", "readData", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "close", "", "checkNotClosed", "datastore-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
public class FileReadScope<T> implements ReadScope<T> {
    private final java.util.concurrent.atomic.AtomicBoolean closed;
    private final File file;
    private final Serializer<T> serializer;

    @Override // androidx.datastore.core.ReadScope
    public Object readData(Continuation<? super T> continuation) {
        return readData$suspendImpl(this, continuation);
    }

    public FileReadScope(File file, Serializer<T> serializer) {
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        this.file = file;
        this.serializer = serializer;
        this.closed = new java.util.concurrent.atomic.AtomicBoolean(false);
    }

    protected final File getFile() {
        return this.file;
    }

    protected final Serializer<T> getSerializer() {
        return this.serializer;
    }

    /* JADX INFO: renamed from: androidx.datastore.core.FileReadScope$readData$2, reason: invalid class name */
    /* JADX INFO: compiled from: FileStorage.kt */
    @Metadata(d1 = {"\u0000\u0004\n\u0002\b\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001H\n"}, d2 = {"<anonymous>", ExifInterface.GPS_DIRECTION_TRUE}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.datastore.core.FileReadScope$readData$2", f = "FileStorage.kt", i = {}, l = {162, 170}, m = "invokeSuspend", n = {}, s = {}, v = 1)
    static final class AnonymousClass2 extends SuspendLambda implements Function1<Continuation<? super T>, Object> {
        Object L$0;
        int label;
        final /* synthetic */ FileReadScope<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(FileReadScope<T> fileReadScope, Continuation<? super AnonymousClass2> continuation) {
            super(1, continuation);
            this.this$0 = fileReadScope;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new AnonymousClass2(this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super T> continuation) {
            return ((AnonymousClass2) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:34:0x0079 A[Catch: Exception -> 0x00af, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x00af, blocks: (B:46:0x00ab, B:47:0x00ae, B:34:0x0079, B:44:0x00a9, B:7:0x0017, B:35:0x0088), top: B:58:0x0007, inners: #4, #6 }] */
        /* JADX WARN: Removed duplicated region for block: B:52:0x00b7  */
        /* JADX WARN: Removed duplicated region for block: B:53:0x00c9  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x00ce  */
        /* JADX WARN: Type inference failed for: r1v0, types: [int] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.io.Closeable] */
        /* JADX WARN: Type inference failed for: r1v16, types: [java.io.Closeable] */
        /* JADX WARN: Type inference failed for: r1v28 */
        /* JADX WARN: Type inference failed for: r1v29 */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) throws Exception {
            Exception e;
            Object obj2;
            FileInputStream fileInputStream;
            Object obj3;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ?? r1 = this.label;
            try {
                try {
                    try {
                        try {
                        } catch (Exception e2) {
                            e = e2;
                            if (e instanceof FileNotFoundException) {
                                throw e;
                            }
                            throw DirectBootExceptionUtilKt.wrapExceptionIfDueToDirectBoot(this.this$0.getFile().getParent(), e);
                        }
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                } finally {
                }
            } catch (FileNotFoundException e3) {
                if (this.this$0.getFile().exists()) {
                }
            }
            switch (r1) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    fileInputStream = new FileInputStream(this.this$0.getFile());
                    this.L$0 = fileInputStream;
                    this.label = 1;
                    Object from = this.this$0.getSerializer().readFrom(fileInputStream, this);
                    if (from == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    obj3 = obj;
                    obj = from;
                    try {
                        kotlin.io.CloseableKt.closeFinally(fileInputStream, null);
                        return obj;
                    } catch (FileNotFoundException e4) {
                        obj = obj3;
                        if (this.this$0.getFile().exists()) {
                            return this.this$0.getSerializer().getDefaultValue();
                        }
                        FileInputStream fileInputStream2 = new FileInputStream(this.this$0.getFile());
                        this.L$0 = fileInputStream2;
                        this.label = 2;
                        Object from2 = this.this$0.getSerializer().readFrom(fileInputStream2, this);
                        if (from2 == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        obj2 = obj;
                        obj = from2;
                        r1 = fileInputStream2;
                        try {
                            kotlin.io.CloseableKt.closeFinally(r1, null);
                            return obj;
                        } catch (Exception e5) {
                            e = e5;
                            if (e instanceof FileNotFoundException) {
                            }
                        }
                    }
                    break;
                case 1:
                    fileInputStream = (java.io.Closeable) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    obj3 = obj;
                    kotlin.io.CloseableKt.closeFinally(fileInputStream, null);
                    return obj;
                case 2:
                    java.io.Closeable closeable = (java.io.Closeable) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    obj2 = obj;
                    r1 = closeable;
                    kotlin.io.CloseableKt.closeFinally(r1, null);
                    return obj;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    static /* synthetic */ <T> Object readData$suspendImpl(FileReadScope<T> fileReadScope, Continuation<? super T> continuation) {
        fileReadScope.checkNotClosed();
        return FileStorageKt.runFileDiagnosticsIfNotCorruption(((FileReadScope) fileReadScope).file, new AnonymousClass2(fileReadScope, null), continuation);
    }

    @Override // androidx.datastore.core.Closeable
    public void close() {
        this.closed.set(true);
    }

    protected final void checkNotClosed() {
        if (this.closed.get()) {
            throw new IllegalStateException("This scope has already been closed.".toString());
        }
    }
}
