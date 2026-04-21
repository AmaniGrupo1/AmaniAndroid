package androidx.media3.exoplayer.drm;

import android.media.DeniedByServerException;
import android.media.MediaDrm;
import android.media.MediaDrmResetException;
import android.media.NotProvisionedException;
import android.os.Build;
import android.os.SystemClock;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSourceInputStream;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.HttpDataSource;
import androidx.media3.datasource.StatsDataSource;
import androidx.media3.exoplayer.drm.DefaultDrmSessionManager;
import androidx.media3.exoplayer.drm.MediaDrmCallback;
import androidx.media3.exoplayer.source.LoadEventInfo;
import com.google.common.io.ByteStreams;
import com.google.common.net.HttpHeaders;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes21.dex */
public final class DrmUtil {
    public static final int ERROR_SOURCE_EXO_MEDIA_DRM = 1;
    public static final int ERROR_SOURCE_LICENSE_ACQUISITION = 2;
    public static final int ERROR_SOURCE_PROVISIONING = 3;
    private static final int MAX_MANUAL_REDIRECTS = 5;

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface ErrorSource {
    }

    public static int getErrorCodeForMediaDrmException(Throwable exception, int errorSource) {
        if (exception instanceof MediaDrm.MediaDrmStateException) {
            String diagnosticsInfo = ((MediaDrm.MediaDrmStateException) exception).getDiagnosticInfo();
            int drmErrorCode = Util.getErrorCodeFromPlatformDiagnosticsInfo(diagnosticsInfo);
            return Util.getErrorCodeForMediaDrmErrorCode(drmErrorCode);
        }
        if (exception instanceof MediaDrmResetException) {
            return PlaybackException.ERROR_CODE_DRM_SYSTEM_ERROR;
        }
        if ((exception instanceof NotProvisionedException) || isFailureToConstructNotProvisionedException(exception)) {
            return PlaybackException.ERROR_CODE_DRM_PROVISIONING_FAILED;
        }
        if (exception instanceof DeniedByServerException) {
            return PlaybackException.ERROR_CODE_DRM_DEVICE_REVOKED;
        }
        if (exception instanceof UnsupportedDrmException) {
            return PlaybackException.ERROR_CODE_DRM_SCHEME_UNSUPPORTED;
        }
        if (exception instanceof DefaultDrmSessionManager.MissingSchemeDataException) {
            return PlaybackException.ERROR_CODE_DRM_CONTENT_ERROR;
        }
        if (exception instanceof KeysExpiredException) {
            return PlaybackException.ERROR_CODE_DRM_LICENSE_EXPIRED;
        }
        if (errorSource == 1) {
            return PlaybackException.ERROR_CODE_DRM_SYSTEM_ERROR;
        }
        if (errorSource == 2) {
            return PlaybackException.ERROR_CODE_DRM_LICENSE_ACQUISITION_FAILED;
        }
        if (errorSource == 3) {
            return PlaybackException.ERROR_CODE_DRM_PROVISIONING_FAILED;
        }
        throw new IllegalArgumentException();
    }

    public static boolean isFailureToConstructNotProvisionedException(Throwable e) {
        return Build.VERSION.SDK_INT == 34 && (e instanceof NoSuchMethodError) && e.getMessage() != null && e.getMessage().contains("Landroid/media/NotProvisionedException;.<init>(");
    }

    public static boolean isFailureToConstructResourceBusyException(Throwable e) {
        return Build.VERSION.SDK_INT == 34 && (e instanceof NoSuchMethodError) && e.getMessage() != null && e.getMessage().contains("Landroid/media/ResourceBusyException;.<init>(");
    }

