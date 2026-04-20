package com.google.firebase.appcheck;

import com.google.android.gms.tasks.Task;

/* JADX INFO: loaded from: classes22.dex */
public interface AppCheckProvider {
    Task<AppCheckToken> getToken();
}
