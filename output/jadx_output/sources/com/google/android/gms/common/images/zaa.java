package com.google.android.gms.common.images;

import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.util.Log;
import com.google.android.gms.common.internal.Asserts;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.9.0 */
/* JADX INFO: loaded from: classes21.dex */
final class zaa implements Runnable {
    final /* synthetic */ ImageManager zaa;
    private final Uri zab;
    private final AssetFileDescriptor zac;

    public zaa(ImageManager imageManager, Uri uri, AssetFileDescriptor assetFileDescriptor) {
        Objects.requireNonNull(imageManager);
        this.zaa = imageManager;
        this.zab = uri;
        this.zac = assetFileDescriptor;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x004f A[PHI: r2
      0x004f: PHI (r2v5 android.graphics.Bitmap) = (r2v0 android.graphics.Bitmap), (r2v3 android.graphics.Bitmap) binds: [B:3:0x000b, B:16:0x0025] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        Bitmap bitmap;
        boolean z;
        Asserts.checkNotMainThread("LoadBitmapFromDiskRunnable can't be executed in the main thread");
        AssetFileDescriptor assetFileDescriptor = this.zac;
        Bitmap bitmapDecodeStream = null;
        if (assetFileDescriptor != null) {
            try {
                FileInputStream fileInputStreamCreateInputStream = assetFileDescriptor.createInputStream();
                if (fileInputStreamCreateInputStream != null) {
                    try {
                        bitmapDecodeStream = BitmapFactory.decodeStream(fileInputStreamCreateInputStream);
                    } catch (Throwable th) {
                        try {
                            fileInputStreamCreateInputStream.close();
                            throw th;
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                            throw th;
                        }
                    }
                }
                if (fileInputStreamCreateInputStream != null) {
                    try {
                        fileInputStreamCreateInputStream.close();
                        bitmap = bitmapDecodeStream;
                        z = false;
                    } catch (IOException e) {
                        e = e;
                        String strValueOf = String.valueOf(this.zab);
                        String.valueOf(strValueOf);
                        Log.e("ImageManager", "Error loading bitmap for uri: ".concat(String.valueOf(strValueOf)), e);
                        bitmap = bitmapDecodeStream;
                        z = e instanceof OutOfMemoryError;
                    } catch (OutOfMemoryError e2) {
                        e = e2;
                        String strValueOf2 = String.valueOf(this.zab);
                        String.valueOf(strValueOf2);
                        Log.e("ImageManager", "Error loading bitmap for uri: ".concat(String.valueOf(strValueOf2)), e);
                        bitmap = bitmapDecodeStream;
                        z = e instanceof OutOfMemoryError;
                    }
                } else {
                    bitmap = bitmapDecodeStream;
                    z = false;
                }
            } catch (IOException e3) {
                e = e3;
            } catch (OutOfMemoryError e4) {
                e = e4;
            }
        }
        CountDownLatch countDownLatch = new CountDownLatch(1);
        ImageManager imageManager = this.zaa;
        imageManager.zae().post(new zac(imageManager, this.zab, bitmap, z, countDownLatch));
        try {
            countDownLatch.await();
        } catch (InterruptedException e5) {
            String strValueOf3 = String.valueOf(this.zab);
            String.valueOf(strValueOf3);
            Log.w("ImageManager", "Latch interrupted while posting ".concat(String.valueOf(strValueOf3)));
        }
    }
}
