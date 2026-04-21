package androidx.datastore.core.okio;

import androidx.datastore.core.DirectBootExceptionUtilKt;
import androidx.datastore.core.ReadScope;
import androidx.exifinterface.media.ExifInterface;
import java.io.Closeable;
import java.io.FileNotFoundException;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import okio.BufferedSource;
import okio.FileSystem;
import okio.Okio;
import okio.Path;

/* JADX INFO: compiled from: OkioStorage.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0010\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B%\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\b¢\u0006\u0004\b\t\u0010\nJ\u000e\u0010\u0013\u001a\u00028\u0000H\u0096@¢\u0006\u0002\u0010\u0014J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u0016H\u0004R\u0014\u0010\u0003\u001a\u00020\u0004X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\u0005\u001a\u00020\u0006X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\bX\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Landroidx/datastore/core/okio/OkioReadScope;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/datastore/core/ReadScope;", "fileSystem", "Lokio/FileSystem;", "path", "Lokio/Path;", "serializer", "Landroidx/datastore/core/okio/OkioSerializer;", "<init>", "(Lokio/FileSystem;Lokio/Path;Landroidx/datastore/core/okio/OkioSerializer;)V", "getFileSystem", "()Lokio/FileSystem;", "getPath", "()Lokio/Path;", "getSerializer", "()Landroidx/datastore/core/okio/OkioSerializer;", "closed", "Landroidx/datastore/core/okio/AtomicBoolean;", "readData", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "close", "", "checkClose", "datastore-core-okio"}, k = 1, mv = {2, 0, 0}, xi = 48)
public class OkioReadScope<T> implements ReadScope<T> {
    private final AtomicBoolean closed;
    private final FileSystem fileSystem;
    private final Path path;
    private final OkioSerializer<T> serializer;

    /* JADX INFO: renamed from: androidx.datastore.core.okio.OkioReadScope$readData$1, reason: invalid class name */
    /* JADX INFO: compiled from: OkioStorage.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.datastore.core.okio.OkioReadScope", f = "OkioStorage.kt", i = {0, 0, 1, 1}, l = {170, 177}, m = "readData$suspendImpl", n = {"$this", "$this$use$iv$iv", "$this", "$this$use$iv$iv"}, s = {"L$0", "L$1", "L$0", "L$1"}, v = 1)
    static final class AnonymousClass1<T> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ OkioReadScope<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(OkioReadScope<T> okioReadScope, Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
            this.this$0 = okioReadScope;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return OkioReadScope.readData$suspendImpl(this.this$0, this);
        }
    }

    @Override // androidx.datastore.core.ReadScope
    public Object readData(Continuation<? super T> continuation) {
        return readData$suspendImpl(this, continuation);
    }

    public OkioReadScope(FileSystem fileSystem, Path path, OkioSerializer<T> serializer) {
        Intrinsics.checkNotNullParameter(fileSystem, "fileSystem");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        this.fileSystem = fileSystem;
        this.path = path;
        this.serializer = serializer;
        this.closed = new AtomicBoolean(false);
    }

    protected final FileSystem getFileSystem() {
        return this.fileSystem;
    }

    protected final Path getPath() {
        return this.path;
    }

    protected final OkioSerializer<T> getSerializer() {
        return this.serializer;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x00f6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0107 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00b5 A[Catch: FileNotFoundException -> 0x00b6, TRY_LEAVE, TryCatch #6 {FileNotFoundException -> 0x00b6, blocks: (B:48:0x00b5, B:43:0x00a9, B:23:0x005f, B:40:0x00a3), top: B:98:0x005f, outer: #3, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0119 A[Catch: Exception -> 0x011a, TRY_LEAVE, TryCatch #3 {Exception -> 0x011a, blocks: (B:77:0x0119, B:72:0x010d, B:52:0x00c3, B:48:0x00b5, B:43:0x00a9, B:23:0x005f, B:69:0x0107), top: B:93:0x0022, inners: #6, #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0091 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x00a3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r8v0, types: [androidx.datastore.core.okio.OkioReadScope] */
    /* JADX WARN: Type inference failed for: r8v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v10, types: [androidx.datastore.core.okio.OkioReadScope] */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r8v3, types: [androidx.datastore.core.okio.OkioReadScope, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r8v7, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r8v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static /* synthetic */ <T> Object readData$suspendImpl(OkioReadScope<T> okioReadScope, Continuation<? super T> continuation) throws Exception {
        AnonymousClass1 anonymousClass1;
        ?? Buffer;
        OkioReadScope<T> okioReadScope2;
        Throwable th;
        Throwable th2;
        Object from;
        Closeable closeableBuffer;
        Throwable th3;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(okioReadScope, continuation);
            }
        }
        Object obj = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        Object from2 = null;
        try {
            switch (anonymousClass1.label) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    okioReadScope2 = okioReadScope;
                    okioReadScope2.checkClose();
                    try {
                        Buffer = Okio.buffer(((OkioReadScope) okioReadScope2).fileSystem.source(((OkioReadScope) okioReadScope2).path));
                        th = null;
                        try {
                            OkioSerializer<T> okioSerializer = ((OkioReadScope) okioReadScope2).serializer;
                            anonymousClass1.L$0 = okioReadScope2;
                            anonymousClass1.L$1 = Buffer;
                            anonymousClass1.label = 1;
                            from = okioSerializer.readFrom((BufferedSource) Buffer, anonymousClass1);
                            break;
                        } catch (Throwable th4) {
                            th2 = th4;
                            th = th2;
                            if (Buffer != 0) {
                            }
                            from = null;
                        }
                        if (from == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        Buffer = Buffer;
                        if (Buffer != 0) {
                            try {
                                Buffer.close();
                            } catch (Throwable th5) {
                                th = th5;
                            }
                            break;
                        }
                        if (th != null) {
                            return from;
                        }
                        throw th;
                    } catch (FileNotFoundException e) {
                        Buffer = okioReadScope2;
                        if (!((OkioReadScope) Buffer).fileSystem.exists(((OkioReadScope) Buffer).path)) {
                            return ((OkioReadScope) Buffer).serializer.getDefaultValue();
                        }
                        closeableBuffer = Okio.buffer(((OkioReadScope) Buffer).fileSystem.source(((OkioReadScope) Buffer).path));
                        th3 = null;
                        try {
                            OkioSerializer<T> okioSerializer2 = ((OkioReadScope) Buffer).serializer;
                            anonymousClass1.L$0 = Buffer;
                            anonymousClass1.L$1 = closeableBuffer;
                            anonymousClass1.label = 2;
                            from2 = okioSerializer2.readFrom((BufferedSource) closeableBuffer, anonymousClass1);
                            break;
                        } catch (Throwable th6) {
                            th = th6;
                            th3 = th;
                            if (closeableBuffer == null) {
                            }
                        }
                        if (from2 == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        if (closeableBuffer != null) {
                        }
                        if (th3 != null) {
                        }
                    }
                    break;
                case 1:
                    th = null;
                    Buffer = (Closeable) anonymousClass1.L$1;
                    okioReadScope2 = (OkioReadScope) anonymousClass1.L$0;
                    try {
                        ResultKt.throwOnFailure(obj);
                        from = obj;
                        Buffer = Buffer;
                        if (Buffer != 0) {
                        }
                    } catch (Throwable th7) {
                        th2 = th7;
                        th = th2;
                        if (Buffer != 0) {
                            try {
                                Buffer.close();
                            } catch (Throwable th8) {
                                ExceptionsKt.addSuppressed(th, th8);
                            }
                        }
                        from = null;
                        break;
                    }
                    if (th != null) {
                    }
                    break;
                case 2:
                    th3 = null;
                    closeableBuffer = (Closeable) anonymousClass1.L$1;
                    Buffer = (OkioReadScope) anonymousClass1.L$0;
                    try {
                        ResultKt.throwOnFailure(obj);
                        from2 = obj;
                        if (closeableBuffer != null) {
                            try {
                                closeableBuffer.close();
                            } catch (Throwable th9) {
                                th3 = th9;
                            }
                        }
                        break;
                    } catch (Throwable th10) {
                        th = th10;
                        th3 = th;
                        if (closeableBuffer == null) {
                            try {
                                closeableBuffer.close();
                            } catch (Throwable th11) {
                                ExceptionsKt.addSuppressed(th3, th11);
                            }
                            break;
                        }
                    }
                    if (th3 != null) {
                        return from2;
                    }
                    throw th3;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } catch (Exception e2) {
            if (e2 instanceof FileNotFoundException) {
                throw DirectBootExceptionUtilKt.wrapExceptionIfDueToDirectBoot(String.valueOf(((OkioReadScope) Buffer).path.parent()), e2);
            }
            throw e2;
        }
    }

    @Override // androidx.datastore.core.Closeable
    public void close() {
        this.closed.set(true);
    }

    protected final void checkClose() {
        if (this.closed.get()) {
            throw new IllegalStateException("This scope has already been closed.".toString());
        }
    }
}
