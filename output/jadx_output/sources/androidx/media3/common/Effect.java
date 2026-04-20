package androidx.media3.common;

/* JADX INFO: loaded from: classes21.dex */
public interface Effect {
    default long getDurationAfterEffectApplied(long durationUs) {
        return durationUs;
    }
}
