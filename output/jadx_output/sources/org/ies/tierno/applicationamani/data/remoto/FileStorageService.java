package org.ies.tierno.applicationamani.data.remoto;

import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.webkit.MimeTypeMap;
import androidx.compose.ui.spatial.RectListKt;
import androidx.media3.common.MimeTypes;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.android.gms.tasks.Task;
import com.google.firebase.storage.StorageKt;
import com.google.firebase.storage.StorageMetadata;
import com.google.firebase.storage.StorageReference;
import com.google.firebase.storage.UploadTask;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.tasks.TasksKt;
import org.ies.tierno.applicationamani.data.remoto.FileStorageService;
import org.ies.tierno.applicationamani.domain.models.AttachmentType;

/* JADX INFO: compiled from: FileStorageService.kt */
/* JADX INFO: loaded from: classes10.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0017B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u001e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0086@¢\u0006\u0002\u0010\u0010J\u001e\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u000e\u001a\u00020\u000fH\u0086@¢\u0006\u0002\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\rH\u0002J\u000e\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;", "", "firebaseInstance", "Lorg/ies/tierno/applicationamani/data/remoto/FirebaseInstance;", "context", "Landroid/content/Context;", "<init>", "(Lorg/ies/tierno/applicationamani/data/remoto/FirebaseInstance;Landroid/content/Context;)V", "storageRef", "Lcom/google/firebase/storage/StorageReference;", "uploadFile", "Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult;", "uri", "Landroid/net/Uri;", "conversationId", "", "(Landroid/net/Uri;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "uploadVoiceNote", "audioFile", "Ljava/io/File;", "(Ljava/io/File;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "compressImage", "getFileNameFromUri", "UploadResult", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class FileStorageService {
    public static final int $stable = 8;
    private final Context context;
    private final FirebaseInstance firebaseInstance;
    private final StorageReference storageRef;

    public FileStorageService(FirebaseInstance firebaseInstance, Context context) {
        Intrinsics.checkNotNullParameter(firebaseInstance, "firebaseInstance");
        Intrinsics.checkNotNullParameter(context, "context");
        this.firebaseInstance = firebaseInstance;
        this.context = context;
        StorageReference reference = this.firebaseInstance.getStorage().getReference();
        Intrinsics.checkNotNullExpressionValue(reference, "getReference(...)");
        this.storageRef = reference;
    }

    /* JADX INFO: compiled from: FileStorageService.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0002\u0006\u0007¨\u0006\b"}, d2 = {"Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult;", "", "<init>", "()V", "Success", "Error", "Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult$Error;", "Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult$Success;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static abstract class UploadResult {
        public static final int $stable = 0;

        public /* synthetic */ UploadResult(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: compiled from: FileStorageService.kt */
        @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J'\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\n¨\u0006\u0019"}, d2 = {"Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult$Success;", "Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult;", ImagesContract.URL, "", ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;", "fileName", "<init>", "(Ljava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;Ljava/lang/String;)V", "getUrl", "()Ljava/lang/String;", "getType", "()Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;", "getFileName", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
        public static final /* data */ class Success extends UploadResult {
            public static final int $stable = 0;
            private final String fileName;
            private final AttachmentType type;
            private final String url;

            public static /* synthetic */ Success copy$default(Success success, String str, AttachmentType attachmentType, String str2, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = success.url;
                }
                if ((i & 2) != 0) {
                    attachmentType = success.type;
                }
                if ((i & 4) != 0) {
                    str2 = success.fileName;
                }
                return success.copy(str, attachmentType, str2);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getUrl() {
                return this.url;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final AttachmentType getType() {
                return this.type;
            }

            /* JADX INFO: renamed from: component3, reason: from getter */
            public final String getFileName() {
                return this.fileName;
            }

            public final Success copy(String url, AttachmentType type, String fileName) {
                Intrinsics.checkNotNullParameter(url, "url");
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(fileName, "fileName");
                return new Success(url, type, fileName);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Success)) {
                    return false;
                }
                Success success = (Success) other;
                return Intrinsics.areEqual(this.url, success.url) && this.type == success.type && Intrinsics.areEqual(this.fileName, success.fileName);
            }

            public int hashCode() {
                return (((this.url.hashCode() * 31) + this.type.hashCode()) * 31) + this.fileName.hashCode();
            }

            public String toString() {
                return "Success(url=" + this.url + ", type=" + this.type + ", fileName=" + this.fileName + ")";
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Success(String url, AttachmentType type, String fileName) {
                super(null);
                Intrinsics.checkNotNullParameter(url, "url");
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(fileName, "fileName");
                this.url = url;
                this.type = type;
                this.fileName = fileName;
            }

            public final String getFileName() {
                return this.fileName;
            }

            public final AttachmentType getType() {
                return this.type;
            }

            public final String getUrl() {
                return this.url;
            }
        }

        private UploadResult() {
        }

        /* JADX INFO: compiled from: FileStorageService.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult$Error;", "Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult;", "message", "", "<init>", "(Ljava/lang/String;)V", "getMessage", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
        public static final /* data */ class Error extends UploadResult {
            public static final int $stable = 0;
            private final String message;

            public static /* synthetic */ Error copy$default(Error error, String str, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = error.message;
                }
                return error.copy(str);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getMessage() {
                return this.message;
            }

            public final Error copy(String message) {
                Intrinsics.checkNotNullParameter(message, "message");
                return new Error(message);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Error) && Intrinsics.areEqual(this.message, ((Error) other).message);
            }

            public int hashCode() {
                return this.message.hashCode();
            }

            public String toString() {
                return "Error(message=" + this.message + ")";
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Error(String message) {
                super(null);
                Intrinsics.checkNotNullParameter(message, "message");
                this.message = message;
            }

            public final String getMessage() {
                return this.message;
            }
        }
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.data.remoto.FileStorageService$uploadFile$2, reason: invalid class name */
    /* JADX INFO: compiled from: FileStorageService.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.data.remoto.FileStorageService$uploadFile$2", f = "FileStorageService.kt", i = {0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1}, l = {59, RectListKt.BitOffsetForGesturable}, m = "invokeSuspend", n = {"mimeType", "attachmentType", "extension", "fileName", "path", "fileRef", "uploadTask", "mimeType", "attachmentType", "extension", "fileName", "path", "fileRef", "uploadTask", "taskSnapshot"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7"})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super UploadResult>, Object> {
        final /* synthetic */ String $conversationId;
        final /* synthetic */ Uri $uri;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        Object L$7;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(Uri uri, String str, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$uri = uri;
            this.$conversationId = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return FileStorageService.this.new AnonymousClass2(this.$uri, this.$conversationId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super UploadResult> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:45:0x0176 A[Catch: Exception -> 0x01da, TryCatch #0 {Exception -> 0x01da, blocks: (B:7:0x0032, B:49:0x01b4, B:10:0x005a, B:43:0x016a, B:45:0x0176, B:50:0x01cf, B:13:0x0064, B:16:0x0078, B:18:0x0083, B:23:0x0093, B:26:0x00a0, B:29:0x00f1, B:31:0x0107, B:33:0x010d, B:39:0x0132, B:34:0x0115, B:36:0x0125, B:38:0x012b, B:19:0x0086, B:21:0x008e, B:22:0x0091), top: B:59:0x0007 }] */
        /* JADX WARN: Removed duplicated region for block: B:50:0x01cf A[Catch: Exception -> 0x01da, TRY_LEAVE, TryCatch #0 {Exception -> 0x01da, blocks: (B:7:0x0032, B:49:0x01b4, B:10:0x005a, B:43:0x016a, B:45:0x0176, B:50:0x01cf, B:13:0x0064, B:16:0x0078, B:18:0x0083, B:23:0x0093, B:26:0x00a0, B:29:0x00f1, B:31:0x0107, B:33:0x010d, B:39:0x0132, B:34:0x0115, B:36:0x0125, B:38:0x012b, B:19:0x0086, B:21:0x008e, B:22:0x0091), top: B:59:0x0007 }] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object $result) {
            String extension;
            UploadTask uploadTask;
            AttachmentType attachmentType;
            StorageReference fileRef;
            String path;
            String extension2;
            Object obj;
            String mimeType;
            UploadTask uploadTask2;
            UploadTask.TaskSnapshot taskSnapshot;
            Object objAwait;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            try {
                switch (this.label) {
                    case 0:
                        ResultKt.throwOnFailure($result);
                        String mimeType2 = FileStorageService.this.context.getContentResolver().getType(this.$uri);
                        if (mimeType2 == null) {
                            mimeType2 = "application/octet-stream";
                        }
                        AttachmentType attachmentType2 = StringsKt.startsWith$default(mimeType2, "image/", false, 2, (Object) null) ? AttachmentType.IMAGE : StringsKt.startsWith$default(mimeType2, "audio/", false, 2, (Object) null) ? AttachmentType.AUDIO : AttachmentType.DOCUMENT;
                        String extension3 = MimeTypeMap.getSingleton().getExtensionFromMimeType(mimeType2);
                        if (extension3 == null) {
                            extension3 = "bin";
                        }
                        extension = UUID.randomUUID() + "." + extension3;
                        String path2 = "amani-chat/attachments/" + this.$conversationId + "/" + extension;
                        StorageReference fileRef2 = FileStorageService.this.storageRef.child(path2);
                        Intrinsics.checkNotNullExpressionValue(fileRef2, "child(...)");
                        AttachmentType attachmentType3 = AttachmentType.IMAGE;
                        FileStorageService fileStorageService = FileStorageService.this;
                        if (attachmentType2 == attachmentType3) {
                            Uri compressedUri = fileStorageService.compressImage(this.$uri);
                            InputStream inputStream = FileStorageService.this.context.getContentResolver().openInputStream(compressedUri);
                            if (inputStream == null) {
                                return new UploadResult.Error("No se pudo leer el archivo");
                            }
                            uploadTask = fileRef2.putStream(inputStream);
                            Intrinsics.checkNotNull(uploadTask);
                        } else {
                            InputStream inputStream2 = fileStorageService.context.getContentResolver().openInputStream(this.$uri);
                            if (inputStream2 == null) {
                                return new UploadResult.Error("No se pudo leer el archivo");
                            }
                            uploadTask = fileRef2.putStream(inputStream2);
                            Intrinsics.checkNotNull(uploadTask);
                        }
                        this.L$0 = SpillingKt.nullOutSpilledVariable(mimeType2);
                        this.L$1 = attachmentType2;
                        this.L$2 = SpillingKt.nullOutSpilledVariable(extension3);
                        this.L$3 = extension;
                        this.L$4 = SpillingKt.nullOutSpilledVariable(path2);
                        this.L$5 = fileRef2;
                        this.L$6 = SpillingKt.nullOutSpilledVariable(uploadTask);
                        this.label = 1;
                        Object objAwait2 = TasksKt.await(uploadTask, this);
                        if (objAwait2 == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        attachmentType = attachmentType2;
                        fileRef = fileRef2;
                        path = extension3;
                        extension2 = path2;
                        obj = objAwait2;
                        mimeType = mimeType2;
                        uploadTask2 = uploadTask;
                        taskSnapshot = (UploadTask.TaskSnapshot) obj;
                        if (taskSnapshot.getTask().isSuccessful()) {
                            return new UploadResult.Error("Error al subir archivo");
                        }
                        Task<Uri> downloadUrl = fileRef.getDownloadUrl();
                        Intrinsics.checkNotNullExpressionValue(downloadUrl, "getDownloadUrl(...)");
                        this.L$0 = SpillingKt.nullOutSpilledVariable(mimeType);
                        this.L$1 = attachmentType;
                        this.L$2 = SpillingKt.nullOutSpilledVariable(path);
                        this.L$3 = extension;
                        this.L$4 = SpillingKt.nullOutSpilledVariable(extension2);
                        this.L$5 = SpillingKt.nullOutSpilledVariable(fileRef);
                        this.L$6 = SpillingKt.nullOutSpilledVariable(uploadTask2);
                        this.L$7 = SpillingKt.nullOutSpilledVariable(taskSnapshot);
                        this.label = 2;
                        objAwait = TasksKt.await(downloadUrl, this);
                        if (objAwait == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        String downloadUrl2 = objAwait + "?alt=media";
                        return new UploadResult.Success(downloadUrl2, attachmentType, extension);
                    case 1:
                        uploadTask2 = (UploadTask) this.L$6;
                        fileRef = (StorageReference) this.L$5;
                        extension2 = (String) this.L$4;
                        extension = (String) this.L$3;
                        path = (String) this.L$2;
                        attachmentType = (AttachmentType) this.L$1;
                        mimeType = (String) this.L$0;
                        ResultKt.throwOnFailure($result);
                        obj = $result;
                        taskSnapshot = (UploadTask.TaskSnapshot) obj;
                        if (taskSnapshot.getTask().isSuccessful()) {
                        }
                        break;
                    case 2:
                        String fileName = (String) this.L$3;
                        AttachmentType attachmentType4 = (AttachmentType) this.L$1;
                        ResultKt.throwOnFailure($result);
                        attachmentType = attachmentType4;
                        extension = fileName;
                        objAwait = $result;
                        String downloadUrl22 = objAwait + "?alt=media";
                        return new UploadResult.Success(downloadUrl22, attachmentType, extension);
                    default:
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } catch (Exception e) {
                String message = e.getMessage();
                if (message == null) {
                    message = "Error desconocido";
                }
                return new UploadResult.Error(message);
            }
        }
    }

    public final Object uploadFile(Uri uri, String conversationId, Continuation<? super UploadResult> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new AnonymousClass2(uri, conversationId, null), continuation);
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.data.remoto.FileStorageService$uploadVoiceNote$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: FileStorageService.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService$UploadResult;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.data.remoto.FileStorageService$uploadVoiceNote$2", f = "FileStorageService.kt", i = {0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1}, l = {94, 98}, m = "invokeSuspend", n = {"extension", "fileName", "path", "fileRef", "contentType", TtmlNode.TAG_METADATA, "inputStream\\1", "uploadTask\\1", "$i$a$-use-FileStorageService$uploadVoiceNote$2$taskSnapshot$1\\1\\92\\0", "extension", "fileName", "path", "fileRef", "contentType", TtmlNode.TAG_METADATA, "taskSnapshot"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$7", "L$8", "I$0", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6"})
    static final class C08022 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super UploadResult>, Object> {
        final /* synthetic */ File $audioFile;
        final /* synthetic */ String $conversationId;
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        Object L$7;
        Object L$8;
        int label;
        final /* synthetic */ FileStorageService this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C08022(File file, String str, FileStorageService fileStorageService, Continuation<? super C08022> continuation) {
            super(2, continuation);
            this.$audioFile = file;
            this.$conversationId = str;
            this.this$0 = fileStorageService;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C08022(this.$audioFile, this.$conversationId, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super UploadResult> continuation) {
            return ((C08022) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        /* JADX WARN: Removed duplicated region for block: B:44:0x0172 A[Catch: Exception -> 0x01ed, TryCatch #2 {Exception -> 0x01ed, blocks: (B:7:0x002d, B:48:0x01b7, B:42:0x0165, B:44:0x0172, B:49:0x01d4, B:54:0x01e1, B:55:0x01e4, B:15:0x0068, B:17:0x0070, B:20:0x007e, B:24:0x00e1, B:27:0x00ec, B:31:0x00f8, B:36:0x0103, B:56:0x01e5, B:52:0x01df, B:10:0x005b, B:40:0x0162, B:37:0x0118), top: B:66:0x0006, inners: #0, #1 }] */
        /* JADX WARN: Removed duplicated region for block: B:49:0x01d4 A[Catch: Exception -> 0x01ed, TRY_LEAVE, TryCatch #2 {Exception -> 0x01ed, blocks: (B:7:0x002d, B:48:0x01b7, B:42:0x0165, B:44:0x0172, B:49:0x01d4, B:54:0x01e1, B:55:0x01e4, B:15:0x0068, B:17:0x0070, B:20:0x007e, B:24:0x00e1, B:27:0x00ec, B:31:0x00f8, B:36:0x0103, B:56:0x01e5, B:52:0x01df, B:10:0x005b, B:40:0x0162, B:37:0x0118), top: B:66:0x0006, inners: #0, #1 }] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object $result) {
            String extension;
            String fileName;
            String path;
            StorageReference fileRef;
            final String contentType;
            StorageMetadata metadata;
            FileInputStream fileInputStream;
            Object objAwait;
            UploadTask.TaskSnapshot taskSnapshot;
            Object objAwait2;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            try {
                try {
                    switch (this.label) {
                        case 0:
                            ResultKt.throwOnFailure($result);
                            if (this.$audioFile.exists() && this.$audioFile.length() > 0) {
                                extension = FilesKt.getExtension(this.$audioFile);
                                fileName = "voice_" + UUID.randomUUID() + "." + extension;
                                path = "amani-chat/attachments/" + this.$conversationId + "/" + fileName;
                                StorageReference storageReferenceChild = this.this$0.storageRef.child(path);
                                Intrinsics.checkNotNullExpressionValue(storageReferenceChild, "child(...)");
                                fileRef = storageReferenceChild;
                                int iHashCode = extension.hashCode();
                                String str = MimeTypes.AUDIO_MP4;
                                switch (iHashCode) {
                                    case 106458:
                                        if (!extension.equals("m4a")) {
                                        }
                                        break;
                                    case 108272:
                                        if (extension.equals("mp3")) {
                                            str = MimeTypes.AUDIO_MPEG;
                                        }
                                        break;
                                    case 109967:
                                        if (extension.equals("ogg")) {
                                            str = MimeTypes.AUDIO_OGG;
                                        }
                                        break;
                                }
                                contentType = str;
                                metadata = StorageKt.storageMetadata(new Function1() { // from class: org.ies.tierno.applicationamani.data.remoto.FileStorageService$uploadVoiceNote$2$$ExternalSyntheticLambda0
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj) {
                                        return FileStorageService.C08022.invokeSuspend$lambda$0(contentType, (StorageMetadata.Builder) obj);
                                    }
                                });
                                fileInputStream = new FileInputStream(this.$audioFile);
                                FileInputStream fileInputStream2 = fileInputStream;
                                UploadTask uploadTaskPutStream = fileRef.putStream(fileInputStream2, metadata);
                                Intrinsics.checkNotNullExpressionValue(uploadTaskPutStream, "putStream(...)");
                                this.L$0 = SpillingKt.nullOutSpilledVariable(extension);
                                this.L$1 = fileName;
                                this.L$2 = SpillingKt.nullOutSpilledVariable(path);
                                this.L$3 = fileRef;
                                this.L$4 = SpillingKt.nullOutSpilledVariable(contentType);
                                this.L$5 = SpillingKt.nullOutSpilledVariable(metadata);
                                this.L$6 = fileInputStream;
                                this.L$7 = SpillingKt.nullOutSpilledVariable(fileInputStream2);
                                this.L$8 = SpillingKt.nullOutSpilledVariable(uploadTaskPutStream);
                                this.I$0 = 0;
                                this.label = 1;
                                objAwait = TasksKt.await(uploadTaskPutStream, this);
                                if (objAwait == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                                taskSnapshot = (UploadTask.TaskSnapshot) objAwait;
                                CloseableKt.closeFinally(fileInputStream, null);
                                if (taskSnapshot.getTask().isSuccessful()) {
                                    return new UploadResult.Error("Error al subir nota de voz");
                                }
                                Task<Uri> downloadUrl = fileRef.getDownloadUrl();
                                Intrinsics.checkNotNullExpressionValue(downloadUrl, "getDownloadUrl(...)");
                                this.L$0 = SpillingKt.nullOutSpilledVariable(extension);
                                this.L$1 = fileName;
                                this.L$2 = SpillingKt.nullOutSpilledVariable(path);
                                this.L$3 = SpillingKt.nullOutSpilledVariable(fileRef);
                                this.L$4 = SpillingKt.nullOutSpilledVariable(contentType);
                                this.L$5 = SpillingKt.nullOutSpilledVariable(metadata);
                                this.L$6 = SpillingKt.nullOutSpilledVariable(taskSnapshot);
                                this.L$7 = null;
                                this.L$8 = null;
                                this.label = 2;
                                objAwait2 = TasksKt.await(downloadUrl, this);
                                if (objAwait2 == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                                String downloadUrl2 = objAwait2 + "?alt=media";
                                return new UploadResult.Success(downloadUrl2, AttachmentType.AUDIO, fileName);
                            }
                            return new UploadResult.Error("La nota de voz está vacía o no se encontró");
                        case 1:
                            int i = this.I$0;
                            fileInputStream = (Closeable) this.L$6;
                            metadata = (StorageMetadata) this.L$5;
                            contentType = (String) this.L$4;
                            fileRef = (StorageReference) this.L$3;
                            path = (String) this.L$2;
                            fileName = (String) this.L$1;
                            extension = (String) this.L$0;
                            ResultKt.throwOnFailure($result);
                            objAwait = $result;
                            taskSnapshot = (UploadTask.TaskSnapshot) objAwait;
                            CloseableKt.closeFinally(fileInputStream, null);
                            if (taskSnapshot.getTask().isSuccessful()) {
                            }
                            break;
                        case 2:
                            String fileName2 = (String) this.L$1;
                            ResultKt.throwOnFailure($result);
                            fileName = fileName2;
                            objAwait2 = $result;
                            String downloadUrl22 = objAwait2 + "?alt=media";
                            return new UploadResult.Success(downloadUrl22, AttachmentType.AUDIO, fileName);
                        default:
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } finally {
                }
            } catch (Exception e) {
                String message = e.getMessage();
                if (message == null) {
                    message = "Error desconocido";
                }
                return new UploadResult.Error(message);
            }
        }

        static final Unit invokeSuspend$lambda$0(String $contentType, StorageMetadata.Builder $this$storageMetadata) {
            $this$storageMetadata.setContentType($contentType);
            return Unit.INSTANCE;
        }
    }

    public final Object uploadVoiceNote(File audioFile, String conversationId, Continuation<? super UploadResult> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new C08022(audioFile, conversationId, this, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Uri compressImage(Uri uri) {
        try {
            InputStream inputStream = this.context.getContentResolver().openInputStream(uri);
            Bitmap bitmap = BitmapFactory.decodeStream(inputStream);
            if (inputStream != null) {
                inputStream.close();
            }
            float ratio = Math.min(1024 / bitmap.getWidth(), 1024 / bitmap.getHeight());
            int width = (int) (bitmap.getWidth() * ratio);
            int height = (int) (bitmap.getHeight() * ratio);
            Bitmap scaledBitmap = Bitmap.createScaledBitmap(bitmap, width, height, true);
            Intrinsics.checkNotNullExpressionValue(scaledBitmap, "createScaledBitmap(...)");
            ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
            scaledBitmap.compress(Bitmap.CompressFormat.JPEG, 80, outputStream);
            File tempFile = new File(this.context.getCacheDir(), "compressed_" + UUID.randomUUID() + ".jpg");
            FileOutputStream fileOutputStream = new FileOutputStream(tempFile);
            try {
                fileOutputStream.write(outputStream.toByteArray());
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(fileOutputStream, null);
                Uri uriFromFile = Uri.fromFile(tempFile);
                Intrinsics.checkNotNullExpressionValue(uriFromFile, "fromFile(...)");
                return uriFromFile;
            } finally {
            }
        } catch (Exception e) {
            return uri;
        }
    }

    public final String getFileNameFromUri(Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        String str = "file";
        Cursor cursorQuery = this.context.getContentResolver().query(uri, null, null, null, null);
        if (cursorQuery != null) {
            Cursor cursor = cursorQuery;
            try {
                Cursor cursor2 = cursor;
                int columnIndex = cursor2.getColumnIndex("_display_name");
                if (cursor2.moveToFirst() && columnIndex >= 0) {
                    String string = cursor2.getString(columnIndex);
                    Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                    str = string;
                }
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(cursor, null);
            } finally {
            }
        }
        return str;
    }
}
