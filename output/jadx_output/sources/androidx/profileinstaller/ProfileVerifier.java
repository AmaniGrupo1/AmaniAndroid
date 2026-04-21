package androidx.profileinstaller;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetFileDescriptor;
import android.os.Build;
import androidx.concurrent.futures.ResolvableFuture;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Objects;

/* JADX INFO: loaded from: classes21.dex */
public final class ProfileVerifier {
    private static final String CUR_PROFILES_BASE_DIR = "/data/misc/profiles/cur/0/";
    private static final String PROFILE_FILE_NAME = "primary.prof";
    private static final String PROFILE_INSTALLED_CACHE_FILE_NAME = "profileInstalled";
    private static final String REF_PROFILES_BASE_DIR = "/data/misc/profiles/ref/";
    private static final String TAG = "ProfileVerifier";
    private static final ResolvableFuture<CompilationStatus> sFuture = ResolvableFuture.create();
    private static final Object SYNC_OBJ = new Object();
    private static CompilationStatus sCompilationStatus = null;

    private ProfileVerifier() {
    }

    public static CompilationStatus writeProfileVerification(Context context) {
        return writeProfileVerification(context, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:115:0x00be A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0115 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0032 A[Catch: all -> 0x0044, IOException -> 0x0047, TRY_ENTER, TRY_LEAVE, TryCatch #0 {IOException -> 0x0047, blocks: (B:16:0x001a, B:24:0x0032, B:33:0x0043, B:32:0x0040), top: B:111:0x001a }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0105  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static CompilationStatus writeProfileVerification(Context context, boolean forceVerifyCurrentProfile) {
        boolean hasCurrentProfile;
        boolean hasEmbeddedProfile;
        boolean hasReferenceProfile;
        File currentProfileFile;
        long currentProfileSize;
        File cacheFile;
        Cache currentCache;
        int resultCode;
        int resultCode2;
        Cache newCache;
        int resultCode3;
        AssetFileDescriptor afd;
        if (!forceVerifyCurrentProfile && sCompilationStatus != null) {
            return sCompilationStatus;
        }
        synchronized (SYNC_OBJ) {
            if (forceVerifyCurrentProfile) {
                hasCurrentProfile = false;
                afd = context.getAssets().openFd("dexopt/baseline.prof");
                if (afd.getLength() <= 0) {
                }
                if (afd != null) {
                }
                hasEmbeddedProfile = hasEmbeddedProfile;
                if (Build.VERSION.SDK_INT >= 28) {
                    File referenceProfileFile = new File(new File(REF_PROFILES_BASE_DIR, context.getPackageName()), PROFILE_FILE_NAME);
                    long referenceProfileSize = referenceProfileFile.length();
                    if (referenceProfileFile.exists()) {
                        hasReferenceProfile = !referenceProfileFile.exists() && referenceProfileSize > 0;
                        currentProfileFile = new File(new File(CUR_PROFILES_BASE_DIR, context.getPackageName()), PROFILE_FILE_NAME);
                        currentProfileSize = currentProfileFile.length();
                        if (currentProfileFile.exists()) {
                            hasCurrentProfile = true;
                        }
                        long packageLastUpdateTime = getPackageLastUpdateTime(context);
                        cacheFile = new File(context.getFilesDir(), PROFILE_INSTALLED_CACHE_FILE_NAME);
                        currentCache = null;
                        if (cacheFile.exists()) {
                        }
                        if (currentCache != null) {
                            if (hasEmbeddedProfile) {
                            }
                        }
                        if (forceVerifyCurrentProfile) {
                            resultCode = 2;
                        }
                        if (currentCache == null) {
                            resultCode2 = resultCode;
                        }
                        newCache = new Cache(1, resultCode2, packageLastUpdateTime, currentProfileSize);
                        if (currentCache != null) {
                            newCache.writeOnFile(cacheFile);
                            resultCode3 = resultCode2;
                        }
                        return setCompilationStatus(resultCode3, hasReferenceProfile, hasCurrentProfile, hasEmbeddedProfile);
                    }
                }
                return setCompilationStatus(262144, false, false, hasEmbeddedProfile);
            }
            if (sCompilationStatus != null) {
                return sCompilationStatus;
            }
            hasCurrentProfile = false;
            try {
                afd = context.getAssets().openFd("dexopt/baseline.prof");
            } catch (IOException e) {
                hasEmbeddedProfile = false;
            }
            try {
                boolean hasEmbeddedProfile2 = afd.getLength() <= 0;
                if (afd != null) {
                    afd.close();
                }
                hasEmbeddedProfile = hasEmbeddedProfile2;
                if (Build.VERSION.SDK_INT >= 28 && Build.VERSION.SDK_INT != 30) {
                    File referenceProfileFile2 = new File(new File(REF_PROFILES_BASE_DIR, context.getPackageName()), PROFILE_FILE_NAME);
                    long referenceProfileSize2 = referenceProfileFile2.length();
                    hasReferenceProfile = !referenceProfileFile2.exists() && referenceProfileSize2 > 0;
                    currentProfileFile = new File(new File(CUR_PROFILES_BASE_DIR, context.getPackageName()), PROFILE_FILE_NAME);
                    currentProfileSize = currentProfileFile.length();
                    if (currentProfileFile.exists() && currentProfileSize > 0) {
                        hasCurrentProfile = true;
                    }
                    try {
                        long packageLastUpdateTime2 = getPackageLastUpdateTime(context);
                        cacheFile = new File(context.getFilesDir(), PROFILE_INSTALLED_CACHE_FILE_NAME);
                        currentCache = null;
                        if (cacheFile.exists()) {
                            try {
                                currentCache = Cache.readFromFile(cacheFile);
                            } catch (IOException e2) {
                                return setCompilationStatus(131072, hasReferenceProfile, hasCurrentProfile, hasEmbeddedProfile);
                            }
                        }
                        if (currentCache != null || currentCache.mPackageLastUpdateTime != packageLastUpdateTime2 || currentCache.mResultCode == 2) {
                            if (hasEmbeddedProfile) {
                                resultCode = CompilationStatus.RESULT_CODE_ERROR_NO_PROFILE_EMBEDDED;
                            } else if (hasReferenceProfile) {
                                resultCode = 1;
                            } else if (hasCurrentProfile) {
                                resultCode = 2;
                            } else {
                                resultCode = 0;
                            }
                        } else {
                            resultCode = currentCache.mResultCode;
                        }
                        if (forceVerifyCurrentProfile && hasCurrentProfile && resultCode != 1) {
                            resultCode = 2;
                        }
                        if (currentCache == null && currentCache.mResultCode == 2 && resultCode == 1 && referenceProfileSize2 < currentCache.mInstalledCurrentProfileSize) {
                            resultCode2 = 3;
                        } else {
                            resultCode2 = resultCode;
                        }
                        newCache = new Cache(1, resultCode2, packageLastUpdateTime2, currentProfileSize);
                        if (currentCache != null || !currentCache.equals(newCache)) {
                            try {
                                newCache.writeOnFile(cacheFile);
                                resultCode3 = resultCode2;
                            } catch (IOException e3) {
                                resultCode3 = 196608;
                            }
                        } else {
                            resultCode3 = resultCode2;
                        }
                        return setCompilationStatus(resultCode3, hasReferenceProfile, hasCurrentProfile, hasEmbeddedProfile);
                    } catch (PackageManager.NameNotFoundException e4) {
                        return setCompilationStatus(65536, hasReferenceProfile, hasCurrentProfile, hasEmbeddedProfile);
                    }
                }
                return setCompilationStatus(262144, false, false, hasEmbeddedProfile);
            } finally {
            }
        }
    }

    private static CompilationStatus setCompilationStatus(int resultCode, boolean hasReferenceProfile, boolean hasCurrentProfile, boolean hasEmbeddedProfile) {
        sCompilationStatus = new CompilationStatus(resultCode, hasReferenceProfile, hasCurrentProfile, hasEmbeddedProfile);
        sFuture.set(sCompilationStatus);
        return sCompilationStatus;
    }

    private static long getPackageLastUpdateTime(Context context) throws PackageManager.NameNotFoundException {
        PackageManager packageManager = context.getApplicationContext().getPackageManager();
        if (Build.VERSION.SDK_INT >= 33) {
            return Api33Impl.getPackageInfo(packageManager, context).lastUpdateTime;
        }
        return packageManager.getPackageInfo(context.getPackageName(), 0).lastUpdateTime;
    }

    public static ListenableFuture<CompilationStatus> getCompilationStatusAsync() {
        return sFuture;
    }

    static class Cache {
        private static final int SCHEMA = 1;
        final long mInstalledCurrentProfileSize;
        final long mPackageLastUpdateTime;
        final int mResultCode;
        final int mSchema;

        Cache(int schema, int resultCode, long packageLastUpdateTime, long installedCurrentProfileSize) {
            this.mSchema = schema;
            this.mResultCode = resultCode;
            this.mPackageLastUpdateTime = packageLastUpdateTime;
            this.mInstalledCurrentProfileSize = installedCurrentProfileSize;
        }

        public boolean equals(Object o) {
            if (this == o) {
                return true;
            }
            if (o == null || !(o instanceof Cache)) {
                return false;
            }
            Cache cacheFile = (Cache) o;
            if (this.mResultCode == cacheFile.mResultCode && this.mPackageLastUpdateTime == cacheFile.mPackageLastUpdateTime && this.mSchema == cacheFile.mSchema && this.mInstalledCurrentProfileSize == cacheFile.mInstalledCurrentProfileSize) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Objects.hash(Integer.valueOf(this.mResultCode), Long.valueOf(this.mPackageLastUpdateTime), Integer.valueOf(this.mSchema), Long.valueOf(this.mInstalledCurrentProfileSize));
        }

        void writeOnFile(File file) throws IOException {
            file.delete();
            DataOutputStream dos = new DataOutputStream(new FileOutputStream(file));
            try {
                dos.writeInt(this.mSchema);
                dos.writeInt(this.mResultCode);
                dos.writeLong(this.mPackageLastUpdateTime);
                dos.writeLong(this.mInstalledCurrentProfileSize);
                dos.close();
            } catch (Throwable th) {
                try {
                    dos.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }

        static Cache readFromFile(File file) throws IOException {
            DataInputStream dis = new DataInputStream(new FileInputStream(file));
            try {
                Cache cache = new Cache(dis.readInt(), dis.readInt(), dis.readLong(), dis.readLong());
                dis.close();
                return cache;
            } finally {
            }
        }
    }

    public static class CompilationStatus {
        public static final int RESULT_CODE_COMPILED_WITH_PROFILE = 1;
        public static final int RESULT_CODE_COMPILED_WITH_PROFILE_NON_MATCHING = 3;
        public static final int RESULT_CODE_ERROR_CACHE_FILE_EXISTS_BUT_CANNOT_BE_READ = 131072;
        public static final int RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE = 196608;
        private static final int RESULT_CODE_ERROR_CODE_BIT_SHIFT = 16;
        public static final int RESULT_CODE_ERROR_NO_PROFILE_EMBEDDED = 327680;
        public static final int RESULT_CODE_ERROR_PACKAGE_NAME_DOES_NOT_EXIST = 65536;
        public static final int RESULT_CODE_ERROR_UNSUPPORTED_API_VERSION = 262144;

        @Deprecated
        public static final int RESULT_CODE_NO_PROFILE = 0;
        public static final int RESULT_CODE_NO_PROFILE_INSTALLED = 0;
        public static final int RESULT_CODE_PROFILE_ENQUEUED_FOR_COMPILATION = 2;
        private final boolean mHasCurrentProfile;
        private final boolean mHasEmbeddedProfile;
        private final boolean mHasReferenceProfile;
        final int mResultCode;

        @Retention(RetentionPolicy.SOURCE)
        public @interface ResultCode {
        }

        CompilationStatus(int resultCode, boolean hasReferenceProfile, boolean hasCurrentProfile, boolean hasEmbeddedProfile) {
            this.mResultCode = resultCode;
            this.mHasCurrentProfile = hasCurrentProfile;
            this.mHasReferenceProfile = hasReferenceProfile;
            this.mHasEmbeddedProfile = hasEmbeddedProfile;
        }

        public int getProfileInstallResultCode() {
            return this.mResultCode;
        }

        public boolean isCompiledWithProfile() {
            return this.mHasReferenceProfile;
        }

        public boolean hasProfileEnqueuedForCompilation() {
            return this.mHasCurrentProfile;
        }

        public boolean appApkHasEmbeddedProfile() {
            return this.mHasEmbeddedProfile;
        }
    }

    private static class Api33Impl {
        private Api33Impl() {
        }

        static PackageInfo getPackageInfo(PackageManager packageManager, Context context) throws PackageManager.NameNotFoundException {
            return packageManager.getPackageInfo(context.getPackageName(), PackageManager.PackageInfoFlags.of(0L));
        }
    }
}