    public static MediaDrmCallback.Response executePost(DataSource dataSource, String url, byte[] httpBody, Map<String, String> requestProperties) throws MediaDrmCallbackException {
        StatsDataSource statsDataSource;
        DataSpec originalDataSpec;
        Exception e;
        DataSpec dataSpec;
        StatsDataSource statsDataSource2 = new StatsDataSource(dataSource);
        DataSpec dataSpec2 = new DataSpec.Builder().setUri(url).setHttpRequestHeaders(requestProperties).setHttpMethod(2).setHttpBody(httpBody).setFlags(1).build();
        DataSpec originalDataSpec2 = dataSpec2;
        DataSpec dataSpec3 = dataSpec2;
        int manualRedirectCount = 0;
        while (true) {
            try {
                DataSourceInputStream inputStream = new DataSourceInputStream(statsDataSource2, dataSpec3);
                try {
                    try {
                        byte[] response = ByteStreams.toByteArray(inputStream);
                        DataSpec dataSpec4 = dataSpec3;
                        try {
                            statsDataSource = statsDataSource2;
                            originalDataSpec = originalDataSpec2;
                            dataSpec = dataSpec4;
                            try {
                                try {
                                    LoadEventInfo loadEventInfo = new LoadEventInfo(-1L, originalDataSpec, statsDataSource2.getLastOpenedUri(), statsDataSource2.getLastResponseHeaders(), SystemClock.elapsedRealtime(), 0L, response.length);
                                    MediaDrmCallback.Response responseBuild = new MediaDrmCallback.Response.Builder(response).setLoadEventInfo(loadEventInfo).build();
                                    Util.closeQuietly(inputStream);
                                    return responseBuild;
                                } catch (HttpDataSource.InvalidResponseCodeException e2) {
                                    e = e2;
                                    String redirectUrl = getRedirectUrl(e, manualRedirectCount);
                                    if (redirectUrl == null) {
                                        throw e;
                                    }
                                    manualRedirectCount++;
                                    dataSpec3 = dataSpec.buildUpon().setUri(redirectUrl).build();
                                    try {
                                        Util.closeQuietly(inputStream);
                                        originalDataSpec2 = originalDataSpec;
                                        statsDataSource2 = statsDataSource;
                                    } catch (Exception e3) {
                                        e = e3;
                                        throw new MediaDrmCallbackException(originalDataSpec, statsDataSource.getLastOpenedUri(), statsDataSource.getResponseHeaders(), statsDataSource.getBytesRead(), e);
                                    }
                                }
                            } catch (Throwable th) {
                                e = th;
                                Util.closeQuietly(inputStream);
                                throw e;
                            }
                        } catch (HttpDataSource.InvalidResponseCodeException e4) {
                            e = e4;
                            statsDataSource = statsDataSource2;
                            originalDataSpec = originalDataSpec2;
                            dataSpec = dataSpec4;
                        } catch (Throwable th2) {
                            e = th2;
                            Util.closeQuietly(inputStream);
                            throw e;
                        }
                    } catch (Exception e5) {
                        e = e5;
                        throw new MediaDrmCallbackException(originalDataSpec, statsDataSource.getLastOpenedUri(), statsDataSource.getResponseHeaders(), statsDataSource.getBytesRead(), e);
                    }
                } catch (HttpDataSource.InvalidResponseCodeException e6) {
                    e = e6;
                    statsDataSource = statsDataSource2;
                    dataSpec = dataSpec3;
                    originalDataSpec = originalDataSpec2;
                } catch (Throwable th3) {
                    e = th3;
                }
                originalDataSpec2 = originalDataSpec;
                statsDataSource2 = statsDataSource;
            } catch (Exception e7) {
                statsDataSource = statsDataSource2;
                originalDataSpec = originalDataSpec2;
                e = e7;
            }
        }
    }

    private static String getRedirectUrl(HttpDataSource.InvalidResponseCodeException exception, int manualRedirectCount) {
        Map<String, List<String>> headerFields;
        List<String> locationHeaders;
        boolean manuallyRedirect = (exception.responseCode == 307 || exception.responseCode == 308) && manualRedirectCount < 5;
        if (!manuallyRedirect || (headerFields = exception.headerFields) == null || (locationHeaders = headerFields.get(HttpHeaders.LOCATION)) == null || locationHeaders.isEmpty()) {
            return null;
        }
        return locationHeaders.get(0);
    }

    private DrmUtil() {
    }
}
