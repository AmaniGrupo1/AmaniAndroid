package androidx.media3.common.util;

import android.app.Activity;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.hardware.display.DisplayManager;
import android.media.AudioFormat;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.security.NetworkSecurityPolicy;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Base64;
import android.util.SparseArray;
import android.util.SparseLongArray;
import android.view.Display;
import android.view.WindowManager;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.autofill.HintConstants;
import androidx.compose.runtime.ComposerImplKt;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.spatial.RectListKt;
import androidx.core.location.LocationRequestCompat;
import androidx.core.os.EnvironmentCompat;
import androidx.core.view.MotionEventCompat;
import androidx.media3.common.C;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaLibraryInfo;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.Player;
import androidx.media3.common.audio.AudioManagerCompat;
import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.metadata.dvbsi.AppInfoTableDecoder;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.media3.extractor.ts.PsExtractor;
import androidx.media3.extractor.ts.TsExtractor;
import com.google.api.Endpoint;
import com.google.common.base.Ascii;
import com.google.common.base.Preconditions;
import com.google.common.io.BaseEncoding;
import com.google.common.io.ByteStreams;
import com.google.common.math.DoubleMath;
import com.google.common.math.LongMath;
import com.google.common.primitives.Ints;
import com.google.common.primitives.UnsignedBytes;
import com.google.common.util.concurrent.AsyncFunction;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
import com.google.common.util.concurrent.SettableFuture;
import com.google.errorprone.annotations.CheckReturnValue;
import com.google.firebase.firestore.BuildConfig;
import j$.util.DesugarTimeZone;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.Formatter;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.DataFormatException;
import java.util.zip.GZIPOutputStream;
import java.util.zip.Inflater;
import okhttp3.internal.ws.WebSocketProtocol;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;

/* JADX INFO: loaded from: classes21.dex */
public final class Util {
    private static final String ISM_DASH_FORMAT_EXTENSION = "format=mpd-time-csf";
    private static final String ISM_HLS_FORMAT_EXTENSION = "format=m3u8-aapl";
    private static final String TAG = "Util";
    private static final int ZLIB_INFLATE_HEADER = 120;
    private static HashMap<String, String> languageTagReplacementMap;

    @Deprecated
    public static final int SDK_INT = Build.VERSION.SDK_INT;

    @Deprecated
    public static final String DEVICE = Build.DEVICE;

    @Deprecated
    public static final String MANUFACTURER = Build.MANUFACTURER;

