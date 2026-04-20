package com.google.firebase.appcheck.internal;

import android.util.Log;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.appcheck.AppCheckToken;
import com.google.firebase.appcheck.internal.util.Clock;
import com.google.firebase.appcheck.internal.util.TokenParser;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes22.dex */
public final class DefaultAppCheckToken extends AppCheckToken {
    static final String EXPIRATION_TIME_KEY = "exp";
    static final String EXPIRES_IN_MILLIS_KEY = "expiresIn";
    static final String ISSUED_AT_KEY = "iat";
    private static final long ONE_SECOND_MILLIS = 1000;
    static final String RECEIVED_AT_TIMESTAMP_KEY = "receivedAt";
    private static final String TAG = DefaultAppCheckToken.class.getName();
    static final String TOKEN_KEY = "token";
    private final long expiresInMillis;
    private final long receivedAtTimestamp;
    private final String token;

    DefaultAppCheckToken(String tokenJwt, long expiresInMillis) {
        this(tokenJwt, expiresInMillis, new Clock.DefaultClock().currentTimeMillis());
    }

    DefaultAppCheckToken(String tokenJwt, long expiresInMillis, long receivedAtTimestamp) {
        Preconditions.checkNotEmpty(tokenJwt);
        this.token = tokenJwt;
        this.expiresInMillis = expiresInMillis;
        this.receivedAtTimestamp = receivedAtTimestamp;
    }

    public static DefaultAppCheckToken constructFromAppCheckTokenResponse(AppCheckTokenResponse tokenResponse) {
        long expiresInMillis;
        Preconditions.checkNotNull(tokenResponse);
        try {
            String timeToLiveSeconds = tokenResponse.getTimeToLive().replace(CmcdData.STREAMING_FORMAT_SS, "");
            expiresInMillis = (long) (Double.parseDouble(timeToLiveSeconds) * 1000.0d);
        } catch (NumberFormatException e) {
            Map<String, Object> claimsMap = TokenParser.parseTokenClaims(tokenResponse.getToken());
            long iat = getLongFromClaimsSafely(claimsMap, ISSUED_AT_KEY);
            long exp = getLongFromClaimsSafely(claimsMap, EXPIRATION_TIME_KEY);
            expiresInMillis = (exp - iat) * 1000;
        }
        return new DefaultAppCheckToken(tokenResponse.getToken(), expiresInMillis);
    }

    @Override // com.google.firebase.appcheck.AppCheckToken
    public String getToken() {
        return this.token;
    }

    @Override // com.google.firebase.appcheck.AppCheckToken
    public long getExpireTimeMillis() {
        return this.receivedAtTimestamp + this.expiresInMillis;
    }

    long getReceivedAtTimestamp() {
        return this.receivedAtTimestamp;
    }

    long getExpiresInMillis() {
        return this.expiresInMillis;
    }

    String serializeTokenToString() {
        try {
            JSONObject jsonObject = new JSONObject();
            jsonObject.put(TOKEN_KEY, this.token);
            jsonObject.put(RECEIVED_AT_TIMESTAMP_KEY, this.receivedAtTimestamp);
            jsonObject.put(EXPIRES_IN_MILLIS_KEY, this.expiresInMillis);
            return jsonObject.toString();
        } catch (JSONException e) {
            Log.e(TAG, "Could not serialize token: " + e.getMessage());
            return null;
        }
    }

    static DefaultAppCheckToken deserializeTokenFromJsonString(String tokenJsonString) {
        try {
            JSONObject jsonObject = new JSONObject(tokenJsonString);
            String tokenJwt = jsonObject.getString(TOKEN_KEY);
            long receivedAtTimestamp = jsonObject.getLong(RECEIVED_AT_TIMESTAMP_KEY);
            long expiresInMillis = jsonObject.getLong(EXPIRES_IN_MILLIS_KEY);
            return new DefaultAppCheckToken(tokenJwt, expiresInMillis, receivedAtTimestamp);
        } catch (JSONException e) {
            Log.e(TAG, "Could not deserialize token: " + e.getMessage());
            return null;
        }
    }

    public static DefaultAppCheckToken constructFromRawToken(String token) {
        Preconditions.checkNotNull(token);
        Map<String, Object> claimsMap = TokenParser.parseTokenClaims(token);
        long iat = getLongFromClaimsSafely(claimsMap, ISSUED_AT_KEY);
        long exp = getLongFromClaimsSafely(claimsMap, EXPIRATION_TIME_KEY);
        long expiresInMillis = (exp - iat) * 1000;
        return new DefaultAppCheckToken(token, expiresInMillis, iat * 1000);
    }

    private static long getLongFromClaimsSafely(Map<String, Object> claimsMap, String key) {
        Preconditions.checkNotNull(claimsMap);
        Preconditions.checkNotEmpty(key);
        Integer result = (Integer) claimsMap.get(key);
        if (result == null) {
            return 0L;
        }
        return result.longValue();
    }
}
