package androidx.compose.foundation.text;

import androidx.autofill.HintConstants;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.text.input.InputTransformation;
import androidx.compose.foundation.text.input.InputTransformationKt;
import androidx.compose.foundation.text.input.KeyboardActionHandler;
import androidx.compose.foundation.text.input.TextFieldDecorator;
import androidx.compose.foundation.text.input.TextFieldLineLimits;
import androidx.compose.foundation.text.input.TextFieldState;
import androidx.compose.foundation.text.input.TextObfuscationMode;
import androidx.compose.foundation.text.input.TextObfuscationMode_androidKt;
import androidx.compose.foundation.text.input.internal.CodepointTransformation;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.autofill.ContentType;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.input.key.KeyEvent;
import androidx.compose.ui.input.key.KeyInputModifierKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.TextToolbar;
import androidx.compose.ui.platform.TextToolbarStatus;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Density;
import androidx.media3.common.C;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.profileinstaller.ProfileVerifier;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: BasicSecureTextField.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0088\u0001\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\f\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u001aÛ\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u001028\b\u0002\u0010\u0011\u001a2\u0012\u0004\u0012\u00020\u0013\u0012\u001b\u0012\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0014¢\u0006\f\b\u0016\u0012\b\b\u0017\u0012\u0004\b\b(\u0018\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0012¢\u0006\u0002\b\u00192\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\b\b\u0002\u0010\u001c\u001a\u00020\u001d2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\b\b\u0002\u0010 \u001a\u00020!2\b\b\u0002\u0010\"\u001a\u00020#2\b\b\u0002\u0010$\u001a\u00020%H\u0007¢\u0006\u0004\b&\u0010'\u001a\u001a\u0010(\u001a\u0004\u0018\u00010\n*\u0004\u0018\u00010\n2\b\u0010)\u001a\u0004\u0018\u00010\nH\u0002\u001a \u0010-\u001a\u00020\u00012\u0011\u0010.\u001a\r\u0012\u0004\u0012\u00020\u00010\u0014¢\u0006\u0002\b/H\u0003¢\u0006\u0002\u00100\u001aÇ\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u001028\b\u0002\u0010\u0011\u001a2\u0012\u0004\u0012\u00020\u0013\u0012\u001b\u0012\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0014¢\u0006\f\b\u0016\u0012\b\b\u0017\u0012\u0004\b\b(\u0018\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0012¢\u0006\u0002\b\u00192\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\b\b\u0002\u0010\u001c\u001a\u00020\u001d2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\b\b\u0002\u0010 \u001a\u00020!2\b\b\u0002\u0010\"\u001a\u00020#H\u0007¢\u0006\u0004\b1\u00102\u001aÑ\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u001028\b\u0002\u0010\u0011\u001a2\u0012\u0004\u0012\u00020\u0013\u0012\u001b\u0012\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0014¢\u0006\f\b\u0016\u0012\b\b\u0017\u0012\u0004\b\b(\u0018\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0012¢\u0006\u0002\b\u00192\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\b\b\u0002\u0010\u001c\u001a\u00020\u001d2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\b\b\u0002\u0010 \u001a\u00020!2\b\b\u0002\u0010\"\u001a\u00020#H\u0007¢\u0006\u0004\b3\u00104\"\u000e\u0010*\u001a\u00020+X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010,\u001a\u00020#X\u0082T¢\u0006\u0002\n\u0000¨\u00065"}, d2 = {"BasicSecureTextField", "", "state", "Landroidx/compose/foundation/text/input/TextFieldState;", "modifier", "Landroidx/compose/ui/Modifier;", "enabled", "", "readOnly", "inputTransformation", "Landroidx/compose/foundation/text/input/InputTransformation;", "textStyle", "Landroidx/compose/ui/text/TextStyle;", "keyboardOptions", "Landroidx/compose/foundation/text/KeyboardOptions;", "onKeyboardAction", "Landroidx/compose/foundation/text/input/KeyboardActionHandler;", "onTextLayout", "Lkotlin/Function2;", "Landroidx/compose/ui/unit/Density;", "Lkotlin/Function0;", "Landroidx/compose/ui/text/TextLayoutResult;", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "getResult", "Lkotlin/ExtensionFunctionType;", "interactionSource", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "cursorBrush", "Landroidx/compose/ui/graphics/Brush;", "decorator", "Landroidx/compose/foundation/text/input/TextFieldDecorator;", "textObfuscationMode", "Landroidx/compose/foundation/text/input/TextObfuscationMode;", "textObfuscationCharacter", "", "scrollState", "Landroidx/compose/foundation/ScrollState;", "BasicSecureTextField-ltb6GB4", "(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/input/KeyboardActionHandler;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text/input/TextFieldDecorator;ICLandroidx/compose/foundation/ScrollState;Landroidx/compose/runtime/Composer;III)V", "then", "next", "LAST_TYPED_CHARACTER_REVEAL_DURATION_MILLIS", "", "DefaultObfuscationCharacter", "DisableCutCopy", "content", "Landroidx/compose/runtime/Composable;", "(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "BasicSecureTextField-Jb9bMDk", "(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/input/KeyboardActionHandler;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text/input/TextFieldDecorator;ICLandroidx/compose/runtime/Composer;III)V", "BasicSecureTextField-egD4TGM", "(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/input/KeyboardActionHandler;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text/input/TextFieldDecorator;ICLandroidx/compose/runtime/Composer;III)V", "foundation"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class BasicSecureTextFieldKt {
    private static final char DefaultObfuscationCharacter = 8226;
    private static final long LAST_TYPED_CHARACTER_REVEAL_DURATION_MILLIS = 1500;

    static final Unit BasicSecureTextField_Jb9bMDk$lambda$0(TextFieldState textFieldState, Modifier modifier, boolean z, InputTransformation inputTransformation, TextStyle textStyle, KeyboardOptions keyboardOptions, KeyboardActionHandler keyboardActionHandler, Function2 function2, MutableInteractionSource mutableInteractionSource, Brush brush, TextFieldDecorator textFieldDecorator, int i, char c, int i2, int i3, int i4, Composer composer, int i5) {
        m1135BasicSecureTextFieldJb9bMDk(textFieldState, modifier, z, inputTransformation, textStyle, keyboardOptions, keyboardActionHandler, function2, mutableInteractionSource, brush, textFieldDecorator, i, c, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1), RecomposeScopeImplKt.updateChangedFlags(i3), i4);
        return Unit.INSTANCE;
    }

    static final Unit BasicSecureTextField_egD4TGM$lambda$0(TextFieldState textFieldState, Modifier modifier, boolean z, boolean z2, InputTransformation inputTransformation, TextStyle textStyle, KeyboardOptions keyboardOptions, KeyboardActionHandler keyboardActionHandler, Function2 function2, MutableInteractionSource mutableInteractionSource, Brush brush, TextFieldDecorator textFieldDecorator, int i, char c, int i2, int i3, int i4, Composer composer, int i5) {
        m1136BasicSecureTextFieldegD4TGM(textFieldState, modifier, z, z2, inputTransformation, textStyle, keyboardOptions, keyboardActionHandler, function2, mutableInteractionSource, brush, textFieldDecorator, i, c, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1), RecomposeScopeImplKt.updateChangedFlags(i3), i4);
        return Unit.INSTANCE;
    }

    static final Unit BasicSecureTextField_ltb6GB4$lambda$7(TextFieldState textFieldState, Modifier modifier, boolean z, boolean z2, InputTransformation inputTransformation, TextStyle textStyle, KeyboardOptions keyboardOptions, KeyboardActionHandler keyboardActionHandler, Function2 function2, MutableInteractionSource mutableInteractionSource, Brush brush, TextFieldDecorator textFieldDecorator, int i, char c, ScrollState scrollState, int i2, int i3, int i4, Composer composer, int i5) {
        m1137BasicSecureTextFieldltb6GB4(textFieldState, modifier, z, z2, inputTransformation, textStyle, keyboardOptions, keyboardActionHandler, function2, mutableInteractionSource, brush, textFieldDecorator, i, c, scrollState, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1), RecomposeScopeImplKt.updateChangedFlags(i3), i4);
        return Unit.INSTANCE;
    }

    static final Unit DisableCutCopy$lambda$1(Function2 function2, int i, Composer composer, int i2) {
        DisableCutCopy(function2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:243:0x03c6  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x03d9  */
    /* JADX WARN: Removed duplicated region for block: B:263:0x0456  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x0462  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x0474  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x0479  */
    /* JADX WARN: Removed duplicated region for block: B:278:0x04b4  */
    /* JADX WARN: Removed duplicated region for block: B:282:0x04e5  */
    /* JADX WARN: Removed duplicated region for block: B:286:0x04fe  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x0503  */
    /* JADX WARN: Removed duplicated region for block: B:290:0x0531  */
    /* JADX INFO: renamed from: BasicSecureTextField-ltb6GB4, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void m1137BasicSecureTextFieldltb6GB4(final TextFieldState state, Modifier modifier, boolean enabled, boolean readOnly, InputTransformation inputTransformation, TextStyle textStyle, KeyboardOptions keyboardOptions, KeyboardActionHandler onKeyboardAction, Function2<? super Density, ? super Function0<TextLayoutResult>, Unit> function2, MutableInteractionSource interactionSource, Brush cursorBrush, TextFieldDecorator decorator, int i, char textObfuscationCharacter, ScrollState scrollState, Composer $composer, final int $changed, final int $changed1, final int i2) {
        final TextFieldState textFieldState;
        Modifier modifier2;
        boolean z;
        boolean readOnly2;
        InputTransformation inputTransformation2;
        TextStyle textStyle2;
        KeyboardOptions keyboardOptions2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        final KeyboardActionHandler onKeyboardAction2;
        final char textObfuscationCharacter2;
        final ScrollState scrollState2;
        Composer $composer2;
        final TextStyle textStyle3;
        final boolean enabled2;
        final InputTransformation inputTransformation3;
        final Modifier modifier3;
        final Function2<? super Density, ? super Function0<TextLayoutResult>, Unit> function22;
        final MutableInteractionSource interactionSource2;
        final TextFieldDecorator decorator2;
        final int i8;
        final KeyboardOptions keyboardOptions3;
        final boolean readOnly3;
        final Brush cursorBrush2;
        boolean enabled3;
        boolean readOnly4;
        InputTransformation inputTransformation4;
        KeyboardActionHandler onKeyboardAction3;
        Function2<? super Density, ? super Function0<TextLayoutResult>, Unit> function23;
        MutableInteractionSource interactionSource3;
        boolean readOnly5;
        TextStyle textStyle4;
        SolidColor cursorBrush3;
        TextFieldDecorator decorator3;
        int i9;
        char textObfuscationCharacter3;
        boolean enabled4;
        final Brush cursorBrush4;
        final KeyboardOptions keyboardOptions4;
        final TextFieldDecorator decorator4;
        int i10;
        final KeyboardActionHandler onKeyboardAction4;
        final Function2<? super Density, ? super Function0<TextLayoutResult>, Unit> function24;
        Modifier modifier4;
        final MutableInteractionSource interactionSource4;
        char textObfuscationCharacter4;
        ScrollState scrollState3;
        final InputTransformation inputTransformation5;
        ScrollState scrollState4;
        boolean revealLastTypedEnabled;
        boolean invalid$iv;
        BasicSecureTextFieldKt$BasicSecureTextField$2$1 value$iv;
        boolean invalid$iv2;
        boolean revealLastTypedEnabled2;
        Object it$iv;
        Object it$iv2;
        Modifier.Companion focusChangeModifier;
        Object value$iv2;
        Composer $composer3 = $composer.startRestartGroup(1568790509);
        ComposerKt.sourceInformation($composer3, "C(BasicSecureTextField)N(state,modifier,enabled,readOnly,inputTransformation,textStyle,keyboardOptions,onKeyboardAction,onTextLayout,interactionSource,cursorBrush,decorator,textObfuscationMode:c#foundation.text.input.TextObfuscationMode,textObfuscationCharacter,scrollState)140@8345L46,141@8428L60,142@8535L130,142@8493L172,155@9098L129,155@9059L168,162@9271L424,176@9771L38,177@9841L288,191@10367L891,191@10352L906:BasicSecureTextField.kt#423gt5");
        int $dirty = $changed;
        int $dirty1 = $changed1;
        if (($changed & 6) == 0) {
            textFieldState = state;
            $dirty |= $composer3.changed(textFieldState) ? 4 : 2;
        } else {
            textFieldState = state;
        }
        int i11 = i2 & 2;
        if (i11 != 0) {
            $dirty |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty |= $composer3.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        int i12 = i2 & 4;
        int i13 = 128;
        if (i12 != 0) {
            $dirty |= RendererCapabilities.DECODER_SUPPORT_MASK;
            z = enabled;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            z = enabled;
            $dirty |= $composer3.changed(z) ? 256 : 128;
        } else {
            z = enabled;
        }
        int i14 = i2 & 8;
        if (i14 != 0) {
            $dirty |= 3072;
            readOnly2 = readOnly;
        } else if (($changed & 3072) == 0) {
            readOnly2 = readOnly;
            $dirty |= $composer3.changed(readOnly2) ? 2048 : 1024;
        } else {
            readOnly2 = readOnly;
        }
        int i15 = i2 & 16;
        int i16 = 8192;
        if (i15 != 0) {
            $dirty |= 24576;
            inputTransformation2 = inputTransformation;
        } else if (($changed & 24576) == 0) {
            inputTransformation2 = inputTransformation;
            $dirty |= $composer3.changed(inputTransformation2) ? 16384 : 8192;
        } else {
            inputTransformation2 = inputTransformation;
        }
        int i17 = i2 & 32;
        if (i17 != 0) {
            $dirty |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            textStyle2 = textStyle;
        } else if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            textStyle2 = textStyle;
            $dirty |= $composer3.changed(textStyle2) ? 131072 : 65536;
        } else {
            textStyle2 = textStyle;
        }
        int i18 = i2 & 64;
        if (i18 != 0) {
            $dirty |= 1572864;
            keyboardOptions2 = keyboardOptions;
        } else if (($changed & 1572864) == 0) {
            keyboardOptions2 = keyboardOptions;
            $dirty |= $composer3.changed(keyboardOptions2) ? 1048576 : 524288;
        } else {
            keyboardOptions2 = keyboardOptions;
        }
        int i19 = i2 & 128;
        if (i19 != 0) {
            $dirty |= 12582912;
            i3 = i19;
        } else if (($changed & 12582912) == 0) {
            i3 = i19;
            $dirty |= $composer3.changed(onKeyboardAction) ? 8388608 : 4194304;
        } else {
            i3 = i19;
        }
        int i20 = i2 & 256;
        if (i20 != 0) {
            $dirty |= 100663296;
            i4 = i20;
        } else if (($changed & 100663296) == 0) {
            i4 = i20;
            $dirty |= $composer3.changedInstance(function2) ? 67108864 : 33554432;
        } else {
            i4 = i20;
        }
        int i21 = i2 & 512;
        if (i21 != 0) {
            $dirty |= 805306368;
            i5 = i21;
        } else if (($changed & 805306368) == 0) {
            i5 = i21;
            $dirty |= $composer3.changed(interactionSource) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
        } else {
            i5 = i21;
        }
        int i22 = i2 & 1024;
        if (i22 != 0) {
            $dirty1 |= 6;
            i6 = i22;
        } else if (($changed1 & 6) == 0) {
            i6 = i22;
            $dirty1 |= $composer3.changed(cursorBrush) ? 4 : 2;
        } else {
            i6 = i22;
        }
        int i23 = i2 & 2048;
        if (i23 != 0) {
            $dirty1 |= 48;
        } else if (($changed1 & 48) == 0) {
            $dirty1 |= ($changed1 & 64) == 0 ? $composer3.changed(decorator) : $composer3.changedInstance(decorator) ? 32 : 16;
        }
        if (($changed1 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i2 & 4096) == 0 && $composer3.changed(i)) {
                i13 = 256;
            }
            $dirty1 |= i13;
        }
        int i24 = i2 & 8192;
        if (i24 != 0) {
            $dirty1 |= 3072;
            i7 = i24;
        } else {
            i7 = i24;
            if (($changed1 & 3072) == 0) {
                $dirty1 |= $composer3.changed(textObfuscationCharacter) ? 2048 : 1024;
            }
        }
        if (($changed1 & 24576) == 0) {
            if ((i2 & 16384) == 0 && $composer3.changed(scrollState)) {
                i16 = 16384;
            }
            $dirty1 |= i16;
        }
        if ($composer3.shouldExecute((($dirty & 306783379) == 306783378 && ($dirty1 & 9363) == 9362) ? false : true, $dirty & 1)) {
            $composer3.startDefaults();
            ComposerKt.sourceInformation($composer3, "138@8287L21");
            if (($changed & 1) != 0 && !$composer3.getDefaultsInvalid()) {
                $composer3.skipToGroupEnd();
                if ((i2 & 4096) != 0) {
                    $dirty1 &= -897;
                }
                if ((i2 & 16384) != 0) {
                    onKeyboardAction4 = onKeyboardAction;
                    function24 = function2;
                    interactionSource4 = interactionSource;
                    cursorBrush4 = cursorBrush;
                    decorator4 = decorator;
                    i10 = i;
                    textObfuscationCharacter4 = textObfuscationCharacter;
                    $dirty1 = (-57345) & $dirty1;
                    keyboardOptions4 = keyboardOptions2;
                    enabled4 = z;
                    modifier4 = modifier2;
                    scrollState3 = scrollState;
                    inputTransformation5 = inputTransformation2;
                } else {
                    onKeyboardAction4 = onKeyboardAction;
                    function24 = function2;
                    interactionSource4 = interactionSource;
                    cursorBrush4 = cursorBrush;
                    decorator4 = decorator;
                    i10 = i;
                    textObfuscationCharacter4 = textObfuscationCharacter;
                    keyboardOptions4 = keyboardOptions2;
                    enabled4 = z;
                    modifier4 = modifier2;
                    scrollState3 = scrollState;
                    inputTransformation5 = inputTransformation2;
                }
            } else {
                if (i11 != 0) {
                    modifier2 = Modifier.INSTANCE;
                }
                if (i12 == 0) {
                    enabled3 = z;
                } else {
                    enabled3 = true;
                }
                if (i14 == 0) {
                    readOnly4 = readOnly2;
                } else {
                    readOnly4 = false;
                }
                if (i15 == 0) {
                    inputTransformation4 = inputTransformation2;
                } else {
                    inputTransformation4 = null;
                }
                if (i17 != 0) {
                    textStyle2 = TextStyle.INSTANCE.getDefault();
                }
                if (i18 != 0) {
                    keyboardOptions2 = KeyboardOptions.INSTANCE.getSecureTextField$foundation();
                }
                if (i3 == 0) {
                    onKeyboardAction3 = onKeyboardAction;
                } else {
                    onKeyboardAction3 = null;
                }
                if (i4 == 0) {
                    function23 = function2;
                } else {
                    function23 = null;
                }
                if (i5 == 0) {
                    interactionSource3 = interactionSource;
                } else {
                    interactionSource3 = null;
                }
                if (i6 == 0) {
                    readOnly5 = readOnly4;
                    textStyle4 = textStyle2;
                    cursorBrush3 = cursorBrush;
                } else {
                    readOnly5 = readOnly4;
                    textStyle4 = textStyle2;
                    cursorBrush3 = new SolidColor(Color.INSTANCE.m4723getBlack0d7_KjU(), null);
                }
                if (i23 == 0) {
                    decorator3 = decorator;
                } else {
                    decorator3 = null;
                }
                if ((i2 & 4096) == 0) {
                    i9 = i;
                } else {
                    i9 = TextObfuscationMode_androidKt.getDefault(TextObfuscationMode.INSTANCE);
                    $dirty1 &= -897;
                }
                if (i7 == 0) {
                    textObfuscationCharacter3 = textObfuscationCharacter;
                } else {
                    textObfuscationCharacter3 = 8226;
                }
                if ((i2 & 16384) == 0) {
                    enabled4 = enabled3;
                    cursorBrush4 = cursorBrush3;
                    keyboardOptions4 = keyboardOptions2;
                    decorator4 = decorator3;
                    i10 = i9;
                    onKeyboardAction4 = onKeyboardAction3;
                    function24 = function23;
                    modifier4 = modifier2;
                    interactionSource4 = interactionSource3;
                    textObfuscationCharacter4 = textObfuscationCharacter3;
                    readOnly2 = readOnly5;
                    textStyle2 = textStyle4;
                    scrollState3 = scrollState;
                    inputTransformation5 = inputTransformation4;
                } else {
                    enabled4 = enabled3;
                    keyboardOptions4 = keyboardOptions2;
                    scrollState3 = ScrollKt.rememberScrollState(0, $composer3, 0, 1);
                    $dirty1 = (-57345) & $dirty1;
                    cursorBrush4 = cursorBrush3;
                    decorator4 = decorator3;
                    i10 = i9;
                    onKeyboardAction4 = onKeyboardAction3;
                    function24 = function23;
                    modifier4 = modifier2;
                    interactionSource4 = interactionSource3;
                    textObfuscationCharacter4 = textObfuscationCharacter3;
                    readOnly2 = readOnly5;
                    textStyle2 = textStyle4;
                    inputTransformation5 = inputTransformation4;
                }
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1568790509, $dirty, $dirty1, "androidx.compose.foundation.text.BasicSecureTextField (BasicSecureTextField.kt:139)");
            }
            final State obfuscationMaskState = SnapshotStateKt.rememberUpdatedState(Character.valueOf(textObfuscationCharacter4), $composer3, ($dirty1 >> 9) & 14);
            ComposerKt.sourceInformationMarkerStart($composer3, 74191401, "CC(remember):BasicSecureTextField.kt#9igjgp");
            char textObfuscationCharacter5 = textObfuscationCharacter4;
            Object value$iv3 = $composer3.rememberedValue();
            if (value$iv3 == Composer.INSTANCE.getEmpty()) {
                value$iv3 = new SecureTextFieldController(obfuscationMaskState);
                $composer3.updateRememberedValue(value$iv3);
            }
            final SecureTextFieldController secureTextFieldController = (SecureTextFieldController) value$iv3;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerStart($composer3, 74194895, "CC(remember):BasicSecureTextField.kt#9igjgp");
            boolean invalid$iv3 = $composer3.changedInstance(secureTextFieldController);
            BasicSecureTextFieldKt$BasicSecureTextField$1$1 value$iv4 = $composer3.rememberedValue();
            if (!invalid$iv3) {
                scrollState4 = scrollState3;
                if (value$iv4 == Composer.INSTANCE.getEmpty()) {
                }
                ComposerKt.sourceInformationMarkerEnd($composer3);
                EffectsKt.LaunchedEffect(secureTextFieldController, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) value$iv4, $composer3, 0);
                if (TextObfuscationMode.m1354equalsimpl0(i10, TextObfuscationMode.INSTANCE.m1359getRevealLastTypedvTwcZD0())) {
                    $composer3.startReplaceGroup(-1994543479);
                    $composer3.endReplaceGroup();
                    revealLastTypedEnabled = false;
                } else {
                    $composer3.startReplaceGroup(74207180);
                    ComposerKt.sourceInformation($composer3, "152@8922L31");
                    revealLastTypedEnabled = BasicSecureTextField_androidKt.platformAllowsRevealLastTyped($composer3, 0);
                    $composer3.endReplaceGroup();
                }
                Boolean boolValueOf = Boolean.valueOf(revealLastTypedEnabled);
                ComposerKt.sourceInformationMarkerStart($composer3, 74212910, "CC(remember):BasicSecureTextField.kt#9igjgp");
                invalid$iv = $composer3.changed(revealLastTypedEnabled) | $composer3.changedInstance(secureTextFieldController);
                value$iv = $composer3.rememberedValue();
                if (!invalid$iv || value$iv == Composer.INSTANCE.getEmpty()) {
                    value$iv = new BasicSecureTextFieldKt$BasicSecureTextField$2$1(revealLastTypedEnabled, secureTextFieldController, null);
                    $composer3.updateRememberedValue(value$iv);
                }
                ComposerKt.sourceInformationMarkerEnd($composer3);
                EffectsKt.LaunchedEffect(boolValueOf, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) value$iv, $composer3, 0);
                ComposerKt.sourceInformationMarkerStart($composer3, 74218741, "CC(remember):BasicSecureTextField.kt#9igjgp");
                invalid$iv2 = ((($dirty1 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256 && $composer3.changed(i10)) || ($dirty1 & RendererCapabilities.DECODER_SUPPORT_MASK) == 256;
                Object it$iv3 = $composer3.rememberedValue();
                if (!invalid$iv2) {
                    revealLastTypedEnabled2 = revealLastTypedEnabled;
                    if (it$iv3 == Composer.INSTANCE.getEmpty()) {
                    }
                    final CodepointTransformation codepointTransformation = (CodepointTransformation) it$iv3;
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    ComposerKt.sourceInformationMarkerStart($composer3, 74234355, "CC(remember):BasicSecureTextField.kt#9igjgp");
                    it$iv = $composer3.rememberedValue();
                    int i25 = i10;
                    if (it$iv == Composer.INSTANCE.getEmpty()) {
                        Object value$iv5 = new Function1() { // from class: androidx.compose.foundation.text.BasicSecureTextFieldKt$$ExternalSyntheticLambda4
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                return BasicSecureTextFieldKt.BasicSecureTextField_ltb6GB4$lambda$4$0((SemanticsPropertyReceiver) obj);
                            }
                        };
                        $composer3.updateRememberedValue(value$iv5);
                        it$iv = value$iv5;
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    Modifier modifierSemantics$default = SemanticsModifierKt.semantics$default(modifier4, false, (Function1) it$iv, 1, null);
                    ComposerKt.sourceInformationMarkerStart($composer3, 74236845, "CC(remember):BasicSecureTextField.kt#9igjgp");
                    it$iv2 = $composer3.rememberedValue();
                    if (it$iv2 == Composer.INSTANCE.getEmpty()) {
                        Object value$iv6 = (Function1) new Function1<KeyEvent, Boolean>() { // from class: androidx.compose.foundation.text.BasicSecureTextFieldKt$BasicSecureTextField$secureTextFieldModifier$2$1
                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Boolean invoke(KeyEvent keyEvent) {
                                return m1138invokeZmokQxo(keyEvent.m5842unboximpl());
                            }

                            /* JADX INFO: renamed from: invoke-ZmokQxo, reason: not valid java name */
                            public final Boolean m1138invokeZmokQxo(android.view.KeyEvent keyEvent) {
                                KeyCommand command = KeyMapping_androidKt.getPlatformDefaultKeyMapping().mo1200mapZmokQxo(keyEvent);
                                return Boolean.valueOf(command == KeyCommand.COPY || command == KeyCommand.CUT);
                            }
                        };
                        $composer3.updateRememberedValue(value$iv6);
                        it$iv2 = value$iv6;
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    Modifier modifierOnPreviewKeyEvent = KeyInputModifierKt.onPreviewKeyEvent(modifierSemantics$default, (Function1) it$iv2);
                    if (!revealLastTypedEnabled2) {
                        focusChangeModifier = secureTextFieldController.getFocusChangeModifier();
                    } else {
                        focusChangeModifier = Modifier.INSTANCE;
                    }
                    final Modifier secureTextFieldModifier = modifierOnPreviewKeyEvent.then(focusChangeModifier);
                    final boolean readOnly6 = readOnly2;
                    final boolean revealLastTypedEnabled3 = revealLastTypedEnabled2;
                    final ScrollState scrollState5 = scrollState4;
                    final boolean enabled5 = enabled4;
                    final TextStyle textStyle5 = textStyle2;
                    DisableCutCopy(ComposableLambdaKt.rememberComposableLambda(135148049, true, new Function2() { // from class: androidx.compose.foundation.text.BasicSecureTextFieldKt$$ExternalSyntheticLambda5
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            return BasicSecureTextFieldKt.BasicSecureTextField_ltb6GB4$lambda$6(revealLastTypedEnabled3, inputTransformation5, secureTextFieldController, textFieldState, secureTextFieldModifier, enabled5, readOnly6, textStyle5, keyboardOptions4, onKeyboardAction4, function24, interactionSource4, cursorBrush4, codepointTransformation, decorator4, scrollState5, (Composer) obj, ((Integer) obj2).intValue());
                        }
                    }, $composer3, 54), $composer3, 6);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    textObfuscationCharacter2 = textObfuscationCharacter5;
                    modifier3 = modifier4;
                    $composer2 = $composer3;
                    inputTransformation3 = inputTransformation5;
                    enabled2 = enabled5;
                    readOnly3 = readOnly6;
                    textStyle3 = textStyle5;
                    onKeyboardAction2 = onKeyboardAction4;
                    function22 = function24;
                    interactionSource2 = interactionSource4;
                    cursorBrush2 = cursorBrush4;
                    decorator2 = decorator4;
                    scrollState2 = scrollState5;
                    i8 = i25;
                    keyboardOptions3 = keyboardOptions4;
                } else {
                    revealLastTypedEnabled2 = revealLastTypedEnabled;
                }
                if (TextObfuscationMode.m1354equalsimpl0(i10, TextObfuscationMode.INSTANCE.m1359getRevealLastTypedvTwcZD0())) {
                    value$iv2 = secureTextFieldController.getCodepointTransformation();
                } else if (TextObfuscationMode.m1354equalsimpl0(i10, TextObfuscationMode.INSTANCE.m1358getHiddenvTwcZD0())) {
                    value$iv2 = new CodepointTransformation() { // from class: androidx.compose.foundation.text.BasicSecureTextFieldKt$$ExternalSyntheticLambda3
                        @Override // androidx.compose.foundation.text.input.internal.CodepointTransformation
                        public final int transform(int i26, int i27) {
                            return BasicSecureTextFieldKt.BasicSecureTextField_ltb6GB4$lambda$3$0(obfuscationMaskState, i26, i27);
                        }
                    };
                } else {
                    value$iv2 = null;
                }
                $composer3.updateRememberedValue(value$iv2);
                it$iv3 = value$iv2;
                final CodepointTransformation codepointTransformation2 = (CodepointTransformation) it$iv3;
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerStart($composer3, 74234355, "CC(remember):BasicSecureTextField.kt#9igjgp");
                it$iv = $composer3.rememberedValue();
                int i252 = i10;
                if (it$iv == Composer.INSTANCE.getEmpty()) {
                }
                ComposerKt.sourceInformationMarkerEnd($composer3);
                Modifier modifierSemantics$default2 = SemanticsModifierKt.semantics$default(modifier4, false, (Function1) it$iv, 1, null);
                ComposerKt.sourceInformationMarkerStart($composer3, 74236845, "CC(remember):BasicSecureTextField.kt#9igjgp");
                it$iv2 = $composer3.rememberedValue();
                if (it$iv2 == Composer.INSTANCE.getEmpty()) {
                }
                ComposerKt.sourceInformationMarkerEnd($composer3);
                Modifier modifierOnPreviewKeyEvent2 = KeyInputModifierKt.onPreviewKeyEvent(modifierSemantics$default2, (Function1) it$iv2);
                if (!revealLastTypedEnabled2) {
                }
                final Modifier secureTextFieldModifier2 = modifierOnPreviewKeyEvent2.then(focusChangeModifier);
                final boolean readOnly62 = readOnly2;
                final boolean revealLastTypedEnabled32 = revealLastTypedEnabled2;
                final ScrollState scrollState52 = scrollState4;
                final boolean enabled52 = enabled4;
                final TextStyle textStyle52 = textStyle2;
                DisableCutCopy(ComposableLambdaKt.rememberComposableLambda(135148049, true, new Function2() { // from class: androidx.compose.foundation.text.BasicSecureTextFieldKt$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return BasicSecureTextFieldKt.BasicSecureTextField_ltb6GB4$lambda$6(revealLastTypedEnabled32, inputTransformation5, secureTextFieldController, textFieldState, secureTextFieldModifier2, enabled52, readOnly62, textStyle52, keyboardOptions4, onKeyboardAction4, function24, interactionSource4, cursorBrush4, codepointTransformation2, decorator4, scrollState52, (Composer) obj, ((Integer) obj2).intValue());
                    }
                }, $composer3, 54), $composer3, 6);
                if (ComposerKt.isTraceInProgress()) {
                }
                textObfuscationCharacter2 = textObfuscationCharacter5;
                modifier3 = modifier4;
                $composer2 = $composer3;
                inputTransformation3 = inputTransformation5;
                enabled2 = enabled52;
                readOnly3 = readOnly62;
                textStyle3 = textStyle52;
                onKeyboardAction2 = onKeyboardAction4;
                function22 = function24;
                interactionSource2 = interactionSource4;
                cursorBrush2 = cursorBrush4;
                decorator2 = decorator4;
                scrollState2 = scrollState52;
                i8 = i252;
                keyboardOptions3 = keyboardOptions4;
            } else {
                scrollState4 = scrollState3;
            }
            value$iv4 = new BasicSecureTextFieldKt$BasicSecureTextField$1$1(secureTextFieldController, null);
            $composer3.updateRememberedValue(value$iv4);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            EffectsKt.LaunchedEffect(secureTextFieldController, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) value$iv4, $composer3, 0);
            if (TextObfuscationMode.m1354equalsimpl0(i10, TextObfuscationMode.INSTANCE.m1359getRevealLastTypedvTwcZD0())) {
            }
            Boolean boolValueOf2 = Boolean.valueOf(revealLastTypedEnabled);
            ComposerKt.sourceInformationMarkerStart($composer3, 74212910, "CC(remember):BasicSecureTextField.kt#9igjgp");
            invalid$iv = $composer3.changed(revealLastTypedEnabled) | $composer3.changedInstance(secureTextFieldController);
            value$iv = $composer3.rememberedValue();
            if (!invalid$iv) {
            }
            value$iv = new BasicSecureTextFieldKt$BasicSecureTextField$2$1(revealLastTypedEnabled, secureTextFieldController, null);
            $composer3.updateRememberedValue(value$iv);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            EffectsKt.LaunchedEffect(boolValueOf2, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) value$iv, $composer3, 0);
            ComposerKt.sourceInformationMarkerStart($composer3, 74218741, "CC(remember):BasicSecureTextField.kt#9igjgp");
            if ((($dirty1 & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) <= 256) {
                Object it$iv32 = $composer3.rememberedValue();
                if (!invalid$iv2) {
                }
                if (TextObfuscationMode.m1354equalsimpl0(i10, TextObfuscationMode.INSTANCE.m1359getRevealLastTypedvTwcZD0())) {
                }
                $composer3.updateRememberedValue(value$iv2);
                it$iv32 = value$iv2;
                final CodepointTransformation codepointTransformation22 = (CodepointTransformation) it$iv32;
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerStart($composer3, 74234355, "CC(remember):BasicSecureTextField.kt#9igjgp");
                it$iv = $composer3.rememberedValue();
                int i2522 = i10;
                if (it$iv == Composer.INSTANCE.getEmpty()) {
                }
                ComposerKt.sourceInformationMarkerEnd($composer3);
                Modifier modifierSemantics$default22 = SemanticsModifierKt.semantics$default(modifier4, false, (Function1) it$iv, 1, null);
                ComposerKt.sourceInformationMarkerStart($composer3, 74236845, "CC(remember):BasicSecureTextField.kt#9igjgp");
                it$iv2 = $composer3.rememberedValue();
                if (it$iv2 == Composer.INSTANCE.getEmpty()) {
                }
                ComposerKt.sourceInformationMarkerEnd($composer3);
                Modifier modifierOnPreviewKeyEvent22 = KeyInputModifierKt.onPreviewKeyEvent(modifierSemantics$default22, (Function1) it$iv2);
                if (!revealLastTypedEnabled2) {
                }
                final Modifier secureTextFieldModifier22 = modifierOnPreviewKeyEvent22.then(focusChangeModifier);
                final boolean readOnly622 = readOnly2;
                final boolean revealLastTypedEnabled322 = revealLastTypedEnabled2;
                final ScrollState scrollState522 = scrollState4;
                final boolean enabled522 = enabled4;
                final TextStyle textStyle522 = textStyle2;
                DisableCutCopy(ComposableLambdaKt.rememberComposableLambda(135148049, true, new Function2() { // from class: androidx.compose.foundation.text.BasicSecureTextFieldKt$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return BasicSecureTextFieldKt.BasicSecureTextField_ltb6GB4$lambda$6(revealLastTypedEnabled322, inputTransformation5, secureTextFieldController, textFieldState, secureTextFieldModifier22, enabled522, readOnly622, textStyle522, keyboardOptions4, onKeyboardAction4, function24, interactionSource4, cursorBrush4, codepointTransformation22, decorator4, scrollState522, (Composer) obj, ((Integer) obj2).intValue());
                    }
                }, $composer3, 54), $composer3, 6);
                if (ComposerKt.isTraceInProgress()) {
                }
                textObfuscationCharacter2 = textObfuscationCharacter5;
                modifier3 = modifier4;
                $composer2 = $composer3;
                inputTransformation3 = inputTransformation5;
                enabled2 = enabled522;
                readOnly3 = readOnly622;
                textStyle3 = textStyle522;
                onKeyboardAction2 = onKeyboardAction4;
                function22 = function24;
                interactionSource2 = interactionSource4;
                cursorBrush2 = cursorBrush4;
                decorator2 = decorator4;
                scrollState2 = scrollState522;
                i8 = i2522;
                keyboardOptions3 = keyboardOptions4;
            } else {
                Object it$iv322 = $composer3.rememberedValue();
                if (!invalid$iv2) {
                }
                if (TextObfuscationMode.m1354equalsimpl0(i10, TextObfuscationMode.INSTANCE.m1359getRevealLastTypedvTwcZD0())) {
                }
                $composer3.updateRememberedValue(value$iv2);
                it$iv322 = value$iv2;
                final CodepointTransformation codepointTransformation222 = (CodepointTransformation) it$iv322;
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerStart($composer3, 74234355, "CC(remember):BasicSecureTextField.kt#9igjgp");
                it$iv = $composer3.rememberedValue();
                int i25222 = i10;
                if (it$iv == Composer.INSTANCE.getEmpty()) {
                }
                ComposerKt.sourceInformationMarkerEnd($composer3);
                Modifier modifierSemantics$default222 = SemanticsModifierKt.semantics$default(modifier4, false, (Function1) it$iv, 1, null);
                ComposerKt.sourceInformationMarkerStart($composer3, 74236845, "CC(remember):BasicSecureTextField.kt#9igjgp");
                it$iv2 = $composer3.rememberedValue();
                if (it$iv2 == Composer.INSTANCE.getEmpty()) {
                }
                ComposerKt.sourceInformationMarkerEnd($composer3);
                Modifier modifierOnPreviewKeyEvent222 = KeyInputModifierKt.onPreviewKeyEvent(modifierSemantics$default222, (Function1) it$iv2);
                if (!revealLastTypedEnabled2) {
                }
                final Modifier secureTextFieldModifier222 = modifierOnPreviewKeyEvent222.then(focusChangeModifier);
                final boolean readOnly6222 = readOnly2;
                final boolean revealLastTypedEnabled3222 = revealLastTypedEnabled2;
                final ScrollState scrollState5222 = scrollState4;
                final boolean enabled5222 = enabled4;
                final TextStyle textStyle5222 = textStyle2;
                DisableCutCopy(ComposableLambdaKt.rememberComposableLambda(135148049, true, new Function2() { // from class: androidx.compose.foundation.text.BasicSecureTextFieldKt$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return BasicSecureTextFieldKt.BasicSecureTextField_ltb6GB4$lambda$6(revealLastTypedEnabled3222, inputTransformation5, secureTextFieldController, textFieldState, secureTextFieldModifier222, enabled5222, readOnly6222, textStyle5222, keyboardOptions4, onKeyboardAction4, function24, interactionSource4, cursorBrush4, codepointTransformation222, decorator4, scrollState5222, (Composer) obj, ((Integer) obj2).intValue());
                    }
                }, $composer3, 54), $composer3, 6);
                if (ComposerKt.isTraceInProgress()) {
                }
                textObfuscationCharacter2 = textObfuscationCharacter5;
                modifier3 = modifier4;
                $composer2 = $composer3;
                inputTransformation3 = inputTransformation5;
                enabled2 = enabled5222;
                readOnly3 = readOnly6222;
                textStyle3 = textStyle5222;
                onKeyboardAction2 = onKeyboardAction4;
                function22 = function24;
                interactionSource2 = interactionSource4;
                cursorBrush2 = cursorBrush4;
                decorator2 = decorator4;
                scrollState2 = scrollState5222;
                i8 = i25222;
                keyboardOptions3 = keyboardOptions4;
            }
        } else {
            $composer3.skipToGroupEnd();
            onKeyboardAction2 = onKeyboardAction;
            textObfuscationCharacter2 = textObfuscationCharacter;
            scrollState2 = scrollState;
            $composer2 = $composer3;
            textStyle3 = textStyle2;
            enabled2 = z;
            inputTransformation3 = inputTransformation2;
            modifier3 = modifier2;
            function22 = function2;
            interactionSource2 = interactionSource;
            decorator2 = decorator;
            i8 = i;
            keyboardOptions3 = keyboardOptions2;
            readOnly3 = readOnly2;
            cursorBrush2 = cursorBrush;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: androidx.compose.foundation.text.BasicSecureTextFieldKt$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return BasicSecureTextFieldKt.BasicSecureTextField_ltb6GB4$lambda$7(state, modifier3, enabled2, readOnly3, inputTransformation3, textStyle3, keyboardOptions3, onKeyboardAction2, function22, interactionSource2, cursorBrush2, decorator2, i8, textObfuscationCharacter2, scrollState2, $changed, $changed1, i2, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int BasicSecureTextField_ltb6GB4$lambda$3$0(State $obfuscationMaskState, int i, int i2) {
        return ((Character) $obfuscationMaskState.getValue()).charValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit BasicSecureTextField_ltb6GB4$lambda$4$0(SemanticsPropertyReceiver $this$semantics) {
        SemanticsPropertiesKt.setContentType($this$semantics, ContentType.INSTANCE.getPassword());
        return Unit.INSTANCE;
    }

    static final Unit BasicSecureTextField_ltb6GB4$lambda$6(boolean $revealLastTypedEnabled, InputTransformation $inputTransformation, SecureTextFieldController $secureTextFieldController, TextFieldState $state, Modifier $secureTextFieldModifier, boolean $enabled, boolean $readOnly, TextStyle $textStyle, KeyboardOptions $keyboardOptions, KeyboardActionHandler $onKeyboardAction, Function2 $onTextLayout, MutableInteractionSource $interactionSource, Brush $cursorBrush, CodepointTransformation $codepointTransformation, TextFieldDecorator $decorator, ScrollState $scrollState, Composer $composer, int $changed) {
        InputTransformation inputTransformationThen;
        ComposerKt.sourceInformation($composer, "C192@10377L875:BasicSecureTextField.kt#423gt5");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(135148049, $changed, -1, "androidx.compose.foundation.text.BasicSecureTextField.<anonymous> (BasicSecureTextField.kt:192)");
            }
            if ($revealLastTypedEnabled) {
                inputTransformationThen = then($inputTransformation, $secureTextFieldController.getPasswordInputTransformation());
            } else {
                inputTransformationThen = $inputTransformation;
            }
            BasicTextFieldKt.BasicTextField($state, $secureTextFieldModifier, $enabled, $readOnly, inputTransformationThen, $textStyle, $keyboardOptions, $onKeyboardAction, TextFieldLineLimits.SingleLine.INSTANCE, $onTextLayout, $interactionSource, $cursorBrush, $codepointTransformation, null, $decorator, $scrollState, true, $composer, 100663296, 1572864, 8192);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    private static final InputTransformation then(InputTransformation $this$then, InputTransformation next) {
        return $this$then == null ? next : next == null ? $this$then : InputTransformationKt.then($this$then, next);
    }

    private static final void DisableCutCopy(final Function2<? super Composer, ? super Integer, Unit> function2, Composer $composer, final int $changed) {
        Composer $composer2 = $composer.startRestartGroup(1141174275);
        ComposerKt.sourceInformation($composer2, "C(DisableCutCopy)N(content)312@14862L7,314@14908L877,335@15790L80:BasicSecureTextField.kt#423gt5");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changedInstance(function2) ? 4 : 2;
        }
        if (!$composer2.shouldExecute(($dirty & 3) != 2, $dirty & 1)) {
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1141174275, $dirty, -1, "androidx.compose.foundation.text.DisableCutCopy (BasicSecureTextField.kt:311)");
            }
            ProvidableCompositionLocal<TextToolbar> localTextToolbar = CompositionLocalsKt.getLocalTextToolbar();
            ComposerKt.sourceInformationMarkerStart($composer2, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume = $composer2.consume(localTextToolbar);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            final TextToolbar currentToolbar = (TextToolbar) objConsume;
            ComposerKt.sourceInformationMarkerStart($composer2, 1451823216, "CC(remember):BasicSecureTextField.kt#9igjgp");
            boolean invalid$iv = $composer2.changed(currentToolbar);
            Object it$iv = $composer2.rememberedValue();
            if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                Object value$iv = new TextToolbar() { // from class: androidx.compose.foundation.text.BasicSecureTextFieldKt$DisableCutCopy$copyDisabledToolbar$1$1
                    private final /* synthetic */ TextToolbar $$delegate_0;

                    @Override // androidx.compose.ui.platform.TextToolbar
                    public TextToolbarStatus getStatus() {
                        return this.$$delegate_0.getStatus();
                    }

                    @Override // androidx.compose.ui.platform.TextToolbar
                    public void hide() {
                        this.$$delegate_0.hide();
                    }

                    @Override // androidx.compose.ui.platform.TextToolbar
                    public void showMenu(Rect rect, Function0<Unit> onCopyRequested, Function0<Unit> onPasteRequested, Function0<Unit> onCutRequested, Function0<Unit> onSelectAllRequested) {
                        this.$$delegate_0.showMenu(rect, onCopyRequested, onPasteRequested, onCutRequested, onSelectAllRequested);
                    }

                    {
                        this.$$delegate_0 = this.$currentToolbar;
                    }

                    @Override // androidx.compose.ui.platform.TextToolbar
                    public void showMenu(Rect rect, Function0<Unit> onCopyRequested, Function0<Unit> onPasteRequested, Function0<Unit> onCutRequested, Function0<Unit> onSelectAllRequested, Function0<Unit> onAutofillRequested) {
                        this.$currentToolbar.showMenu(rect, null, onPasteRequested, null, onSelectAllRequested, onAutofillRequested);
                    }
                };
                $composer2.updateRememberedValue(value$iv);
                it$iv = value$iv;
            }
            BasicSecureTextFieldKt$DisableCutCopy$copyDisabledToolbar$1$1 copyDisabledToolbar = (BasicSecureTextFieldKt$DisableCutCopy$copyDisabledToolbar$1$1) it$iv;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            CompositionLocalKt.CompositionLocalProvider(CompositionLocalsKt.getLocalTextToolbar().provides(copyDisabledToolbar), function2, $composer2, ProvidedValue.$stable | (($dirty << 3) & 112));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: androidx.compose.foundation.text.BasicSecureTextFieldKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return BasicSecureTextFieldKt.DisableCutCopy$lambda$1(function2, $changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Please use the overload that takes in readOnly parameter.")
    /* JADX INFO: renamed from: BasicSecureTextField-Jb9bMDk, reason: not valid java name */
    public static final /* synthetic */ void m1135BasicSecureTextFieldJb9bMDk(final TextFieldState state, Modifier modifier, boolean enabled, InputTransformation inputTransformation, TextStyle textStyle, KeyboardOptions keyboardOptions, KeyboardActionHandler onKeyboardAction, Function2 onTextLayout, MutableInteractionSource interactionSource, Brush cursorBrush, TextFieldDecorator decorator, int i, char textObfuscationCharacter, Composer $composer, final int $changed, final int $changed1, final int i2) {
        TextFieldState textFieldState;
        Modifier modifier2;
        boolean z;
        InputTransformation inputTransformation2;
        TextStyle textStyle2;
        KeyboardOptions keyboardOptions2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        Composer $composer2;
        final MutableInteractionSource interactionSource2;
        final char textObfuscationCharacter2;
        int $dirty;
        int $dirty1;
        final boolean enabled2;
        final InputTransformation inputTransformation3;
        final TextStyle textStyle3;
        final KeyboardOptions keyboardOptions3;
        final Modifier modifier3;
        final KeyboardActionHandler onKeyboardAction2;
        final Function2 onTextLayout2;
        final Brush cursorBrush2;
        final TextFieldDecorator decorator2;
        final int i8;
        Modifier modifier4;
        int i9;
        boolean enabled3;
        int i10;
        InputTransformation inputTransformation4;
        int i11;
        TextStyle textStyle4;
        KeyboardOptions keyboardOptions4;
        KeyboardActionHandler onKeyboardAction3;
        Function2 onTextLayout3;
        MutableInteractionSource interactionSource3;
        int i12;
        Brush cursorBrush3;
        TextFieldDecorator decorator3;
        int iM1359getRevealLastTypedvTwcZD0;
        char textObfuscationCharacter3;
        Composer $composer3 = $composer.startRestartGroup(1399310985);
        ComposerKt.sourceInformation($composer3, "C(BasicSecureTextField)N(state,modifier,enabled,inputTransformation,textStyle,keyboardOptions,onKeyboardAction,onTextLayout,interactionSource,cursorBrush,decorator,textObfuscationMode:c#foundation.text.input.TextObfuscationMode,textObfuscationCharacter)364@17059L564:BasicSecureTextField.kt#423gt5");
        int $dirty2 = $changed;
        int $dirty12 = $changed1;
        if (($changed & 6) == 0) {
            textFieldState = state;
            $dirty2 |= $composer3.changed(textFieldState) ? 4 : 2;
        } else {
            textFieldState = state;
        }
        int i13 = i2 & 2;
        if (i13 != 0) {
            $dirty2 |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty2 |= $composer3.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        int i14 = i2 & 4;
        if (i14 != 0) {
            $dirty2 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            z = enabled;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            z = enabled;
            $dirty2 |= $composer3.changed(z) ? 256 : 128;
        } else {
            z = enabled;
        }
        int i15 = i2 & 8;
        if (i15 != 0) {
            $dirty2 |= 3072;
            inputTransformation2 = inputTransformation;
        } else if (($changed & 3072) == 0) {
            inputTransformation2 = inputTransformation;
            $dirty2 |= $composer3.changed(inputTransformation2) ? 2048 : 1024;
        } else {
            inputTransformation2 = inputTransformation;
        }
        int i16 = i2 & 16;
        if (i16 != 0) {
            $dirty2 |= 24576;
            textStyle2 = textStyle;
        } else if (($changed & 24576) == 0) {
            textStyle2 = textStyle;
            $dirty2 |= $composer3.changed(textStyle2) ? 16384 : 8192;
        } else {
            textStyle2 = textStyle;
        }
        int i17 = i2 & 32;
        if (i17 != 0) {
            $dirty2 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            keyboardOptions2 = keyboardOptions;
        } else if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            keyboardOptions2 = keyboardOptions;
            $dirty2 |= $composer3.changed(keyboardOptions2) ? 131072 : 65536;
        } else {
            keyboardOptions2 = keyboardOptions;
        }
        int i18 = i2 & 64;
        if (i18 != 0) {
            $dirty2 |= 1572864;
        } else if (($changed & 1572864) == 0) {
            $dirty2 |= $composer3.changed(onKeyboardAction) ? 1048576 : 524288;
        }
        int i19 = i2 & 128;
        if (i19 != 0) {
            $dirty2 |= 12582912;
            i3 = i19;
        } else if (($changed & 12582912) == 0) {
            i3 = i19;
            $dirty2 |= $composer3.changedInstance(onTextLayout) ? 8388608 : 4194304;
        } else {
            i3 = i19;
        }
        int i20 = i2 & 256;
        if (i20 != 0) {
            $dirty2 |= 100663296;
            i4 = i20;
        } else if (($changed & 100663296) == 0) {
            i4 = i20;
            $dirty2 |= $composer3.changed(interactionSource) ? 67108864 : 33554432;
        } else {
            i4 = i20;
        }
        int i21 = i2 & 512;
        if (i21 != 0) {
            $dirty2 |= 805306368;
            i5 = i21;
        } else if (($changed & 805306368) == 0) {
            i5 = i21;
            $dirty2 |= $composer3.changed(cursorBrush) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
        } else {
            i5 = i21;
        }
        int i22 = i2 & 1024;
        if (i22 != 0) {
            $dirty12 |= 6;
        } else if (($changed1 & 6) == 0) {
            $dirty12 |= ($changed1 & 8) == 0 ? $composer3.changed(decorator) : $composer3.changedInstance(decorator) ? 4 : 2;
        }
        int i23 = i2 & 2048;
        if (i23 != 0) {
            $dirty12 |= 48;
            i6 = i23;
        } else if (($changed1 & 48) == 0) {
            i6 = i23;
            $dirty12 |= $composer3.changed(i) ? 32 : 16;
        } else {
            i6 = i23;
        }
        int i24 = i2 & 4096;
        if (i24 != 0) {
            $dirty12 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            i7 = i24;
        } else {
            i7 = i24;
            if (($changed1 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                $dirty12 |= $composer3.changed(textObfuscationCharacter) ? 256 : 128;
            }
        }
        if (!$composer3.shouldExecute((($dirty2 & 306783379) == 306783378 && ($dirty12 & 147) == 146) ? false : true, $dirty2 & 1)) {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
            interactionSource2 = interactionSource;
            textObfuscationCharacter2 = textObfuscationCharacter;
            $dirty = $dirty2;
            $dirty1 = $dirty12;
            enabled2 = z;
            inputTransformation3 = inputTransformation2;
            textStyle3 = textStyle2;
            keyboardOptions3 = keyboardOptions2;
            modifier3 = modifier2;
            onKeyboardAction2 = onKeyboardAction;
            onTextLayout2 = onTextLayout;
            cursorBrush2 = cursorBrush;
            decorator2 = decorator;
            i8 = i;
        } else {
            if (i13 != 0) {
                modifier4 = Modifier.INSTANCE;
            } else {
                modifier4 = modifier2;
            }
            if (i14 == 0) {
                i9 = i15;
                enabled3 = z;
            } else {
                enabled3 = true;
                i9 = i15;
            }
            if (i9 == 0) {
                i10 = i16;
                inputTransformation4 = inputTransformation2;
            } else {
                inputTransformation4 = null;
                i10 = i16;
            }
            if (i10 == 0) {
                i11 = i7;
                textStyle4 = textStyle2;
            } else {
                int i25 = i7;
                textStyle4 = TextStyle.INSTANCE.getDefault();
                i11 = i25;
            }
            if (i17 == 0) {
                keyboardOptions4 = keyboardOptions2;
            } else {
                keyboardOptions4 = KeyboardOptions.INSTANCE.getSecureTextField$foundation();
            }
            if (i18 == 0) {
                onKeyboardAction3 = onKeyboardAction;
            } else {
                onKeyboardAction3 = null;
            }
            if (i3 == 0) {
                onTextLayout3 = onTextLayout;
            } else {
                onTextLayout3 = null;
            }
            if (i4 == 0) {
                interactionSource3 = interactionSource;
                i12 = 1399310985;
            } else {
                interactionSource3 = null;
                i12 = 1399310985;
            }
            if (i5 == 0) {
                cursorBrush3 = cursorBrush;
            } else {
                cursorBrush3 = new SolidColor(Color.INSTANCE.m4723getBlack0d7_KjU(), null);
            }
            if (i22 == 0) {
                decorator3 = decorator;
            } else {
                decorator3 = null;
            }
            if (i6 == 0) {
                iM1359getRevealLastTypedvTwcZD0 = i;
            } else {
                iM1359getRevealLastTypedvTwcZD0 = TextObfuscationMode.INSTANCE.m1359getRevealLastTypedvTwcZD0();
            }
            if (i11 == 0) {
                textObfuscationCharacter3 = textObfuscationCharacter;
            } else {
                textObfuscationCharacter3 = 8226;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(i12, $dirty2, $dirty12, "androidx.compose.foundation.text.BasicSecureTextField (BasicSecureTextField.kt:363)");
            }
            $composer2 = $composer3;
            m1137BasicSecureTextFieldltb6GB4(textFieldState, modifier4, enabled3, false, inputTransformation4, textStyle4, keyboardOptions4, onKeyboardAction3, onTextLayout3, interactionSource3, cursorBrush3, decorator3, iM1359getRevealLastTypedvTwcZD0, textObfuscationCharacter3, null, $composer2, ($dirty2 & 14) | 3072 | ($dirty2 & 112) | ($dirty2 & 896) | (($dirty2 << 3) & 57344) | (($dirty2 << 3) & 458752) | (($dirty2 << 3) & 3670016) | (($dirty2 << 3) & 29360128) | (($dirty2 << 3) & 234881024) | (($dirty2 << 3) & C.ENCODING_PCM_DOUBLE), (($dirty2 >> 27) & 14) | (($dirty12 << 3) & 112) | (($dirty12 << 3) & 896) | (($dirty12 << 3) & 7168), 16384);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            $dirty = $dirty2;
            $dirty1 = $dirty12;
            modifier3 = modifier4;
            enabled2 = enabled3;
            inputTransformation3 = inputTransformation4;
            textStyle3 = textStyle4;
            keyboardOptions3 = keyboardOptions4;
            onKeyboardAction2 = onKeyboardAction3;
            onTextLayout2 = onTextLayout3;
            interactionSource2 = interactionSource3;
            cursorBrush2 = cursorBrush3;
            decorator2 = decorator3;
            i8 = iM1359getRevealLastTypedvTwcZD0;
            textObfuscationCharacter2 = textObfuscationCharacter3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: androidx.compose.foundation.text.BasicSecureTextFieldKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return BasicSecureTextFieldKt.BasicSecureTextField_Jb9bMDk$lambda$0(state, modifier3, enabled2, inputTransformation3, textStyle3, keyboardOptions3, onKeyboardAction2, onTextLayout2, interactionSource2, cursorBrush2, decorator2, i8, textObfuscationCharacter2, $changed, $changed1, i2, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Please use the overload that takes in scrollState parameter.")
    /* JADX INFO: renamed from: BasicSecureTextField-egD4TGM, reason: not valid java name */
    public static final /* synthetic */ void m1136BasicSecureTextFieldegD4TGM(final TextFieldState state, Modifier modifier, boolean enabled, boolean readOnly, InputTransformation inputTransformation, TextStyle textStyle, KeyboardOptions keyboardOptions, KeyboardActionHandler onKeyboardAction, Function2 onTextLayout, MutableInteractionSource interactionSource, Brush cursorBrush, TextFieldDecorator decorator, int i, char textObfuscationCharacter, Composer $composer, final int $changed, final int $changed1, final int i2) {
        TextFieldState textFieldState;
        Modifier modifier2;
        boolean z;
        InputTransformation inputTransformation2;
        TextStyle textStyle2;
        KeyboardOptions keyboardOptions2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        Composer $composer2;
        final boolean readOnly2;
        final MutableInteractionSource interactionSource2;
        final char textObfuscationCharacter2;
        int $dirty;
        int $dirty1;
        final boolean enabled2;
        final InputTransformation inputTransformation3;
        final TextStyle textStyle3;
        final KeyboardOptions keyboardOptions3;
        final Modifier modifier3;
        final KeyboardActionHandler onKeyboardAction2;
        final Function2 onTextLayout2;
        final Brush cursorBrush2;
        final TextFieldDecorator decorator2;
        final int i9;
        Modifier modifier4;
        int i10;
        boolean enabled3;
        boolean readOnly3;
        int i11;
        InputTransformation inputTransformation4;
        TextStyle textStyle4;
        KeyboardOptions keyboardOptions4;
        KeyboardActionHandler onKeyboardAction3;
        Function2 onTextLayout3;
        int i12;
        MutableInteractionSource interactionSource3;
        Brush cursorBrush3;
        TextFieldDecorator decorator3;
        int iM1359getRevealLastTypedvTwcZD0;
        char textObfuscationCharacter3;
        Composer $composer3 = $composer.startRestartGroup(-817513499);
        ComposerKt.sourceInformation($composer3, "C(BasicSecureTextField)N(state,modifier,enabled,readOnly,inputTransformation,textStyle,keyboardOptions,onKeyboardAction,onTextLayout,interactionSource,cursorBrush,decorator,textObfuscationMode:c#foundation.text.input.TextObfuscationMode,textObfuscationCharacter)421@19275L21,406@18694L609:BasicSecureTextField.kt#423gt5");
        int $dirty2 = $changed;
        int $dirty12 = $changed1;
        if (($changed & 6) == 0) {
            textFieldState = state;
            $dirty2 |= $composer3.changed(textFieldState) ? 4 : 2;
        } else {
            textFieldState = state;
        }
        int i13 = i2 & 2;
        if (i13 != 0) {
            $dirty2 |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty2 |= $composer3.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        int i14 = i2 & 4;
        if (i14 != 0) {
            $dirty2 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            z = enabled;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            z = enabled;
            $dirty2 |= $composer3.changed(z) ? 256 : 128;
        } else {
            z = enabled;
        }
        int i15 = i2 & 16;
        if (i15 != 0) {
            $dirty2 |= 24576;
            inputTransformation2 = inputTransformation;
        } else if (($changed & 24576) == 0) {
            inputTransformation2 = inputTransformation;
            $dirty2 |= $composer3.changed(inputTransformation2) ? 16384 : 8192;
        } else {
            inputTransformation2 = inputTransformation;
        }
        int i16 = i2 & 32;
        if (i16 != 0) {
            $dirty2 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            textStyle2 = textStyle;
        } else if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            textStyle2 = textStyle;
            $dirty2 |= $composer3.changed(textStyle2) ? 131072 : 65536;
        } else {
            textStyle2 = textStyle;
        }
        int i17 = i2 & 64;
        if (i17 != 0) {
            $dirty2 |= 1572864;
            keyboardOptions2 = keyboardOptions;
        } else if (($changed & 1572864) == 0) {
            keyboardOptions2 = keyboardOptions;
            $dirty2 |= $composer3.changed(keyboardOptions2) ? 1048576 : 524288;
        } else {
            keyboardOptions2 = keyboardOptions;
        }
        int i18 = i2 & 128;
        if (i18 != 0) {
            $dirty2 |= 12582912;
            i3 = i18;
        } else if (($changed & 12582912) == 0) {
            i3 = i18;
            $dirty2 |= $composer3.changed(onKeyboardAction) ? 8388608 : 4194304;
        } else {
            i3 = i18;
        }
        int i19 = i2 & 256;
        if (i19 != 0) {
            $dirty2 |= 100663296;
            i4 = i19;
        } else if (($changed & 100663296) == 0) {
            i4 = i19;
            $dirty2 |= $composer3.changedInstance(onTextLayout) ? 67108864 : 33554432;
        } else {
            i4 = i19;
        }
        int i20 = i2 & 512;
        if (i20 != 0) {
            $dirty2 |= 805306368;
            i5 = i20;
        } else if (($changed & 805306368) == 0) {
            i5 = i20;
            $dirty2 |= $composer3.changed(interactionSource) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
        } else {
            i5 = i20;
        }
        int i21 = i2 & 1024;
        if (i21 != 0) {
            $dirty12 |= 6;
            i6 = i21;
        } else if (($changed1 & 6) == 0) {
            i6 = i21;
            $dirty12 |= $composer3.changed(cursorBrush) ? 4 : 2;
        } else {
            i6 = i21;
        }
        int i22 = i2 & 2048;
        if (i22 != 0) {
            $dirty12 |= 48;
        } else if (($changed1 & 48) == 0) {
            $dirty12 |= ($changed1 & 64) == 0 ? $composer3.changed(decorator) : $composer3.changedInstance(decorator) ? 32 : 16;
        }
        int i23 = i2 & 4096;
        if (i23 != 0) {
            $dirty12 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            i7 = i23;
        } else {
            i7 = i23;
            if (($changed1 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                $dirty12 |= $composer3.changed(i) ? 256 : 128;
            }
        }
        int i24 = i2 & 8192;
        if (i24 != 0) {
            $dirty12 |= 3072;
            i8 = i24;
        } else {
            i8 = i24;
            if (($changed1 & 3072) == 0) {
                $dirty12 |= $composer3.changed(textObfuscationCharacter) ? 2048 : 1024;
            }
        }
        if (!$composer3.shouldExecute((($dirty2 & 306782355) == 306782354 && ($dirty12 & 1171) == 1170) ? false : true, $dirty2 & 1)) {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
            readOnly2 = readOnly;
            interactionSource2 = interactionSource;
            textObfuscationCharacter2 = textObfuscationCharacter;
            $dirty = $dirty2;
            $dirty1 = $dirty12;
            enabled2 = z;
            inputTransformation3 = inputTransformation2;
            textStyle3 = textStyle2;
            keyboardOptions3 = keyboardOptions2;
            modifier3 = modifier2;
            onKeyboardAction2 = onKeyboardAction;
            onTextLayout2 = onTextLayout;
            cursorBrush2 = cursorBrush;
            decorator2 = decorator;
            i9 = i;
        } else {
            if (i13 != 0) {
                modifier4 = Modifier.INSTANCE;
            } else {
                modifier4 = modifier2;
            }
            if (i14 == 0) {
                i10 = i15;
                enabled3 = z;
            } else {
                enabled3 = true;
                i10 = i15;
            }
            if ((i2 & 8) == 0) {
                readOnly3 = readOnly;
            } else {
                readOnly3 = false;
            }
            if (i10 == 0) {
                i11 = i16;
                inputTransformation4 = inputTransformation2;
            } else {
                inputTransformation4 = null;
                i11 = i16;
            }
            if (i11 == 0) {
                textStyle4 = textStyle2;
            } else {
                textStyle4 = TextStyle.INSTANCE.getDefault();
            }
            if (i17 == 0) {
                keyboardOptions4 = keyboardOptions2;
            } else {
                keyboardOptions4 = KeyboardOptions.INSTANCE.getSecureTextField$foundation();
            }
            if (i3 == 0) {
                onKeyboardAction3 = onKeyboardAction;
            } else {
                onKeyboardAction3 = null;
            }
            if (i4 == 0) {
                onTextLayout3 = onTextLayout;
                i12 = -817513499;
            } else {
                onTextLayout3 = null;
                i12 = -817513499;
            }
            if (i5 == 0) {
                interactionSource3 = interactionSource;
            } else {
                interactionSource3 = null;
            }
            if (i6 == 0) {
                cursorBrush3 = cursorBrush;
            } else {
                cursorBrush3 = new SolidColor(Color.INSTANCE.m4723getBlack0d7_KjU(), null);
            }
            if (i22 == 0) {
                decorator3 = decorator;
            } else {
                decorator3 = null;
            }
            if (i7 == 0) {
                iM1359getRevealLastTypedvTwcZD0 = i;
            } else {
                iM1359getRevealLastTypedvTwcZD0 = TextObfuscationMode.INSTANCE.m1359getRevealLastTypedvTwcZD0();
            }
            if (i8 == 0) {
                textObfuscationCharacter3 = textObfuscationCharacter;
            } else {
                textObfuscationCharacter3 = 8226;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(i12, $dirty2, $dirty12, "androidx.compose.foundation.text.BasicSecureTextField (BasicSecureTextField.kt:405)");
            }
            $composer2 = $composer3;
            m1137BasicSecureTextFieldltb6GB4(textFieldState, modifier4, enabled3, false, inputTransformation4, textStyle4, keyboardOptions4, onKeyboardAction3, onTextLayout3, interactionSource3, cursorBrush3, decorator3, iM1359getRevealLastTypedvTwcZD0, textObfuscationCharacter3, ScrollKt.rememberScrollState(0, $composer3, 0, 1), $composer2, ($dirty2 & 14) | 3072 | ($dirty2 & 112) | ($dirty2 & 896) | (57344 & $dirty2) | (458752 & $dirty2) | (3670016 & $dirty2) | (29360128 & $dirty2) | (234881024 & $dirty2) | (1879048192 & $dirty2), ($dirty12 & 14) | ($dirty12 & 112) | ($dirty12 & 896) | ($dirty12 & 7168), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            readOnly2 = readOnly3;
            $dirty = $dirty2;
            $dirty1 = $dirty12;
            modifier3 = modifier4;
            enabled2 = enabled3;
            inputTransformation3 = inputTransformation4;
            textStyle3 = textStyle4;
            keyboardOptions3 = keyboardOptions4;
            onKeyboardAction2 = onKeyboardAction3;
            onTextLayout2 = onTextLayout3;
            interactionSource2 = interactionSource3;
            cursorBrush2 = cursorBrush3;
            decorator2 = decorator3;
            i9 = iM1359getRevealLastTypedvTwcZD0;
            textObfuscationCharacter2 = textObfuscationCharacter3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: androidx.compose.foundation.text.BasicSecureTextFieldKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return BasicSecureTextFieldKt.BasicSecureTextField_egD4TGM$lambda$0(state, modifier3, enabled2, readOnly2, inputTransformation3, textStyle3, keyboardOptions3, onKeyboardAction2, onTextLayout2, interactionSource2, cursorBrush2, decorator2, i9, textObfuscationCharacter2, $changed, $changed1, i2, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }
}
