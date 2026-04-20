package androidx.datastore.core;

import androidx.compose.runtime.ComposerKt;
import androidx.exifinterface.media.ExifInterface;
import com.google.firebase.firestore.model.Values;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
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
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007¢\u0006\u0004\b\b\u0010\tJ\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00028\u0000H\u0096@¢\u0006\u0002\u0010\r¨\u0006\u000e"}, d2 = {"Landroidx/datastore/core/FileWriteScope;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/datastore/core/FileReadScope;", "Landroidx/datastore/core/WriteScope;", "file", "Ljava/io/File;", "serializer", "Landroidx/datastore/core/Serializer;", "<init>", "(Ljava/io/File;Landroidx/datastore/core/Serializer;)V", "writeData", "", Values.VECTOR_MAP_VECTORS_KEY, "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "datastore-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class FileWriteScope<T> extends FileReadScope<T> implements WriteScope<T> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FileWriteScope(File file, Serializer<T> serializer) {
        super(file, serializer);
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(serializer, "serializer");
    }

    /* JADX INFO: renamed from: androidx.datastore.core.FileWriteScope$writeData$2, reason: invalid class name */
    /* JADX INFO: compiled from: FileStorage.kt */
    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.datastore.core.FileWriteScope$writeData$2", f = "FileStorage.kt", i = {0}, l = {ComposerKt.referenceKey}, m = "invokeSuspend", n = {"stream"}, s = {"L$1"}, v = 1)
    static final class AnonymousClass2 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final /* synthetic */ T $value;
        Object L$0;
        Object L$1;
        int label;
        final /* synthetic */ FileWriteScope<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(FileWriteScope<T> fileWriteScope, T t, Continuation<? super AnonymousClass2> continuation) {
            super(1, continuation);
            this.this$0 = fileWriteScope;
            this.$value = t;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new AnonymousClass2(this.this$0, this.$value, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) throws Exception {
            FileOutputStream fileOutputStream;
            FileOutputStream stream;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            try {
                try {
                    switch (this.label) {
                        case 0:
                            ResultKt.throwOnFailure($result);
                            FileOutputStream fos = new FileOutputStream(this.this$0.getFile());
                            fileOutputStream = fos;
                            FileWriteScope<T> fileWriteScope = this.this$0;
                            T t = this.$value;
                            stream = fileOutputStream;
                            Serializer<T> serializer = fileWriteScope.getSerializer();
                            UncloseableOutputStream uncloseableOutputStream = new UncloseableOutputStream(stream);
                            this.L$0 = fileOutputStream;
                            this.L$1 = stream;
                            this.label = 1;
                            if (serializer.writeTo(t, uncloseableOutputStream, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            break;
                        case 1:
                            stream = (FileOutputStream) this.L$1;
                            fileOutputStream = (java.io.Closeable) this.L$0;
                            ResultKt.throwOnFailure($result);
                            break;
                        default:
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    stream.getFD().sync();
                    Unit unit = Unit.INSTANCE;
                    kotlin.io.CloseableKt.closeFinally(fileOutputStream, null);
                    return Unit.INSTANCE;
                } finally {
                }
            } catch (Exception e) {
                if (e instanceof FileNotFoundException) {
                    throw DirectBootExceptionUtilKt.wrapExceptionIfDueToDirectBoot(this.this$0.getFile().getParent(), e);
                }
                throw e;
            }
        }
    }

    @Override // androidx.datastore.core.WriteScope
    public Object writeData(T t, Continuation<? super Unit> continuation) throws IOException {
        checkNotClosed();
        Object objRunFileDiagnosticsIfNotCorruption = FileStorageKt.runFileDiagnosticsIfNotCorruption(getFile(), new AnonymousClass2(this, t, null), continuation);
        return objRunFileDiagnosticsIfNotCorruption == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objRunFileDiagnosticsIfNotCorruption : Unit.INSTANCE;
    }
}
