package androidx.compose.material;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.media3.extractor.text.ttml.TtmlNode;
import kotlin.Metadata;

/* JADX INFO: compiled from: Snackbar.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0017\u0010\u0005\u001a\u00020\u00068Gø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0017\u0010\t\u001a\u00020\u00068Gø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\u001a\u0004\b\n\u0010\b\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u000b"}, d2 = {"Landroidx/compose/material/SnackbarDefaults;", "", "()V", "SnackbarOverlayAlpha", "", TtmlNode.ATTR_TTS_BACKGROUND_COLOR, "Landroidx/compose/ui/graphics/Color;", "getBackgroundColor", "(Landroidx/compose/runtime/Composer;I)J", "primaryActionColor", "getPrimaryActionColor", "material_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class SnackbarDefaults {
    public static final int $stable = 0;
    public static final SnackbarDefaults INSTANCE = new SnackbarDefaults();
    private static final float SnackbarOverlayAlpha = 0.8f;

    private SnackbarDefaults() {
    }

    public final long getBackgroundColor(Composer $composer, int $changed) {
        ComposerKt.sourceInformationMarkerStart($composer, 1630911716, "C204@8614L6,206@8728L6:Snackbar.kt#jmzs0o");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1630911716, $changed, -1, "androidx.compose.material.SnackbarDefaults.<get-backgroundColor> (Snackbar.kt:204)");
        }
        long jM1758getOnSurface0d7_KjU = MaterialTheme.INSTANCE.getColors($composer, 6).m1758getOnSurface0d7_KjU();
        long jM4742compositeOverOWjLjI = ColorKt.m4742compositeOverOWjLjI(Color.m4695copywmQWz5c(jM1758getOnSurface0d7_KjU, (14 & 1) != 0 ? Color.m4699getAlphaimpl(jM1758getOnSurface0d7_KjU) : 0.8f, (14 & 2) != 0 ? Color.m4703getRedimpl(jM1758getOnSurface0d7_KjU) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(jM1758getOnSurface0d7_KjU) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(jM1758getOnSurface0d7_KjU) : 0.0f), MaterialTheme.INSTANCE.getColors($composer, 6).m1763getSurface0d7_KjU());
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        return jM4742compositeOverOWjLjI;
    }

    public final long getPrimaryActionColor(Composer $composer, int $changed) {
        long primary;
        ComposerKt.sourceInformationMarkerStart($composer, -810329402, "C225@9676L6:Snackbar.kt#jmzs0o");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-810329402, $changed, -1, "androidx.compose.material.SnackbarDefaults.<get-primaryActionColor> (Snackbar.kt:224)");
        }
        Colors colors = MaterialTheme.INSTANCE.getColors($composer, 6);
        if (colors.isLight()) {
            long primary2 = colors.m1759getPrimary0d7_KjU();
            long jM1763getSurface0d7_KjU = colors.m1763getSurface0d7_KjU();
            long overlayColor = Color.m4695copywmQWz5c(jM1763getSurface0d7_KjU, (14 & 1) != 0 ? Color.m4699getAlphaimpl(jM1763getSurface0d7_KjU) : 0.6f, (14 & 2) != 0 ? Color.m4703getRedimpl(jM1763getSurface0d7_KjU) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(jM1763getSurface0d7_KjU) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(jM1763getSurface0d7_KjU) : 0.0f);
            primary = ColorKt.m4742compositeOverOWjLjI(overlayColor, primary2);
        } else {
            primary = colors.m1760getPrimaryVariant0d7_KjU();
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        return primary;
    }
}
