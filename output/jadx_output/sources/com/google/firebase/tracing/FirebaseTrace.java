package com.google.firebase.tracing;

import android.os.Trace;

/* JADX INFO: loaded from: classes22.dex */
public final class FirebaseTrace {
    private FirebaseTrace() {
    }

    public static void pushTrace(String name) {
        Trace.beginSection(name);
    }

    public static void popTrace() {
        Trace.endSection();
    }
}
