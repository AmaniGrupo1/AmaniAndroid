package androidx.compose.material3;

import androidx.compose.material3.tokens.RadioButtonTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.graphics.Color;
import kotlin.Metadata;

/* JADX INFO: compiled from: RadioButton.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\r\u0010\b\u001a\u00020\u0004H\u0007¢\u0006\u0002\u0010\tJ:\u0010\b\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\u000b2\b\b\u0002\u0010\r\u001a\u00020\u000b2\b\b\u0002\u0010\u000e\u001a\u00020\u000bH\u0007ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010R\u0018\u0010\u0003\u001a\u00020\u0004*\u00020\u00058@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u0006\u0011"}, d2 = {"Landroidx/compose/material3/RadioButtonDefaults;", "", "()V", "defaultRadioButtonColors", "Landroidx/compose/material3/RadioButtonColors;", "Landroidx/compose/material3/ColorScheme;", "getDefaultRadioButtonColors$material3_release", "(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/RadioButtonColors;", "colors", "(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/RadioButtonColors;", "selectedColor", "Landroidx/compose/ui/graphics/Color;", "unselectedColor", "disabledSelectedColor", "disabledUnselectedColor", "colors-ro_MJ88", "(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/RadioButtonColors;", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class RadioButtonDefaults {
    public static final int $stable = 0;
    public static final RadioButtonDefaults INSTANCE = new RadioButtonDefaults();

    private RadioButtonDefaults() {
    }

    public final RadioButtonColors colors(Composer $composer, int $changed) {
        ComposerKt.sourceInformationMarkerStart($composer, -1191566130, "C(colors)140@5777L11:RadioButton.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1191566130, $changed, -1, "androidx.compose.material3.RadioButtonDefaults.colors (RadioButton.kt:140)");
        }
        RadioButtonColors defaultRadioButtonColors$material3_release = getDefaultRadioButtonColors$material3_release(MaterialTheme.INSTANCE.getColorScheme($composer, 6));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        return defaultRadioButtonColors$material3_release;
    }

    /* JADX INFO: renamed from: colors-ro_MJ88, reason: not valid java name */
    public final RadioButtonColors m2677colorsro_MJ88(long selectedColor, long unselectedColor, long disabledSelectedColor, long disabledUnselectedColor, Composer $composer, int $changed, int i) {
        ComposerKt.sourceInformationMarkerStart($composer, -351083046, "C(colors)P(2:c#ui.graphics.Color,3:c#ui.graphics.Color,0:c#ui.graphics.Color,1:c#ui.graphics.Color)160@6748L11:RadioButton.kt#uh7d8r");
        long selectedColor2 = (i & 1) != 0 ? Color.INSTANCE.m4733getUnspecified0d7_KjU() : selectedColor;
        long unselectedColor2 = (i & 2) != 0 ? Color.INSTANCE.m4733getUnspecified0d7_KjU() : unselectedColor;
        long disabledSelectedColor2 = (i & 4) != 0 ? Color.INSTANCE.m4733getUnspecified0d7_KjU() : disabledSelectedColor;
        long disabledUnselectedColor2 = (i & 8) != 0 ? Color.INSTANCE.m4733getUnspecified0d7_KjU() : disabledUnselectedColor;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-351083046, $changed, -1, "androidx.compose.material3.RadioButtonDefaults.colors (RadioButton.kt:160)");
        }
        RadioButtonColors radioButtonColorsM2672copyjRlVdoo = getDefaultRadioButtonColors$material3_release(MaterialTheme.INSTANCE.getColorScheme($composer, 6)).m2672copyjRlVdoo(selectedColor2, unselectedColor2, disabledSelectedColor2, disabledUnselectedColor2);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        return radioButtonColorsM2672copyjRlVdoo;
    }

    public final RadioButtonColors getDefaultRadioButtonColors$material3_release(ColorScheme $this$defaultRadioButtonColors) {
        RadioButtonColors it = $this$defaultRadioButtonColors.getDefaultRadioButtonColorsCached();
        if (it == null) {
            long jFromToken = ColorSchemeKt.fromToken($this$defaultRadioButtonColors, RadioButtonTokens.INSTANCE.getSelectedIconColor());
            long jFromToken2 = ColorSchemeKt.fromToken($this$defaultRadioButtonColors, RadioButtonTokens.INSTANCE.getUnselectedIconColor());
            long jFromToken3 = ColorSchemeKt.fromToken($this$defaultRadioButtonColors, RadioButtonTokens.INSTANCE.getDisabledSelectedIconColor());
            long jM4695copywmQWz5c = Color.m4695copywmQWz5c(jFromToken3, (14 & 1) != 0 ? Color.m4699getAlphaimpl(jFromToken3) : 0.38f, (14 & 2) != 0 ? Color.m4703getRedimpl(jFromToken3) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(jFromToken3) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(jFromToken3) : 0.0f);
            long jFromToken4 = ColorSchemeKt.fromToken($this$defaultRadioButtonColors, RadioButtonTokens.INSTANCE.getDisabledUnselectedIconColor());
            RadioButtonColors it2 = new RadioButtonColors(jFromToken, jFromToken2, jM4695copywmQWz5c, Color.m4695copywmQWz5c(jFromToken4, (14 & 1) != 0 ? Color.m4699getAlphaimpl(jFromToken4) : 0.38f, (14 & 2) != 0 ? Color.m4703getRedimpl(jFromToken4) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(jFromToken4) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(jFromToken4) : 0.0f), null);
            $this$defaultRadioButtonColors.setDefaultRadioButtonColorsCached$material3_release(it2);
            return it2;
        }
        return it;
    }
}
