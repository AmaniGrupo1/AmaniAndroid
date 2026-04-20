package androidx.compose.foundation.text.selection;

import android.view.MotionEvent;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.core.view.InputDeviceCompat;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: SelectionGestures.android.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000¨\u0006\u0003"}, d2 = {"isMouseOrTouchPad", "", "Landroidx/compose/ui/input/pointer/PointerEvent;", "foundation"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class SelectionGestures_androidKt {
    public static final boolean isMouseOrTouchPad(PointerEvent $this$isMouseOrTouchPad) {
        boolean z;
        List<PointerInputChange> changes = $this$isMouseOrTouchPad.getChanges();
        int index$iv$iv = 0;
        int size = changes.size();
        while (true) {
            if (index$iv$iv >= size) {
                z = true;
                break;
            }
            Object item$iv$iv = changes.get(index$iv$iv);
            PointerInputChange it = (PointerInputChange) item$iv$iv;
            if (!PointerType.m6081equalsimpl0(it.getType(), PointerType.INSTANCE.m6086getMouseT8wyACA())) {
                z = false;
                break;
            }
            index$iv$iv++;
        }
        if (!z) {
            MotionEvent motionEvent = $this$isMouseOrTouchPad.getMotionEvent();
            if (!(motionEvent != null && motionEvent.isFromSource(8194))) {
                MotionEvent motionEvent2 = $this$isMouseOrTouchPad.getMotionEvent();
                if (!(motionEvent2 != null && motionEvent2.isFromSource(InputDeviceCompat.SOURCE_TOUCHPAD))) {
                    return false;
                }
            }
        }
        return true;
    }
}
