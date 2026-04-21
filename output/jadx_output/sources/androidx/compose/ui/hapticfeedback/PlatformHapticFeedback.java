package androidx.compose.ui.hapticfeedback;

import android.view.View;
import androidx.core.view.ViewCompat;
import kotlin.Metadata;

/* JADX INFO: compiled from: PlatformHapticFeedback.android.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedback;", "Landroidx/compose/ui/hapticfeedback/HapticFeedback;", "view", "Landroid/view/View;", "<init>", "(Landroid/view/View;)V", "performHapticFeedback", "", "hapticFeedbackType", "Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;", "performHapticFeedback-CdsT49E", "(I)V", "ui"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class PlatformHapticFeedback implements HapticFeedback {
    public static final int $stable = 8;
    private final View view;

    public PlatformHapticFeedback(View view) {
        this.view = view;
    }

    @Override // androidx.compose.ui.hapticfeedback.HapticFeedback
    /* JADX INFO: renamed from: performHapticFeedback-CdsT49E */
    public void mo5466performHapticFeedbackCdsT49E(int hapticFeedbackType) {
        int constant;
        if (HapticFeedbackType.m5470equalsimpl0(hapticFeedbackType, HapticFeedbackType.INSTANCE.m5474getConfirm5zf0vsI())) {
            constant = 16;
        } else if (HapticFeedbackType.m5470equalsimpl0(hapticFeedbackType, HapticFeedbackType.INSTANCE.m5475getContextClick5zf0vsI())) {
            constant = 6;
        } else if (HapticFeedbackType.m5470equalsimpl0(hapticFeedbackType, HapticFeedbackType.INSTANCE.m5476getGestureEnd5zf0vsI())) {
            constant = 13;
        } else if (HapticFeedbackType.m5470equalsimpl0(hapticFeedbackType, HapticFeedbackType.INSTANCE.m5477getGestureThresholdActivate5zf0vsI())) {
            constant = 23;
        } else if (HapticFeedbackType.m5470equalsimpl0(hapticFeedbackType, HapticFeedbackType.INSTANCE.m5478getKeyboardTap5zf0vsI())) {
            constant = 3;
        } else if (HapticFeedbackType.m5470equalsimpl0(hapticFeedbackType, HapticFeedbackType.INSTANCE.m5479getLongPress5zf0vsI())) {
            constant = 0;
        } else if (HapticFeedbackType.m5470equalsimpl0(hapticFeedbackType, HapticFeedbackType.INSTANCE.m5480getReject5zf0vsI())) {
            constant = 17;
        } else if (HapticFeedbackType.m5470equalsimpl0(hapticFeedbackType, HapticFeedbackType.INSTANCE.m5481getSegmentFrequentTick5zf0vsI())) {
            constant = 27;
        } else if (HapticFeedbackType.m5470equalsimpl0(hapticFeedbackType, HapticFeedbackType.INSTANCE.m5482getSegmentTick5zf0vsI())) {
            constant = 26;
        } else if (HapticFeedbackType.m5470equalsimpl0(hapticFeedbackType, HapticFeedbackType.INSTANCE.m5483getTextHandleMove5zf0vsI())) {
            constant = 9;
        } else if (HapticFeedbackType.m5470equalsimpl0(hapticFeedbackType, HapticFeedbackType.INSTANCE.m5484getToggleOff5zf0vsI())) {
            constant = 22;
        } else if (HapticFeedbackType.m5470equalsimpl0(hapticFeedbackType, HapticFeedbackType.INSTANCE.m5485getToggleOn5zf0vsI())) {
            constant = 21;
        } else {
            constant = HapticFeedbackType.m5470equalsimpl0(hapticFeedbackType, HapticFeedbackType.INSTANCE.m5486getVirtualKey5zf0vsI()) ? 1 : -1;
        }
        ViewCompat.performHapticFeedback(this.view, constant);
    }
}
