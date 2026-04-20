package com.google.firebase.storage.internal;

/* JADX INFO: loaded from: classes22.dex */
public class SleeperImpl implements Sleeper {
    @Override // com.google.firebase.storage.internal.Sleeper
    public void sleep(int milliseconds) throws InterruptedException {
        Thread.sleep(milliseconds);
    }
}
