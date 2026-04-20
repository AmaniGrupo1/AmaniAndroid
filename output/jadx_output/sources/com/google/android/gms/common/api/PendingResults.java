package com.google.android.gms.common.api;

import android.os.Looper;
import com.google.android.gms.common.api.internal.OptionalPendingResultImpl;
import com.google.android.gms.common.api.internal.StatusPendingResult;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.9.0 */
/* JADX INFO: loaded from: classes21.dex */
public final class PendingResults {
    private PendingResults() {
    }

    public static PendingResult<Status> canceledPendingResult() {
        StatusPendingResult statusPendingResult = new StatusPendingResult(Looper.getMainLooper());
        statusPendingResult.cancel();
        return statusPendingResult;
    }

    public static <R extends Result> PendingResult<R> immediateFailedResult(R r, GoogleApiClient apiClient) {
        Preconditions.checkNotNull(r, "Result must not be null");
        Preconditions.checkArgument(!r.getStatus().isSuccess(), "Status code must not be SUCCESS");
        zad zadVar = new zad(apiClient, r);
        zadVar.setResult(r);
        return zadVar;
    }

    public static <R extends Result> OptionalPendingResult<R> immediatePendingResult(R r) {
        Preconditions.checkNotNull(r, "Result must not be null");
        zae zaeVar = new zae(null);
        zaeVar.setResult(r);
        return new OptionalPendingResultImpl(zaeVar);
    }

    public static <R extends Result> PendingResult<R> canceledPendingResult(R r) {
        Preconditions.checkNotNull(r, "Result must not be null");
        Preconditions.checkArgument(r.getStatus().getStatusCode() == 16, "Status code must be CommonStatusCodes.CANCELED");
        zac zacVar = new zac(r);
        zacVar.cancel();
        return zacVar;
    }

    public static <R extends Result> OptionalPendingResult<R> immediatePendingResult(R r, GoogleApiClient apiClient) {
        Preconditions.checkNotNull(r, "Result must not be null");
        zae zaeVar = new zae(apiClient);
        zaeVar.setResult(r);
        return new OptionalPendingResultImpl(zaeVar);
    }

    public static PendingResult<Status> immediatePendingResult(Status result) {
        Preconditions.checkNotNull(result, "Result must not be null");
        StatusPendingResult statusPendingResult = new StatusPendingResult(Looper.getMainLooper());
        statusPendingResult.setResult(result);
        return statusPendingResult;
    }

    public static PendingResult<Status> immediatePendingResult(Status result, GoogleApiClient apiClient) {
        Preconditions.checkNotNull(result, "Result must not be null");
        StatusPendingResult statusPendingResult = new StatusPendingResult(apiClient);
        statusPendingResult.setResult(result);
        return statusPendingResult;
    }
}
