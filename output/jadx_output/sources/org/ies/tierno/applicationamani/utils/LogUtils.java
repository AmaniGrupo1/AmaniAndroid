package org.ies.tierno.applicationamani.utils;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.core.content.FileProvider;
import j$.time.LocalDate;
import j$.time.format.DateTimeFormatter;
import java.io.File;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.Intrinsics;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: LogUtils.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\rR\u001c\u0010\u0010\u001a\n \u000f*\u0004\u0018\u00010\u000e0\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lorg/ies/tierno/applicationamani/utils/LogUtils;", "", "<init>", "()V", "Landroid/content/Context;", "context", "", "obtenerLogs", "(Landroid/content/Context;)Ljava/lang/String;", "", "compartirLogs", "(Landroid/content/Context;)V", "LOG_FILE", "Ljava/lang/String;", "j$/time/format/DateTimeFormatter", "kotlin.jvm.PlatformType", "DATE_FORMAT", "Lj$/time/format/DateTimeFormatter;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class LogUtils {
    private static final String LOG_FILE = "amani_logs.txt";
    public static final LogUtils INSTANCE = new LogUtils();
    private static final DateTimeFormatter DATE_FORMAT = DateTimeFormatter.ofPattern("yyyy-MM-dd");
    public static final int $stable = 8;

    private LogUtils() {
    }

    public final String obtenerLogs(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        File file = new File(context.getFilesDir(), LOG_FILE);
        String str = "Sin logs disponibles";
        if (!file.exists()) {
            return "Sin logs disponibles";
        }
        String text$default = FilesKt.readText$default(file, null, 1, null);
        if (!(text$default.length() == 0)) {
            str = text$default;
        }
        return str;
    }

    public final void compartirLogs(Context context) throws XmlPullParserException, IOException {
        Intrinsics.checkNotNullParameter(context, "context");
        File file = new File(context.getFilesDir(), LOG_FILE);
        if (!file.exists()) {
            throw new IllegalStateException("No hay fichero de log disponible");
        }
        String fecha = LocalDate.now().format(DATE_FORMAT);
        Uri uri = FileProvider.getUriForFile(context, context.getPackageName() + ".provider", file);
        Intent shareIntent = new Intent("android.intent.action.SEND");
        shareIntent.setType("text/plain");
        shareIntent.putExtra("android.intent.extra.SUBJECT", "Logs AMANI - " + fecha);
        shareIntent.putExtra("android.intent.extra.STREAM", uri);
        shareIntent.addFlags(1);
        shareIntent.addFlags(268435456);
        Intent intentCreateChooser = Intent.createChooser(shareIntent, "Compartir logs");
        intentCreateChooser.addFlags(268435456);
        context.startActivity(intentCreateChooser);
    }
}
