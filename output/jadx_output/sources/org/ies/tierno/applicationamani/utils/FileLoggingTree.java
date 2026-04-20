package org.ies.tierno.applicationamani.utils;

import android.content.Context;
import android.util.Log;
import androidx.exifinterface.media.ExifInterface;
import j$.time.LocalDateTime;
import j$.time.format.DateTimeFormatter;
import java.io.File;
import java.io.IOException;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import timber.log.Timber;

/* JADX INFO: compiled from: FileLoggingTree.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0006\b\u0007\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J,\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0014J\b\u0010\u0013\u001a\u00020\u000bH\u0002J\u0018\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u000fH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u00078BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\t¨\u0006\u0018"}, d2 = {"Lorg/ies/tierno/applicationamani/utils/FileLoggingTree;", "Ltimber/log/Timber$Tree;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "logFile", "Ljava/io/File;", "getLogFile", "()Ljava/io/File;", "log", "", "priority", "", "tag", "", "message", "t", "", "rotateIfNeeded", "appendText", "file", "text", "Companion", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class FileLoggingTree extends Timber.Tree {
    private static final String LOG_FILE = "amani_logs.txt";
    private static final long MAX_SIZE_BYTES = 1048576;
    private static final String OLD_LOG_FILE = "amani_logs_old.txt";
    private final Context context;
    public static final int $stable = 8;
    private static final DateTimeFormatter DATE_FORMAT = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");

    public FileLoggingTree(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    private final File getLogFile() {
        return new File(this.context.getFilesDir(), LOG_FILE);
    }

    @Override // timber.log.Timber.Tree
    protected void log(int priority, String tag, String message, Throwable t) {
        String str;
        Object objM8542constructorimpl;
        Intrinsics.checkNotNullParameter(message, "message");
        if (priority < 5) {
            return;
        }
        String timestamp = LocalDateTime.now().format(DATE_FORMAT);
        switch (priority) {
            case 5:
                str = ExifInterface.LONGITUDE_WEST;
                break;
            case 6:
                str = ExifInterface.LONGITUDE_EAST;
                break;
            default:
                str = "?";
                break;
        }
        String level = str;
        String prefix = "[" + timestamp + "] " + level + "/" + (tag == null ? AbstractJsonLexerKt.NULL : tag) + ": " + message;
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        listCreateListBuilder.add(prefix);
        if (t != null) {
            String stackTraceString = Log.getStackTraceString(t);
            Intrinsics.checkNotNullExpressionValue(stackTraceString, "getStackTraceString(...)");
            listCreateListBuilder.add(stackTraceString);
        }
        List linesToWrite = CollectionsKt.build(listCreateListBuilder);
        try {
            Result.Companion companion = Result.INSTANCE;
            FileLoggingTree fileLoggingTree = this;
            fileLoggingTree.rotateIfNeeded();
            File logFile = fileLoggingTree.getLogFile();
            String strLineSeparator = System.lineSeparator();
            Intrinsics.checkNotNullExpressionValue(strLineSeparator, "lineSeparator(...)");
            fileLoggingTree.appendText(logFile, CollectionsKt.joinToString$default(linesToWrite, strLineSeparator, null, null, 0, null, null, 62, null) + System.lineSeparator());
            objM8542constructorimpl = Result.m8542constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM8542constructorimpl = Result.m8542constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM8545exceptionOrNullimpl = Result.m8545exceptionOrNullimpl(objM8542constructorimpl);
        if (thM8545exceptionOrNullimpl != null) {
            Log.e("FileLoggingTree", "Error al escribir en log: " + thM8545exceptionOrNullimpl.getMessage());
        }
    }

    private final void rotateIfNeeded() throws IOException {
        File file = getLogFile();
        if (file.exists() && file.length() >= MAX_SIZE_BYTES) {
            File oldFile = new File(this.context.getFilesDir(), OLD_LOG_FILE);
            file.delete();
            oldFile.delete();
            file.createNewFile();
        }
    }

    private final void appendText(File file, String text) {
        FilesKt.appendText$default(file, text, null, 2, null);
    }
}