    @Deprecated
    public static final String MODEL = Build.MODEL;
    public static final String DEVICE_DEBUG_INFO = Build.DEVICE + ", " + Build.MODEL + ", " + Build.MANUFACTURER + ", " + Build.VERSION.SDK_INT;
    public static final byte[] EMPTY_BYTE_ARRAY = new byte[0];
    public static final long[] EMPTY_LONG_ARRAY = new long[0];
    private static final Pattern XS_DATE_TIME_PATTERN = Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt ](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)?))?");
    private static final Pattern XS_DURATION_PATTERN = Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");
    private static final Pattern ESCAPED_CHARACTER_PATTERN = Pattern.compile("%([A-Fa-f0-9]{2})");
    private static final Pattern ISM_PATH_PATTERN = Pattern.compile("(?:.*\\.)?isml?(?:/(manifest(.*))?)?", 2);
    private static final String[] additionalIsoLanguageReplacements = {"alb", "sq", "arm", "hy", "baq", "eu", "bur", "my", "tib", "bo", "chi", "zh", "cze", "cs", "dut", "nl", "ger", "de", "gre", "el", "fre", "fr", "geo", "ka", "ice", "is", "mac", "mk", "mao", "mi", "may", "ms", "per", "fa", "rum", "ro", "scc", "hbs-srp", "slo", "sk", "wel", "cy", TtmlNode.ATTR_ID, "ms-ind", "iw", "he", "heb", "he", "ji", "yi", "arb", "ar-arb", "in", "ms-ind", "ind", "ms-ind", "nb", "no-nob", "nob", "no-nob", "nn", "no-nno", "nno", "no-nno", "tw", "ak-twi", "twi", "ak-twi", CmcdConfiguration.KEY_BUFFER_STARVATION, "hbs-bos", "bos", "hbs-bos", "hr", "hbs-hrv", "hrv", "hbs-hrv", "sr", "hbs-srp", "srp", "hbs-srp", "cmn", "zh-cmn", "hak", "zh-hak", "nan", "zh-nan", "hsn", "zh-hsn"};
    private static final String[] isoLegacyTagReplacements = {"i-lux", "lb", "i-hak", "zh-hak", "i-navajo", "nv", "no-bok", "no-nob", "no-nyn", "no-nno", "zh-guoyu", "zh-cmn", "zh-hakka", "zh-hak", "zh-min-nan", "zh-nan", "zh-xiang", "zh-hsn"};
    private static final int[] CRC32_BYTES_MSBF = {0, 79764919, 159529838, 222504665, 319059676, 398814059, 445009330, 507990021, 638119352, 583659535, 797628118, 726387553, 890018660, 835552979, 1015980042, 944750013, 1276238704, 1221641927, 1167319070, 1095957929, 1595256236, 1540665371, 1452775106, 1381403509, 1780037320, 1859660671, 1671105958, 1733955601, 2031960084, 2111593891, 1889500026, 1952343757, -1742489888, -1662866601, -1851683442, -1788833735, -1960329156, -1880695413, -2103051438, -2040207643, -1104454824, -1159051537, -1213636554, -1284997759, -1389417084, -1444007885, -1532160278, -1603531939, -734892656, -789352409, -575645954, -646886583, -952755380, -1007220997, -827056094, -898286187, -231047128, -151282273, -71779514, -8804623, -515967244, -436212925, -390279782, -327299027, 881225847, 809987520, 1023691545, 969234094, 662832811, 591600412, 771767749, 717299826, 311336399, 374308984, 453813921, 533576470, 25881363, 88864420, 134795389, 214552010, 2023205639, 2086057648, 1897238633, 1976864222, 1804852699, 1867694188, 1645340341, 1724971778, 1587496639, 1516133128, 1461550545, 1406951526, 1302016099, 1230646740, 1142491917, 1087903418, -1398421865, -1469785312, -1524105735, -1578704818, -1079922613, -1151291908, -1239184603, -1293773166, -1968362705, -1905510760, -2094067647, -2014441994, -1716953613, -1654112188, -1876203875, -1796572374, -525066777, -462094256, -382327159, -302564546, -206542021, -143559028, -97365931, -17609246, -960696225, -1031934488, -817968335, -872425850, -709327229, -780559564, -600130067, -654598054, 1762451694, 1842216281, 1619975040, 1682949687, 2047383090, 2127137669, 1938468188, 2001449195, 1325665622, 1271206113, 1183200824, 1111960463, 1543535498, 1489069629, 1434599652, 1363369299, 622672798, 568075817, 748617968, 677256519, 907627842, 853037301, 1067152940, 995781531, 51762726, 131386257, 177728840, 240578815, 269590778, 349224269, 429104020, 491947555, -248556018, -168932423, -122852000, -60002089, -500490030, -420856475, -341238852, -278395381, -685261898, -739858943, -559578920, -630940305, -1004286614, -1058877219, -845023740, -916395085, -1119974018, -1174433591, -1262701040, -1333941337, -1371866206, -1426332139, -1481064244, -1552294533, -1690935098, -1611170447, -1833673816, -1770699233, -2009983462, -1930228819, -2119160460, -2056179517, 1569362073, 1498123566, 1409854455, 1355396672, 1317987909, 1246755826, 1192025387, 1137557660, 2072149281, 2135122070, 1912620623, 1992383480, 1753615357, 1816598090, 1627664531, 1707420964, 295390185, 358241886, 404320391, 483945776, 43990325, 106832002, 186451547, 266083308, 932423249, 861060070, 1041341759, 986742920, 613929101, 542559546, 756411363, 701822548, -978770311, -1050133554, -869589737, -924188512, -693284699, -764654318, -550540341, -605129092, -475935807, -413084042, -366743377, -287118056, -257573603, -194731862, -114850189, -35218492, -1984365303, -1921392450, -2143631769, -2063868976, -1698919467, -1635936670, -1824608069, -1744851700, -1347415887, -1418654458, -1506661409, -1561119128, -1129027987, -1200260134, -1254728445, -1309196108};
    private static final int[] CRC16_BYTES_MSBF = {0, 4129, 8258, 12387, 16516, 20645, 24774, 28903, 33032, 37161, 41290, 45419, 49548, 53677, 57806, 61935};
    private static final int[] CRC8_BYTES_MSBF = {0, 7, 14, 9, 28, 27, 18, 21, 56, 63, 54, 49, 36, 35, 42, 45, 112, 119, WebSocketProtocol.PAYLOAD_SHORT, 121, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, 107, 98, Endpoint.TARGET_FIELD_NUMBER, 72, 79, 70, 65, 84, 83, 90, 93, 224, 231, 238, 233, 252, 251, 242, 245, 216, 223, 214, 209, 196, 195, 202, 205, 144, 151, 158, 153, 140, TsExtractor.TS_STREAM_TYPE_DTS_UHD, TsExtractor.TS_STREAM_TYPE_HDMV_DTS, 133, 168, 175, 166, 161, 180, 179, 186, PsExtractor.PRIVATE_STREAM_1, 199, PsExtractor.AUDIO_STREAM, 201, ComposerKt.referenceKey, 219, 220, 213, 210, 255, 248, 241, 246, 227, 228, 237, 234, 183, 176, 185, 190, 171, TsExtractor.TS_STREAM_TYPE_AC4, 165, 162, 143, TsExtractor.TS_STREAM_TYPE_DTS_HD, TsExtractor.TS_STREAM_TYPE_AC3, TsExtractor.TS_STREAM_TYPE_SPLICE_INFO, 147, 148, 157, 154, 39, 32, 41, 46, 59, 60, 53, 50, 31, 24, 17, 22, 3, 4, 13, 10, 87, 80, 89, 94, 75, 76, 69, 66, 111, LocationRequestCompat.QUALITY_LOW_POWER, 97, LocationRequestCompat.QUALITY_BALANCED_POWER_ACCURACY, 115, AppInfoTableDecoder.APPLICATION_INFORMATION_TABLE_ID, ComposerImplKt.nodeKey, 122, 137, 142, TsExtractor.TS_STREAM_TYPE_E_AC3, 128, 149, 146, 155, 156, 177, 182, 191, 184, 173, 170, 163, 164, 249, 254, 247, PsExtractor.VIDEO_STREAM_MASK, 229, 226, 235, 236, 193, 198, ComposerKt.reuseKey, 200, 221, 218, 211, 212, 105, 110, 103, 96, 117, 114, 123, 124, 81, 86, 95, 88, 77, 74, 67, 68, 25, 30, 23, 16, 5, 2, 11, 12, 33, 38, 47, 40, 61, 58, 51, 52, 78, 73, 64, 71, 82, 85, 92, 91, 118, 113, 120, 127, 106, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY, 100, 99, 62, 57, 48, 55, 34, 37, 44, 43, 6, 1, 8, 15, 26, 29, 20, 19, 174, 169, 160, 167, 178, 181, TsExtractor.TS_PACKET_SIZE, 187, 150, 145, 152, 159, TsExtractor.TS_STREAM_TYPE_DTS, 141, 132, 131, 222, 217, 208, 215, 194, 197, ComposerKt.providerMapsKey, 203, 230, 225, 232, 239, 250, 253, 244, 243};

    private Util() {
    }

    @Deprecated
    public static byte[] toByteArray(InputStream inputStream) throws IOException {
        return ByteStreams.toByteArray(inputStream);
    }

    public static byte[] toByteArray(int... values) {
        byte[] array = new byte[values.length * 4];
        int index = 0;
        for (int value : values) {
            int index2 = index + 1;
            array[index] = (byte) (value >> 24);
            int index3 = index2 + 1;
            array[index2] = (byte) (value >> 16);
            int index4 = index3 + 1;
            array[index3] = (byte) (value >> 8);
            index = index4 + 1;
            array[index4] = (byte) value;
        }
        return array;
    }

    public static byte[] toByteArray(float value) {
        return Ints.toByteArray(Float.floatToIntBits(value));
    }

    public static Intent registerReceiverNotExported(Context context, BroadcastReceiver receiver, IntentFilter filter) {
        if (Build.VERSION.SDK_INT < 33) {
            return context.registerReceiver(receiver, filter);
        }
        return context.registerReceiver(receiver, filter, 4);
    }

    public static ComponentName startForegroundService(Context context, Intent intent) {
        if (Build.VERSION.SDK_INT >= 26) {
            return context.startForegroundService(intent);
        }
        return context.startService(intent);
    }

    public static void setForegroundServiceNotification(Service service, int notificationId, Notification notification, int foregroundServiceType, String foregroundServiceManifestType) {
        if (Build.VERSION.SDK_INT >= 29) {
            Api29.startForeground(service, notificationId, notification, foregroundServiceType, foregroundServiceManifestType);
        } else {
            service.startForeground(notificationId, notification);
        }
    }

    public static void stopForeground(Service service, boolean removeNotification) {
        Api24.stopForeground(service, removeNotification);
    }

    public static void ensureNotificationChannel(NotificationManager notificationManager, String channelId, String channelName) {
        if (Build.VERSION.SDK_INT < 26 || notificationManager.getNotificationChannel(channelId) != null) {
            return;
        }
        Api26.createNotificationChannel(notificationManager, channelId, channelName);
    }

    @Deprecated
    public static boolean maybeRequestReadExternalStoragePermission(Activity activity, Uri... uris) {
        for (Uri uri : uris) {
            if (maybeRequestReadStoragePermission(activity, uri)) {
                return true;
            }
        }
        return false;
    }

    @Deprecated
    public static boolean maybeRequestReadExternalStoragePermission(Activity activity, MediaItem... mediaItems) {
        return maybeRequestReadStoragePermission(activity, mediaItems);
    }

    public static boolean maybeRequestReadStoragePermission(Activity activity, MediaItem... mediaItems) {
        for (MediaItem mediaItem : mediaItems) {
            if (mediaItem.localConfiguration != null) {
                if (maybeRequestReadStoragePermission(activity, mediaItem.localConfiguration.uri)) {
                    return true;
                }
                List<MediaItem.SubtitleConfiguration> subtitleConfigs = mediaItem.localConfiguration.subtitleConfigurations;
                for (int i = 0; i < subtitleConfigs.size(); i++) {
                    if (maybeRequestReadStoragePermission(activity, subtitleConfigs.get(i).uri)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    private static boolean maybeRequestReadStoragePermission(Activity activity, Uri uri) {
        if (!isReadStoragePermissionRequestNeeded(activity, uri)) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 33) {
            return requestExternalStoragePermission(activity);
        }
        return requestReadMediaPermissions(activity);
    }

    private static boolean isReadStoragePermissionRequestNeeded(Activity activity, Uri uri) {
        if (isLocalFileUri(uri)) {
            return !isAppSpecificStorageFileUri(activity, uri);
        }
        return isMediaStoreExternalContentUri(uri);
    }

    private static boolean isAppSpecificStorageFileUri(Activity activity, Uri uri) {
        try {
            String uriPath = uri.getPath();
            if (uriPath == null) {
                return false;
            }
            String filePath = new File(uriPath).getCanonicalPath();
            String internalAppDirectoryPath = activity.getFilesDir().getCanonicalPath();
            String externalAppDirectoryPath = null;
            File externalAppDirectory = activity.getExternalFilesDir(null);
            if (externalAppDirectory != null) {
                externalAppDirectoryPath = externalAppDirectory.getCanonicalPath();
            }
            if (!filePath.startsWith(internalAppDirectoryPath)) {
                if (externalAppDirectoryPath == null) {
                    return false;
                }
                if (!filePath.startsWith(externalAppDirectoryPath)) {
                    return false;
                }
            }
            return true;
        } catch (IOException e) {
            return false;
        }
    }

    private static boolean isMediaStoreExternalContentUri(Uri uri) {
        if (!Objects.equals(uri.getScheme(), "content") || !Objects.equals(uri.getAuthority(), "media")) {
            return false;
        }
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.isEmpty()) {
            return false;
        }
        String firstPathSegment = pathSegments.get(0);
        return "external".equals(firstPathSegment) || "external_primary".equals(firstPathSegment);
    }

    public static boolean checkCleartextTrafficPermitted(MediaItem... mediaItems) {
        for (MediaItem mediaItem : mediaItems) {
            if (mediaItem.localConfiguration != null) {
                if (isTrafficRestricted(mediaItem.localConfiguration.uri)) {
                    return false;
                }
                for (int i = 0; i < mediaItem.localConfiguration.subtitleConfigurations.size(); i++) {
                    if (isTrafficRestricted(mediaItem.localConfiguration.subtitleConfigurations.get(i).uri)) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    public static boolean isLocalFileUri(Uri uri) {
        String scheme = uri.getScheme();
        return TextUtils.isEmpty(scheme) || Objects.equals(scheme, "file");
    }

    public static boolean isRunningOnEmulator() {
        String deviceName = Ascii.toLowerCase(Build.DEVICE);
        return deviceName.contains(BuildConfig.TARGET_BACKEND) || deviceName.contains("emu64a") || deviceName.contains("emu64x") || deviceName.contains("generic");
    }

    @Deprecated
    public static boolean areEqual(Object o1, Object o2) {
        return Objects.equals(o1, o2);
    }

    public static <T> boolean contentEquals(SparseArray<T> sparseArray1, SparseArray<T> sparseArray2) {
        if (sparseArray1 == null) {
            return sparseArray2 == null;
        }
        if (sparseArray2 == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 31) {
            return sparseArray1.contentEquals(sparseArray2);
        }
        int size = sparseArray1.size();
        if (size != sparseArray2.size()) {
            return false;
        }
        for (int index = 0; index < size; index++) {
            int key = sparseArray1.keyAt(index);
            if (!Objects.equals(sparseArray1.valueAt(index), sparseArray2.get(key))) {
                return false;
            }
        }
        return true;
    }

    public static <T> int contentHashCode(SparseArray<T> sparseArray) {
        if (Build.VERSION.SDK_INT >= 31) {
            return sparseArray.contentHashCode();
        }
        int hash = 17;
        for (int index = 0; index < sparseArray.size(); index++) {
            hash = (((hash * 31) + sparseArray.keyAt(index)) * 31) + Objects.hashCode(sparseArray.valueAt(index));
        }
        return hash;
    }

    public static boolean contains(Object[] items, Object item) {
        for (Object arrayItem : items) {
            if (Objects.equals(arrayItem, item)) {
                return true;
            }
        }
        return false;
    }

    public static <T> boolean contains(SparseArray<T> sparseArray, int key) {
        return sparseArray.indexOfKey(key) >= 0;
    }

    public static <T> void removeRange(List<T> list, int fromIndex, int toIndex) {
        if (fromIndex < 0 || toIndex > list.size() || fromIndex > toIndex) {
            throw new IllegalArgumentException();
        }
        if (fromIndex != toIndex) {
            list.subList(fromIndex, toIndex).clear();
        }
    }

    @EnsuresNonNull({"#1"})
    public static <T> T castNonNull(T value) {
        return value;
    }

    @EnsuresNonNull({"#1"})
    public static <T> T[] castNonNullTypeArray(T[] value) {
        return value;
    }

    public static <T> T[] nullSafeArrayCopy(T[] tArr, int i) {
        Preconditions.checkArgument(i <= tArr.length);
        return (T[]) Arrays.copyOf(tArr, i);
    }

    public static <T> T[] nullSafeArrayCopyOfRange(T[] tArr, int i, int i2) {
        Preconditions.checkArgument(i >= 0);
        Preconditions.checkArgument(i2 <= tArr.length);
        return (T[]) Arrays.copyOfRange(tArr, i, i2);
    }

    public static <T> T[] nullSafeArrayAppend(T[] tArr, T t) {
        Object[] objArrCopyOf = Arrays.copyOf(tArr, tArr.length + 1);
        objArrCopyOf[tArr.length] = t;
        return (T[]) castNonNullTypeArray(objArrCopyOf);
    }

    public static <T> T[] nullSafeArrayConcatenation(T[] tArr, T[] tArr2) {
        T[] tArr3 = (T[]) Arrays.copyOf(tArr, tArr.length + tArr2.length);
        System.arraycopy(tArr2, 0, tArr3, tArr.length, tArr2.length);
        return tArr3;
    }

    public static <T> void nullSafeListToArray(List<T> list, T[] array) {
        Preconditions.checkState(list.size() == array.length);
        list.toArray(array);
    }

    public static Handler createHandlerForCurrentLooper() {
        return createHandlerForCurrentLooper(null);
    }

    public static Handler createHandlerForCurrentLooper(Handler.Callback callback) {
        return createHandler((Looper) Preconditions.checkNotNull(Looper.myLooper()), callback);
    }

    public static Handler createHandlerForCurrentOrMainLooper() {
        return createHandlerForCurrentOrMainLooper(null);
    }

    public static Handler createHandlerForCurrentOrMainLooper(Handler.Callback callback) {
        return createHandler(getCurrentOrMainLooper(), callback);
    }

    public static Handler createHandler(Looper looper, Handler.Callback callback) {
        return new Handler(looper, callback);
    }

    public static boolean postOrRun(Handler handler, Runnable runnable) {
        Looper looper = handler.getLooper();
        if (!looper.getThread().isAlive()) {
            return false;
        }
        if (looper == Looper.myLooper()) {
            runnable.run();
            return true;
        }
        return handler.post(runnable);
    }

    public static boolean postOrRun(HandlerWrapper handler, Runnable runnable) {
        Looper looper = handler.getLooper();
        if (!looper.getThread().isAlive()) {
            return false;
        }
        if (looper == Looper.myLooper()) {
            runnable.run();
            return true;
        }
        return handler.post(runnable);
    }

    public static <T> ListenableFuture<T> postOrRunWithCompletion(Handler handler, final Runnable runnable, final T successValue) {
        final SettableFuture<T> outputFuture = SettableFuture.create();
        postOrRun(handler, new Runnable() { // from class: androidx.media3.common.util.Util$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                Util.lambda$postOrRunWithCompletion$0(outputFuture, runnable, successValue);
            }
        });
        return outputFuture;
    }

    static /* synthetic */ void lambda$postOrRunWithCompletion$0(SettableFuture outputFuture, Runnable runnable, Object successValue) {
        try {
            if (outputFuture.isCancelled()) {
                return;
            }
            runnable.run();
            outputFuture.set(successValue);
        } catch (Throwable e) {
            outputFuture.setException(e);
        }
    }

    public static <T, U> ListenableFuture<T> transformFutureAsync(final ListenableFuture<U> future, final AsyncFunction<U, T> transformFunction) {
        final SettableFuture<T> outputFuture = SettableFuture.create();
        outputFuture.addListener(new Runnable() { // from class: androidx.media3.common.util.Util$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                Util.lambda$transformFutureAsync$1(outputFuture, future);
            }
        }, MoreExecutors.directExecutor());
        future.addListener(new Runnable() { // from class: androidx.media3.common.util.Util$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                Util.lambda$transformFutureAsync$2(future, outputFuture, transformFunction);
            }
        }, MoreExecutors.directExecutor());
        return outputFuture;
    }

    static /* synthetic */ void lambda$transformFutureAsync$1(SettableFuture outputFuture, ListenableFuture future) {
        if (outputFuture.isCancelled()) {
            future.cancel(false);
        }
    }

    static /* synthetic */ void lambda$transformFutureAsync$2(ListenableFuture future, SettableFuture outputFuture, AsyncFunction transformFunction) {
        try {
            try {
                outputFuture.setFuture(transformFunction.apply(Futures.getDone(future)));
            } catch (Throwable exception) {
                outputFuture.setException(exception);
            }
        } catch (Error e) {
            error = e;
            outputFuture.setException(error);
        } catch (CancellationException e2) {
            outputFuture.cancel(false);
        } catch (RuntimeException e3) {
            error = e3;
            outputFuture.setException(error);
        } catch (ExecutionException exception2) {
            Throwable cause = exception2.getCause();
            outputFuture.setException(cause == null ? exception2 : cause);
        }
    }

    public static Looper getCurrentOrMainLooper() {
        Looper myLooper = Looper.myLooper();
        return myLooper != null ? myLooper : Looper.getMainLooper();
    }

    static /* synthetic */ Thread lambda$newSingleThreadExecutor$3(String threadName, Runnable runnable) {
        return new Thread(runnable, threadName);
    }

    public static ExecutorService newSingleThreadExecutor(final String threadName) {
        return Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: androidx.media3.common.util.Util$$ExternalSyntheticLambda2
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return Util.lambda$newSingleThreadExecutor$3(threadName, runnable);
            }
        });
    }

    static /* synthetic */ Thread lambda$newSingleThreadScheduledExecutor$4(String threadName, Runnable runnable) {
        return new Thread(runnable, threadName);
    }

    public static ScheduledExecutorService newSingleThreadScheduledExecutor(final String threadName) {
        return Executors.newSingleThreadScheduledExecutor(new ThreadFactory() { // from class: androidx.media3.common.util.Util$$ExternalSyntheticLambda4
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return Util.lambda$newSingleThreadScheduledExecutor$4(threadName, runnable);
            }
        });
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    public static boolean readBoolean(Parcel parcel) {
        return parcel.readInt() != 0;
    }

    public static void writeBoolean(Parcel parcel, boolean z) {
        parcel.writeInt(z ? 1 : 0);
    }

    public static String getLocaleLanguageTag(Locale locale) {
        return locale.toLanguageTag();
    }

    public static String normalizeLanguageCode(String language) {
        if (language == null) {
            return null;
        }
        String normalizedTag = language.replace('_', '-');
        if (normalizedTag.isEmpty() || normalizedTag.equals(C.LANGUAGE_UNDETERMINED)) {
            normalizedTag = language;
        }
        String normalizedTag2 = Ascii.toLowerCase(normalizedTag);
        String mainLanguage = splitAtFirst(normalizedTag2, "-")[0];
        if (languageTagReplacementMap == null) {
            languageTagReplacementMap = createIsoLanguageReplacementMap();
        }
        String replacedLanguage = languageTagReplacementMap.get(mainLanguage);
        if (replacedLanguage != null) {
            normalizedTag2 = replacedLanguage + normalizedTag2.substring(mainLanguage.length());
            mainLanguage = replacedLanguage;
        }
        if ("no".equals(mainLanguage) || CmcdData.OBJECT_TYPE_INIT_SEGMENT.equals(mainLanguage) || "zh".equals(mainLanguage)) {
            return maybeReplaceLegacyLanguageTags(normalizedTag2);
        }
        return normalizedTag2;
    }

    public static String loadAsset(Context context, String assetPath) throws IOException {
        InputStream inputStream = null;
        try {
            inputStream = context.getAssets().open(assetPath);
            return fromUtf8Bytes(ByteStreams.toByteArray(inputStream));
        } finally {
            closeQuietly(inputStream);
        }
    }

    public static String loadRawResource(Context context, int resId) throws IOException {
        InputStream inputStream = null;
        try {
            inputStream = context.getResources().openRawResource(resId);
            return fromUtf8Bytes(ByteStreams.toByteArray(inputStream));
        } finally {
            closeQuietly(inputStream);
        }
    }

    public static String fromUtf8Bytes(byte[] bytes) {
        return new String(bytes, StandardCharsets.UTF_8);
    }

    public static String fromUtf8Bytes(byte[] bytes, int offset, int length) {
        return new String(bytes, offset, length, StandardCharsets.UTF_8);
    }

    public static byte[] getUtf8Bytes(String value) {
        return value.getBytes(StandardCharsets.UTF_8);
    }

    public static String[] split(String value, String regex) {
        return value.split(regex, -1);
    }

    public static String[] splitAtFirst(String value, String regex) {
        return value.split(regex, 2);
    }

    public static boolean isLinebreak(int c) {
        return c == 10 || c == 13;
    }

    public static String formatInvariant(String format, Object... args) {
        return String.format(Locale.US, format, args);
    }

    public static int ceilDivide(int numerator, int denominator) {
        return ((numerator + denominator) - 1) / denominator;
    }

    public static long ceilDivide(long numerator, long denominator) {
        return ((numerator + denominator) - 1) / denominator;
    }

    public static int constrainValue(int value, int min, int max) {
        return Math.max(min, Math.min(value, max));
    }

    public static long constrainValue(long value, long min, long max) {
        return Math.max(min, Math.min(value, max));
    }

    public static float constrainValue(float value, float min, float max) {
        return Math.max(min, Math.min(value, max));
    }

    public static double constrainValue(double value, double min, double max) {
        return Math.max(min, Math.min(value, max));
    }

    public static long addWithOverflowDefault(long x, long y, long overflowResult) {
        long result = LongMath.saturatedAdd(x, y);
        if ((result == Long.MIN_VALUE && x + y != Long.MIN_VALUE) || (result == Long.MAX_VALUE && x + y != Long.MAX_VALUE)) {
            return overflowResult;
        }
        return result;
    }

    public static long subtractWithOverflowDefault(long x, long y, long overflowResult) {
        long result = LongMath.saturatedSubtract(x, y);
        if ((result == Long.MIN_VALUE && x - y != Long.MIN_VALUE) || (result == Long.MAX_VALUE && x - y != Long.MAX_VALUE)) {
            return overflowResult;
        }
        return result;
    }

    public static int percentInt(long numerator, long denominator) {
        long result;
        long numeratorTimes100 = LongMath.saturatedMultiply(numerator, 100L);
        if (numeratorTimes100 != Long.MAX_VALUE && numeratorTimes100 != Long.MIN_VALUE) {
            result = numeratorTimes100 / denominator;
        } else {
            result = numerator / (denominator / 100);
        }
        return Ints.saturatedCast(result);
    }

    public static float percentFloat(long numerator, long denominator) {
        if (denominator == 0 || numerator != denominator) {
            return (numerator / denominator) * 100.0f;
        }
        return 100.0f;
    }

    public static int linearSearch(int[] array, int value) {
        for (int i = 0; i < array.length; i++) {
            if (array[i] == value) {
                return i;
            }
        }
        return -1;
    }

    public static int linearSearch(long[] array, long value) {
        for (int i = 0; i < array.length; i++) {
            if (array[i] == value) {
                return i;
            }
        }
        return -1;
    }

    public static int binarySearchFloor(int[] array, int value, boolean inclusive, boolean stayInBounds) {
        int index = Arrays.binarySearch(array, value);
        if (index < 0) {
            index = -(index + 2);
        } else {
            do {
                index--;
                if (index < 0) {
                    break;
                }
            } while (array[index] == value);
            if (inclusive) {
                index++;
            }
        }
        return stayInBounds ? Math.max(0, index) : index;
    }

    public static int binarySearchFloor(long[] array, long value, boolean inclusive, boolean stayInBounds) {
        int index = Arrays.binarySearch(array, value);
        if (index < 0) {
            index = -(index + 2);
        } else {
            do {
                index--;
                if (index < 0) {
                    break;
                }
            } while (array[index] == value);
            if (inclusive) {
                index++;
            }
        }
        return stayInBounds ? Math.max(0, index) : index;
    }

    public static <T extends Comparable<? super T>> int binarySearchFloor(List<? extends Comparable<? super T>> list, T value, boolean inclusive, boolean stayInBounds) {
        int index = Collections.binarySearch(list, value);
        if (index < 0) {
            index = -(index + 2);
        } else {
            do {
                index--;
                if (index < 0) {
                    break;
                }
            } while (list.get(index).compareTo(value) == 0);
            if (inclusive) {
                index++;
            }
        }
        return stayInBounds ? Math.max(0, index) : index;
    }

    public static int binarySearchFloor(LongArray longArray, long value, boolean inclusive, boolean stayInBounds) {
        int lowIndex = 0;
        int highIndex = longArray.size() - 1;
        while (lowIndex <= highIndex) {
            int midIndex = (lowIndex + highIndex) >>> 1;
            if (longArray.get(midIndex) < value) {
                lowIndex = midIndex + 1;
            } else {
                highIndex = midIndex - 1;
            }
        }
        if (inclusive && highIndex + 1 < longArray.size() && longArray.get(highIndex + 1) == value) {
            return highIndex + 1;
        }
        if (stayInBounds && highIndex == -1) {
            return 0;
        }
        return highIndex;
    }

    public static int binarySearchCeil(int[] array, int value, boolean inclusive, boolean stayInBounds) {
        int index = Arrays.binarySearch(array, value);
        if (index < 0) {
            index = ~index;
        } else {
            do {
                index++;
                if (index >= array.length) {
                    break;
                }
            } while (array[index] == value);
            if (inclusive) {
                index--;
            }
        }
        return stayInBounds ? Math.min(array.length - 1, index) : index;
    }

    public static int binarySearchCeil(long[] array, long value, boolean inclusive, boolean stayInBounds) {
        int index = Arrays.binarySearch(array, value);
        if (index < 0) {
            index = ~index;
        } else {
            do {
                index++;
                if (index >= array.length) {
                    break;
                }
            } while (array[index] == value);
            if (inclusive) {
                index--;
            }
        }
        return stayInBounds ? Math.min(array.length - 1, index) : index;
    }

    public static <T extends Comparable<? super T>> int binarySearchCeil(List<? extends Comparable<? super T>> list, T value, boolean inclusive, boolean stayInBounds) {
        int index = Collections.binarySearch(list, value);
        if (index < 0) {
            index = ~index;
        } else {
            int listSize = list.size();
            do {
                index++;
                if (index >= listSize) {
                    break;
                }
            } while (list.get(index).compareTo(value) == 0);
            if (inclusive) {
                index--;
            }
        }
        return stayInBounds ? Math.min(list.size() - 1, index) : index;
    }

    public static boolean isSorted(long[] values) {
        for (int i = 0; i < values.length - 1; i++) {
            if (values[i] > values[i + 1]) {
                return false;
            }
        }
        return true;
    }

    @Deprecated
    public static int compareLong(long left, long right) {
        return Long.compare(left, right);
    }

    public static long minValue(SparseLongArray sparseLongArray) {
        if (sparseLongArray.size() == 0) {
            throw new NoSuchElementException();
        }
        long min = Long.MAX_VALUE;
        for (int i = 0; i < sparseLongArray.size(); i++) {
            min = Math.min(min, sparseLongArray.valueAt(i));
        }
        return min;
    }

    public static long maxValue(SparseLongArray sparseLongArray) {
        if (sparseLongArray.size() == 0) {
            throw new NoSuchElementException();
        }
        long max = Long.MIN_VALUE;
        for (int i = 0; i < sparseLongArray.size(); i++) {
            max = Math.max(max, sparseLongArray.valueAt(i));
        }
        return max;
    }

    public static long usToMs(long timeUs) {
        return (timeUs == C.TIME_UNSET || timeUs == Long.MIN_VALUE) ? timeUs : timeUs / 1000;
    }

    public static long msToUs(long timeMs) {
        return (timeMs == C.TIME_UNSET || timeMs == Long.MIN_VALUE) ? timeMs : 1000 * timeMs;
    }

    public static long sampleCountToDurationUs(long sampleCount, int sampleRate) {
        return scaleLargeValue(sampleCount, 1000000L, sampleRate, RoundingMode.DOWN);
    }

    public static long durationUsToSampleCount(long durationUs, int sampleRate) {
        return scaleLargeValue(durationUs, sampleRate, 1000000L, RoundingMode.UP);
    }

    public static long parseXsDuration(String value) {
        Matcher matcher = XS_DURATION_PATTERN.matcher(value);
        if (matcher.matches()) {
            boolean negated = true ^ TextUtils.isEmpty(matcher.group(1));
            String years = matcher.group(3);
            double durationSeconds = years != null ? Double.parseDouble(years) * 3.1556908E7d : 0.0d;
            String months = matcher.group(5);
            double durationSeconds2 = durationSeconds + (months != null ? Double.parseDouble(months) * 2629739.0d : 0.0d);
            String days = matcher.group(7);
            double durationSeconds3 = durationSeconds2 + (days != null ? Double.parseDouble(days) * 86400.0d : 0.0d);
            String hours = matcher.group(10);
            double durationSeconds4 = durationSeconds3 + (hours != null ? Double.parseDouble(hours) * 3600.0d : 0.0d);
            String minutes = matcher.group(12);
            double durationSeconds5 = durationSeconds4 + (minutes != null ? Double.parseDouble(minutes) * 60.0d : 0.0d);
            String seconds = matcher.group(14);
            long durationMillis = (long) (1000.0d * (durationSeconds5 + (seconds != null ? Double.parseDouble(seconds) : 0.0d)));
            return negated ? -durationMillis : durationMillis;
        }
        return (long) (Double.parseDouble(value) * 3600.0d * 1000.0d);
    }

    public static long parseXsDateTime(String value) throws ParserException {
        int timezoneShift;
        Matcher matcher = XS_DATE_TIME_PATTERN.matcher(value);
        if (!matcher.matches()) {
            throw ParserException.createForMalformedContainer("Invalid date/time format: " + value, null);
        }
        if (matcher.group(9) == null || matcher.group(9).equalsIgnoreCase("Z")) {
            timezoneShift = 0;
        } else {
            timezoneShift = Integer.parseInt(matcher.group(12)) * 60;
            String timezoneOffsetMinutes = matcher.group(13);
            if (timezoneOffsetMinutes != null) {
                timezoneShift += Integer.parseInt(timezoneOffsetMinutes);
            }
            if ("-".equals(matcher.group(11))) {
                timezoneShift *= -1;
            }
        }
        Calendar dateTime = new GregorianCalendar(DesugarTimeZone.getTimeZone("GMT"));
        dateTime.clear();
        dateTime.set(Integer.parseInt(matcher.group(1)), Integer.parseInt(matcher.group(2)) - 1, Integer.parseInt(matcher.group(3)), Integer.parseInt(matcher.group(4)), Integer.parseInt(matcher.group(5)), Integer.parseInt(matcher.group(6)));
        if (!TextUtils.isEmpty(matcher.group(8))) {
            BigDecimal bd = new BigDecimal("0." + matcher.group(8));
            dateTime.set(14, bd.movePointRight(3).intValue());
        }
        long time = dateTime.getTimeInMillis();
        if (timezoneShift != 0) {
            return time - (((long) timezoneShift) * 60000);
        }
        return time;
    }

    public static long scaleLargeValue(long value, long multiplier, long divisor, RoundingMode roundingMode) {
        if (value == 0 || multiplier == 0) {
            return 0L;
        }
        if (divisor >= multiplier && divisor % multiplier == 0) {
            long divisionFactor = LongMath.divide(divisor, multiplier, RoundingMode.UNNECESSARY);
            return LongMath.divide(value, divisionFactor, roundingMode);
        }
        if (divisor < multiplier && multiplier % divisor == 0) {
            long multiplicationFactor = LongMath.divide(multiplier, divisor, RoundingMode.UNNECESSARY);
            return LongMath.saturatedMultiply(value, multiplicationFactor);
        }
        if (divisor >= value && divisor % value == 0) {
            long divisionFactor2 = LongMath.divide(divisor, value, RoundingMode.UNNECESSARY);
            return LongMath.divide(multiplier, divisionFactor2, roundingMode);
        }
        if (divisor < value && value % divisor == 0) {
            long multiplicationFactor2 = LongMath.divide(value, divisor, RoundingMode.UNNECESSARY);
            return LongMath.saturatedMultiply(multiplier, multiplicationFactor2);
        }
        long multiplicationFactor3 = scaleLargeValueFallback(value, multiplier, divisor, roundingMode);
        return multiplicationFactor3;
    }

    public static long[] scaleLargeValues(List<Long> values, long multiplier, long divisor, RoundingMode roundingMode) {
        long j = multiplier;
        long j2 = divisor;
        RoundingMode roundingMode2 = roundingMode;
        long[] result = new long[values.size()];
        if (j == 0) {
            return result;
        }
        if (j2 >= j && j2 % j == 0) {
            long divisionFactor = LongMath.divide(j2, j, RoundingMode.UNNECESSARY);
            for (int i = 0; i < result.length; i++) {
                result[i] = LongMath.divide(values.get(i).longValue(), divisionFactor, roundingMode2);
            }
            return result;
        }
        if (j2 < j && j % j2 == 0) {
            long multiplicationFactor = LongMath.divide(j, j2, RoundingMode.UNNECESSARY);
            for (int i2 = 0; i2 < result.length; i2++) {
                result[i2] = LongMath.saturatedMultiply(values.get(i2).longValue(), multiplicationFactor);
            }
            return result;
        }
        int i3 = 0;
        while (i3 < result.length) {
            long value = values.get(i3).longValue();
            if (value != 0) {
                if (j2 >= value && j2 % value == 0) {
                    long divisionFactor2 = LongMath.divide(j2, value, RoundingMode.UNNECESSARY);
                    result[i3] = LongMath.divide(j, divisionFactor2, roundingMode2);
                } else if (j2 < value && value % j2 == 0) {
                    long multiplicationFactor2 = LongMath.divide(value, j2, RoundingMode.UNNECESSARY);
                    result[i3] = LongMath.saturatedMultiply(j, multiplicationFactor2);
                } else {
                    result[i3] = scaleLargeValueFallback(value, j, j2, roundingMode2);
                }
            }
            i3++;
            j = multiplier;
            j2 = divisor;
            roundingMode2 = roundingMode;
        }
        return result;
    }

    public static void scaleLargeValuesInPlace(long[] values, long multiplier, long divisor, RoundingMode roundingMode) {
        if (multiplier == 0) {
            Arrays.fill(values, 0L);
            return;
        }
        if (divisor >= multiplier && divisor % multiplier == 0) {
            long divisionFactor = LongMath.divide(divisor, multiplier, RoundingMode.UNNECESSARY);
            for (int i = 0; i < values.length; i++) {
                values[i] = LongMath.divide(values[i], divisionFactor, roundingMode);
            }
            return;
        }
        if (divisor < multiplier && multiplier % divisor == 0) {
            long multiplicationFactor = LongMath.divide(multiplier, divisor, RoundingMode.UNNECESSARY);
            for (int i2 = 0; i2 < values.length; i2++) {
                values[i2] = LongMath.saturatedMultiply(values[i2], multiplicationFactor);
            }
            return;
        }
        for (int i3 = 0; i3 < values.length; i3++) {
            if (values[i3] != 0) {
                if (divisor >= values[i3] && divisor % values[i3] == 0) {
                    long divisionFactor2 = LongMath.divide(divisor, values[i3], RoundingMode.UNNECESSARY);
                    values[i3] = LongMath.divide(multiplier, divisionFactor2, roundingMode);
                } else if (divisor < values[i3] && values[i3] % divisor == 0) {
                    long multiplicationFactor2 = LongMath.divide(values[i3], divisor, RoundingMode.UNNECESSARY);
                    values[i3] = LongMath.saturatedMultiply(multiplier, multiplicationFactor2);
                } else {
                    values[i3] = scaleLargeValueFallback(values[i3], multiplier, divisor, roundingMode);
                }
            }
        }
    }

    private static long scaleLargeValueFallback(long value, long multiplier, long divisor, RoundingMode roundingMode) {
        long numerator = LongMath.saturatedMultiply(value, multiplier);
        if (numerator == Long.MAX_VALUE || numerator == Long.MIN_VALUE) {
            long gcdOfMultiplierAndDivisor = LongMath.gcd(Math.abs(multiplier), Math.abs(divisor));
            long simplifiedMultiplier = LongMath.divide(multiplier, gcdOfMultiplierAndDivisor, RoundingMode.UNNECESSARY);
            long simplifiedDivisor = LongMath.divide(divisor, gcdOfMultiplierAndDivisor, RoundingMode.UNNECESSARY);
            long gcdOfValueAndSimplifiedDivisor = LongMath.gcd(Math.abs(value), Math.abs(simplifiedDivisor));
            long simplifiedValue = LongMath.divide(value, gcdOfValueAndSimplifiedDivisor, RoundingMode.UNNECESSARY);
            long simplifiedDivisor2 = LongMath.divide(simplifiedDivisor, gcdOfValueAndSimplifiedDivisor, RoundingMode.UNNECESSARY);
            long simplifiedNumerator = LongMath.saturatedMultiply(simplifiedValue, simplifiedMultiplier);
            if (simplifiedNumerator != Long.MAX_VALUE && simplifiedNumerator != Long.MIN_VALUE) {
                return LongMath.divide(simplifiedNumerator, simplifiedDivisor2, roundingMode);
            }
            double multiplicationFactor = simplifiedMultiplier / simplifiedDivisor2;
            double multiplicationFactor2 = simplifiedValue;
            double result = multiplicationFactor2 * multiplicationFactor;
            if (result > 9.223372036854776E18d) {
                return Long.MAX_VALUE;
            }
            if (result < -9.223372036854776E18d) {
                return Long.MIN_VALUE;
            }
            return DoubleMath.roundToLong(result, roundingMode);
        }
        return LongMath.divide(numerator, divisor, roundingMode);
    }

    public static long scaleLargeTimestamp(long timestamp, long multiplier, long divisor) {
        return scaleLargeValue(timestamp, multiplier, divisor, RoundingMode.DOWN);
    }

    public static long[] scaleLargeTimestamps(List<Long> timestamps, long multiplier, long divisor) {
        return scaleLargeValues(timestamps, multiplier, divisor, RoundingMode.DOWN);
    }

    public static void scaleLargeTimestampsInPlace(long[] timestamps, long multiplier, long divisor) {
        scaleLargeValuesInPlace(timestamps, multiplier, divisor, RoundingMode.DOWN);
    }

    public static long getMediaDurationForPlayoutDuration(long playoutDuration, float speed) {
        if (speed == 1.0f) {
            return playoutDuration;
        }
        return Math.round(playoutDuration * ((double) speed));
    }

    public static long getPlayoutDurationForMediaDuration(long mediaDuration, float speed) {
        if (speed == 1.0f) {
            return mediaDuration;
        }
        return Math.round(mediaDuration / ((double) speed));
    }

    public static int getIntegerCodeForString(String string) {
        int length = string.length();
        Preconditions.checkArgument(length <= 4);
        int result = 0;
        for (int i = 0; i < length; i++) {
            result = (result << 8) | string.charAt(i);
        }
        return result;
    }

    public static long toUnsignedLong(int x) {
        return ((long) x) & 4294967295L;
    }

    public static long toLong(int mostSignificantBits, int leastSignificantBits) {
        return (toUnsignedLong(mostSignificantBits) << 32) | toUnsignedLong(leastSignificantBits);
    }

    public static byte[] getBytesFromHexString(String hexString) {
        return BaseEncoding.base16().ignoreCase().decode(hexString);
    }

    public static String toHexString(byte[] bytes) {
        return BaseEncoding.base16().lowerCase().encode(bytes);
    }

    public static String toFourccString(int fourcc) {
        return new String(Ints.toByteArray(fourcc), StandardCharsets.US_ASCII);
    }

    public static String getUserAgent(Context context, String applicationName) {
        String versionName;
        try {
            String packageName = context.getPackageName();
            PackageInfo info = context.getPackageManager().getPackageInfo(packageName, 0);
            versionName = info.versionName;
        } catch (PackageManager.NameNotFoundException e) {
            versionName = "?";
        }
        return applicationName + "/" + versionName + " (Linux;Android " + Build.VERSION.RELEASE + ") " + MediaLibraryInfo.VERSION_SLASHY;
    }

    public static int getCodecCountOfType(String codecs, int trackType) {
        String[] codecArray = splitCodecs(codecs);
        int count = 0;
        for (String codec : codecArray) {
            if (trackType == MimeTypes.getTrackTypeOfCodec(codec)) {
                count++;
            }
        }
        return count;
    }

    public static String getCodecsOfType(String codecs, int trackType) {
        String[] codecArray = splitCodecs(codecs);
        if (codecArray.length == 0) {
            return null;
        }
        StringBuilder builder = new StringBuilder();
        for (String codec : codecArray) {
            if (trackType == MimeTypes.getTrackTypeOfCodec(codec)) {
                if (builder.length() > 0) {
                    builder.append(",");
                }
                builder.append(codec);
            }
        }
        if (builder.length() > 0) {
            return builder.toString();
        }
        return null;
    }

    public static ColorInfo getColorInfoForDolbyVision(String codecs, String supplementalCodecs, String supplementalProfiles) {
        if (codecs == null) {
            return null;
        }
        int colorSpace = -1;
        int colorRange = -1;
        int colorTransfer = -1;
        if (!MimeTypes.isDolbyVisionCodec(codecs, supplementalCodecs)) {
            return null;
        }
        if (codecs.startsWith("dvhe") || codecs.startsWith("dvh1") || codecs.startsWith("dav1")) {
            colorSpace = 6;
            colorTransfer = 6;
            colorRange = 1;
        } else if (supplementalProfiles != null) {
            if (supplementalProfiles.equals("db1p")) {
                colorSpace = 6;
                colorTransfer = 6;
                colorRange = 2;
            } else if (supplementalProfiles.startsWith("db4")) {
                colorSpace = 6;
                colorTransfer = 7;
                colorRange = 2;
            }
        }
        if (colorSpace == -1) {
            return null;
        }
        return new ColorInfo.Builder().setColorSpace(colorSpace).setColorRange(colorRange).setColorTransfer(colorTransfer).build();
    }

    public static String getCodecsWithoutType(String codecs, int trackType) {
        String[] codecArray = splitCodecs(codecs);
        if (codecArray.length == 0) {
            return null;
        }
        StringBuilder builder = new StringBuilder();
        for (String codec : codecArray) {
            if (trackType != MimeTypes.getTrackTypeOfCodec(codec)) {
                if (builder.length() > 0) {
                    builder.append(",");
                }
                builder.append(codec);
            }
        }
        if (builder.length() > 0) {
            return builder.toString();
        }
        return null;
    }

    public static String[] splitCodecs(String codecs) {
        if (TextUtils.isEmpty(codecs)) {
            return new String[0];
        }
        return split(codecs.trim(), "(\\s*,\\s*)");
    }

    public static Format getPcmFormat(int pcmEncoding, int channels, int sampleRate) {
        return new Format.Builder().setSampleMimeType(MimeTypes.AUDIO_RAW).setChannelCount(channels).setSampleRate(sampleRate).setPcmEncoding(pcmEncoding).build();
    }

    public static Format getPcmFormat(AudioProcessor.AudioFormat audioFormat) {
        return getPcmFormat(audioFormat.encoding, audioFormat.channelCount, audioFormat.sampleRate);
    }

    public static int getPcmEncoding(int bitDepth) {
        return getPcmEncoding(bitDepth, ByteOrder.LITTLE_ENDIAN);
    }

    public static int getPcmEncoding(int bitDepth, ByteOrder byteOrder) {
        switch (bitDepth) {
            case 8:
                return 3;
            case 16:
                if (byteOrder.equals(ByteOrder.LITTLE_ENDIAN)) {
                    return 2;
                }
                return 268435456;
            case 24:
                if (byteOrder.equals(ByteOrder.LITTLE_ENDIAN)) {
                    return 21;
                }
                return C.ENCODING_PCM_24BIT_BIG_ENDIAN;
            case 32:
                if (byteOrder.equals(ByteOrder.LITTLE_ENDIAN)) {
                    return 22;
                }
                return C.ENCODING_PCM_32BIT_BIG_ENDIAN;
            default:
                return 0;
        }
    }

    public static boolean isEncodingLinearPcm(int encoding) {
        return encoding == 3 || encoding == 2 || encoding == 268435456 || encoding == 21 || encoding == 1342177280 || encoding == 22 || encoding == 1610612736 || encoding == 4 || encoding == 1879048192;
    }

    public static boolean isEncodingHighResolutionPcm(int encoding) {
        return encoding == 21 || encoding == 1342177280 || encoding == 22 || encoding == 1610612736 || encoding == 4 || encoding == 1879048192;
    }

    public static int getAudioTrackChannelConfig(int channelCount) {
        switch (channelCount) {
            case 10:
                if (Build.VERSION.SDK_INT >= 32) {
                }
                break;
            case 13:
                if (Build.VERSION.SDK_INT >= 32) {
                }
                break;
            case 14:
                if (Build.VERSION.SDK_INT >= 32) {
                }
                break;
            case 16:
                if (Build.VERSION.SDK_INT >= 32) {
                }
                break;
            case 24:
                if (Build.VERSION.SDK_INT >= 32) {
                }
                break;
        }
        return 0;
    }

    public static AudioFormat getAudioFormat(int sampleRate, int channelConfig, int encoding) {
        return new AudioFormat.Builder().setSampleRate(sampleRate).setChannelMask(channelConfig).setEncoding(encoding).build();
    }

    public static int getApiLevelThatAudioFormatIntroducedAudioEncoding(int encoding) {
        switch (encoding) {
            case 2:
            case 3:
                return 3;
            case 4:
            case 5:
            case 6:
                return 21;
            case 7:
            case 8:
                return 23;
            case 9:
            case 10:
            case 11:
            case 12:
            case 15:
            case 16:
            case 17:
            case 18:
                return 28;
            case 13:
            case 19:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            default:
                return Integer.MAX_VALUE;
            case 14:
                return 25;
            case 20:
                return 30;
            case 21:
            case 22:
                return 31;
            case 30:
            case 31:
                return 34;
        }
    }

    public static int getPcmFrameSize(int pcmEncoding, int channelCount) {
        return getByteDepth(pcmEncoding) * channelCount;
    }

    public static int getByteDepth(int pcmEncoding) {
        switch (pcmEncoding) {
            case 2:
            case 268435456:
                return 2;
            case 3:
                return 1;
            case 4:
            case 22:
            case C.ENCODING_PCM_32BIT_BIG_ENDIAN /* 1610612736 */:
                return 4;
            case 21:
            case C.ENCODING_PCM_24BIT_BIG_ENDIAN /* 1342177280 */:
                return 3;
            case C.ENCODING_PCM_DOUBLE /* 1879048192 */:
                return 8;
            default:
                throw new IllegalArgumentException();
        }
    }

    public static int getAudioUsageForStreamType(int streamType) {
        switch (streamType) {
            case 0:
                return 2;
            case 1:
                return 13;
            case 2:
                return 6;
            case 3:
            case 6:
            case 7:
            case 9:
            default:
                return 1;
            case 4:
                return 4;
            case 5:
                return 5;
            case 8:
                return 3;
            case 10:
                return 11;
        }
    }

    @Deprecated
    public static int getAudioContentTypeForStreamType(int streamType) {
        switch (streamType) {
            case 0:
            case 10:
                return 1;
            case 1:
            case 2:
            case 4:
            case 5:
            case 8:
                return 4;
            case 3:
            case 6:
            case 7:
            case 9:
            default:
                return 2;
        }
    }

    @Deprecated
    public static int getStreamTypeForAudioUsage(int usage) {
        switch (usage) {
        }
        return 3;
    }

    public static int generateAudioSessionIdV21(Context context) {
        int audioSessionId = AudioManagerCompat.getAudioManager(context).generateAudioSessionId();
        if (audioSessionId != -1) {
            return audioSessionId;
        }
        return 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:14:0x002c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static UUID getDrmUuid(String drmScheme) {
        switch (Ascii.toLowerCase(drmScheme)) {
            case "widevine":
                return C.WIDEVINE_UUID;
            case "playready":
                return C.PLAYREADY_UUID;
            case "clearkey":
                return C.CLEARKEY_UUID;
            default:
                try {
                    return UUID.fromString(drmScheme);
                } catch (RuntimeException e) {
                    return null;
                }
        }
    }

    public static int getErrorCodeForMediaDrmErrorCode(int mediaDrmErrorCode) {
        switch (mediaDrmErrorCode) {
            case 2:
            case 4:
            case 7:
            case 16:
            case 18:
                return PlaybackException.ERROR_CODE_DRM_DISALLOWED_OPERATION;
            case 3:
            case 5:
            case 6:
            case 9:
            case 11:
            case 12:
            case 13:
            case 14:
            case 23:
            default:
                return PlaybackException.ERROR_CODE_DRM_SYSTEM_ERROR;
            case 8:
            case 15:
                return PlaybackException.ERROR_CODE_DRM_CONTENT_ERROR;
            case 10:
            case 17:
            case 19:
            case 20:
            case 21:
            case 22:
                return PlaybackException.ERROR_CODE_DRM_LICENSE_ACQUISITION_FAILED;
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
                return PlaybackException.ERROR_CODE_DRM_PROVISIONING_FAILED;
        }
    }

    @Deprecated
    public static int inferContentType(Uri uri, String overrideExtension) {
        if (TextUtils.isEmpty(overrideExtension)) {
            return inferContentType(uri);
        }
        return inferContentTypeForExtension(overrideExtension);
    }

    public static int inferContentType(Uri uri) {
        int contentType;
        String scheme = uri.getScheme();
        if (scheme != null && (Ascii.equalsIgnoreCase("rtsp", scheme) || Ascii.equalsIgnoreCase("rtspt", scheme))) {
            return 3;
        }
        String lastPathSegment = uri.getLastPathSegment();
        if (lastPathSegment == null) {
            return 4;
        }
        int lastDotIndex = lastPathSegment.lastIndexOf(46);
        if (lastDotIndex >= 0 && (contentType = inferContentTypeForExtension(lastPathSegment.substring(lastDotIndex + 1))) != 4) {
            return contentType;
        }
        Matcher ismMatcher = ISM_PATH_PATTERN.matcher((CharSequence) Preconditions.checkNotNull(uri.getPath()));
        if (!ismMatcher.matches()) {
            return 4;
        }
        String extensions = ismMatcher.group(2);
        if (extensions != null) {
            if (extensions.contains(ISM_DASH_FORMAT_EXTENSION)) {
                return 0;
            }
            if (extensions.contains(ISM_HLS_FORMAT_EXTENSION)) {
                return 2;
            }
            return 1;
        }
        return 1;
    }

    @Deprecated
    public static int inferContentType(String fileName) {
        return inferContentType(Uri.parse("file:///" + fileName));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0038  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int inferContentTypeForExtension(String fileExtension) {
        switch (Ascii.toLowerCase(fileExtension)) {
            case "mpd":
                return 0;
            case "m3u8":
                return 2;
            case "ism":
            case "isml":
                return 1;
            default:
                return 4;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int inferContentTypeForUriAndMimeType(Uri uri, String mimeType) {
        if (mimeType == null) {
            return inferContentType(uri);
        }
        switch (mimeType) {
            case "application/dash+xml":
                return 0;
            case "application/x-mpegURL":
                return 2;
            case "application/vnd.ms-sstr+xml":
                return 1;
            case "application/x-rtsp":
                return 3;
            default:
                return 4;
        }
    }

    public static String getAdaptiveMimeTypeForContentType(int contentType) {
        switch (contentType) {
            case 0:
                return MimeTypes.APPLICATION_MPD;
            case 1:
                return MimeTypes.APPLICATION_SS;
            case 2:
                return MimeTypes.APPLICATION_M3U8;
            default:
                return null;
        }
    }

    public static Uri fixSmoothStreamingIsmManifestUri(Uri uri) {
        String path = uri.getPath();
        if (path == null) {
            return uri;
        }
        Matcher ismMatcher = ISM_PATH_PATTERN.matcher(path);
        if (ismMatcher.matches() && ismMatcher.group(1) == null) {
            return Uri.withAppendedPath(uri, "Manifest");
        }
        return uri;
    }

    public static String getStringForTime(StringBuilder builder, Formatter formatter, long timeMs) {
        if (timeMs == C.TIME_UNSET) {
            timeMs = 0;
        }
        String prefix = timeMs < 0 ? "-" : "";
        long totalSeconds = (500 + Math.abs(timeMs)) / 1000;
        long seconds = totalSeconds % 60;
        long minutes = (totalSeconds / 60) % 60;
        long hours = totalSeconds / 3600;
        builder.setLength(0);
        if (hours > 0) {
            return formatter.format("%s%d:%02d:%02d", prefix, Long.valueOf(hours), Long.valueOf(minutes), Long.valueOf(seconds)).toString();
        }
        return formatter.format("%s%02d:%02d", prefix, Long.valueOf(minutes), Long.valueOf(seconds)).toString();
    }

    public static String getStringForTime(long timeMs) {
        StringBuilder builder = new StringBuilder();
        Formatter formatter = new Formatter(builder, Locale.getDefault());
        return getStringForTime(builder, formatter, timeMs);
    }

    public static String escapeFileName(String fileName) {
        int length = fileName.length();
        int charactersToEscapeCount = 0;
        for (int i = 0; i < length; i++) {
            if (shouldEscapeCharacter(fileName.charAt(i))) {
                charactersToEscapeCount++;
            }
        }
        if (charactersToEscapeCount == 0) {
            return fileName;
        }
        int i2 = 0;
        StringBuilder builder = new StringBuilder((charactersToEscapeCount * 2) + length);
        while (charactersToEscapeCount > 0) {
            int i3 = i2 + 1;
            char c = fileName.charAt(i2);
            if (shouldEscapeCharacter(c)) {
                builder.append('%').append(Integer.toHexString(c));
                charactersToEscapeCount--;
            } else {
                builder.append(c);
            }
            i2 = i3;
        }
        if (i2 < length) {
            builder.append((CharSequence) fileName, i2, length);
        }
        return builder.toString();
    }

    private static boolean shouldEscapeCharacter(char c) {
        switch (c) {
            case '\"':
            case '%':
            case '*':
            case MotionEventCompat.AXIS_GENERIC_16 /* 47 */:
            case ':':
            case '<':
            case RectListKt.BitOffsetForGesturable /* 62 */:
            case '?':
            case '\\':
            case '|':
                return true;
            default:
                return false;
        }
    }

    public static String unescapeFileName(String fileName) {
        int length = fileName.length();
        int percentCharacterCount = 0;
        for (int i = 0; i < length; i++) {
            if (fileName.charAt(i) == '%') {
                percentCharacterCount++;
            }
        }
        if (percentCharacterCount == 0) {
            return fileName;
        }
        int expectedLength = length - (percentCharacterCount * 2);
        StringBuilder builder = new StringBuilder(expectedLength);
        Matcher matcher = ESCAPED_CHARACTER_PATTERN.matcher(fileName);
        int startOfNotEscaped = 0;
        while (percentCharacterCount > 0 && matcher.find()) {
            char unescapedCharacter = (char) Integer.parseInt((String) Preconditions.checkNotNull(matcher.group(1)), 16);
            builder.append((CharSequence) fileName, startOfNotEscaped, matcher.start()).append(unescapedCharacter);
            startOfNotEscaped = matcher.end();
            percentCharacterCount--;
        }
        if (startOfNotEscaped < length) {
            builder.append((CharSequence) fileName, startOfNotEscaped, length);
        }
        if (builder.length() != expectedLength) {
            return null;
        }
        return builder.toString();
    }

    public static Uri getDataUriForString(String mimeType, String data) {
        return Uri.parse("data:" + mimeType + ";base64," + Base64.encodeToString(data.getBytes(), 2));
    }

    public static void sneakyThrow(Throwable t) throws Throwable {
        sneakyThrowInternal(t);
    }

    private static <T extends Throwable> void sneakyThrowInternal(Throwable t) throws Throwable {
        throw t;
    }

    public static void recursiveDelete(File fileOrDirectory) {
        File[] directoryFiles = fileOrDirectory.listFiles();
        if (directoryFiles != null) {
            for (File child : directoryFiles) {
                recursiveDelete(child);
            }
        }
        fileOrDirectory.delete();
    }

    public static File createTempDirectory(Context context, String prefix) throws IOException {
        File tempFile = createTempFile(context, prefix);
        tempFile.delete();
        tempFile.mkdir();
        return tempFile;
    }

    public static File createTempFile(Context context, String prefix) throws IOException {
        return File.createTempFile(prefix, null, (File) Preconditions.checkNotNull(context.getCacheDir()));
    }

    public static int crc32(byte[] bytes, int start, int end, int initialValue) {
        for (int i = start; i < end; i++) {
            initialValue = (initialValue << 8) ^ CRC32_BYTES_MSBF[((initialValue >>> 24) ^ (bytes[i] & 255)) & 255];
        }
        return initialValue;
    }

    public static int crc16(byte[] bytes, int start, int end, int initialValue) {
        for (int i = start; i < end; i++) {
            int value = UnsignedBytes.toInt(bytes[i]);
            initialValue = crc16UpdateFourBits(value & 15, crc16UpdateFourBits(value >> 4, initialValue));
        }
        return initialValue;
    }

    private static int crc16UpdateFourBits(int value, int crc16Register) {
        int mostSignificant4Bits = (crc16Register >> 12) & 255;
        return (CRC16_BYTES_MSBF[(mostSignificant4Bits ^ value) & 255] ^ ((crc16Register << 4) & 65535)) & 65535;
    }

    public static int crc8(byte[] bytes, int start, int end, int initialValue) {
        for (int i = start; i < end; i++) {
            initialValue = CRC8_BYTES_MSBF[(bytes[i] & 255) ^ initialValue];
        }
        return initialValue;
    }

    public static byte[] gzip(byte[] input) {
        ByteArrayOutputStream output = new ByteArrayOutputStream();
        try {
            GZIPOutputStream os = new GZIPOutputStream(output);
            try {
                os.write(input);
                os.close();
                return output.toByteArray();
            } finally {
            }
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public static int getBigEndianInt(ByteBuffer buffer, int index) {
        int value = buffer.getInt(index);
        return buffer.order() == ByteOrder.BIG_ENDIAN ? value : Integer.reverseBytes(value);
    }

    public static ByteBuffer createReadOnlyByteBuffer(ByteBuffer byteBuffer) {
        return byteBuffer.asReadOnlyBuffer().order(byteBuffer.order());
    }

    public static String getCountryCode(Context context) {
        TelephonyManager telephonyManager;
        if (context != null && (telephonyManager = (TelephonyManager) context.getSystemService(HintConstants.AUTOFILL_HINT_PHONE)) != null) {
            String countryCode = telephonyManager.getNetworkCountryIso();
            if (!TextUtils.isEmpty(countryCode)) {
                return Ascii.toUpperCase(countryCode);
            }
        }
        return Ascii.toUpperCase(Locale.getDefault().getCountry());
    }

    public static String[] getSystemLanguageCodes() {
        String[] systemLocales = getSystemLocales();
        for (int i = 0; i < systemLocales.length; i++) {
            systemLocales[i] = normalizeLanguageCode(systemLocales[i]);
        }
        return systemLocales;
    }

    public static Locale getDefaultDisplayLocale() {
        return Locale.getDefault(Locale.Category.DISPLAY);
    }

    public static boolean inflate(ParsableByteArray input, ParsableByteArray output, Inflater inflater) {
        if (input.bytesLeft() == 0) {
            return false;
        }
        if (output.capacity() < input.bytesLeft()) {
            output.ensureCapacity(input.bytesLeft() * 2);
        }
        if (inflater == null) {
            inflater = new Inflater();
        }
        inflater.setInput(input.getData(), input.getPosition(), input.bytesLeft());
        int outputSize = 0;
        while (true) {
            try {
                outputSize += inflater.inflate(output.getData(), outputSize, output.capacity() - outputSize);
                if (!inflater.finished()) {
                    if (inflater.needsDictionary() || inflater.needsInput()) {
                        break;
                    }
                    if (outputSize == output.capacity()) {
                        output.ensureCapacity(output.capacity() * 2);
                    }
                } else {
                    output.setLimit(outputSize);
                    inflater.reset();
                    return true;
                }
            } catch (DataFormatException e) {
                return false;
            } finally {
                inflater.reset();
            }
        }
        return false;
    }

    public static boolean maybeInflate(ParsableByteArray input, ParsableByteArray output, Inflater inflater) {
        return input.bytesLeft() > 0 && input.peekUnsignedByte() == 120 && inflate(input, output, inflater);
    }

    public static boolean isTv(Context context) {
        UiModeManager uiModeManager = (UiModeManager) context.getApplicationContext().getSystemService("uimode");
        return uiModeManager != null && uiModeManager.getCurrentModeType() == 4;
    }

    public static boolean isAutomotive(Context context) {
        return context.getPackageManager().hasSystemFeature("android.hardware.type.automotive");
    }

    public static boolean isWear(Context context) {
        return context.getPackageManager().hasSystemFeature("android.hardware.type.watch");
    }

    public static Point getCurrentDisplayModeSize(Context context) {
        Display defaultDisplay = null;
        DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
        if (displayManager != null) {
            defaultDisplay = displayManager.getDisplay(0);
        }
        if (defaultDisplay == null) {
            WindowManager windowManager = (WindowManager) Preconditions.checkNotNull((WindowManager) context.getSystemService("window"));
            defaultDisplay = windowManager.getDefaultDisplay();
        }
        return getCurrentDisplayModeSize(context, defaultDisplay);
    }

    public static Point getCurrentDisplayModeSize(Context context, Display display) {
        String displaySize;
        if (display.getDisplayId() == 0 && isTv(context)) {
            if (Build.VERSION.SDK_INT < 28) {
                displaySize = getSystemProperty("sys.display-size");
            } else {
                displaySize = getSystemProperty("vendor.display-size");
            }
            if (!TextUtils.isEmpty(displaySize)) {
                try {
                    String[] displaySizeParts = split(displaySize.trim(), "x");
                    if (displaySizeParts.length == 2) {
                        int width = Integer.parseInt(displaySizeParts[0]);
                        int height = Integer.parseInt(displaySizeParts[1]);
                        if (width > 0 && height > 0) {
                            return new Point(width, height);
                        }
                    }
                } catch (NumberFormatException e) {
                }
                Log.e(TAG, "Invalid display size: " + displaySize);
            }
            if ("Sony".equals(Build.MANUFACTURER) && Build.MODEL.startsWith("BRAVIA") && context.getPackageManager().hasSystemFeature("com.sony.dtv.hardware.panel.qfhd")) {
                return new Point(3840, 2160);
            }
        }
        Point displaySize2 = new Point();
        getDisplaySize(display, displaySize2);
        return displaySize2;
    }

    public static String getTrackTypeString(int trackType) {
        switch (trackType) {
            case -2:
                return "none";
            case -1:
                return EnvironmentCompat.MEDIA_UNKNOWN;
            case 0:
                return "default";
            case 1:
                return MimeTypes.BASE_TYPE_AUDIO;
            case 2:
                return MimeTypes.BASE_TYPE_VIDEO;
            case 3:
                return "text";
            case 4:
                return "image";
            case 5:
                return TtmlNode.TAG_METADATA;
            case 6:
                return "camera motion";
            default:
                return trackType >= 10000 ? "custom (" + trackType + ")" : "?";
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0050  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean isBitmapFactorySupportedMimeType(String mimeType) {
        switch (mimeType) {
            case "image/png":
            case "image/jpeg":
            case "image/bmp":
            case "image/webp":
                return true;
            case "image/heif":
            case "image/heic":
                return Build.VERSION.SDK_INT >= 26;
            case "image/avif":
                return Build.VERSION.SDK_INT >= 34;
            default:
                return false;
        }
    }

    public static List<String> getSelectionFlagStrings(int selectionFlags) {
        List<String> result = new ArrayList<>();
        if ((selectionFlags & 4) != 0) {
            result.add("auto");
        }
        if ((selectionFlags & 1) != 0) {
            result.add("default");
        }
        if ((selectionFlags & 2) != 0) {
            result.add("forced");
        }
        return result;
    }

    public static List<String> getRoleFlagStrings(int roleFlags) {
        List<String> result = new ArrayList<>();
        if ((roleFlags & 1) != 0) {
            result.add("main");
        }
        if ((roleFlags & 2) != 0) {
            result.add("alt");
        }
        if ((roleFlags & 4) != 0) {
            result.add("supplementary");
        }
        if ((roleFlags & 8) != 0) {
            result.add("commentary");
        }
        if ((roleFlags & 16) != 0) {
            result.add("dub");
        }
        if ((roleFlags & 32) != 0) {
            result.add("emergency");
        }
        if ((roleFlags & 64) != 0) {
            result.add("caption");
        }
        if ((roleFlags & 128) != 0) {
            result.add("subtitle");
        }
        if ((roleFlags & 256) != 0) {
            result.add("sign");
        }
        if ((roleFlags & 512) != 0) {
            result.add("describes-video");
        }
        if ((roleFlags & 1024) != 0) {
            result.add("describes-music");
        }
        if ((roleFlags & 2048) != 0) {
            result.add("enhanced-intelligibility");
        }
        if ((roleFlags & 4096) != 0) {
            result.add("transcribes-dialog");
        }
        if ((roleFlags & 8192) != 0) {
            result.add("easy-read");
        }
        if ((roleFlags & 16384) != 0) {
            result.add("trick-play");
        }
        if ((32768 & roleFlags) != 0) {
            result.add("auxiliary");
        }
        return result;
    }

    public static String getAuxiliaryTrackTypeString(int auxiliaryTrackType) {
        switch (auxiliaryTrackType) {
            case 0:
                return "undefined";
            case 1:
                return "original";
            case 2:
                return "depth-linear";
            case 3:
                return "depth-inverse";
            case 4:
                return "depth metadata";
            default:
                throw new IllegalStateException("Unsupported auxiliary track type");
        }
    }

    public static long getNowUnixTimeMs(long elapsedRealtimeEpochOffsetMs) {
        if (elapsedRealtimeEpochOffsetMs == C.TIME_UNSET) {
            return System.currentTimeMillis();
        }
        return android.os.SystemClock.elapsedRealtime() + elapsedRealtimeEpochOffsetMs;
    }

    public static int getInt24(ByteBuffer buffer, int index) {
        byte component1 = buffer.get(buffer.order() == ByteOrder.BIG_ENDIAN ? index : index + 2);
        byte component2 = buffer.get(index + 1);
        byte component3 = buffer.get(buffer.order() == ByteOrder.BIG_ENDIAN ? index + 2 : index);
        return ((((component1 << Ascii.CAN) & (-16777216)) | ((component2 << Ascii.DLE) & 16711680)) | ((component3 << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK)) >> 8;
    }

    public static void putInt24(ByteBuffer buffer, int value) {
        byte component1;
        byte component3;
        Preconditions.checkArgument(((-16777216) & value) == 0 || (value & (-8388608)) == -8388608, "Value out of range of 24-bit integer: %s", Integer.toHexString(value));
        Preconditions.checkArgument(buffer.remaining() >= 3);
        if (buffer.order() == ByteOrder.BIG_ENDIAN) {
            component1 = (byte) ((value & 16711680) >> 16);
        } else {
            component1 = (byte) (value & 255);
        }
        byte component2 = (byte) ((65280 & value) >> 8);
        if (buffer.order() == ByteOrder.BIG_ENDIAN) {
            component3 = (byte) (value & 255);
        } else {
            component3 = (byte) ((16711680 & value) >> 16);
        }
        buffer.put(component1).put(component2).put(component3);
    }

    public static <T> void moveItems(List<T> items, int fromIndex, int toIndex, int newFromIndex) {
        ArrayDeque<T> removedItems = new ArrayDeque<>();
        int removedItemsLength = toIndex - fromIndex;
        for (int i = removedItemsLength - 1; i >= 0; i--) {
            removedItems.addFirst(items.remove(fromIndex + i));
        }
        int i2 = items.size();
        items.addAll(Math.min(newFromIndex, i2), removedItems);
    }

    public static boolean tableExists(SQLiteDatabase database, String tableName) {
        long count = DatabaseUtils.queryNumEntries(database, "sqlite_master", "tbl_name = ?", new String[]{tableName});
        return count > 0;
    }

    public static int getErrorCodeFromPlatformDiagnosticsInfo(String diagnosticsInfo) {
        String[] strings;
        int length;
        if (diagnosticsInfo == null || (length = (strings = split(diagnosticsInfo, "_")).length) < 2) {
            return 0;
        }
        String digitsSection = strings[length - 1];
        boolean isNegative = length >= 3 && "neg".equals(strings[length + (-2)]);
        try {
            int errorCode = Integer.parseInt((String) Preconditions.checkNotNull(digitsSection));
            return isNegative ? -errorCode : errorCode;
        } catch (NumberFormatException e) {
            return 0;
        }
    }

    public static int getBufferFlagsFromMediaCodecFlags(int mediaCodecFlags) {
        int flags = 0;
        if ((mediaCodecFlags & 1) == 1) {
            flags = 0 | 1;
        }
        if ((mediaCodecFlags & 4) == 4) {
            return flags | 4;
        }
        return flags;
    }

    public static boolean isFrameDropAllowedOnSurfaceInput(Context context) {
        return Build.VERSION.SDK_INT < 29 || context.getApplicationInfo().targetSdkVersion < 29 || (Build.VERSION.SDK_INT == 30 && (Ascii.equalsIgnoreCase(Build.MODEL, "moto g(20)") || Ascii.equalsIgnoreCase(Build.MODEL, "rmx3231"))) || (Build.VERSION.SDK_INT == 34 && Ascii.equalsIgnoreCase(Build.MODEL, "sm-x200"));
    }

    public static int getMaxPendingFramesCountForMediaCodecDecoders(Context context) {
        if (isFrameDropAllowedOnSurfaceInput(context)) {
            return 1;
        }
        return 5;
    }

    public static String getFormatSupportString(int formatSupport) {
        switch (formatSupport) {
            case 0:
                return "NO";
            case 1:
                return "NO_UNSUPPORTED_SUBTYPE";
            case 2:
                return "NO_UNSUPPORTED_DRM";
            case 3:
                return "NO_EXCEEDS_CAPABILITIES";
            case 4:
                return "YES";
            default:
                throw new IllegalStateException();
        }
    }

    public static Player.Commands getAvailableCommands(Player player, Player.Commands permanentAvailableCommands) {
        boolean isPlayingAd = player.isPlayingAd();
        boolean isCurrentMediaItemSeekable = player.isCurrentMediaItemSeekable();
        boolean hasPreviousMediaItem = player.hasPreviousMediaItem();
        boolean hasNextMediaItem = player.hasNextMediaItem();
        boolean isCurrentMediaItemLive = player.isCurrentMediaItemLive();
        boolean isCurrentMediaItemDynamic = player.isCurrentMediaItemDynamic();
        boolean isTimelineEmpty = player.getCurrentTimeline().isEmpty();
        boolean z = false;
        Player.Commands.Builder builderAddIf = new Player.Commands.Builder().addAll(permanentAvailableCommands).addIf(4, !isPlayingAd).addIf(5, isCurrentMediaItemSeekable && !isPlayingAd).addIf(6, hasPreviousMediaItem && !isPlayingAd).addIf(7, !isTimelineEmpty && (hasPreviousMediaItem || !isCurrentMediaItemLive || isCurrentMediaItemSeekable) && !isPlayingAd).addIf(8, hasNextMediaItem && !isPlayingAd).addIf(9, !isTimelineEmpty && (hasNextMediaItem || (isCurrentMediaItemLive && isCurrentMediaItemDynamic)) && !isPlayingAd).addIf(10, !isPlayingAd).addIf(11, isCurrentMediaItemSeekable && !isPlayingAd);
        if (isCurrentMediaItemSeekable && !isPlayingAd) {
            z = true;
        }
        return builderAddIf.addIf(12, z).build();
    }

    public static long sum(long... summands) {
        long sum = 0;
        for (long summand : summands) {
            sum += summand;
        }
        return sum;
    }

    public static Drawable getDrawable(Context context, Resources resources, int drawableRes) {
        return resources.getDrawable(drawableRes, context.getTheme());
    }

    public static String intToStringMaxRadix(int i) {
        return Integer.toString(i, 36);
    }

    @EnsuresNonNullIf(expression = {"#1"}, result = true)
    public static boolean shouldEnablePlayPauseButton(Player player) {
        if (player == null) {
            return false;
        }
        int playbackState = player.getPlaybackState();
        boolean hasMediaItem = (player.isCommandAvailable(16) && player.getCurrentMediaItem() == null) ? false : true;
        boolean canPlayPause = player.isCommandAvailable(1);
        boolean canPrepare = playbackState == 1 && player.isCommandAvailable(2);
        boolean canSeekToDefault = playbackState == 4 && player.isCommandAvailable(4);
        if (hasMediaItem) {
            return canPlayPause || canPrepare || canSeekToDefault;
        }
        return false;
    }

    @EnsuresNonNullIf(expression = {"#1"}, result = false)
    public static boolean shouldShowPlayButton(Player player) {
        return shouldShowPlayButton(player, true);
    }

    @EnsuresNonNullIf(expression = {"#1"}, result = false)
    public static boolean shouldShowPlayButton(Player player, boolean shouldShowPlayIfSuppressed) {
        if (player == null || !player.getPlayWhenReady() || player.getPlaybackState() == 1 || player.getPlaybackState() == 4) {
            return true;
        }
        return (!shouldShowPlayIfSuppressed || player.getPlaybackSuppressionReason() == 0 || player.getPlaybackSuppressionReason() == 4) ? false : true;
    }

    public static boolean handlePlayButtonAction(Player player) {
        if (player == null) {
            return false;
        }
        int state = player.getPlaybackState();
        boolean methodTriggered = false;
        if (state == 1 && player.isCommandAvailable(2)) {
            player.prepare();
            methodTriggered = true;
        } else if (state == 4 && player.isCommandAvailable(4)) {
            player.seekToDefaultPosition();
            methodTriggered = true;
        }
        if (player.isCommandAvailable(1)) {
            player.play();
            return true;
        }
        return methodTriggered;
    }

    public static boolean handlePauseButtonAction(Player player) {
        if (player != null && player.isCommandAvailable(1)) {
            player.pause();
            return true;
        }
        return false;
    }

    public static boolean handlePlayPauseButtonAction(Player player) {
        return handlePlayPauseButtonAction(player, true);
    }

    public static boolean handlePlayPauseButtonAction(Player player, boolean playIfSuppressed) {
        if (shouldShowPlayButton(player, playIfSuppressed)) {
            return handlePlayButtonAction(player);
        }
        return handlePauseButtonAction(player);
    }

    @CheckReturnValue
    public static Bundle convertToNullIfInvalid(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        bundle.setClassLoader((ClassLoader) Preconditions.checkNotNull(Util.class.getClassLoader()));
        try {
            bundle.isEmpty();
            return bundle;
        } catch (RuntimeException e) {
            Log.e(TAG, "Ignoring invalid bundle", e);
            return null;
        }
    }

    private static String getSystemProperty(String name) {
        try {
            Class<?> systemProperties = Class.forName("android.os.SystemProperties");
            Method getMethod = systemProperties.getMethod("get", String.class);
            return (String) getMethod.invoke(systemProperties, name);
        } catch (Exception e) {
            Log.e(TAG, "Failed to read system property " + name, e);
            return null;
        }
    }

    private static void getDisplaySize(Display display, Point outSize) {
        Display.Mode mode = display.getMode();
        outSize.x = mode.getPhysicalWidth();
        outSize.y = mode.getPhysicalHeight();
    }

    private static String[] getSystemLocales() {
        Configuration config = Resources.getSystem().getConfiguration();
        return getSystemLocalesV24(config);
    }

    private static String[] getSystemLocalesV24(Configuration config) {
        return split(config.getLocales().toLanguageTags(), ",");
    }

    private static HashMap<String, String> createIsoLanguageReplacementMap() {
        String[] iso2Languages = Locale.getISOLanguages();
        HashMap<String, String> replacedLanguages = new HashMap<>(iso2Languages.length + additionalIsoLanguageReplacements.length);
        for (String iso2 : iso2Languages) {
            try {
                String iso3 = new Locale(iso2).getISO3Language();
                if (!TextUtils.isEmpty(iso3)) {
                    replacedLanguages.put(iso3, iso2);
                }
            } catch (MissingResourceException e) {
            }
        }
        for (int i = 0; i < additionalIsoLanguageReplacements.length; i += 2) {
            replacedLanguages.put(additionalIsoLanguageReplacements[i], additionalIsoLanguageReplacements[i + 1]);
        }
        return replacedLanguages;
    }

    private static boolean requestExternalStoragePermission(Activity activity) {
        if (activity.checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") == 0) {
            return false;
        }
        activity.requestPermissions(new String[]{"android.permission.READ_EXTERNAL_STORAGE"}, 0);
        return true;
    }

    private static boolean requestReadMediaPermissions(Activity activity) {
        if (activity.checkSelfPermission("android.permission.READ_MEDIA_AUDIO") == 0 && activity.checkSelfPermission("android.permission.READ_MEDIA_VIDEO") == 0 && activity.checkSelfPermission("android.permission.READ_MEDIA_IMAGES") == 0) {
            return false;
        }
        activity.requestPermissions(new String[]{"android.permission.READ_MEDIA_AUDIO", "android.permission.READ_MEDIA_IMAGES", "android.permission.READ_MEDIA_VIDEO"}, 0);
        return true;
    }

    private static boolean isTrafficRestricted(Uri uri) {
        return "http".equals(uri.getScheme()) && !NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted((String) Preconditions.checkNotNull(uri.getHost()));
    }

    private static String maybeReplaceLegacyLanguageTags(String languageTag) {
        for (int i = 0; i < isoLegacyTagReplacements.length; i += 2) {
            if (languageTag.startsWith(isoLegacyTagReplacements[i])) {
                return isoLegacyTagReplacements[i + 1] + languageTag.substring(isoLegacyTagReplacements[i].length());
            }
        }
        return languageTag;
    }

    private static class Api24 {
        /* JADX INFO: Access modifiers changed from: private */
        public static void stopForeground(Service service, boolean removeNotification) {
            service.stopForeground(removeNotification ? 1 : 2);
        }

        private Api24() {
        }
    }

    private static class Api26 {
        private Api26() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void createNotificationChannel(NotificationManager notificationManager, String channelId, String channelName) {
            NotificationChannel channel = new NotificationChannel(channelId, channelName, 2);
            if (Build.VERSION.SDK_INT <= 27) {
                channel.setShowBadge(false);
            }
            notificationManager.createNotificationChannel(channel);
        }
    }

    private static class Api29 {
        public static void startForeground(Service mediaSessionService, int notificationId, Notification notification, int foregroundServiceType, String foregroundServiceManifestType) {
            try {
                mediaSessionService.startForeground(notificationId, notification, foregroundServiceType);
            } catch (RuntimeException e) {
                Log.e(Util.TAG, "The service must be declared with a foregroundServiceType that includes " + foregroundServiceManifestType);
                throw e;
            }
        }

        private Api29() {
        }
    }
}
