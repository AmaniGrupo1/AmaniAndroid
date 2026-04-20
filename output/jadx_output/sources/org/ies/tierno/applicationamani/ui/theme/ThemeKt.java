package org.ies.tierno.applicationamani.ui.theme;

import androidx.compose.foundation.DarkThemeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.ColorScheme;
import androidx.compose.material3.ColorSchemeKt;
import androidx.compose.material3.MaterialThemeKt;
import androidx.compose.material3.Shapes;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Theme.kt */
/* JADX INFO: loaded from: classes9.dex */
@Metadata(d1 = {"\u00004\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a*\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\u0011\u0010\u000e\u001a\r\u0012\u0004\u0012\u00020\u000b0\u000f¢\u0006\u0002\b\u0010H\u0007¢\u0006\u0002\u0010\u0011\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"LightColorScheme", "Landroidx/compose/material3/ColorScheme;", "DarkColorScheme", "LocalAmaniColors", "Landroidx/compose/runtime/ProvidableCompositionLocal;", "Lorg/ies/tierno/applicationamani/ui/theme/AmaniExtraColors;", "getLocalAmaniColors", "()Landroidx/compose/runtime/ProvidableCompositionLocal;", "AmaniShapes", "Landroidx/compose/material3/Shapes;", "ApplicationAmaniTheme", "", "darkTheme", "", "content", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "(ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V", "app"}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class ThemeKt {
    private static final ColorScheme LightColorScheme = ColorSchemeKt.m2219lightColorSchemeCXl9yA$default(ColorKt.getAmaniPurple(), ColorKt.getAmaniBlack(), ColorKt.getAmaniPurple(), ColorKt.getAmaniBlack(), 0, ColorKt.getAmaniPurpleDark(), ColorKt.getAmaniWhite(), 0, 0, 0, 0, 0, 0, ColorKt.getAmaniSurface(), ColorKt.getAmaniOnSurface(), ColorKt.getAmaniSurface(), ColorKt.getAmaniOnSurface(), ColorKt.getAmaniWhite(), 0, 0, 0, 0, 0, 0, 0, 0, ColorKt.getAmaniBlack(), 0, 0, 0, 0, 0, 0, 0, 0, 0, -67362928, 15, null);
    private static final ColorScheme DarkColorScheme = ColorSchemeKt.m2215darkColorSchemeCXl9yA$default(ColorKt.getAmaniPurpleDark(), ColorKt.getAmaniWhite(), ColorKt.getAmaniPurpleDark(), ColorKt.getAmaniWhite(), 0, ColorKt.getAmaniPurple(), ColorKt.getAmaniBlack(), 0, 0, 0, 0, 0, 0, androidx.compose.ui.graphics.ColorKt.Color(4280032031L), ColorKt.getAmaniWhite(), androidx.compose.ui.graphics.ColorKt.Color(4280032031L), ColorKt.getAmaniWhite(), androidx.compose.ui.graphics.ColorKt.Color(4282991951L), 0, 0, 0, 0, 0, 0, 0, 0, ColorKt.getAmaniWhite(), 0, 0, 0, 0, 0, 0, 0, 0, 0, -67362928, 15, null);
    private static final ProvidableCompositionLocal<AmaniExtraColors> LocalAmaniColors = CompositionLocalKt.staticCompositionLocalOf(new Function0() { // from class: org.ies.tierno.applicationamani.ui.theme.ThemeKt$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ThemeKt.LocalAmaniColors$lambda$0();
        }
    });
    private static final Shapes AmaniShapes = new Shapes(null, RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(12)), RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(16)), RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(24)), null, 17, null);

    static final Unit ApplicationAmaniTheme$lambda$2(boolean z, Function2 function2, int i, int i2, Composer composer, int i3) {
        ApplicationAmaniTheme(z, function2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    static final AmaniExtraColors LocalAmaniColors$lambda$0() {
        return new AmaniExtraColors(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 1023, null);
    }

    public static final ProvidableCompositionLocal<AmaniExtraColors> getLocalAmaniColors() {
        return LocalAmaniColors;
    }

    public static final void ApplicationAmaniTheme(boolean darkTheme, final Function2<? super Composer, ? super Integer, Unit> content, Composer $composer, final int $changed, final int i) {
        final boolean darkTheme2;
        AmaniExtraColors extraColors;
        Intrinsics.checkNotNullParameter(content, "content");
        Composer $composer2 = $composer.startRestartGroup(-1283325792);
        ComposerKt.sourceInformation($composer2, "C(ApplicationAmaniTheme)N(darkTheme,content)140@5103L180,138@5025L258:Theme.kt#58g7qr");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            if ((i & 1) == 0) {
                darkTheme2 = darkTheme;
                int i2 = $composer2.changed(darkTheme2) ? 4 : 2;
                $dirty |= i2;
            } else {
                darkTheme2 = darkTheme;
            }
            $dirty |= i2;
        } else {
            darkTheme2 = darkTheme;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer2.changedInstance(content) ? 32 : 16;
        }
        if ($composer2.shouldExecute(($dirty & 19) != 18, $dirty & 1)) {
            $composer2.startDefaults();
            ComposerKt.sourceInformation($composer2, "124@4573L21");
            if (($changed & 1) != 0 && !$composer2.getDefaultsInvalid()) {
                $composer2.skipToGroupEnd();
                if ((i & 1) != 0) {
                    $dirty &= -15;
                }
            } else if ((i & 1) != 0) {
                darkTheme2 = DarkThemeKt.isSystemInDarkTheme($composer2, 0);
                $dirty &= -15;
            }
            $composer2.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1283325792, $dirty, -1, "org.ies.tierno.applicationamani.ui.theme.ApplicationAmaniTheme (Theme.kt:126)");
            }
            final ColorScheme colorScheme = darkTheme2 ? DarkColorScheme : LightColorScheme;
            if (darkTheme2) {
                extraColors = new AmaniExtraColors(colorScheme.getBackground(), colorScheme.getSurfaceVariant(), colorScheme.getOutline(), 0L, 0L, 0L, 0L, 0L, 0L, 0L, 1016, null);
            } else {
                extraColors = new AmaniExtraColors(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 1023, null);
            }
            CompositionLocalKt.CompositionLocalProvider(LocalAmaniColors.provides(extraColors), ComposableLambdaKt.rememberComposableLambda(48977248, true, new Function2() { // from class: org.ies.tierno.applicationamani.ui.theme.ThemeKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ThemeKt.ApplicationAmaniTheme$lambda$1(colorScheme, content, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer2, 54), $composer2, ProvidedValue.$stable | 48);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.ui.theme.ThemeKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ThemeKt.ApplicationAmaniTheme$lambda$2(darkTheme2, content, $changed, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    static final Unit ApplicationAmaniTheme$lambda$1(ColorScheme $colorScheme, Function2 $content, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C141@5113L164:Theme.kt#58g7qr");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(48977248, $changed, -1, "org.ies.tierno.applicationamani.ui.theme.ApplicationAmaniTheme.<anonymous> (Theme.kt:141)");
            }
            MaterialThemeKt.MaterialTheme($colorScheme, AmaniShapes, TypeKt.getTypography(), $content, $composer, 432, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }
}
