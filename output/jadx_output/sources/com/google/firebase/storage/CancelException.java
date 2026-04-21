package com.google.firebase.storage;

import java.io.IOException;

/* JADX INFO: loaded from: classes22.dex */
class CancelException extends IOException {
    CancelException() {
        super("The operation was canceled.");
    }
}
