package com.google.android.gms.common.internal;

import com.google.android.gms.common.util.IOUtils;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.9.0 */
/* JADX INFO: loaded from: classes21.dex */
@Deprecated
public class LibraryVersion {
    private static final GmsLogger zza = new GmsLogger("LibraryVersion", "");
    private static final LibraryVersion zzb = new LibraryVersion();
    private final ConcurrentHashMap zzc = new ConcurrentHashMap();

    protected LibraryVersion() {
    }

    public static LibraryVersion getInstance() {
        return zzb;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00ca  */
    @Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String getVersion(String str) throws Throwable {
        String str2;
        InputStream resourceAsStream;
        Preconditions.checkNotEmpty(str, "Please provide a valid libraryName");
        ConcurrentHashMap concurrentHashMap = this.zzc;
        if (concurrentHashMap.containsKey(str)) {
            return (String) concurrentHashMap.get(str);
        }
        Properties properties = new Properties();
        InputStream inputStream = null;
        property = null;
        String property = null;
        inputStream = null;
        try {
            resourceAsStream = LibraryVersion.class.getResourceAsStream(String.format("/%s.properties", str));
            try {
                if (resourceAsStream != null) {
                    properties.load(resourceAsStream);
                    property = properties.getProperty("version", null);
                    GmsLogger gmsLogger = zza;
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12 + String.valueOf(property).length());
                    sb.append(str);
                    sb.append(" version is ");
                    sb.append(property);
                    gmsLogger.v("LibraryVersion", sb.toString());
                } else {
                    GmsLogger gmsLogger2 = zza;
                    StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 43);
                    sb2.append("Failed to get app version for libraryName: ");
                    sb2.append(str);
                    gmsLogger2.w("LibraryVersion", sb2.toString());
                }
            } catch (IOException e) {
                e = e;
                str2 = property;
                inputStream = resourceAsStream;
                try {
                    GmsLogger gmsLogger3 = zza;
                    StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 43);
                    sb3.append("Failed to get app version for libraryName: ");
                    sb3.append(str);
                    gmsLogger3.e("LibraryVersion", sb3.toString(), e);
                    resourceAsStream = inputStream;
                    property = str2;
                } catch (Throwable th) {
                    th = th;
                    if (inputStream != null) {
                        IOUtils.closeQuietly(inputStream);
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                inputStream = resourceAsStream;
                if (inputStream != null) {
                }
                throw th;
            }
        } catch (IOException e2) {
            e = e2;
            str2 = null;
        } catch (Throwable th3) {
            th = th3;
        }
        if (resourceAsStream != null) {
            IOUtils.closeQuietly(resourceAsStream);
        }
        if (property == null) {
            zza.d("LibraryVersion", ".properties file is dropped during release process. Failure to read app version is expected during Google internal testing where locally-built libraries are used");
            property = "UNKNOWN";
        }
        this.zzc.put(str, property);
        return property;
    }
}
