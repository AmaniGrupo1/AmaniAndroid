package androidx.compose.ui.node;

import kotlin.Metadata;
import kotlin.jvm.JvmInline;

/* JADX INFO: compiled from: HitTestResult.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\b\u0081@\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0000H\u0086\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0013\u0010\u0017\u001a\u00020\r2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\b\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\f\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u000f\u0088\u0001\u0002¨\u0006\u001b"}, d2 = {"Landroidx/compose/ui/node/DistanceAndFlags;", "", "packedValue", "", "constructor-impl", "(J)J", "getPackedValue", "()J", "distance", "", "getDistance-impl", "(J)F", "isInLayer", "", "isInLayer-impl", "(J)Z", "isInExpandedBounds", "isInExpandedBounds-impl", "compareTo", "", "other", "compareTo-9YPOF3E", "(JJ)I", "equals", "hashCode", "toString", "", "ui"}, k = 1, mv = {2, 0, 0}, xi = 48)
@JvmInline
public final class DistanceAndFlags {
    private final long packedValue;

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ DistanceAndFlags m6329boximpl(long j) {
        return new DistanceAndFlags(j);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m6331constructorimpl(long j) {
        return j;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m6332equalsimpl(long j, Object obj) {
        return (obj instanceof DistanceAndFlags) && j == ((DistanceAndFlags) obj).m6339unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m6333equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m6335hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m6338toStringimpl(long j) {
        return "DistanceAndFlags(packedValue=" + j + ')';
    }

    public boolean equals(Object other) {
        return m6332equalsimpl(this.packedValue, other);
    }

    public int hashCode() {
        return m6335hashCodeimpl(this.packedValue);
    }

    public String toString() {
        return m6338toStringimpl(this.packedValue);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m6339unboximpl() {
        return this.packedValue;
    }

    private /* synthetic */ DistanceAndFlags(long packedValue) {
        this.packedValue = packedValue;
    }

    public final long getPackedValue() {
        return this.packedValue;
    }

    /* JADX INFO: renamed from: getDistance-impl, reason: not valid java name */
    public static final float m6334getDistanceimpl(long j) {
        int bits$iv$iv = (int) (j >> 32);
        return Float.intBitsToFloat(bits$iv$iv);
    }

    /* JADX INFO: renamed from: isInLayer-impl, reason: not valid java name */
    public static final boolean m6337isInLayerimpl(long j) {
        return (1 & j) != 0;
    }

    /* JADX INFO: renamed from: isInExpandedBounds-impl, reason: not valid java name */
    public static final boolean m6336isInExpandedBoundsimpl(long j) {
        return (2 & j) != 0;
    }

    /* JADX INFO: renamed from: compareTo-9YPOF3E, reason: not valid java name */
    public static final int m6330compareTo9YPOF3E(long j, long j2) {
        boolean thisIsInLayer = m6337isInLayerimpl(j);
        boolean otherIsInLayer = m6337isInLayerimpl(j2);
        if (thisIsInLayer != otherIsInLayer) {
            return thisIsInLayer ? -1 : 1;
        }
        int distanceDiff = (int) Math.signum(m6334getDistanceimpl(j) - m6334getDistanceimpl(j2));
        if (Math.min(m6334getDistanceimpl(j), m6334getDistanceimpl(j2)) >= 0.0f && m6336isInExpandedBoundsimpl(j) != m6336isInExpandedBoundsimpl(j2)) {
            return m6336isInExpandedBoundsimpl(j) ? -1 : 1;
        }
        return distanceDiff;
    }
}
