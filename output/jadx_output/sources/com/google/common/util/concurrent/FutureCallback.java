package com.google.common.util.concurrent;

/* JADX INFO: loaded from: classes22.dex */
@ElementTypesAreNonnullByDefault
public interface FutureCallback<V> {
    void onFailure(Throwable t);

    void onSuccess(@ParametricNullness V result);
}
