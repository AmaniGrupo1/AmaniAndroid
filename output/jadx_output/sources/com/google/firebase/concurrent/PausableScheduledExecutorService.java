package com.google.firebase.concurrent;

import androidx.activity.OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder1;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes22.dex */
public interface PausableScheduledExecutorService extends ScheduledExecutorService, PausableExecutorService, AutoCloseable {
    @Override // com.google.firebase.concurrent.PausableExecutorService, java.lang.AutoCloseable
    /* synthetic */ default void close() {
        OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder1.m(this);
    }
}
