package com.google.firebase.appcheck.internal;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes22.dex */
public class HttpErrorResponse {
    static final String CODE_KEY = "code";
    static final String ERROR_KEY = "error";
    static final String MESSAGE_KEY = "message";
    private int errorCode;
    private String errorMessage;

    public static HttpErrorResponse fromJsonString(String jsonString) throws JSONException {
        JSONObject jsonObject = new JSONObject(jsonString);
        String innerErrorString = jsonObject.optString(ERROR_KEY);
        JSONObject innerJsonObject = new JSONObject(innerErrorString);
        int code = innerJsonObject.optInt(CODE_KEY);
        String message = innerJsonObject.optString(MESSAGE_KEY);
        return new HttpErrorResponse(code, message);
    }

    private HttpErrorResponse(int errorCode, String errorMessage) {
        this.errorCode = errorCode;
        this.errorMessage = errorMessage;
    }

    public int getErrorCode() {
        return this.errorCode;
    }

    public String getErrorMessage() {
        return this.errorMessage;
    }
}
