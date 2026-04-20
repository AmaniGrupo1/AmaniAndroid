package com.google.firebase.appcheck.internal;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Strings;
import com.google.firebase.FirebaseException;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes22.dex */
public class AppCheckTokenResponse {
    static final String TIME_TO_LIVE_KEY = "ttl";
    static final String TOKEN_KEY = "token";
    private String timeToLive;
    private String token;

    public static AppCheckTokenResponse fromJsonString(String jsonString) throws FirebaseException, JSONException {
        JSONObject jsonObject = new JSONObject(jsonString);
        String token = Strings.emptyToNull(jsonObject.optString(TOKEN_KEY));
        String timeToLive = Strings.emptyToNull(jsonObject.optString(TIME_TO_LIVE_KEY));
        if (token == null || timeToLive == null) {
            throw new FirebaseException("Unexpected server response.");
        }
        return new AppCheckTokenResponse(token, timeToLive);
    }

    private AppCheckTokenResponse(String token, String timeToLive) {
        Preconditions.checkNotNull(token);
        Preconditions.checkNotNull(timeToLive);
        this.token = token;
        this.timeToLive = timeToLive;
    }

    public String getToken() {
        return this.token;
    }

    public String getTimeToLive() {
        return this.timeToLive;
    }
}
