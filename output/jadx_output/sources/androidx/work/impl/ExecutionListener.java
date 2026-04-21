package androidx.work.impl;

import androidx.work.impl.model.WorkGenerationalId;

/* JADX INFO: loaded from: classes21.dex */
public interface ExecutionListener {
    void onExecuted(WorkGenerationalId id, boolean needsReschedule);
}
