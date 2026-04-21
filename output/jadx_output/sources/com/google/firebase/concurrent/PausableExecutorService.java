package com.google.firebase.concurrent;

import androidx.activity.OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder1;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes22.dex */
public interface PausableExecutorService extends ExecutorService, PausableExecutor, AutoCloseable {
    @Override // java.lang.AutoCloseable
    /* synthetic */ default void close() {
        OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder1.m(this);
    }
}
