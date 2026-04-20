package androidx.compose.foundation.text;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.profileinstaller.ProfileVerifier;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: ClickableText.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001as\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\u0014\b\u0002\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00010\u000f2\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00010\u000fH\u0007¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"ClickableText", "", "text", "Landroidx/compose/ui/text/AnnotatedString;", "modifier", "Landroidx/compose/ui/Modifier;", "style", "Landroidx/compose/ui/text/TextStyle;", "softWrap", "", "overflow", "Landroidx/compose/ui/text/style/TextOverflow;", "maxLines", "", "onTextLayout", "Lkotlin/Function1;", "Landroidx/compose/ui/text/TextLayoutResult;", "onClick", "ClickableText-4YKlhWE", "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;ZIILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V", "foundation"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class ClickableTextKt {
    static final Unit ClickableText_4YKlhWE$lambda$4(AnnotatedString annotatedString, Modifier modifier, TextStyle textStyle, boolean z, int i, int i2, Function1 function1, Function1 function12, int i3, int i4, Composer composer, int i5) {
        m1162ClickableText4YKlhWE(annotatedString, modifier, textStyle, z, i, i2, function1, function12, composer, RecomposeScopeImplKt.updateChangedFlags(i3 | 1), i4);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit ClickableText_4YKlhWE$lambda$0$0(TextLayoutResult it) {
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:141:0x0275  */
    @Deprecated(message = "Use Text or BasicText and pass an AnnotatedString that contains a LinkAnnotation. Check LinkAnnotation's documentation for more details and samples.")
    /* JADX INFO: renamed from: ClickableText-4YKlhWE, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void m1162ClickableText4YKlhWE(final AnnotatedString text, Modifier modifier, TextStyle style, boolean softWrap, int i, int maxLines, Function1<? super TextLayoutResult, Unit> function1, final Function1<? super Integer, Unit> function12, Composer $composer, final int $changed, final int i2) {
        AnnotatedString annotatedString;
        Modifier modifier2;
        TextStyle textStyle;
        int iM7415getClipgIe3tQ8;
        int i3;
        Composer $composer2;
        final int maxLines2;
        final TextStyle style2;
        final boolean softWrap2;
        final Function1<? super TextLayoutResult, Unit> function13;
        TextStyle style3;
        int i4;
        boolean softWrap3;
        int maxLines3;
        int maxLines4;
        final Function1<? super TextLayoutResult, Unit> function14;
        int i5;
        Composer $composer3;
        Composer $composer4 = $composer.startRestartGroup(-246609449);
        ComposerKt.sourceInformation($composer4, "C(ClickableText)N(text,modifier,style,softWrap,overflow:c#ui.text.style.TextOverflow,maxLines,onTextLayout,onClick)77@3766L2,80@3825L52,82@3942L208,97@4371L76,90@4156L298:ClickableText.kt#423gt5");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            annotatedString = text;
            $dirty |= $composer4.changed(annotatedString) ? 4 : 2;
        } else {
            annotatedString = text;
        }
        int i6 = i2 & 2;
        if (i6 != 0) {
            $dirty |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty |= $composer4.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        int i7 = i2 & 4;
        if (i7 != 0) {
            $dirty |= RendererCapabilities.DECODER_SUPPORT_MASK;
            textStyle = style;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            textStyle = style;
            $dirty |= $composer4.changed(textStyle) ? 256 : 128;
        } else {
            textStyle = style;
        }
        int i8 = i2 & 8;
        if (i8 != 0) {
            $dirty |= 3072;
        } else if (($changed & 3072) == 0) {
            $dirty |= $composer4.changed(softWrap) ? 2048 : 1024;
        }
        int i9 = i2 & 16;
        if (i9 != 0) {
            $dirty |= 24576;
            iM7415getClipgIe3tQ8 = i;
        } else if (($changed & 24576) == 0) {
            iM7415getClipgIe3tQ8 = i;
            $dirty |= $composer4.changed(iM7415getClipgIe3tQ8) ? 16384 : 8192;
        } else {
            iM7415getClipgIe3tQ8 = i;
        }
        int i10 = i2 & 32;
        if (i10 != 0) {
            $dirty |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i3 = maxLines;
        } else if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            i3 = maxLines;
            $dirty |= $composer4.changed(i3) ? 131072 : 65536;
        } else {
            i3 = maxLines;
        }
        int i11 = i2 & 64;
        if (i11 != 0) {
            $dirty |= 1572864;
        } else if (($changed & 1572864) == 0) {
            $dirty |= $composer4.changedInstance(function1) ? 1048576 : 524288;
        }
        if (($changed & 12582912) == 0) {
            $dirty |= $composer4.changedInstance(function12) ? 8388608 : 4194304;
        }
        if (!$composer4.shouldExecute(($dirty & 4793491) != 4793490, $dirty & 1)) {
            $composer2 = $composer4;
            $composer2.skipToGroupEnd();
            maxLines2 = i3;
            style2 = textStyle;
            softWrap2 = softWrap;
            function13 = function1;
        } else {
            if (i6 != 0) {
                modifier2 = Modifier.INSTANCE;
            }
            if (i7 == 0) {
                style3 = textStyle;
            } else {
                style3 = TextStyle.INSTANCE.getDefault();
            }
            if (i8 == 0) {
                i4 = i10;
                softWrap3 = softWrap;
            } else {
                softWrap3 = true;
                i4 = i10;
            }
            if (i9 != 0) {
                iM7415getClipgIe3tQ8 = TextOverflow.INSTANCE.m7415getClipgIe3tQ8();
            }
            if (i4 == 0) {
                maxLines3 = i11;
                maxLines4 = i3;
            } else {
                maxLines4 = Integer.MAX_VALUE;
                maxLines3 = i11;
            }
            if (maxLines3 != 0) {
                ComposerKt.sourceInformationMarkerStart($composer4, -768470151, "CC(remember):ClickableText.kt#9igjgp");
                Object it$iv = $composer4.rememberedValue();
                if (it$iv == Composer.INSTANCE.getEmpty()) {
                    Object value$iv = new Function1() { // from class: androidx.compose.foundation.text.ClickableTextKt$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return ClickableTextKt.ClickableText_4YKlhWE$lambda$0$0((TextLayoutResult) obj);
                        }
                    };
                    $composer4.updateRememberedValue(value$iv);
                    it$iv = value$iv;
                }
                function14 = (Function1) it$iv;
                ComposerKt.sourceInformationMarkerEnd($composer4);
            } else {
                function14 = function1;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-246609449, $dirty, -1, "androidx.compose.foundation.text.ClickableText (ClickableText.kt:79)");
            }
            ComposerKt.sourceInformationMarkerStart($composer4, -768468213, "CC(remember):ClickableText.kt#9igjgp");
            Object it$iv2 = $composer4.rememberedValue();
            if (it$iv2 == Composer.INSTANCE.getEmpty()) {
                Object value$iv2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
                $composer4.updateRememberedValue(value$iv2);
                it$iv2 = value$iv2;
            }
            final MutableState layoutResult = (MutableState) it$iv2;
            ComposerKt.sourceInformationMarkerEnd($composer4);
            Modifier.Companion companion = Modifier.INSTANCE;
            ComposerKt.sourceInformationMarkerStart($composer4, -768464313, "CC(remember):ClickableText.kt#9igjgp");
            boolean invalid$iv = (29360128 & $dirty) == 8388608;
            boolean invalid$iv2 = invalid$iv;
            ClickableTextKt$ClickableText$pressIndicator$1$1 value$iv3 = $composer4.rememberedValue();
            if (invalid$iv2 || value$iv3 == Composer.INSTANCE.getEmpty()) {
                value$iv3 = new ClickableTextKt$ClickableText$pressIndicator$1$1(layoutResult, function12);
                $composer4.updateRememberedValue(value$iv3);
            }
            ComposerKt.sourceInformationMarkerEnd($composer4);
            Modifier pressIndicator = SuspendingPointerInputFilterKt.pointerInput(companion, function12, (PointerInputEventHandler) value$iv3);
            Modifier modifierThen = modifier2.then(pressIndicator);
            ComposerKt.sourceInformationMarkerStart($composer4, -768450717, "CC(remember):ClickableText.kt#9igjgp");
            boolean invalid$iv3 = ($dirty & 3670016) == 1048576;
            Object it$iv3 = $composer4.rememberedValue();
            if (!invalid$iv3) {
                i5 = 3670016;
                if (it$iv3 != Composer.INSTANCE.getEmpty()) {
                    $composer3 = $composer4;
                }
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer2 = $composer3;
                BasicTextKt.m1153BasicTextCL7eQgs(annotatedString, modifierThen, style3, (Function1) it$iv3, iM7415getClipgIe3tQ8, softWrap3, maxLines4, 0, null, null, null, $composer2, ($dirty & 14) | ($dirty & 896) | (57344 & $dirty) | (458752 & ($dirty << 6)) | (($dirty << 3) & i5), 0, 1920);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                function13 = function14;
                style2 = style3;
                softWrap2 = softWrap3;
                maxLines2 = maxLines4;
            } else {
                i5 = 3670016;
            }
            $composer3 = $composer4;
            Object value$iv4 = new Function1() { // from class: androidx.compose.foundation.text.ClickableTextKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return ClickableTextKt.ClickableText_4YKlhWE$lambda$3$0(layoutResult, function14, (TextLayoutResult) obj);
                }
            };
            $composer4.updateRememberedValue(value$iv4);
            it$iv3 = value$iv4;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            $composer2 = $composer3;
            BasicTextKt.m1153BasicTextCL7eQgs(annotatedString, modifierThen, style3, (Function1) it$iv3, iM7415getClipgIe3tQ8, softWrap3, maxLines4, 0, null, null, null, $composer2, ($dirty & 14) | ($dirty & 896) | (57344 & $dirty) | (458752 & ($dirty << 6)) | (($dirty << 3) & i5), 0, 1920);
            if (ComposerKt.isTraceInProgress()) {
            }
            function13 = function14;
            style2 = style3;
            softWrap2 = softWrap3;
            maxLines2 = maxLines4;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier3 = modifier2;
            final int i12 = iM7415getClipgIe3tQ8;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: androidx.compose.foundation.text.ClickableTextKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ClickableTextKt.ClickableText_4YKlhWE$lambda$4(text, modifier3, style2, softWrap2, i12, maxLines2, function13, function12, $changed, i2, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit ClickableText_4YKlhWE$lambda$3$0(MutableState $layoutResult, Function1 $onTextLayout, TextLayoutResult it) {
        $layoutResult.setValue(it);
        $onTextLayout.invoke(it);
        return Unit.INSTANCE;
    }
}
