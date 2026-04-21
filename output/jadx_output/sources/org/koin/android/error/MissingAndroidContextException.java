package org.koin.android.error;

import androidx.media3.exoplayer.upstream.CmcdData;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MissingAndroidContextException.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lorg/koin/android/error/MissingAndroidContextException;", "", CmcdData.STREAMING_FORMAT_SS, "", "<init>", "(Ljava/lang/String;)V", "koin-android_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class MissingAndroidContextException extends Throwable {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MissingAndroidContextException(String s) {
        super(s);
        Intrinsics.checkNotNullParameter(s, "s");
    }
}
