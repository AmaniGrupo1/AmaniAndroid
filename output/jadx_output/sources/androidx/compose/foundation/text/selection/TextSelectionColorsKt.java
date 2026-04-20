package androidx.compose.foundation.text.selection;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: compiled from: TextSelectionColors.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\"\u0017\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0003\u0010\u0004\"\u0010\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0007\"\u0016\u0010\b\u001a\u00020\u00028\u0002X\u0083\u0004¢\u0006\b\n\u0000\u0012\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"LocalTextSelectionColors", "Landroidx/compose/runtime/ProvidableCompositionLocal;", "Landroidx/compose/foundation/text/selection/TextSelectionColors;", "getLocalTextSelectionColors", "()Landroidx/compose/runtime/ProvidableCompositionLocal;", "DefaultSelectionColor", "Landroidx/compose/ui/graphics/Color;", "J", "DefaultTextSelectionColors", "getDefaultTextSelectionColors$annotations", "()V", "foundation"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class TextSelectionColorsKt {
    private static final SelectionColors DefaultTextSelectionColors;
    private static final ProvidableCompositionLocal<SelectionColors> LocalTextSelectionColors = CompositionLocalKt.compositionLocalOf$default(null, new Function0() { // from class: androidx.compose.foundation.text.selection.TextSelectionColorsKt$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return TextSelectionColorsKt.DefaultTextSelectionColors;
        }
    }, 1, null);
    private static final long DefaultSelectionColor = ColorKt.Color(4282550004L);

    private static /* synthetic */ void getDefaultTextSelectionColors$annotations() {
    }

    static {
        long j = DefaultSelectionColor;
        long j2 = DefaultSelectionColor;
        DefaultTextSelectionColors = new SelectionColors(j, Color.m4695copywmQWz5c(j2, (14 & 1) != 0 ? Color.m4699getAlphaimpl(j2) : 0.4f, (14 & 2) != 0 ? Color.m4703getRedimpl(j2) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(j2) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(j2) : 0.0f), null);
    }

    public static final ProvidableCompositionLocal<SelectionColors> getLocalTextSelectionColors() {
        return LocalTextSelectionColors;
    }
}
