package androidx.compose.ui.spatial;

import androidx.compose.ui.unit.IntOffset;
import kotlin.Metadata;

/* JADX INFO: compiled from: RectManager.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u000b\u001a\u0013\u0010\u0005\u001a\u00020\u0006*\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\t\u001a\r\u0010\u0011\u001a\u00020\u0006*\u00020\u0001H\u0080\b\"\u0018\u0010\u0000\u001a\u00020\u0001*\u00020\u00028BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\"\u001f\u0010\n\u001a\u00020\u0001*\u00020\u00068Â\u0002X\u0082\u0004¢\u0006\f\u0012\u0004\b\u000b\u0010\f\u001a\u0004\b\n\u0010\r\"\u001f\u0010\u000e\u001a\u00020\u0001*\u00020\u00068Â\u0002X\u0082\u0004¢\u0006\f\u0012\u0004\b\u000f\u0010\f\u001a\u0004\b\u0010\u0010\r¨\u0006\u0012"}, d2 = {"isSet", "", "Landroidx/compose/ui/unit/IntOffset;", "isSet--gyyYBs", "(J)Z", "analyzeComponents", "", "Landroidx/compose/ui/graphics/Matrix;", "analyzeComponents-58bKbWc", "([F)I", "isIdentity", "isIdentity$annotations", "(I)V", "(I)Z", "hasNonTranslationComponents", "getHasNonTranslationComponents$annotations", "getHasNonTranslationComponents", "toInt", "ui"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class RectManagerKt {
    private static /* synthetic */ void getHasNonTranslationComponents$annotations(int i) {
    }

    private static /* synthetic */ void isIdentity$annotations(int i) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: isSet--gyyYBs, reason: not valid java name */
    public static final boolean m6726isSetgyyYBs(long j) {
        return !IntOffset.m7632equalsimpl0(j, IntOffset.INSTANCE.m7643getMaxnOccac());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:52:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00b3  */
    /* JADX INFO: renamed from: analyzeComponents-58bKbWc, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final int m6725analyzeComponents58bKbWc(float[] fArr) {
        boolean isIdentity3x3;
        boolean hasNoTranslationComponents;
        if (fArr.length < 16) {
            return 0;
        }
        if (fArr[0] == 1.0f) {
            if (fArr[1] == 0.0f) {
                if (fArr[2] == 0.0f) {
                    if (fArr[4] == 0.0f) {
                        if (fArr[5] == 1.0f) {
                            if (fArr[6] == 0.0f) {
                                if (fArr[8] == 0.0f) {
                                    if (fArr[9] == 0.0f) {
                                        if (fArr[10] == 1.0f) {
                                            isIdentity3x3 = true;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } else {
            isIdentity3x3 = false;
        }
        if (fArr[12] == 0.0f) {
            if (fArr[13] == 0.0f) {
                if (fArr[14] == 0.0f) {
                    if (fArr[15] == 1.0f) {
                        hasNoTranslationComponents = true;
                    }
                }
            }
        } else {
            hasNoTranslationComponents = false;
        }
        boolean $this$toInt$iv = isIdentity3x3;
        boolean $this$toInt$iv2 = hasNoTranslationComponents;
        return ($this$toInt$iv2 ? 1 : 0) | (($this$toInt$iv ? 1 : 0) << 1);
    }

    private static final boolean isIdentity(int $this$isIdentity) {
        return $this$isIdentity == 3;
    }

    private static final boolean getHasNonTranslationComponents(int $this$hasNonTranslationComponents) {
        return ($this$hasNonTranslationComponents & 2) == 0;
    }

    public static final int toInt(boolean z) {
        return z ? 1 : 0;
    }
}
