package com.google.firebase.storage;

import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.FirebaseException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes22.dex */
public class StorageException extends FirebaseException {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int ERROR_BUCKET_NOT_FOUND = -13011;
    public static final int ERROR_CANCELED = -13040;
    public static final int ERROR_INVALID_CHECKSUM = -13031;
    public static final int ERROR_NOT_AUTHENTICATED = -13020;
    public static final int ERROR_NOT_AUTHORIZED = -13021;
    public static final int ERROR_OBJECT_NOT_FOUND = -13010;
    public static final int ERROR_PROJECT_NOT_FOUND = -13012;
    public static final int ERROR_QUOTA_EXCEEDED = -13013;
    public static final int ERROR_RETRY_LIMIT_EXCEEDED = -13030;
    public static final int ERROR_UNKNOWN = -13000;
    private static final int NETWORK_UNAVAILABLE = -2;
    private static final String TAG = "StorageException";
    private Throwable cause;
    private final int errorCode;
    private final int httpResultCode;

    @Retention(RetentionPolicy.SOURCE)
    public @interface ErrorCode {
    }

    StorageException(int errorCode, Throwable inner, int httpResultCode) {
        super(getErrorMessageForCode(errorCode));
        this.cause = inner;
        this.errorCode = errorCode;
        this.httpResultCode = httpResultCode;
        Log.e(TAG, "StorageException has occurred.\n" + getErrorMessageForCode(errorCode) + "\n Code: " + this.errorCode + " HttpResult: " + this.httpResultCode);
        if (this.cause != null) {
            Log.e(TAG, this.cause.getMessage(), this.cause);
        }
    }

    private static int calculateErrorCode(Status status) {
        if (status.isCanceled()) {
            return ERROR_CANCELED;
        }
        if (status.equals(Status.RESULT_TIMEOUT)) {
            return ERROR_RETRY_LIMIT_EXCEEDED;
        }
        return ERROR_UNKNOWN;
    }

    private static int calculateErrorCode(Throwable inner, int httpResultCode) {
        if (inner instanceof CancelException) {
            return ERROR_CANCELED;
        }
        switch (httpResultCode) {
            case -2:
                return ERROR_RETRY_LIMIT_EXCEEDED;
            case 401:
                return ERROR_NOT_AUTHENTICATED;
            case 403:
                return ERROR_NOT_AUTHORIZED;
            case 404:
                return ERROR_OBJECT_NOT_FOUND;
            case 409:
                return ERROR_INVALID_CHECKSUM;
            default:
                return ERROR_UNKNOWN;
        }
    }

    public static StorageException fromErrorStatus(Status status) {
        Preconditions.checkNotNull(status);
        Preconditions.checkArgument(!status.isSuccess());
        return new StorageException(calculateErrorCode(status), null, 0);
    }

    public static StorageException fromExceptionAndHttpCode(Throwable exception, int httpResultCode) {
        if (exception instanceof StorageException) {
            return (StorageException) exception;
        }
        if (isResultSuccess(httpResultCode) && exception == null) {
            return null;
        }
        return new StorageException(calculateErrorCode(exception, httpResultCode), exception, httpResultCode);
    }

    public static StorageException fromException(Throwable exception) {
        StorageException se = fromExceptionAndHttpCode(exception, 0);
        if (se == null) {
            throw new AssertionError();
        }
        return se;
    }

    private static boolean isResultSuccess(int resultCode) {
        return resultCode == 0 || (resultCode >= 200 && resultCode < 300);
    }

    static String getErrorMessageForCode(int errorCode) {
        switch (errorCode) {
            case ERROR_CANCELED /* -13040 */:
                break;
            case ERROR_INVALID_CHECKSUM /* -13031 */:
                break;
            case ERROR_RETRY_LIMIT_EXCEEDED /* -13030 */:
                break;
            case ERROR_NOT_AUTHORIZED /* -13021 */:
                break;
            case ERROR_NOT_AUTHENTICATED /* -13020 */:
                break;
            case ERROR_QUOTA_EXCEEDED /* -13013 */:
                break;
            case ERROR_PROJECT_NOT_FOUND /* -13012 */:
                break;
            case ERROR_BUCKET_NOT_FOUND /* -13011 */:
                break;
            case ERROR_OBJECT_NOT_FOUND /* -13010 */:
                break;
            case ERROR_UNKNOWN /* -13000 */:
                break;
        }
        return "An unknown error occurred, please check the HTTP result code and inner exception for server response.";
    }

    @Override // java.lang.Throwable
    public synchronized Throwable getCause() {
        if (this.cause == this) {
            return null;
        }
        return this.cause;
    }

    public int getErrorCode() {
        return this.errorCode;
    }

    public int getHttpResultCode() {
        return this.httpResultCode;
    }

    public boolean getIsRecoverableException() {
        return getErrorCode() == -13030;
    }
}
