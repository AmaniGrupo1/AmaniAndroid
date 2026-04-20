package androidx.core.app;

import android.content.Context;
import android.util.Log;
import android.util.Xml;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes20.dex */
public class AppLocalesStorageHelper {
    static final String APPLICATION_LOCALES_RECORD_FILE = "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file";
    static final boolean DEBUG = false;
    static final String LOCALE_RECORD_ATTRIBUTE_TAG = "application_locales";
    static final String LOCALE_RECORD_FILE_TAG = "locales";
    static final String TAG = "AppLocalesStorageHelper";
    private static final Object sAppLocaleStorageSync = new Object();

    private AppLocalesStorageHelper() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0044, code lost:
    
        r1 = r3.getAttributeValue(null, androidx.core.app.AppLocalesStorageHelper.LOCALE_RECORD_ATTRIBUTE_TAG);
     */
    /* JADX WARN: Not initialized variable reg: 2, insn: 0x006d: IF  (r2 I:??[int, boolean, OBJECT, ARRAY, byte, short, char] A[D('fis' java.io.FileInputStream)]) == (0 ??[int, boolean, OBJECT, ARRAY, byte, short, char])  -> B:46:0x0075 (LINE:94), block:B:41:0x006d */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0066 A[Catch: all -> 0x0079, TryCatch #2 {, blocks: (B:5:0x0005, B:23:0x0049, B:35:0x005f, B:39:0x006b, B:38:0x0066, B:42:0x006f, B:46:0x0075, B:48:0x0077, B:6:0x000c, B:7:0x0019, B:11:0x0024, B:17:0x0030, B:19:0x003d, B:32:0x0054), top: B:55:0x0005, inners: #3, #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0049 A[EXC_TOP_SPLITTER, PHI: r1
      0x0049: PHI (r1v2 'appLocales' java.lang.String) = (r1v0 'appLocales' java.lang.String), (r1v4 'appLocales' java.lang.String) binds: [B:33:0x005c, B:22:0x0047] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String readLocales(Context context) {
        String appLocales;
        FileInputStream fis;
        XmlPullParser parser;
        int outerDepth;
        synchronized (sAppLocaleStorageSync) {
            appLocales = "";
            try {
                try {
                    fis = context.openFileInput(APPLICATION_LOCALES_RECORD_FILE);
                    try {
                        parser = Xml.newPullParser();
                        parser.setInput(fis, "UTF-8");
                        outerDepth = parser.getDepth();
                    } catch (IOException | XmlPullParserException e) {
                        Log.w(TAG, "Reading app Locales : Unable to parse through file :androidx.appcompat.app.AppCompatDelegate.application_locales_record_file");
                        if (fis != null) {
                        }
                    }
                    while (true) {
                        int type = parser.next();
                        if (type == 1 || (type == 3 && parser.getDepth() <= outerDepth)) {
                            break;
                        }
                        if (type != 3 && type != 4) {
                            String tagName = parser.getName();
                            if (tagName.equals(LOCALE_RECORD_FILE_TAG)) {
                                break;
                            }
                            if (!appLocales.isEmpty()) {
                                context.deleteFile(APPLICATION_LOCALES_RECORD_FILE);
                            }
                        }
                    }
                    if (!appLocales.isEmpty()) {
                    }
                } catch (FileNotFoundException e2) {
                    return "";
                }
            } finally {
                if (fis != null) {
                    try {
                        fis.close();
                    } catch (IOException e3) {
                    }
                }
            }
        }
        return appLocales;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0050 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void persistLocales(Context context, String locales) {
        synchronized (sAppLocaleStorageSync) {
            if (locales.equals("")) {
                context.deleteFile(APPLICATION_LOCALES_RECORD_FILE);
                return;
            }
            try {
                FileOutputStream fos = context.openFileOutput(APPLICATION_LOCALES_RECORD_FILE, 0);
                XmlSerializer serializer = Xml.newSerializer();
                try {
                    try {
                        serializer.setOutput(fos, null);
                        serializer.startDocument("UTF-8", true);
                        serializer.startTag(null, LOCALE_RECORD_FILE_TAG);
                        serializer.attribute(null, LOCALE_RECORD_ATTRIBUTE_TAG, locales);
                        serializer.endTag(null, LOCALE_RECORD_FILE_TAG);
                        serializer.endDocument();
                    } catch (Throwable th) {
                        if (fos != null) {
                            try {
                                fos.close();
                            } catch (IOException e) {
                            }
                        }
                        throw th;
                    }
                } catch (Exception e2) {
                    Log.w(TAG, "Storing App Locales : Failed to persist app-locales in storage ", e2);
                    if (fos != null) {
                    }
                }
                if (fos != null) {
                    try {
                        fos.close();
                    } catch (IOException e3) {
                    }
                }
            } catch (FileNotFoundException e4) {
                Log.w(TAG, String.format("Storing App Locales : FileNotFoundException: Cannot open file %s for writing ", APPLICATION_LOCALES_RECORD_FILE));
            }
        }
    }
}
