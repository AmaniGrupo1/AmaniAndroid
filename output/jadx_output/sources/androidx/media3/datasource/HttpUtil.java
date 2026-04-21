package androidx.media3.datasource;

import android.text.TextUtils;
import androidx.media3.common.util.Log;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMap;
import com.google.common.net.HttpHeaders;
import java.io.IOException;
import java.net.CookieHandler;
import java.net.URI;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes21.dex */
public final class HttpUtil {
    private static final String TAG = "HttpUtil";
    private static final Pattern CONTENT_RANGE_WITH_START_AND_END = Pattern.compile("bytes (\\d+)-(\\d+)/(?:\\d+|\\*)");
    private static final Pattern CONTENT_RANGE_WITH_SIZE = Pattern.compile("bytes (?:(?:\\d+-\\d+)|\\*)/(\\d+)");

    private HttpUtil() {
    }

    public static String buildRangeRequestHeader(long position, long length) {
        if (position == 0 && length == -1) {
            return null;
        }
        StringBuilder rangeValue = new StringBuilder();
        rangeValue.append("bytes=");
        rangeValue.append(position);
        rangeValue.append("-");
        if (length != -1) {
            rangeValue.append((position + length) - 1);
        }
        return rangeValue.toString();
    }

    public static long getDocumentSize(String contentRangeHeader) {
        if (TextUtils.isEmpty(contentRangeHeader)) {
            return -1L;
        }
        Matcher matcher = CONTENT_RANGE_WITH_SIZE.matcher(contentRangeHeader);
        if (matcher.matches()) {
            return Long.parseLong((String) Preconditions.checkNotNull(matcher.group(1)));
        }
        return -1L;
    }

    public static long getContentLength(String contentLengthHeader, String contentRangeHeader) {
        long contentLength = -1;
        if (!TextUtils.isEmpty(contentLengthHeader)) {
            try {
                contentLength = Long.parseLong(contentLengthHeader);
            } catch (NumberFormatException e) {
                Log.e(TAG, "Unexpected Content-Length [" + contentLengthHeader + "]");
            }
        }
        if (!TextUtils.isEmpty(contentRangeHeader)) {
            Matcher matcher = CONTENT_RANGE_WITH_START_AND_END.matcher(contentRangeHeader);
            if (matcher.matches()) {
                try {
                    long contentLengthFromRange = (Long.parseLong((String) Preconditions.checkNotNull(matcher.group(2))) - Long.parseLong((String) Preconditions.checkNotNull(matcher.group(1)))) + 1;
                    if (contentLength < 0) {
                        return contentLengthFromRange;
                    }
                    if (contentLength != contentLengthFromRange) {
                        Log.w(TAG, "Inconsistent headers [" + contentLengthHeader + "] [" + contentRangeHeader + "]");
                        return Math.max(contentLength, contentLengthFromRange);
                    }
                    return contentLength;
                } catch (NumberFormatException e2) {
                    Log.e(TAG, "Unexpected Content-Range [" + contentRangeHeader + "]");
                    return contentLength;
                }
            }
            return contentLength;
        }
        return contentLength;
    }

    public static void storeCookiesFromHeaders(String url, Map<String, List<String>> headers, CookieHandler cookieHandler) {
        if (cookieHandler == null) {
            return;
        }
        try {
            cookieHandler.put(new URI(url), headers);
        } catch (Exception e) {
            Log.w(TAG, "Failed to store cookies in CookieHandler", e);
        }
    }

    public static String getCookieHeader(String url, Map<String, List<String>> headers, CookieHandler cookieHandler) throws IOException {
        List<String> cookiesList;
        if (cookieHandler == null) {
            return "";
        }
        Map<String, List<String>> cookieHeaders = ImmutableMap.of();
        try {
            cookieHeaders = cookieHandler.get(new URI(url), headers);
        } catch (Exception e) {
            Log.w(TAG, "Failed to read cookies from CookieHandler", e);
        }
        StringBuilder cookies = new StringBuilder();
        if (cookieHeaders.containsKey(HttpHeaders.COOKIE) && (cookiesList = cookieHeaders.get(HttpHeaders.COOKIE)) != null) {
            for (String cookie : cookiesList) {
                cookies.append(cookie).append("; ");
            }
        }
        return HttpUtil$$ExternalSyntheticBackport0.m(cookies.toString());
    }
}
