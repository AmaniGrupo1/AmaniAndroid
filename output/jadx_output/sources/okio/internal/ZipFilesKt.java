package okio.internal;

import java.io.Closeable;
import java.io.IOException;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.UShort;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt;
import okhttp3.internal.ws.WebSocketProtocol;
import okio.BufferedSource;
import okio.FileHandle;
import okio.FileSystem;
import okio.Okio;
import okio.Path;
import okio.ZipFileSystem;

/* JADX INFO: compiled from: ZipFiles.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000d\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u001a\"\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00160\u00142\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u0018H\u0002\u001a\u001f\u0010\u0019\u001a\u0004\u0018\u00010\f2\u0006\u0010\u001a\u001a\u00020\u00012\u0006\u0010\u001b\u001a\u00020\u0001H\u0000¢\u0006\u0002\u0010\u001c\u001a\u0010\u0010\u001d\u001a\u00020\f2\u0006\u0010\u001e\u001a\u00020\fH\u0000\u001a.\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u00152\u0006\u0010\"\u001a\u00020#2\u0014\b\u0002\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020&0%H\u0000\u001a\f\u0010'\u001a\u00020\u0016*\u00020(H\u0000\u001a\f\u0010)\u001a\u00020**\u00020(H\u0002\u001a.\u0010+\u001a\u00020,*\u00020(2\u0006\u0010-\u001a\u00020\u00012\u0018\u0010.\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020,0/H\u0002\u001a\u0014\u00100\u001a\u00020\u0016*\u00020(2\u0006\u00101\u001a\u00020\u0016H\u0000\u001a\u0018\u00102\u001a\u0004\u0018\u00010\u0016*\u00020(2\b\u00101\u001a\u0004\u0018\u00010\u0016H\u0002\u001a\u0014\u00103\u001a\u00020**\u00020(2\u0006\u00104\u001a\u00020*H\u0002\u001a\f\u00105\u001a\u00020,*\u00020(H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\b\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\fX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\r\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000e\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u0018\u0010\u000f\u001a\u00020\u0010*\u00020\u00018BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012¨\u00066"}, d2 = {"BIT_FLAG_ENCRYPTED", "", "BIT_FLAG_UNSUPPORTED_MASK", "CENTRAL_FILE_HEADER_SIGNATURE", "COMPRESSION_METHOD_DEFLATED", "COMPRESSION_METHOD_STORED", "END_OF_CENTRAL_DIRECTORY_SIGNATURE", "HEADER_ID_EXTENDED_TIMESTAMP", "HEADER_ID_NTFS_EXTRA", "HEADER_ID_ZIP64_EXTENDED_INFO", "LOCAL_FILE_HEADER_SIGNATURE", "MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE", "", "ZIP64_EOCD_RECORD_SIGNATURE", "ZIP64_LOCATOR_SIGNATURE", "hex", "", "getHex", "(I)Ljava/lang/String;", "buildIndex", "", "Lokio/Path;", "Lokio/internal/ZipEntry;", "entries", "", "dosDateTimeToEpochMillis", "date", "time", "(II)Ljava/lang/Long;", "filetimeToEpochMillis", "filetime", "openZip", "Lokio/ZipFileSystem;", "zipPath", "fileSystem", "Lokio/FileSystem;", "predicate", "Lkotlin/Function1;", "", "readCentralDirectoryZipEntry", "Lokio/BufferedSource;", "readEocdRecord", "Lokio/internal/EocdRecord;", "readExtra", "", "extraSize", "block", "Lkotlin/Function2;", "readLocalHeader", "centralDirectoryZipEntry", "readOrSkipLocalHeader", "readZip64EocdRecord", "regularRecord", "skipLocalHeader", "okio"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class ZipFilesKt {
    private static final int BIT_FLAG_ENCRYPTED = 1;
    private static final int BIT_FLAG_UNSUPPORTED_MASK = 1;
    private static final int CENTRAL_FILE_HEADER_SIGNATURE = 33639248;
    public static final int COMPRESSION_METHOD_DEFLATED = 8;
    public static final int COMPRESSION_METHOD_STORED = 0;
    private static final int END_OF_CENTRAL_DIRECTORY_SIGNATURE = 101010256;
    private static final int HEADER_ID_EXTENDED_TIMESTAMP = 21589;
    private static final int HEADER_ID_NTFS_EXTRA = 10;
    private static final int HEADER_ID_ZIP64_EXTENDED_INFO = 1;
    private static final int LOCAL_FILE_HEADER_SIGNATURE = 67324752;
    private static final long MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE = 4294967295L;
    private static final int ZIP64_EOCD_RECORD_SIGNATURE = 101075792;
    private static final int ZIP64_LOCATOR_SIGNATURE = 117853008;

    public static /* synthetic */ ZipFileSystem openZip$default(Path path, FileSystem fileSystem, Function1 function1, int i, Object obj) throws IOException {
        if ((i & 4) != 0) {
            function1 = new Function1<ZipEntry, Boolean>() { // from class: okio.internal.ZipFilesKt.openZip.1
                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(ZipEntry it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return true;
                }
            };
        }
        return openZip(path, fileSystem, function1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01f6, code lost:
    
        r3 = kotlin.Unit.INSTANCE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x01fd, code lost:
    
        if (r0 != null) goto L159;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x01ff, code lost:
    
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0203, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0205, code lost:
    
        r19 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0208, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x020c, code lost:
    
        if (r0 != null) goto L175;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x020e, code lost:
    
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x0212, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0214, code lost:
    
        kotlin.ExceptionsKt.addSuppressed(r0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0217, code lost:
    
        r19 = r0;
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x021c, code lost:
    
        if (r19 == null) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x021e, code lost:
    
        r0 = r3;
        r3 = new okio.ZipFileSystem(r38, r39, buildIndex(r0), r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x022b, code lost:
    
        if (r24 != null) goto L173;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x022d, code lost:
    
        r24.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0059, code lost:
    
        r16 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x0233, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0234, code lost:
    
        throw r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0235, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x0239, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x023e, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x023f, code lost:
    
        r4 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x0247, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x0248, code lost:
    
        r4 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x005f, code lost:
    
        r7 = readEocdRecord(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x027a, code lost:
    
        r4.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x027d, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0064, code lost:
    
        r22 = r12;
        r24 = r4;
        r4 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x006b, code lost:
    
        r0 = r4.readUtf8(r7.getCommentByteCount());
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0071, code lost:
    
        r4.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0074, code lost:
    
        r4 = r16 - ((long) 20);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x007c, code lost:
    
        if (r4 <= r22) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x007e, code lost:
    
        r0 = okio.Okio.buffer(r0.source(r4));
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0088, code lost:
    
        r20 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x008f, code lost:
    
        r0 = (okio.BufferedSource) r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00a0, code lost:
    
        if (r0.readIntLe() != okio.internal.ZipFilesKt.ZIP64_LOCATOR_SIGNATURE) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00a2, code lost:
    
        r0 = r0.readIntLe();
        r27 = r0.readLongLe();
        r0 = r0.readIntLe();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00b3, code lost:
    
        if (r0 != 1) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00b5, code lost:
    
        if (r0 != 0) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00b7, code lost:
    
        r0 = okio.Okio.buffer(r0.source(r27));
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00c7, code lost:
    
        r31 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00ce, code lost:
    
        r0 = (okio.BufferedSource) r0;
        r33 = r0.readIntLe();
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00e1, code lost:
    
        if (r33 != okio.internal.ZipFilesKt.ZIP64_EOCD_RECORD_SIGNATURE) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00e3, code lost:
    
        r4 = readZip64EocdRecord(r0, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00e8, code lost:
    
        r5 = kotlin.Unit.INSTANCE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00ec, code lost:
    
        if (r0 == null) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00ee, code lost:
    
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00f2, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00f4, code lost:
    
        r31 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00f8, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00f9, code lost:
    
        r7 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00fb, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x012d, code lost:
    
        throw new java.io.IOException("bad zip: expected " + getHex(okio.internal.ZipFilesKt.ZIP64_EOCD_RECORD_SIGNATURE) + " but was " + getHex(r33));
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x012e, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0131, code lost:
    
        r4 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0134, code lost:
    
        if (r0 != null) goto L189;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0136, code lost:
    
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x013a, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x013c, code lost:
    
        kotlin.ExceptionsKt.addSuppressed(r4, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x013f, code lost:
    
        r31 = r4;
        r5 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0146, code lost:
    
        r0 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x014a, code lost:
    
        throw r31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0158, code lost:
    
        throw new java.io.IOException("unsupported zip: spanned");
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0159, code lost:
    
        r4 = kotlin.Unit.INSTANCE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x015e, code lost:
    
        if (r0 != null) goto L161;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0160, code lost:
    
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0164, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0166, code lost:
    
        r20 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0169, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x016b, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x016e, code lost:
    
        r4 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0171, code lost:
    
        if (r0 != null) goto L183;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0173, code lost:
    
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0177, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0179, code lost:
    
        kotlin.ExceptionsKt.addSuppressed(r4, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x017c, code lost:
    
        r20 = r4;
        r4 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0181, code lost:
    
        if (r20 != null) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0183, code lost:
    
        r0 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0187, code lost:
    
        throw r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x018a, code lost:
    
        r0 = new java.util.ArrayList();
        r0 = okio.Okio.buffer(r0.source(r7.getCentralDirectoryOffset()));
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01a2, code lost:
    
        r19 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01a7, code lost:
    
        r0 = (okio.BufferedSource) r0;
        r22 = 0;
        r27 = r7.getEntryCount();
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01b6, code lost:
    
        r29 = readCentralDirectoryZipEntry(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01c6, code lost:
    
        if (r29.getOffset() < r7.getCentralDirectoryOffset()) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01c8, code lost:
    
        r29 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01d6, code lost:
    
        if (r3.invoke(r29).booleanValue() != false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x01d8, code lost:
    
        r0.add(r29);
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01df, code lost:
    
        r22 = r22 + 1;
        r3 = r40;
        r0 = r29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01f5, code lost:
    
        throw new java.io.IOException("bad zip: local file header offset >= central directory offset");
     */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0146 A[Catch: all -> 0x0169, TryCatch #6 {all -> 0x0169, blocks: (B:26:0x00a2, B:29:0x00b7, B:60:0x0146, B:61:0x014a, B:56:0x013c, B:62:0x014b, B:63:0x0158, B:64:0x0159, B:53:0x0136), top: B:166:0x00a2, inners: #18 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x014a A[Catch: all -> 0x0169, TryCatch #6 {all -> 0x0169, blocks: (B:26:0x00a2, B:29:0x00b7, B:60:0x0146, B:61:0x014a, B:56:0x013c, B:62:0x014b, B:63:0x0158, B:64:0x0159, B:53:0x0136), top: B:166:0x00a2, inners: #18 }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0183 A[Catch: all -> 0x02a0, TryCatch #0 {all -> 0x02a0, blocks: (B:21:0x007e, B:84:0x0183, B:87:0x018a, B:117:0x021e, B:124:0x0234, B:113:0x0214, B:85:0x0187, B:80:0x0179, B:140:0x027a, B:141:0x027d, B:133:0x024e, B:136:0x026a, B:137:0x0271, B:142:0x027e, B:143:0x029f, B:89:0x01a7, B:92:0x01b6, B:94:0x01c8, B:96:0x01d8, B:97:0x01df, B:98:0x01e8, B:99:0x01f5, B:100:0x01f6, B:110:0x020e, B:77:0x0173), top: B:156:0x0030, inners: #5, #11, #15 }] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0187 A[Catch: all -> 0x02a0, TryCatch #0 {all -> 0x02a0, blocks: (B:21:0x007e, B:84:0x0183, B:87:0x018a, B:117:0x021e, B:124:0x0234, B:113:0x0214, B:85:0x0187, B:80:0x0179, B:140:0x027a, B:141:0x027d, B:133:0x024e, B:136:0x026a, B:137:0x0271, B:142:0x027e, B:143:0x029f, B:89:0x01a7, B:92:0x01b6, B:94:0x01c8, B:96:0x01d8, B:97:0x01df, B:98:0x01e8, B:99:0x01f5, B:100:0x01f6, B:110:0x020e, B:77:0x0173), top: B:156:0x0030, inners: #5, #11, #15 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final ZipFileSystem openZip(Path zipPath, FileSystem fileSystem, Function1<? super ZipEntry, Boolean> function1) throws IOException {
        Closeable $this$use$iv;
        Throwable thrown$iv;
        EocdRecord zip64EocdRecord;
        Function1<? super ZipEntry, Boolean> predicate = function1;
        Intrinsics.checkNotNullParameter(zipPath, "zipPath");
        Intrinsics.checkNotNullParameter(fileSystem, "fileSystem");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Closeable $this$use$iv2 = fileSystem.openReadOnly(zipPath);
        int $i$f$use = 0;
        try {
            FileHandle fileHandle = (FileHandle) $this$use$iv2;
            long scanOffset = fileHandle.size() - ((long) 22);
            long j = 0;
            try {
                if (scanOffset < 0) {
                    throw new IOException("not a zip: size=" + fileHandle.size());
                }
                long stopOffset = Math.max(scanOffset - 65536, 0L);
                while (true) {
                    BufferedSource source = Okio.buffer(fileHandle.source(scanOffset));
                    try {
                        if (source.readIntLe() == END_OF_CENTRAL_DIRECTORY_SIGNATURE) {
                            break;
                        }
                        Closeable $this$use$iv3 = $this$use$iv2;
                        long j2 = j;
                        int $i$f$use2 = $i$f$use;
                        source.close();
                        scanOffset--;
                        if (scanOffset < stopOffset) {
                            throw new IOException("not a zip: end of central directory signature not found");
                        }
                        predicate = function1;
                        $i$f$use = $i$f$use2;
                        j = j2;
                        $this$use$iv2 = $this$use$iv3;
                    } catch (Throwable th) {
                        th = th;
                        BufferedSource source2 = source;
                    }
                }
            } catch (Throwable th2) {
                t$iv = th2;
            }
        } catch (Throwable th3) {
            t$iv = th3;
            $this$use$iv = $this$use$iv2;
        }
        Throwable thrown$iv2 = t$iv;
        if ($this$use$iv != null) {
            try {
                $this$use$iv.close();
                throw thrown$iv2;
            } catch (Throwable t$iv) {
                ExceptionsKt.addSuppressed(thrown$iv2, t$iv);
                throw thrown$iv2;
            }
        }
        throw thrown$iv2;
        EocdRecord eocdRecord = zip64EocdRecord;
        if (thrown$iv != null) {
        }
    }

    private static final Map<Path, ZipEntry> buildIndex(List<ZipEntry> list) {
        Path root = Path.Companion.get$default(Path.INSTANCE, "/", false, 1, (Object) null);
        Map<Path, ZipEntry> mapMutableMapOf = MapsKt.mutableMapOf(TuplesKt.to(root, new ZipEntry(root, true, null, 0L, 0L, 0L, 0, 0L, 0, 0, null, null, null, null, null, null, 65532, null)));
        List<ZipEntry> $this$sortedBy$iv = list;
        for (ZipEntry entry : CollectionsKt.sortedWith($this$sortedBy$iv, new Comparator() { // from class: okio.internal.ZipFilesKt$buildIndex$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                ZipEntry it = (ZipEntry) t;
                ZipEntry it2 = (ZipEntry) t2;
                return ComparisonsKt.compareValues(it.getCanonicalPath(), it2.getCanonicalPath());
            }
        })) {
            ZipEntry replaced = mapMutableMapOf.put(entry.getCanonicalPath(), entry);
            if (replaced == null) {
                ZipEntry child = entry;
                while (true) {
                    Path parentPath = child.getCanonicalPath().parent();
                    if (parentPath != null) {
                        ZipEntry parentEntry = mapMutableMapOf.get(parentPath);
                        if (parentEntry != null) {
                            parentEntry.getChildren().add(child.getCanonicalPath());
                            break;
                        }
                        ZipEntry parentEntry2 = new ZipEntry(parentPath, true, null, 0L, 0L, 0L, 0, 0L, 0, 0, null, null, null, null, null, null, 65532, null);
                        mapMutableMapOf.put(parentPath, parentEntry2);
                        parentEntry2.getChildren().add(child.getCanonicalPath());
                        child = parentEntry2;
                    }
                }
            }
        }
        return mapMutableMapOf;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final ZipEntry readCentralDirectoryZipEntry(final BufferedSource $this$readCentralDirectoryZipEntry) throws IOException {
        Intrinsics.checkNotNullParameter($this$readCentralDirectoryZipEntry, "<this>");
        int signature = $this$readCentralDirectoryZipEntry.readIntLe();
        if (signature != CENTRAL_FILE_HEADER_SIGNATURE) {
            throw new IOException("bad zip: expected " + getHex(CENTRAL_FILE_HEADER_SIGNATURE) + " but was " + getHex(signature));
        }
        $this$readCentralDirectoryZipEntry.skip(4L);
        int bitFlag = $this$readCentralDirectoryZipEntry.readShortLe() & UShort.MAX_VALUE;
        if ((bitFlag & 1) != 0) {
            throw new IOException("unsupported zip: general purpose bit flag=" + getHex(bitFlag));
        }
        int compressionMethod = $this$readCentralDirectoryZipEntry.readShortLe() & UShort.MAX_VALUE;
        int dosLastModifiedTime = $this$readCentralDirectoryZipEntry.readShortLe() & UShort.MAX_VALUE;
        int dosLastModifiedDate = $this$readCentralDirectoryZipEntry.readShortLe() & UShort.MAX_VALUE;
        long crc = ((long) $this$readCentralDirectoryZipEntry.readIntLe()) & MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE;
        final Ref.LongRef compressedSize = new Ref.LongRef();
        compressedSize.element = ((long) $this$readCentralDirectoryZipEntry.readIntLe()) & MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE;
        final Ref.LongRef size = new Ref.LongRef();
        size.element = ((long) $this$readCentralDirectoryZipEntry.readIntLe()) & MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE;
        int nameSize = $this$readCentralDirectoryZipEntry.readShortLe() & UShort.MAX_VALUE;
        int extraSize = $this$readCentralDirectoryZipEntry.readShortLe() & UShort.MAX_VALUE;
        int commentByteCount = $this$readCentralDirectoryZipEntry.readShortLe() & UShort.MAX_VALUE;
        $this$readCentralDirectoryZipEntry.skip(8L);
        final Ref.LongRef offset = new Ref.LongRef();
        offset.element = ((long) $this$readCentralDirectoryZipEntry.readIntLe()) & MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE;
        String name = $this$readCentralDirectoryZipEntry.readUtf8(nameSize);
        if (StringsKt.contains$default((CharSequence) name, (char) 0, false, 2, (Object) null)) {
            throw new IOException("bad zip: filename contains 0x00");
        }
        long result = size.element == MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE ? 0 + ((long) 8) : 0L;
        if (compressedSize.element == MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE) {
            result += (long) 8;
        }
        if (offset.element == MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE) {
            result += (long) 8;
        }
        final Ref.ObjectRef ntfsLastModifiedAtFiletime = new Ref.ObjectRef();
        final Ref.ObjectRef ntfsLastAccessedAtFiletime = new Ref.ObjectRef();
        final Ref.ObjectRef ntfsCreatedAtFiletime = new Ref.ObjectRef();
        final Ref.BooleanRef hasZip64Extra = new Ref.BooleanRef();
        final long requiredZip64ExtraSize = result;
        readExtra($this$readCentralDirectoryZipEntry, extraSize, new Function2<Integer, Long, Unit>() { // from class: okio.internal.ZipFilesKt.readCentralDirectoryZipEntry.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, Long l) throws IOException {
                invoke(num.intValue(), l.longValue());
                return Unit.INSTANCE;
            }

            public final void invoke(int headerId, long dataSize) throws IOException {
                switch (headerId) {
                    case 1:
                        if (hasZip64Extra.element) {
                            throw new IOException("bad zip: zip64 extra repeated");
                        }
                        hasZip64Extra.element = true;
                        if (dataSize < requiredZip64ExtraSize) {
                            throw new IOException("bad zip: zip64 extra too short");
                        }
                        size.element = size.element == ZipFilesKt.MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE ? $this$readCentralDirectoryZipEntry.readLongLe() : size.element;
                        compressedSize.element = compressedSize.element == ZipFilesKt.MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE ? $this$readCentralDirectoryZipEntry.readLongLe() : 0L;
                        offset.element = offset.element == ZipFilesKt.MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE ? $this$readCentralDirectoryZipEntry.readLongLe() : 0L;
                        return;
                    case 10:
                        if (dataSize >= 4) {
                            $this$readCentralDirectoryZipEntry.skip(4L);
                            final Ref.ObjectRef<Long> objectRef = ntfsLastModifiedAtFiletime;
                            final BufferedSource bufferedSource = $this$readCentralDirectoryZipEntry;
                            final Ref.ObjectRef<Long> objectRef2 = ntfsLastAccessedAtFiletime;
                            final Ref.ObjectRef<Long> objectRef3 = ntfsCreatedAtFiletime;
                            ZipFilesKt.readExtra($this$readCentralDirectoryZipEntry, (int) (dataSize - 4), new Function2<Integer, Long, Unit>() { // from class: okio.internal.ZipFilesKt.readCentralDirectoryZipEntry.1.1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(2);
                                }

                                @Override // kotlin.jvm.functions.Function2
                                public /* bridge */ /* synthetic */ Unit invoke(Integer num, Long l) throws IOException {
                                    invoke(num.intValue(), l.longValue());
                                    return Unit.INSTANCE;
                                }

                                /* JADX WARN: Type inference failed for: r1v10, types: [T, java.lang.Long] */
                                /* JADX WARN: Type inference failed for: r1v4, types: [T, java.lang.Long] */
                                /* JADX WARN: Type inference failed for: r1v7, types: [T, java.lang.Long] */
                                public final void invoke(int attributeId, long attributeSize) throws IOException {
                                    if (attributeId == 1) {
                                        if (objectRef.element != null) {
                                            throw new IOException("bad zip: NTFS extra attribute tag 0x0001 repeated");
                                        }
                                        if (attributeSize != 24) {
                                            throw new IOException("bad zip: NTFS extra attribute tag 0x0001 size != 24");
                                        }
                                        objectRef.element = Long.valueOf(bufferedSource.readLongLe());
                                        objectRef2.element = Long.valueOf(bufferedSource.readLongLe());
                                        objectRef3.element = Long.valueOf(bufferedSource.readLongLe());
                                    }
                                }
                            });
                            return;
                        }
                        throw new IOException("bad zip: NTFS extra too short");
                    default:
                        return;
                }
            }
        });
        if (requiredZip64ExtraSize > 0 && !hasZip64Extra.element) {
            throw new IOException("bad zip: zip64 extra required but absent");
        }
        String comment = $this$readCentralDirectoryZipEntry.readUtf8(commentByteCount);
        Path canonicalPath = Path.Companion.get$default(Path.INSTANCE, "/", false, 1, (Object) null).resolve(name);
        boolean isDirectory = StringsKt.endsWith$default(name, "/", false, 2, (Object) null);
        return new ZipEntry(canonicalPath, isDirectory, comment, crc, compressedSize.element, size.element, compressionMethod, offset.element, dosLastModifiedDate, dosLastModifiedTime, (Long) ntfsLastModifiedAtFiletime.element, (Long) ntfsLastAccessedAtFiletime.element, (Long) ntfsCreatedAtFiletime.element, null, null, null, 57344, null);
    }

    private static final EocdRecord readEocdRecord(BufferedSource $this$readEocdRecord) throws IOException {
        int diskNumber = $this$readEocdRecord.readShortLe() & 65535;
        int diskWithCentralDir = $this$readEocdRecord.readShortLe() & 65535;
        long entryCount = $this$readEocdRecord.readShortLe() & UShort.MAX_VALUE;
        long totalEntryCount = $this$readEocdRecord.readShortLe() & UShort.MAX_VALUE;
        if (entryCount != totalEntryCount || diskNumber != 0 || diskWithCentralDir != 0) {
            throw new IOException("unsupported zip: spanned");
        }
        $this$readEocdRecord.skip(4L);
        long centralDirectoryOffset = MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE & ((long) $this$readEocdRecord.readIntLe());
        int commentByteCount = $this$readEocdRecord.readShortLe() & UShort.MAX_VALUE;
        return new EocdRecord(entryCount, centralDirectoryOffset, commentByteCount);
    }

    private static final EocdRecord readZip64EocdRecord(BufferedSource $this$readZip64EocdRecord, EocdRecord regularRecord) throws IOException {
        $this$readZip64EocdRecord.skip(12L);
        int diskNumber = $this$readZip64EocdRecord.readIntLe();
        int diskWithCentralDirStart = $this$readZip64EocdRecord.readIntLe();
        long entryCount = $this$readZip64EocdRecord.readLongLe();
        long totalEntryCount = $this$readZip64EocdRecord.readLongLe();
        if (entryCount != totalEntryCount || diskNumber != 0 || diskWithCentralDirStart != 0) {
            throw new IOException("unsupported zip: spanned");
        }
        $this$readZip64EocdRecord.skip(8L);
        long centralDirectoryOffset = $this$readZip64EocdRecord.readLongLe();
        return new EocdRecord(entryCount, centralDirectoryOffset, regularRecord.getCommentByteCount());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void readExtra(BufferedSource $this$readExtra, int extraSize, Function2<? super Integer, ? super Long, Unit> function2) throws IOException {
        long remaining = extraSize;
        while (remaining != 0) {
            if (remaining < 4) {
                throw new IOException("bad zip: truncated header in extra field");
            }
            int headerId = $this$readExtra.readShortLe() & UShort.MAX_VALUE;
            long dataSize = ((long) $this$readExtra.readShortLe()) & WebSocketProtocol.PAYLOAD_SHORT_MAX;
            long remaining2 = remaining - ((long) 4);
            if (remaining2 < dataSize) {
                throw new IOException("bad zip: truncated value in extra field");
            }
            $this$readExtra.require(dataSize);
            long sizeBefore = $this$readExtra.getBuffer().size();
            function2.invoke(Integer.valueOf(headerId), Long.valueOf(dataSize));
            long fieldRemaining = ($this$readExtra.getBuffer().size() + dataSize) - sizeBefore;
            if (fieldRemaining < 0) {
                throw new IOException("unsupported zip: too many bytes processed for " + headerId);
            }
            if (fieldRemaining > 0) {
                $this$readExtra.getBuffer().skip(fieldRemaining);
            }
            remaining = remaining2 - dataSize;
        }
    }

    public static final void skipLocalHeader(BufferedSource $this$skipLocalHeader) throws IOException {
        Intrinsics.checkNotNullParameter($this$skipLocalHeader, "<this>");
        readOrSkipLocalHeader($this$skipLocalHeader, null);
    }

    public static final ZipEntry readLocalHeader(BufferedSource $this$readLocalHeader, ZipEntry centralDirectoryZipEntry) throws IOException {
        Intrinsics.checkNotNullParameter($this$readLocalHeader, "<this>");
        Intrinsics.checkNotNullParameter(centralDirectoryZipEntry, "centralDirectoryZipEntry");
        ZipEntry orSkipLocalHeader = readOrSkipLocalHeader($this$readLocalHeader, centralDirectoryZipEntry);
        Intrinsics.checkNotNull(orSkipLocalHeader);
        return orSkipLocalHeader;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static final ZipEntry readOrSkipLocalHeader(final BufferedSource $this$readOrSkipLocalHeader, ZipEntry centralDirectoryZipEntry) throws IOException {
        int signature = $this$readOrSkipLocalHeader.readIntLe();
        if (signature != LOCAL_FILE_HEADER_SIGNATURE) {
            throw new IOException("bad zip: expected " + getHex(LOCAL_FILE_HEADER_SIGNATURE) + " but was " + getHex(signature));
        }
        $this$readOrSkipLocalHeader.skip(2L);
        int bitFlag = $this$readOrSkipLocalHeader.readShortLe() & UShort.MAX_VALUE;
        if ((bitFlag & 1) != 0) {
            throw new IOException("unsupported zip: general purpose bit flag=" + getHex(bitFlag));
        }
        $this$readOrSkipLocalHeader.skip(18L);
        long fileNameLength = ((long) $this$readOrSkipLocalHeader.readShortLe()) & WebSocketProtocol.PAYLOAD_SHORT_MAX;
        int extraSize = 65535 & $this$readOrSkipLocalHeader.readShortLe();
        $this$readOrSkipLocalHeader.skip(fileNameLength);
        if (centralDirectoryZipEntry == null) {
            $this$readOrSkipLocalHeader.skip(extraSize);
            return null;
        }
        final Ref.ObjectRef extendedLastModifiedAtSeconds = new Ref.ObjectRef();
        final Ref.ObjectRef extendedLastAccessedAtSeconds = new Ref.ObjectRef();
        final Ref.ObjectRef extendedCreatedAtSeconds = new Ref.ObjectRef();
        readExtra($this$readOrSkipLocalHeader, extraSize, new Function2<Integer, Long, Unit>() { // from class: okio.internal.ZipFilesKt.readOrSkipLocalHeader.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, Long l) throws IOException {
                invoke(num.intValue(), l.longValue());
                return Unit.INSTANCE;
            }

            /* JADX WARN: Type inference failed for: r4v12, types: [T, java.lang.Integer] */
            /* JADX WARN: Type inference failed for: r4v6, types: [T, java.lang.Integer] */
            /* JADX WARN: Type inference failed for: r4v9, types: [T, java.lang.Integer] */
            public final void invoke(int headerId, long dataSize) throws IOException {
                if (headerId == ZipFilesKt.HEADER_ID_EXTENDED_TIMESTAMP) {
                    if (dataSize < 1) {
                        throw new IOException("bad zip: extended timestamp extra too short");
                    }
                    int flags = $this$readOrSkipLocalHeader.readByte() & 255;
                    boolean hasLastModifiedAtMillis = (flags & 1) == 1;
                    boolean hasLastAccessedAtMillis = (flags & 2) == 2;
                    boolean hasCreatedAtMillis = (flags & 4) == 4;
                    BufferedSource bufferedSource = $this$readOrSkipLocalHeader;
                    long result = hasLastModifiedAtMillis ? 1 + 4 : 1L;
                    if (hasLastAccessedAtMillis) {
                        result += 4;
                    }
                    if (hasCreatedAtMillis) {
                        result += 4;
                    }
                    if (dataSize < result) {
                        throw new IOException("bad zip: extended timestamp extra too short");
                    }
                    if (hasLastModifiedAtMillis) {
                        extendedLastModifiedAtSeconds.element = Integer.valueOf($this$readOrSkipLocalHeader.readIntLe());
                    }
                    if (hasLastAccessedAtMillis) {
                        extendedLastAccessedAtSeconds.element = Integer.valueOf($this$readOrSkipLocalHeader.readIntLe());
                    }
                    if (hasCreatedAtMillis) {
                        extendedCreatedAtSeconds.element = Integer.valueOf($this$readOrSkipLocalHeader.readIntLe());
                    }
                }
            }
        });
        return centralDirectoryZipEntry.copy$okio((Integer) extendedLastModifiedAtSeconds.element, (Integer) extendedLastAccessedAtSeconds.element, (Integer) extendedCreatedAtSeconds.element);
    }

    public static final long filetimeToEpochMillis(long filetime) {
        return (filetime / ((long) 10000)) - 11644473600000L;
    }

    public static final Long dosDateTimeToEpochMillis(int date, int time) {
        if (time == -1) {
            return null;
        }
        return Long.valueOf(_ZlibJvmKt.datePartsToEpochMillis(((date >> 9) & 127) + 1980, (date >> 5) & 15, date & 31, (time >> 11) & 31, (time >> 5) & 63, (time & 31) << 1));
    }

    private static final String getHex(int $this$hex) {
        StringBuilder sbAppend = new StringBuilder().append("0x");
        String string = Integer.toString($this$hex, CharsKt.checkRadix(16));
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return sbAppend.append(string).toString();
    }
}
