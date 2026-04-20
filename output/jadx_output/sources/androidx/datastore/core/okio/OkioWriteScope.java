package androidx.datastore.core.okio;

import androidx.datastore.core.DirectBootExceptionUtilKt;
import androidx.datastore.core.WriteScope;
import androidx.exifinterface.media.ExifInterface;
import com.google.firebase.firestore.model.Values;
import java.io.Closeable;
import java.io.FileNotFoundException;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import okio.BufferedSink;
import okio.FileHandle;
import okio.FileSystem;
import okio.Okio;
import okio.Path;

/* JADX INFO: compiled from: OkioStorage.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B%\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\t¢\u0006\u0004\b\n\u0010\u000bJ\u0016\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00028\u0000H\u0096@¢\u0006\u0002\u0010\u000f¨\u0006\u0010"}, d2 = {"Landroidx/datastore/core/okio/OkioWriteScope;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/datastore/core/okio/OkioReadScope;", "Landroidx/datastore/core/WriteScope;", "fileSystem", "Lokio/FileSystem;", "path", "Lokio/Path;", "serializer", "Landroidx/datastore/core/okio/OkioSerializer;", "<init>", "(Lokio/FileSystem;Lokio/Path;Landroidx/datastore/core/okio/OkioSerializer;)V", "writeData", "", Values.VECTOR_MAP_VECTORS_KEY, "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "datastore-core-okio"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class OkioWriteScope<T> extends OkioReadScope<T> implements WriteScope<T> {

    /* JADX INFO: renamed from: androidx.datastore.core.okio.OkioWriteScope$writeData$1, reason: invalid class name */
    /* JADX INFO: compiled from: OkioStorage.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.datastore.core.okio.OkioWriteScope", f = "OkioStorage.kt", i = {0, 0, 0}, l = {214}, m = "writeData", n = {"$this$use$iv", "handle", "$this$use$iv"}, s = {"L$0", "L$1", "L$2"}, v = 1)
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ OkioWriteScope<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(OkioWriteScope<T> okioWriteScope, Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
            this.this$0 = okioWriteScope;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.writeData(null, this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OkioWriteScope(FileSystem fileSystem, Path path, OkioSerializer<T> serializer) {
        super(fileSystem, path, serializer);
        Intrinsics.checkNotNullParameter(fileSystem, "fileSystem");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(serializer, "serializer");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00d9 A[Catch: all -> 0x00d0, TRY_LEAVE, TryCatch #0 {all -> 0x00d0, blocks: (B:46:0x00d9, B:53:0x00e8, B:40:0x00cc, B:37:0x00c6), top: B:73:0x0029, inners: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00e8 A[Catch: all -> 0x00d0, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x00d0, blocks: (B:46:0x00d9, B:53:0x00e8, B:40:0x00cc, B:37:0x00c6), top: B:73:0x0029, inners: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00b2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x00c6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r5v0, types: [int] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v17 */
    /* JADX WARN: Type inference failed for: r5v18 */
    /* JADX WARN: Type inference failed for: r5v19 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v21 */
    /* JADX WARN: Type inference failed for: r5v22 */
    /* JADX WARN: Type inference failed for: r5v23 */
    /* JADX WARN: Type inference failed for: r5v3, types: [androidx.datastore.core.okio.OkioWriteScope] */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8, types: [androidx.datastore.core.okio.OkioWriteScope] */
    /* JADX WARN: Type inference failed for: r5v9 */
    @Override // androidx.datastore.core.WriteScope
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object writeData(T t, Continuation<? super Unit> continuation) throws Exception {
        AnonymousClass1 anonymousClass1;
        int i;
        Closeable closeableOpenReadWrite;
        Throwable th;
        FileHandle fileHandle;
        Closeable closeableBuffer;
        int i2;
        OkioSerializer serializer;
        Throwable th2;
        ?? r5;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(this, continuation);
            }
        }
        AnonymousClass1 anonymousClass12 = anonymousClass1;
        Object obj = anonymousClass12.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ?? r52 = anonymousClass12.label;
        try {
        } catch (Throwable th3) {
            th = th3;
            i = i2;
        }
        switch (r52) {
            case 0:
                ResultKt.throwOnFailure(obj);
                r52 = this;
                r52.checkClose();
                try {
                    closeableOpenReadWrite = r52.getFileSystem().openReadWrite(r52.getPath());
                    i = 0;
                    th = null;
                    try {
                        fileHandle = (FileHandle) closeableOpenReadWrite;
                        closeableBuffer = Okio.buffer(FileHandle.sink$default(fileHandle, 0L, 1, null));
                        try {
                            serializer = r52.getSerializer();
                            anonymousClass12.L$0 = closeableOpenReadWrite;
                            anonymousClass12.L$1 = fileHandle;
                            anonymousClass12.L$2 = closeableBuffer;
                            anonymousClass12.label = 1;
                        } catch (Throwable th4) {
                            th = th4;
                            i2 = 0;
                            th2 = th;
                            if (closeableBuffer != null) {
                                try {
                                    closeableBuffer.close();
                                } catch (Throwable th5) {
                                    ExceptionsKt.addSuppressed(th2, th5);
                                }
                            }
                            r5 = r52;
                        }
                        break;
                    } catch (Throwable th6) {
                        th = th6;
                        th = th;
                        if (closeableOpenReadWrite != null) {
                            try {
                                closeableOpenReadWrite.close();
                            } catch (Throwable th7) {
                                ExceptionsKt.addSuppressed(th, th7);
                            }
                        }
                        r52 = r52;
                        break;
                    }
                    if (serializer.writeTo(t, (BufferedSink) closeableBuffer, anonymousClass12) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    i2 = 0;
                    th2 = null;
                    r52 = r52;
                    fileHandle.flush();
                    Unit unit = Unit.INSTANCE;
                    r5 = r52;
                    if (closeableBuffer != null) {
                        try {
                            closeableBuffer.close();
                            r5 = r52;
                        } catch (Throwable th8) {
                            th2 = th8;
                            r5 = r52;
                        }
                        break;
                    }
                    if (th2 == null) {
                        throw th2;
                    }
                    Unit unit2 = Unit.INSTANCE;
                    r52 = r5;
                    if (closeableOpenReadWrite != null) {
                        try {
                            closeableOpenReadWrite.close();
                            r52 = r5;
                        } catch (Throwable th9) {
                            th = th9;
                            r52 = r5;
                        }
                        break;
                    }
                    if (th == null) {
                        return Unit.INSTANCE;
                    }
                    throw th;
                } catch (Exception e) {
                    if (e instanceof FileNotFoundException) {
                        throw DirectBootExceptionUtilKt.wrapExceptionIfDueToDirectBoot(String.valueOf(r52.getPath().parent()), e);
                    }
                    throw e;
                }
            case 1:
                r52 = this;
                i2 = 0;
                th2 = null;
                closeableBuffer = (Closeable) anonymousClass12.L$2;
                fileHandle = (FileHandle) anonymousClass12.L$1;
                th = null;
                closeableOpenReadWrite = (Closeable) anonymousClass12.L$0;
                try {
                    ResultKt.throwOnFailure(obj);
                    r52 = r52;
                    fileHandle.flush();
                    Unit unit3 = Unit.INSTANCE;
                    r5 = r52;
                    if (closeableBuffer != null) {
                    }
                } catch (Throwable th10) {
                    th = th10;
                    th2 = th;
                    if (closeableBuffer != null) {
                    }
                    r5 = r52;
                }
                if (th2 == null) {
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
