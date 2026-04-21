package androidx.compose.ui.layout;

import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.util.MathHelpersKt;
import androidx.media3.extractor.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: compiled from: ScaleFactor.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\u001a\u001e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0087\b¢\u0006\u0002\u0010\u0005\u001a\"\u0010\u000f\u001a\u00020\u0001*\u00020\u00012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00010\u0011H\u0086\b¢\u0006\u0004\b\u0012\u0010\u0013\u001a\u001c\u0010\u0014\u001a\u00020\u0015*\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0001H\u0087\u0002¢\u0006\u0004\b\u0017\u0010\u0018\u001a\u001c\u0010\u0014\u001a\u00020\u0015*\u00020\u00012\u0006\u0010\u0019\u001a\u00020\u0015H\u0087\u0002¢\u0006\u0004\b\u001a\u0010\u0018\u001a\u001c\u0010\u001b\u001a\u00020\u0015*\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0001H\u0087\u0002¢\u0006\u0004\b\u001c\u0010\u0018\u001a'\u0010\u001d\u001a\u00020\u00012\u0006\u0010\u001e\u001a\u00020\u00012\u0006\u0010\u001f\u001a\u00020\u00012\u0006\u0010 \u001a\u00020\u0003H\u0007¢\u0006\u0004\b!\u0010\"\"\u001f\u0010\u0006\u001a\u00020\u0007*\u00020\u00018Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u001f\u0010\f\u001a\u00020\u0007*\u00020\u00018Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\r\u0010\t\u001a\u0004\b\u000e\u0010\u000b¨\u0006#"}, d2 = {"ScaleFactor", "Landroidx/compose/ui/layout/ScaleFactor;", "scaleX", "", "scaleY", "(FF)J", "isSpecified", "", "isSpecified-FK8aYYs$annotations", "(J)V", "isSpecified-FK8aYYs", "(J)Z", "isUnspecified", "isUnspecified-FK8aYYs$annotations", "isUnspecified-FK8aYYs", "takeOrElse", "block", "Lkotlin/Function0;", "takeOrElse-oyDd2qo", "(JLkotlin/jvm/functions/Function0;)J", "times", "Landroidx/compose/ui/geometry/Size;", "scaleFactor", "times-UQTWf7w", "(JJ)J", "size", "times-m-w2e94", TtmlNode.TAG_DIV, "div-UQTWf7w", "lerp", TtmlNode.START, "stop", "fraction", "lerp--bDIf60", "(JJF)J", "ui"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class ScaleFactorKt {
    /* JADX INFO: renamed from: isSpecified-FK8aYYs$annotations, reason: not valid java name */
    public static /* synthetic */ void m6267isSpecifiedFK8aYYs$annotations(long j) {
    }

    /* JADX INFO: renamed from: isUnspecified-FK8aYYs$annotations, reason: not valid java name */
    public static /* synthetic */ void m6269isUnspecifiedFK8aYYs$annotations(long j) {
    }

    public static final long ScaleFactor(float scaleX, float scaleY) {
        long v1$iv = Float.floatToRawIntBits(scaleX);
        long v2$iv = Float.floatToRawIntBits(scaleY);
        return ScaleFactor.m6251constructorimpl((v1$iv << 32) | (4294967295L & v2$iv));
    }

    /* JADX INFO: renamed from: isSpecified-FK8aYYs, reason: not valid java name */
    public static final boolean m6266isSpecifiedFK8aYYs(long j) {
        return j != ScaleFactor.INSTANCE.m6264getUnspecified_hLwfpc();
    }

    /* JADX INFO: renamed from: isUnspecified-FK8aYYs, reason: not valid java name */
    public static final boolean m6268isUnspecifiedFK8aYYs(long j) {
        return j == ScaleFactor.INSTANCE.m6264getUnspecified_hLwfpc();
    }

    /* JADX INFO: renamed from: takeOrElse-oyDd2qo, reason: not valid java name */
    public static final long m6271takeOrElseoyDd2qo(long j, Function0<ScaleFactor> function0) {
        return (j > ScaleFactor.INSTANCE.m6264getUnspecified_hLwfpc() ? 1 : (j == ScaleFactor.INSTANCE.m6264getUnspecified_hLwfpc() ? 0 : -1)) != 0 ? j : function0.invoke().m6262unboximpl();
    }

    /* JADX INFO: renamed from: times-UQTWf7w, reason: not valid java name */
    public static final long m6272timesUQTWf7w(long j, long j2) {
        int bits$iv$iv$iv = (int) (j >> 32);
        int bits$iv$iv$iv2 = (int) (j2 >> 32);
        float width$iv = Float.intBitsToFloat(bits$iv$iv$iv) * Float.intBitsToFloat(bits$iv$iv$iv2);
        int bits$iv$iv$iv3 = (int) (j & 4294967295L);
        int bits$iv$iv$iv4 = (int) (j2 & 4294967295L);
        float height$iv = Float.intBitsToFloat(bits$iv$iv$iv3) * Float.intBitsToFloat(bits$iv$iv$iv4);
        long v1$iv$iv = Float.floatToRawIntBits(width$iv);
        long v2$iv$iv = Float.floatToRawIntBits(height$iv);
        return Size.m4512constructorimpl((v1$iv$iv << 32) | (4294967295L & v2$iv$iv));
    }

    /* JADX INFO: renamed from: times-m-w2e94, reason: not valid java name */
    public static final long m6273timesmw2e94(long j, long j2) {
        return m6272timesUQTWf7w(j2, j);
    }

    /* JADX INFO: renamed from: div-UQTWf7w, reason: not valid java name */
    public static final long m6265divUQTWf7w(long j, long j2) {
        int bits$iv$iv$iv = (int) (j >> 32);
        int bits$iv$iv$iv2 = (int) (j2 >> 32);
        float width$iv = Float.intBitsToFloat(bits$iv$iv$iv) / Float.intBitsToFloat(bits$iv$iv$iv2);
        int bits$iv$iv$iv3 = (int) (j & 4294967295L);
        int bits$iv$iv$iv4 = (int) (j2 & 4294967295L);
        float height$iv = Float.intBitsToFloat(bits$iv$iv$iv3) / Float.intBitsToFloat(bits$iv$iv$iv4);
        long v1$iv$iv = Float.floatToRawIntBits(width$iv);
        long v2$iv$iv = Float.floatToRawIntBits(height$iv);
        return Size.m4512constructorimpl((v1$iv$iv << 32) | (4294967295L & v2$iv$iv));
    }

    /* JADX INFO: renamed from: lerp--bDIf60, reason: not valid java name */
    public static final long m6270lerpbDIf60(long j, long j2, float fraction) {
        int bits$iv$iv$iv = (int) (j >> 32);
        int bits$iv$iv$iv2 = (int) (j2 >> 32);
        float scaleX$iv = MathHelpersKt.lerp(Float.intBitsToFloat(bits$iv$iv$iv), Float.intBitsToFloat(bits$iv$iv$iv2), fraction);
        int bits$iv$iv$iv3 = (int) (j & 4294967295L);
        int bits$iv$iv$iv4 = (int) (j2 & 4294967295L);
        float scaleY$iv = MathHelpersKt.lerp(Float.intBitsToFloat(bits$iv$iv$iv3), Float.intBitsToFloat(bits$iv$iv$iv4), fraction);
        long v1$iv$iv = Float.floatToRawIntBits(scaleX$iv);
        long v2$iv$iv = Float.floatToRawIntBits(scaleY$iv);
        return ScaleFactor.m6251constructorimpl((v1$iv$iv << 32) | (4294967295L & v2$iv$iv));
    }
}
