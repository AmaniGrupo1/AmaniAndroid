package androidx.compose.foundation.text;

import androidx.autofill.HintConstants;
import androidx.compose.foundation.ComposeFoundationFlags;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.relocation.BringIntoViewRequester;
import androidx.compose.foundation.relocation.BringIntoViewRequesterKt;
import androidx.compose.foundation.text.handwriting.StylusHandwritingKt;
import androidx.compose.foundation.text.input.internal.CoreTextFieldSemanticsModifier;
import androidx.compose.foundation.text.input.internal.LegacyAdaptingPlatformTextInputModifierNodeKt;
import androidx.compose.foundation.text.input.internal.LegacyPlatformTextInputServiceAdapter;
import androidx.compose.foundation.text.input.internal.LegacyPlatformTextInputServiceAdapter_androidKt;
import androidx.compose.foundation.text.selection.MouseSelectionObserver;
import androidx.compose.foundation.text.selection.OffsetProvider;
import androidx.compose.foundation.text.selection.PlatformSelectionBehaviors_androidKt;
import androidx.compose.foundation.text.selection.SelectedTextType;
import androidx.compose.foundation.text.selection.SelectionColors;
import androidx.compose.foundation.text.selection.SelectionGesturesKt;
import androidx.compose.foundation.text.selection.SelectionHandleAnchor;
import androidx.compose.foundation.text.selection.SelectionHandleInfo;
import androidx.compose.foundation.text.selection.SelectionHandlesKt;
import androidx.compose.foundation.text.selection.SimpleLayoutKt;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.foundation.text.selection.TextFieldSelectionManagerKt;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager_androidKt;
import androidx.compose.foundation.text.selection.TextSelectionColorsKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScope;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.focus.FocusState;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.input.key.KeyEvent;
import androidx.compose.ui.input.key.KeyInputModifierKt;
import androidx.compose.ui.input.pointer.PointerIcon;
import androidx.compose.ui.input.pointer.PointerIconKt;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.Clipboard;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import androidx.compose.ui.platform.TextToolbar;
import androidx.compose.ui.platform.WindowInfo;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.KeyboardType;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.PasswordVisualTransformation;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TextInputService;
import androidx.compose.ui.text.input.TextInputSession;
import androidx.compose.ui.text.input.TransformedText;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.compose.ui.unit.Density;
import androidx.media3.common.C;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.profileinstaller.ProfileVerifier;
import com.google.firebase.firestore.model.Values;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.CoroutineStart;
import okhttp3.internal.ws.WebSocketProtocol;

/* JADX INFO: compiled from: CoreTextField.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000¨\u0001\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\u001aú\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\u0014\b\u0002\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00010\u00052\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0016\u001a\u00020\u00152\b\b\u0002\u0010\u0017\u001a\u00020\u00182\b\b\u0002\u0010\u0019\u001a\u00020\u001a2\b\b\u0002\u0010\u001b\u001a\u00020\u00132\b\b\u0002\u0010\u001c\u001a\u00020\u001323\b\u0002\u0010\u001d\u001a-\u0012\u001e\u0012\u001c\u0012\u0004\u0012\u00020\u00010\u001e¢\u0006\u0002\b\u001f¢\u0006\f\b \u0012\b\b!\u0012\u0004\b\b(\"\u0012\u0004\u0012\u00020\u00010\u0005¢\u0006\u0002\b\u001f2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010$H\u0001¢\u0006\u0002\u0010%\u001a0\u0010&\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010'\u001a\u00020(2\u0011\u0010)\u001a\r\u0012\u0004\u0012\u00020\u00010\u001e¢\u0006\u0002\b\u001fH\u0003¢\u0006\u0002\u0010*\u001a\u001c\u0010+\u001a\u00020\u0007*\u00020\u00072\u0006\u0010,\u001a\u00020-2\u0006\u0010'\u001a\u00020(H\u0002\u001a \u0010.\u001a\u00020\u00012\u0006\u0010,\u001a\u00020-2\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020\u0013H\u0000\u001a0\u00102\u001a\u00020\u00012\u0006\u00103\u001a\u0002042\u0006\u0010,\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u00105\u001a\u000206H\u0002\u001a\u0010\u00107\u001a\u00020\u00012\u0006\u0010,\u001a\u00020-H\u0002\u001a2\u00108\u001a\u00020\u0001*\u0002092\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020\r2\u0006\u00105\u001a\u000206H\u0080@¢\u0006\u0002\u0010=\u001a\u001d\u0010>\u001a\u00020\u00012\u0006\u0010'\u001a\u00020(2\u0006\u0010?\u001a\u00020\u0013H\u0003¢\u0006\u0002\u0010@\u001a\u0015\u0010A\u001a\u00020\u00012\u0006\u0010'\u001a\u00020(H\u0001¢\u0006\u0002\u0010B\u001a \u0010C\u001a\u00020\u00012\u0006\u0010,\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u00105\u001a\u000206H\u0002\u001a\u001c\u0010D\u001a\u00020\u0007*\u00020\u00072\u0006\u0010E\u001a\u00020(2\u0006\u0010F\u001a\u00020GH\u0002¨\u0006H²\u0006\n\u0010I\u001a\u00020\u0013X\u008a\u0084\u0002"}, d2 = {"CoreTextField", "", Values.VECTOR_MAP_VECTORS_KEY, "Landroidx/compose/ui/text/input/TextFieldValue;", "onValueChange", "Lkotlin/Function1;", "modifier", "Landroidx/compose/ui/Modifier;", "textStyle", "Landroidx/compose/ui/text/TextStyle;", "visualTransformation", "Landroidx/compose/ui/text/input/VisualTransformation;", "onTextLayout", "Landroidx/compose/ui/text/TextLayoutResult;", "interactionSource", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "cursorBrush", "Landroidx/compose/ui/graphics/Brush;", "softWrap", "", "maxLines", "", "minLines", "imeOptions", "Landroidx/compose/ui/text/input/ImeOptions;", "keyboardActions", "Landroidx/compose/foundation/text/KeyboardActions;", "enabled", "readOnly", "decorationBox", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "innerTextField", "textScrollerPosition", "Landroidx/compose/foundation/text/TextFieldScrollerPosition;", "(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;ZIILandroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/KeyboardActions;ZZLkotlin/jvm/functions/Function3;Landroidx/compose/foundation/text/TextFieldScrollerPosition;Landroidx/compose/runtime/Composer;III)V", "CoreTextFieldRootBox", "manager", "Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;", "content", "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "previewKeyEventToDeselectOnBack", "state", "Landroidx/compose/foundation/text/LegacyTextFieldState;", "tapToFocus", "focusRequester", "Landroidx/compose/ui/focus/FocusRequester;", "allowKeyboard", "startInputSession", "textInputService", "Landroidx/compose/ui/text/input/TextInputService;", "offsetMapping", "Landroidx/compose/ui/text/input/OffsetMapping;", "endInputSession", "bringSelectionEndIntoView", "Landroidx/compose/foundation/relocation/BringIntoViewRequester;", "textDelegate", "Landroidx/compose/foundation/text/TextDelegate;", "textLayoutResult", "(Landroidx/compose/foundation/relocation/BringIntoViewRequester;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/foundation/text/TextDelegate;Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/text/input/OffsetMapping;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "SelectionToolbarAndHandles", "show", "(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZLandroidx/compose/runtime/Composer;I)V", "TextFieldCursorHandle", "(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/Composer;I)V", "notifyFocusedRect", "addContextMenuComponents", "textFieldSelectionManager", "coroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "foundation", "writeable"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class CoreTextFieldKt {
    static final Unit CoreTextField$lambda$27(TextFieldValue textFieldValue, Function1 function1, Modifier modifier, TextStyle textStyle, VisualTransformation visualTransformation, Function1 function12, MutableInteractionSource mutableInteractionSource, Brush brush, boolean z, int i, int i2, ImeOptions imeOptions, KeyboardActions keyboardActions, boolean z2, boolean z3, Function3 function3, TextFieldScrollerPosition textFieldScrollerPosition, int i3, int i4, int i5, Composer composer, int i6) {
        CoreTextField(textFieldValue, function1, modifier, textStyle, visualTransformation, function12, mutableInteractionSource, brush, z, i, i2, imeOptions, keyboardActions, z2, z3, function3, textFieldScrollerPosition, composer, RecomposeScopeImplKt.updateChangedFlags(i3 | 1), RecomposeScopeImplKt.updateChangedFlags(i4), i5);
        return Unit.INSTANCE;
    }

    static final Unit CoreTextFieldRootBox$lambda$1(Modifier modifier, TextFieldSelectionManager textFieldSelectionManager, Function2 function2, int i, Composer composer, int i2) {
        CoreTextFieldRootBox(modifier, textFieldSelectionManager, function2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    static final Unit SelectionToolbarAndHandles$lambda$1(TextFieldSelectionManager textFieldSelectionManager, boolean z, int i, Composer composer, int i2) {
        SelectionToolbarAndHandles(textFieldSelectionManager, z, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    static final Unit TextFieldCursorHandle$lambda$4(TextFieldSelectionManager textFieldSelectionManager, int i, Composer composer, int i2) {
        TextFieldCursorHandle(textFieldSelectionManager, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit CoreTextField$lambda$0$0(TextLayoutResult it) {
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:327:0x06f8  */
    /* JADX WARN: Removed duplicated region for block: B:328:0x070f  */
    /* JADX WARN: Removed duplicated region for block: B:331:0x0764  */
    /* JADX WARN: Removed duplicated region for block: B:332:0x0779  */
    /* JADX WARN: Removed duplicated region for block: B:335:0x07a1  */
    /* JADX WARN: Removed duplicated region for block: B:339:0x07d0  */
    /* JADX WARN: Removed duplicated region for block: B:340:0x07de  */
    /* JADX WARN: Removed duplicated region for block: B:343:0x0866  */
    /* JADX WARN: Removed duplicated region for block: B:344:0x0880  */
    /* JADX WARN: Removed duplicated region for block: B:347:0x08d0  */
    /* JADX WARN: Removed duplicated region for block: B:348:0x08d2  */
    /* JADX WARN: Removed duplicated region for block: B:351:0x08dc  */
    /* JADX WARN: Removed duplicated region for block: B:352:0x08de  */
    /* JADX WARN: Removed duplicated region for block: B:355:0x08ea  */
    /* JADX WARN: Removed duplicated region for block: B:356:0x08ec  */
    /* JADX WARN: Removed duplicated region for block: B:359:0x08f6  */
    /* JADX WARN: Removed duplicated region for block: B:363:0x0902  */
    /* JADX WARN: Removed duplicated region for block: B:366:0x090c A[PHI: r12 r63
      0x090c: PHI (r12v52 androidx.compose.ui.text.input.ImeOptions) = (r12v40 androidx.compose.ui.text.input.ImeOptions), (r12v53 androidx.compose.ui.text.input.ImeOptions) binds: [B:365:0x090a, B:362:0x08ff] A[DONT_GENERATE, DONT_INLINE]
      0x090c: PHI (r63v45 boolean) = (r63v21 boolean), (r63v46 boolean) binds: [B:365:0x090a, B:362:0x08ff] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:367:0x090e  */
    /* JADX WARN: Removed duplicated region for block: B:370:0x0937  */
    /* JADX WARN: Removed duplicated region for block: B:374:0x0952 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:378:0x099d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:380:0x09a1  */
    /* JADX WARN: Removed duplicated region for block: B:391:0x09f5  */
    /* JADX WARN: Removed duplicated region for block: B:395:0x0a09 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:399:0x0a5b  */
    /* JADX WARN: Removed duplicated region for block: B:403:0x0a67  */
    /* JADX WARN: Removed duplicated region for block: B:407:0x0a92  */
    /* JADX WARN: Removed duplicated region for block: B:408:0x0a94  */
    /* JADX WARN: Removed duplicated region for block: B:411:0x0a9c  */
    /* JADX WARN: Removed duplicated region for block: B:412:0x0a9e  */
    /* JADX WARN: Removed duplicated region for block: B:415:0x0ab6  */
    /* JADX WARN: Removed duplicated region for block: B:419:0x0ac7 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:423:0x0b1f  */
    /* JADX WARN: Removed duplicated region for block: B:427:0x0b2d  */
    /* JADX WARN: Removed duplicated region for block: B:431:0x0b6b  */
    /* JADX WARN: Removed duplicated region for block: B:432:0x0b6d  */
    /* JADX WARN: Removed duplicated region for block: B:435:0x0b80  */
    /* JADX WARN: Removed duplicated region for block: B:439:0x0b8c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:443:0x0bbc  */
    /* JADX WARN: Removed duplicated region for block: B:444:0x0bbe  */
    /* JADX WARN: Removed duplicated region for block: B:447:0x0bd3  */
    /* JADX WARN: Removed duplicated region for block: B:448:0x0bd5  */
    /* JADX WARN: Removed duplicated region for block: B:451:0x0bea  */
    /* JADX WARN: Removed duplicated region for block: B:455:0x0bfc  */
    /* JADX WARN: Removed duplicated region for block: B:459:0x0c5a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:465:0x0c6a  */
    /* JADX WARN: Removed duplicated region for block: B:468:0x0ca1  */
    /* JADX WARN: Removed duplicated region for block: B:472:0x0caf  */
    /* JADX WARN: Removed duplicated region for block: B:476:0x0ce0  */
    /* JADX WARN: Removed duplicated region for block: B:477:0x0ce2  */
    /* JADX WARN: Removed duplicated region for block: B:480:0x0cef  */
    /* JADX WARN: Removed duplicated region for block: B:482:0x0cf5  */
    /* JADX WARN: Removed duplicated region for block: B:488:0x0d0d  */
    /* JADX WARN: Removed duplicated region for block: B:492:0x0d19  */
    /* JADX WARN: Removed duplicated region for block: B:496:0x0d4c  */
    /* JADX WARN: Removed duplicated region for block: B:497:0x0d4f  */
    /* JADX WARN: Removed duplicated region for block: B:500:0x0d7e  */
    /* JADX WARN: Removed duplicated region for block: B:503:0x0d90  */
    /* JADX WARN: Removed duplicated region for block: B:506:0x0dbe  */
    /* JADX WARN: Removed duplicated region for block: B:510:0x0dcc  */
    /* JADX WARN: Removed duplicated region for block: B:514:0x0e48  */
    /* JADX WARN: Removed duplicated region for block: B:518:0x0e54 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:522:0x0ebd  */
    /* JADX WARN: Removed duplicated region for block: B:529:0x0ed2  */
    /* JADX WARN: Removed duplicated region for block: B:532:0x0ed7  */
    /* JADX WARN: Removed duplicated region for block: B:533:0x0ee4  */
    /* JADX WARN: Removed duplicated region for block: B:536:0x0f5f  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void CoreTextField(final TextFieldValue textFieldValue, final Function1<? super TextFieldValue, Unit> function1, Modifier modifier, TextStyle textStyle, VisualTransformation visualTransformation, Function1<? super TextLayoutResult, Unit> function12, MutableInteractionSource mutableInteractionSource, Brush brush, boolean z, int i, int i2, ImeOptions imeOptions, KeyboardActions keyboardActions, boolean z2, boolean z3, Function3<? super Function2<? super Composer, ? super Integer, Unit>, ? super Composer, ? super Integer, Unit> function3, TextFieldScrollerPosition textFieldScrollerPosition, Composer composer, final int i3, final int i4, final int i5) {
        Modifier modifier2;
        TextStyle textStyle2;
        VisualTransformation visualTransformation2;
        Function1<? super TextLayoutResult, Unit> function13;
        MutableInteractionSource mutableInteractionSource2;
        Brush brush2;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        final ImeOptions imeOptions2;
        final boolean z4;
        final Function3<? super Function2<? super Composer, ? super Integer, Unit>, ? super Composer, ? super Integer, Unit> function32;
        final TextFieldScrollerPosition textFieldScrollerPosition2;
        final VisualTransformation visualTransformation3;
        final Brush brush3;
        final MutableInteractionSource mutableInteractionSource3;
        final Function1<? super TextLayoutResult, Unit> function14;
        final TextStyle textStyle3;
        final Modifier modifier3;
        final boolean z5;
        final int i12;
        final int i13;
        final KeyboardActions keyboardActions2;
        final boolean z6;
        Composer composer2;
        VisualTransformation visualTransformation4;
        boolean z7;
        ImeOptions imeOptions3;
        int i14;
        KeyboardActions keyboardActions3;
        Function3<? super Function2<? super Composer, ? super Integer, Unit>, ? super Composer, ? super Integer, Unit> lambda$559628295$foundation;
        MutableInteractionSource mutableInteractionSource4;
        Modifier modifier4;
        boolean z8;
        final boolean z9;
        final Function1<? super TextLayoutResult, Unit> function15;
        int i15;
        TextFieldScrollerPosition textFieldScrollerPosition3;
        int i16;
        ImeOptions imeOptions4;
        int i17;
        boolean z10;
        Brush brush4;
        WindowInfo windowInfo;
        MutableInteractionSource mutableInteractionSource5;
        int i18;
        TextFieldScrollerPosition textFieldScrollerPosition4;
        ImeOptions imeOptions5;
        TransformedText transformedText;
        Object obj;
        AnnotatedString annotatedString;
        AnnotatedString annotatedString2;
        TextStyle textStyle4;
        boolean z11;
        Density density;
        FontFamily.Resolver resolver;
        Object objRememberedValue;
        TextFieldScrollerPosition textFieldScrollerPosition5;
        RecomposeScope recomposeScope;
        Object objRememberedValue2;
        Object objRememberedValue3;
        Object objRememberedValue4;
        ImeOptions imeOptions6;
        boolean z12;
        boolean zChangedInstance;
        LegacyTextFieldState legacyTextFieldState;
        boolean z13;
        TextInputService textInputService;
        final TextFieldValue textFieldValue2;
        OffsetMapping offsetMapping;
        TextFieldSelectionManager textFieldSelectionManager;
        BringIntoViewRequester bringIntoViewRequester;
        CoroutineScope coroutineScope;
        Object obj2;
        State stateRememberUpdatedState;
        TextFieldSelectionManager textFieldSelectionManager2;
        TextInputService textInputService2;
        boolean zChanged;
        final LegacyTextFieldState legacyTextFieldState2;
        State state;
        final TextInputService textInputService3;
        TextFieldSelectionManager textFieldSelectionManager3;
        CoreTextFieldKt$CoreTextField$5$1 coreTextFieldKt$CoreTextField$5$1;
        boolean zChangedInstance2;
        ImeOptions imeOptions7;
        boolean zChangedInstance3;
        final TextFieldSelectionManager textFieldSelectionManager4;
        boolean z14;
        final OffsetMapping offsetMapping2;
        final LegacyTextFieldState legacyTextFieldState3;
        Object obj3;
        boolean zChangedInstance4;
        MutableInteractionSource mutableInteractionSource6;
        boolean zChangedInstance5;
        Object objRememberedValue5;
        boolean zChangedInstance6;
        int i19;
        LegacyTextFieldState legacyTextFieldState4;
        boolean z15;
        WindowInfo windowInfo2;
        boolean zChangedInstance7;
        VisualTransformation visualTransformation5;
        boolean zChangedInstance8;
        Modifier modifier5;
        boolean zChanged2;
        TextInputService textInputService4;
        boolean zChangedInstance9;
        Object objRememberedValue6;
        boolean z16;
        Modifier modifier6;
        Modifier.Companion companionTextFieldMagnifier;
        Composer composerStartRestartGroup = composer.startRestartGroup(31062401);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(CoreTextField)N(value,onValueChange,modifier,textStyle,visualTransformation,onTextLayout,interactionSource,cursorBrush,softWrap,maxLines,minLines,imeOptions,keyboardActions,enabled,readOnly,decorationBox,textScrollerPosition)213@12062L29,214@12132L58,215@12236L72,220@12366L7,221@12427L7,222@12495L7,223@12560L7,224@12605L7,225@12674L7,246@13516L277,258@14098L21,260@14144L453,289@14997L26,292@15090L24,293@15148L37,295@15205L51,301@15494L7,303@15589L7,304@15646L7,314@16020L206,327@16443L1514,362@18064L42,363@18132L971,363@18111L992,389@19173L28,390@19269L992,412@20352L177,421@20630L577,439@21278L1606,492@23496L48,492@23470L74,494@23579L503,494@23550L532,526@24756L987,545@25860L7,546@25917L7,550@26055L327,559@26411L35,587@27673L5409,587@27620L5462:CoreTextField.kt#423gt5");
        int i20 = i3;
        int i21 = i4;
        if ((i3 & 6) == 0) {
            i20 |= composerStartRestartGroup.changed(textFieldValue) ? 4 : 2;
        }
        if ((i3 & 48) == 0) {
            i20 |= composerStartRestartGroup.changedInstance(function1) ? 32 : 16;
        }
        int i22 = i5 & 4;
        if (i22 != 0) {
            i20 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            modifier2 = modifier;
        } else if ((i3 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            modifier2 = modifier;
            i20 |= composerStartRestartGroup.changed(modifier2) ? 256 : 128;
        } else {
            modifier2 = modifier;
        }
        int i23 = i5 & 8;
        if (i23 != 0) {
            i20 |= 3072;
            textStyle2 = textStyle;
        } else if ((i3 & 3072) == 0) {
            textStyle2 = textStyle;
            i20 |= composerStartRestartGroup.changed(textStyle2) ? 2048 : 1024;
        } else {
            textStyle2 = textStyle;
        }
        int i24 = i5 & 16;
        if (i24 != 0) {
            i20 |= 24576;
            visualTransformation2 = visualTransformation;
        } else if ((i3 & 24576) == 0) {
            visualTransformation2 = visualTransformation;
            i20 |= composerStartRestartGroup.changed(visualTransformation2) ? 16384 : 8192;
        } else {
            visualTransformation2 = visualTransformation;
        }
        int i25 = i5 & 32;
        if (i25 != 0) {
            i20 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            function13 = function12;
        } else if ((i3 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            function13 = function12;
            i20 |= composerStartRestartGroup.changedInstance(function13) ? 131072 : 65536;
        } else {
            function13 = function12;
        }
        int i26 = i5 & 64;
        if (i26 != 0) {
            i20 |= 1572864;
            mutableInteractionSource2 = mutableInteractionSource;
        } else if ((i3 & 1572864) == 0) {
            mutableInteractionSource2 = mutableInteractionSource;
            i20 |= composerStartRestartGroup.changed(mutableInteractionSource2) ? 1048576 : 524288;
        } else {
            mutableInteractionSource2 = mutableInteractionSource;
        }
        int i27 = i5 & 128;
        if (i27 != 0) {
            i20 |= 12582912;
            brush2 = brush;
        } else if ((i3 & 12582912) == 0) {
            brush2 = brush;
            i20 |= composerStartRestartGroup.changed(brush2) ? 8388608 : 4194304;
        } else {
            brush2 = brush;
        }
        int i28 = i5 & 256;
        if (i28 != 0) {
            i20 |= 100663296;
            i6 = i28;
        } else if ((i3 & 100663296) == 0) {
            i6 = i28;
            i20 |= composerStartRestartGroup.changed(z) ? 67108864 : 33554432;
        } else {
            i6 = i28;
        }
        int i29 = i5 & 512;
        if (i29 != 0) {
            i20 |= 805306368;
            i7 = i29;
        } else if ((i3 & 805306368) == 0) {
            i7 = i29;
            i20 |= composerStartRestartGroup.changed(i) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
        } else {
            i7 = i29;
        }
        int i30 = i5 & 1024;
        if (i30 != 0) {
            i21 |= 6;
            i8 = i30;
        } else if ((i4 & 6) == 0) {
            i8 = i30;
            i21 |= composerStartRestartGroup.changed(i2) ? 4 : 2;
        } else {
            i8 = i30;
        }
        if ((i4 & 48) == 0) {
            i21 |= ((i5 & 2048) == 0 && composerStartRestartGroup.changed(imeOptions)) ? 32 : 16;
        }
        int i31 = i5 & 4096;
        if (i31 != 0) {
            i21 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            i9 = i31;
        } else {
            i9 = i31;
            if ((i4 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                i21 |= composerStartRestartGroup.changed(keyboardActions) ? 256 : 128;
            }
        }
        int i32 = i5 & 8192;
        if (i32 != 0) {
            i21 |= 3072;
            i10 = i32;
        } else {
            i10 = i32;
            if ((i4 & 3072) == 0) {
                i21 |= composerStartRestartGroup.changed(z2) ? 2048 : 1024;
            }
        }
        int i33 = i5 & 16384;
        if (i33 != 0) {
            i21 |= 24576;
            i11 = i33;
        } else {
            i11 = i33;
            if ((i4 & 24576) == 0) {
                i21 |= composerStartRestartGroup.changed(z3) ? 16384 : 8192;
            }
        }
        int i34 = i5 & 32768;
        if (i34 != 0) {
            i21 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if ((i4 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            i21 |= composerStartRestartGroup.changedInstance(function3) ? 131072 : 65536;
        }
        int i35 = i5 & 65536;
        if (i35 != 0) {
            i21 |= 1572864;
        } else if ((i4 & 1572864) == 0) {
            i21 |= composerStartRestartGroup.changed(textFieldScrollerPosition) ? 1048576 : 524288;
        }
        int i36 = i21;
        if (composerStartRestartGroup.shouldExecute(((i20 & 306783379) == 306783378 && (i36 & 599187) == 599186) ? false : true, i20 & 1)) {
            composerStartRestartGroup.startDefaults();
            ComposerKt.sourceInformation(composerStartRestartGroup, "198@11387L2");
            if ((i3 & 1) == 0 || composerStartRestartGroup.getDefaultsInvalid()) {
                if (i22 != 0) {
                    modifier2 = Modifier.INSTANCE;
                }
                if (i23 != 0) {
                    textStyle2 = TextStyle.INSTANCE.getDefault();
                }
                VisualTransformation none = i24 != 0 ? VisualTransformation.INSTANCE.getNone() : visualTransformation2;
                if (i25 != 0) {
                    ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213794269, "CC(remember):CoreTextField.kt#9igjgp");
                    Object objRememberedValue7 = composerStartRestartGroup.rememberedValue();
                    visualTransformation4 = none;
                    if (objRememberedValue7 == Composer.INSTANCE.getEmpty()) {
                        Function1 function16 = new Function1() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda3
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj4) {
                                return CoreTextFieldKt.CoreTextField$lambda$0$0((TextLayoutResult) obj4);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(function16);
                        objRememberedValue7 = function16;
                    }
                    ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                    function13 = (Function1) objRememberedValue7;
                } else {
                    visualTransformation4 = none;
                }
                MutableInteractionSource mutableInteractionSource7 = i26 != 0 ? null : mutableInteractionSource2;
                SolidColor solidColor = i27 != 0 ? new SolidColor(Color.INSTANCE.m4733getUnspecified0d7_KjU(), null) : brush2;
                z7 = i6 != 0 ? true : z;
                int i37 = i7 != 0 ? Integer.MAX_VALUE : i;
                int i38 = i8 != 0 ? 1 : i2;
                if ((i5 & 2048) != 0) {
                    imeOptions3 = ImeOptions.INSTANCE.getDefault();
                    i14 = i36 & (-113);
                } else {
                    imeOptions3 = imeOptions;
                    i14 = i36;
                }
                keyboardActions3 = i9 != 0 ? KeyboardActions.INSTANCE.getDefault() : keyboardActions;
                boolean z17 = i10 != 0 ? true : z2;
                boolean z18 = i11 != 0 ? false : z3;
                lambda$559628295$foundation = i34 != 0 ? ComposableSingletons$CoreTextFieldKt.INSTANCE.getLambda$559628295$foundation() : function3;
                if (i35 != 0) {
                    textFieldScrollerPosition3 = null;
                    Brush brush5 = solidColor;
                    mutableInteractionSource4 = mutableInteractionSource7;
                    modifier4 = modifier2;
                    z8 = z17;
                    z9 = z18;
                    function15 = function13;
                    i15 = i38;
                    brush2 = brush5;
                    i16 = i14;
                    imeOptions4 = imeOptions3;
                    i17 = i37;
                    visualTransformation2 = visualTransformation4;
                } else {
                    Brush brush6 = solidColor;
                    mutableInteractionSource4 = mutableInteractionSource7;
                    modifier4 = modifier2;
                    z8 = z17;
                    z9 = z18;
                    function15 = function13;
                    i15 = i38;
                    brush2 = brush6;
                    textFieldScrollerPosition3 = textFieldScrollerPosition;
                    i16 = i14;
                    imeOptions4 = imeOptions3;
                    i17 = i37;
                    visualTransformation2 = visualTransformation4;
                }
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                if ((i5 & 2048) != 0) {
                    z7 = z;
                    imeOptions4 = imeOptions;
                    keyboardActions3 = keyboardActions;
                    z9 = z3;
                    lambda$559628295$foundation = function3;
                    textFieldScrollerPosition3 = textFieldScrollerPosition;
                    i16 = i36 & (-113);
                    mutableInteractionSource4 = mutableInteractionSource2;
                    function15 = function13;
                    modifier4 = modifier2;
                    i17 = i;
                    i15 = i2;
                    z8 = z2;
                } else {
                    z7 = z;
                    imeOptions4 = imeOptions;
                    keyboardActions3 = keyboardActions;
                    z9 = z3;
                    lambda$559628295$foundation = function3;
                    textFieldScrollerPosition3 = textFieldScrollerPosition;
                    i16 = i36;
                    mutableInteractionSource4 = mutableInteractionSource2;
                    function15 = function13;
                    modifier4 = modifier2;
                    i17 = i;
                    i15 = i2;
                    z8 = z2;
                }
            }
            composerStartRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                z10 = z7;
                brush4 = brush2;
                ComposerKt.traceEventStart(31062401, i20, i16, "androidx.compose.foundation.text.CoreTextField (CoreTextField.kt:212)");
            } else {
                z10 = z7;
                brush4 = brush2;
            }
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213772642, "CC(remember):CoreTextField.kt#9igjgp");
            int i39 = i20;
            Object objRememberedValue8 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue8 == Composer.INSTANCE.getEmpty()) {
                FocusRequester focusRequester = new FocusRequester();
                composerStartRestartGroup.updateRememberedValue(focusRequester);
                objRememberedValue8 = focusRequester;
            }
            FocusRequester focusRequester2 = (FocusRequester) objRememberedValue8;
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213770373, "CC(remember):CoreTextField.kt#9igjgp");
            Object objRememberedValue9 = composerStartRestartGroup.rememberedValue();
            final int i40 = i15;
            if (objRememberedValue9 == Composer.INSTANCE.getEmpty()) {
                LegacyPlatformTextInputServiceAdapter legacyPlatformTextInputServiceAdapterCreateLegacyPlatformTextInputServiceAdapter = LegacyPlatformTextInputServiceAdapter_androidKt.createLegacyPlatformTextInputServiceAdapter();
                composerStartRestartGroup.updateRememberedValue(legacyPlatformTextInputServiceAdapterCreateLegacyPlatformTextInputServiceAdapter);
                objRememberedValue9 = legacyPlatformTextInputServiceAdapterCreateLegacyPlatformTextInputServiceAdapter;
            }
            final LegacyPlatformTextInputServiceAdapter legacyPlatformTextInputServiceAdapter = (LegacyPlatformTextInputServiceAdapter) objRememberedValue9;
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213767031, "CC(remember):CoreTextField.kt#9igjgp");
            Object objRememberedValue10 = composerStartRestartGroup.rememberedValue();
            TextStyle textStyle5 = textStyle2;
            if (objRememberedValue10 == Composer.INSTANCE.getEmpty()) {
                objRememberedValue10 = new TextInputService(legacyPlatformTextInputServiceAdapter);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue10);
            }
            final TextInputService textInputService5 = (TextInputService) objRememberedValue10;
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
            KeyboardActions keyboardActions4 = keyboardActions3;
            Modifier modifier7 = modifier4;
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume = composerStartRestartGroup.consume(localDensity);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            Density density2 = (Density) objConsume;
            ProvidableCompositionLocal<FontFamily.Resolver> localFontFamilyResolver = CompositionLocalsKt.getLocalFontFamilyResolver();
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume2 = composerStartRestartGroup.consume(localFontFamilyResolver);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            FontFamily.Resolver resolver2 = (FontFamily.Resolver) objConsume2;
            ProvidableCompositionLocal<SelectionColors> localTextSelectionColors = TextSelectionColorsKt.getLocalTextSelectionColors();
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume3 = composerStartRestartGroup.consume(localTextSelectionColors);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            long selectionBackgroundColor = ((SelectionColors) objConsume3).getSelectionBackgroundColor();
            ProvidableCompositionLocal<FocusManager> localFocusManager = CompositionLocalsKt.getLocalFocusManager();
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume4 = composerStartRestartGroup.consume(localFocusManager);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            FocusManager focusManager = (FocusManager) objConsume4;
            ProvidableCompositionLocal<WindowInfo> localWindowInfo = CompositionLocalsKt.getLocalWindowInfo();
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume5 = composerStartRestartGroup.consume(localWindowInfo);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            WindowInfo windowInfo3 = (WindowInfo) objConsume5;
            ProvidableCompositionLocal<SoftwareKeyboardController> localSoftwareKeyboardController = CompositionLocalsKt.getLocalSoftwareKeyboardController();
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume6 = composerStartRestartGroup.consume(localSoftwareKeyboardController);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            SoftwareKeyboardController softwareKeyboardController = (SoftwareKeyboardController) objConsume6;
            final Orientation orientation = i17 == 1 && !z10 && imeOptions4.getSingleLine() ? Orientation.Horizontal : Orientation.Vertical;
            if (textFieldScrollerPosition3 == null) {
                composerStartRestartGroup.startReplaceGroup(-213744626);
                ComposerKt.sourceInformation(composerStartRestartGroup, "232@13005L70,232@12934L141");
                Object[] objArr = {orientation};
                i18 = i17;
                Saver<TextFieldScrollerPosition, Object> saver = TextFieldScrollerPosition.INSTANCE.getSaver();
                windowInfo = windowInfo3;
                ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213742425, "CC(remember):CoreTextField.kt#9igjgp");
                boolean zChanged3 = composerStartRestartGroup.changed(orientation.ordinal());
                Object objRememberedValue11 = composerStartRestartGroup.rememberedValue();
                if (zChanged3) {
                    mutableInteractionSource5 = mutableInteractionSource4;
                } else {
                    mutableInteractionSource5 = mutableInteractionSource4;
                    if (objRememberedValue11 == Composer.INSTANCE.getEmpty()) {
                    }
                    ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                    TextFieldScrollerPosition textFieldScrollerPosition6 = (TextFieldScrollerPosition) RememberSaveableKt.m4138rememberSaveable(objArr, (Saver) saver, (Function0) objRememberedValue11, composerStartRestartGroup, 0);
                    composerStartRestartGroup.endReplaceGroup();
                    textFieldScrollerPosition4 = textFieldScrollerPosition6;
                }
                objRememberedValue11 = new Function0() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda11
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return CoreTextFieldKt.CoreTextField$lambda$4$0(orientation);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue11);
                ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                TextFieldScrollerPosition textFieldScrollerPosition62 = (TextFieldScrollerPosition) RememberSaveableKt.m4138rememberSaveable(objArr, (Saver) saver, (Function0) objRememberedValue11, composerStartRestartGroup, 0);
                composerStartRestartGroup.endReplaceGroup();
                textFieldScrollerPosition4 = textFieldScrollerPosition62;
            } else {
                windowInfo = windowInfo3;
                mutableInteractionSource5 = mutableInteractionSource4;
                i18 = i17;
                composerStartRestartGroup.startReplaceGroup(-213745742);
                composerStartRestartGroup.endReplaceGroup();
                textFieldScrollerPosition4 = textFieldScrollerPosition3;
            }
            if (textFieldScrollerPosition4.getOrientation() != orientation) {
                throw new IllegalArgumentException("Mismatching scroller orientation; " + (orientation == Orientation.Vertical ? "only single-line, non-wrap text fields can scroll horizontally" : "single-line, non-wrap text fields can only scroll horizontally"));
            }
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213725866, "CC(remember):CoreTextField.kt#9igjgp");
            boolean z19 = ((i39 & 14) == 4) | ((i39 & 57344) == 16384);
            Object objRememberedValue12 = composerStartRestartGroup.rememberedValue();
            if (z19 || objRememberedValue12 == Composer.INSTANCE.getEmpty()) {
                TransformedText transformedTextFilterWithValidation = ValidatingOffsetMappingKt.filterWithValidation(visualTransformation2, textFieldValue.getText());
                TextRange composition = textFieldValue.getComposition();
                if (composition != null) {
                    imeOptions5 = imeOptions4;
                    TransformedText transformedTextM1261applyCompositionDecoration72CqOWE = TextFieldDelegate.INSTANCE.m1261applyCompositionDecoration72CqOWE(composition.getPackedValue(), transformedTextFilterWithValidation);
                    transformedText = transformedTextFilterWithValidation;
                    if (transformedTextM1261applyCompositionDecoration72CqOWE != null) {
                        transformedText = transformedTextM1261applyCompositionDecoration72CqOWE;
                    }
                } else {
                    imeOptions5 = imeOptions4;
                    transformedText = transformedTextFilterWithValidation;
                }
                composerStartRestartGroup.updateRememberedValue(transformedText);
                obj = transformedText;
            } else {
                imeOptions5 = imeOptions4;
                obj = objRememberedValue12;
            }
            TransformedText transformedText2 = (TransformedText) obj;
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            AnnotatedString text = transformedText2.getText();
            final OffsetMapping offsetMapping3 = transformedText2.getOffsetMapping();
            RecomposeScope currentRecomposeScope = ComposablesKt.getCurrentRecomposeScope(composerStartRestartGroup, 0);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213705594, "CC(remember):CoreTextField.kt#9igjgp");
            boolean zChanged4 = composerStartRestartGroup.changed(softwareKeyboardController);
            Object objRememberedValue13 = composerStartRestartGroup.rememberedValue();
            if (zChanged4) {
                annotatedString = text;
            } else {
                annotatedString = text;
                if (objRememberedValue13 != Composer.INSTANCE.getEmpty()) {
                    annotatedString2 = annotatedString;
                    textStyle4 = textStyle5;
                    z11 = z10;
                    density = density2;
                    resolver = resolver2;
                }
                final LegacyTextFieldState legacyTextFieldState5 = (LegacyTextFieldState) objRememberedValue13;
                ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                legacyTextFieldState5.m1226updatefnh65Uc(textFieldValue.getText(), annotatedString2, textStyle4, z11, density, resolver, function1, keyboardActions4, focusManager, selectionBackgroundColor);
                legacyTextFieldState5.getProcessor().reset(textFieldValue, legacyTextFieldState5.getInputSession());
                ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213678725, "CC(remember):CoreTextField.kt#9igjgp");
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue != Composer.INSTANCE.getEmpty()) {
                    textFieldScrollerPosition5 = textFieldScrollerPosition4;
                    recomposeScope = currentRecomposeScope;
                    objRememberedValue = new UndoManager(0, 1, null);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                } else {
                    textFieldScrollerPosition5 = textFieldScrollerPosition4;
                    recomposeScope = currentRecomposeScope;
                }
                UndoManager undoManager = (UndoManager) objRememberedValue;
                ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                UndoManager.snapshotIfNeeded$default(undoManager, textFieldValue, 0L, 2, null);
                ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 773894976, "CC(rememberCoroutineScope)N(getContext)600@27430L68:Effects.kt#9igjgp");
                ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 683736516, "CC(remember):Effects.kt#9igjgp");
                objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue2 != Composer.INSTANCE.getEmpty()) {
                    objRememberedValue2 = EffectsKt.createCompositionCoroutineScope(EmptyCoroutineContext.INSTANCE, composerStartRestartGroup);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                }
                final CoroutineScope coroutineScope2 = (CoroutineScope) objRememberedValue2;
                ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213673882, "CC(remember):CoreTextField.kt#9igjgp");
                objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                    BringIntoViewRequester BringIntoViewRequester = BringIntoViewRequesterKt.BringIntoViewRequester();
                    composerStartRestartGroup.updateRememberedValue(BringIntoViewRequester);
                    objRememberedValue3 = BringIntoViewRequester;
                }
                final BringIntoViewRequester bringIntoViewRequester2 = (BringIntoViewRequester) objRememberedValue3;
                ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213672044, "CC(remember):CoreTextField.kt#9igjgp");
                objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue4 != Composer.INSTANCE.getEmpty()) {
                    objRememberedValue4 = new TextFieldSelectionManager(undoManager);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                }
                final TextFieldSelectionManager textFieldSelectionManager5 = (TextFieldSelectionManager) objRememberedValue4;
                ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                textFieldSelectionManager5.setOffsetMapping$foundation(offsetMapping3);
                textFieldSelectionManager5.setVisualTransformation$foundation(visualTransformation2);
                textFieldSelectionManager5.setOnValueChange$foundation(legacyTextFieldState5.getOnValueChange());
                textFieldSelectionManager5.setState$foundation(legacyTextFieldState5);
                textFieldSelectionManager5.setValue$foundation(textFieldValue);
                ProvidableCompositionLocal<Clipboard> localClipboard = CompositionLocalsKt.getLocalClipboard();
                ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
                Object objConsume7 = composerStartRestartGroup.consume(localClipboard);
                ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                textFieldSelectionManager5.setClipboard$foundation((Clipboard) objConsume7);
                textFieldSelectionManager5.setCoroutineScope$foundation(coroutineScope2);
                ProvidableCompositionLocal<TextToolbar> localTextToolbar = CompositionLocalsKt.getLocalTextToolbar();
                ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
                Object objConsume8 = composerStartRestartGroup.consume(localTextToolbar);
                ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                textFieldSelectionManager5.setTextToolbar((TextToolbar) objConsume8);
                ProvidableCompositionLocal<HapticFeedback> localHapticFeedback = CompositionLocalsKt.getLocalHapticFeedback();
                ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
                Object objConsume9 = composerStartRestartGroup.consume(localHapticFeedback);
                ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                textFieldSelectionManager5.setHapticFeedBack((HapticFeedback) objConsume9);
                textFieldSelectionManager5.setFocusRequester(focusRequester2);
                textFieldSelectionManager5.setEditable(!z9);
                textFieldSelectionManager5.setEnabled(z8);
                if (ComposeFoundationFlags.isSmartSelectionEnabled) {
                    composerStartRestartGroup.startReplaceGroup(1951015297);
                } else {
                    composerStartRestartGroup.startReplaceGroup(1966756105);
                    ComposerKt.sourceInformation(composerStartRestartGroup, "311@15921L87");
                    textFieldSelectionManager5.setPlatformSelectionBehaviors$foundation(PlatformSelectionBehaviors_androidKt.rememberPlatformSelectionBehaviors(SelectedTextType.EditableText, textStyle4.getLocaleList(), composerStartRestartGroup, 6));
                }
                composerStartRestartGroup.endReplaceGroup();
                legacyTextFieldState5.getHasFocus();
                new Function1() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda12
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj4) {
                        return CoreTextFieldKt.CoreTextField$lambda$10(textFieldSelectionManager5, (AnnotatedString) obj4);
                    }
                };
                new Function0() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda13
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return TextFieldSelectionManager.copyWithResult$foundation$default(textFieldSelectionManager5, false, 1, null);
                    }
                };
                new Function0() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda14
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return textFieldSelectionManager5.cutWithResult$foundation();
                    }
                };
                ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 1197772674, "CC(rememberClipboardEventsHandler)N(onPaste,onCopy,onCut,isEnabled):ClipboardEventsHandler.jvm.kt#423gt5");
                ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                Modifier.Companion companion = Modifier.INSTANCE;
                ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213630965, "CC(remember):CoreTextField.kt#9igjgp");
                boolean zChangedInstance10 = composerStartRestartGroup.changedInstance(legacyTextFieldState5) | ((i16 & 7168) != 2048) | ((57344 & i16) != 16384) | composerStartRestartGroup.changedInstance(textInputService5) | ((i39 & 14) != 4);
                if (((i16 & 112) ^ 48) <= 32) {
                    imeOptions6 = imeOptions5;
                    if (composerStartRestartGroup.changed(imeOptions6)) {
                        z12 = zChangedInstance10;
                    }
                    zChangedInstance = z12 | z | composerStartRestartGroup.changedInstance(offsetMapping3) | composerStartRestartGroup.changedInstance(coroutineScope2) | composerStartRestartGroup.changedInstance(bringIntoViewRequester2) | composerStartRestartGroup.changedInstance(textFieldSelectionManager5);
                    Object objRememberedValue14 = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance || objRememberedValue14 == Composer.INSTANCE.getEmpty()) {
                        final ImeOptions imeOptions8 = imeOptions6;
                        final boolean z20 = z8;
                        final boolean z21 = z9;
                        Function1 function17 = new Function1() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda15
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj4) {
                                return CoreTextFieldKt.CoreTextField$lambda$13$0(legacyTextFieldState5, z20, z21, textInputService5, textFieldValue, imeOptions8, offsetMapping3, textFieldSelectionManager5, coroutineScope2, bringIntoViewRequester2, (FocusState) obj4);
                            }
                        };
                        legacyTextFieldState = legacyTextFieldState5;
                        z13 = z20;
                        textInputService = textInputService5;
                        textFieldValue2 = textFieldValue;
                        offsetMapping = offsetMapping3;
                        textFieldSelectionManager = textFieldSelectionManager5;
                        bringIntoViewRequester = bringIntoViewRequester2;
                        coroutineScope = coroutineScope2;
                        obj2 = function17;
                        composerStartRestartGroup.updateRememberedValue(obj2);
                    } else {
                        legacyTextFieldState = legacyTextFieldState5;
                        offsetMapping = offsetMapping3;
                        textInputService = textInputService5;
                        bringIntoViewRequester = bringIntoViewRequester2;
                        z13 = z8;
                        coroutineScope = coroutineScope2;
                        obj2 = objRememberedValue14;
                        textFieldSelectionManager = textFieldSelectionManager5;
                        textFieldValue2 = textFieldValue;
                    }
                    ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                    MutableInteractionSource mutableInteractionSource8 = mutableInteractionSource5;
                    Modifier modifierTextFieldFocusModifier = TextFieldGestureModifiersKt.textFieldFocusModifier(companion, z13, focusRequester2, mutableInteractionSource8, (Function1) obj2);
                    final FocusRequester focusRequester3 = focusRequester2;
                    stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Boolean.valueOf(z13 && !z9), composerStartRestartGroup, 0);
                    Unit unit = Unit.INSTANCE;
                    final boolean z22 = z13;
                    ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213577460, "CC(remember):CoreTextField.kt#9igjgp");
                    textFieldSelectionManager2 = textFieldSelectionManager;
                    textInputService2 = textInputService;
                    zChanged = ((((i16 & 112) ^ 48) <= 32 && composerStartRestartGroup.changed(imeOptions6)) || (i16 & 48) == 32) | composerStartRestartGroup.changed(stateRememberUpdatedState) | composerStartRestartGroup.changedInstance(legacyTextFieldState) | composerStartRestartGroup.changedInstance(textInputService) | composerStartRestartGroup.changedInstance(textFieldSelectionManager);
                    Object objRememberedValue15 = composerStartRestartGroup.rememberedValue();
                    if (zChanged || objRememberedValue15 == Composer.INSTANCE.getEmpty()) {
                        LegacyTextFieldState legacyTextFieldState6 = legacyTextFieldState;
                        CoreTextFieldKt$CoreTextField$5$1 coreTextFieldKt$CoreTextField$5$12 = new CoreTextFieldKt$CoreTextField$5$1(legacyTextFieldState6, stateRememberUpdatedState, textInputService2, textFieldSelectionManager2, imeOptions6, null);
                        legacyTextFieldState2 = legacyTextFieldState6;
                        state = stateRememberUpdatedState;
                        textInputService3 = textInputService2;
                        textFieldSelectionManager3 = textFieldSelectionManager2;
                        coreTextFieldKt$CoreTextField$5$1 = coreTextFieldKt$CoreTextField$5$12;
                        composerStartRestartGroup.updateRememberedValue(coreTextFieldKt$CoreTextField$5$1);
                    } else {
                        coreTextFieldKt$CoreTextField$5$1 = objRememberedValue15;
                        state = stateRememberUpdatedState;
                        textFieldSelectionManager3 = textFieldSelectionManager2;
                        legacyTextFieldState2 = legacyTextFieldState;
                        textInputService3 = textInputService2;
                    }
                    ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                    EffectsKt.LaunchedEffect(unit, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) coreTextFieldKt$CoreTextField$5$1, composerStartRestartGroup, 6);
                    Modifier.Companion companion2 = Modifier.INSTANCE;
                    ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213545091, "CC(remember):CoreTextField.kt#9igjgp");
                    zChangedInstance2 = composerStartRestartGroup.changedInstance(legacyTextFieldState2);
                    Object objRememberedValue16 = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance2) {
                        imeOptions7 = imeOptions6;
                    } else {
                        imeOptions7 = imeOptions6;
                        if (objRememberedValue16 == Composer.INSTANCE.getEmpty()) {
                        }
                        ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                        Modifier modifierUpdateSelectionTouchMode = SelectionGesturesKt.updateSelectionTouchMode(companion2, (Function1) objRememberedValue16);
                        ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213541055, "CC(remember):CoreTextField.kt#9igjgp");
                        zChangedInstance3 = composerStartRestartGroup.changedInstance(legacyTextFieldState2) | ((57344 & i16) != 16384) | ((i16 & 7168) != 2048) | composerStartRestartGroup.changedInstance(offsetMapping) | composerStartRestartGroup.changedInstance(textFieldSelectionManager3);
                        textFieldSelectionManager4 = textFieldSelectionManager3;
                        Object objRememberedValue17 = composerStartRestartGroup.rememberedValue();
                        if (!zChangedInstance3 || objRememberedValue17 == Composer.INSTANCE.getEmpty()) {
                            final OffsetMapping offsetMapping4 = offsetMapping;
                            final LegacyTextFieldState legacyTextFieldState7 = legacyTextFieldState2;
                            final boolean z23 = z9;
                            Function1 function18 = new Function1() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda17
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj4) {
                                    return CoreTextFieldKt.CoreTextField$lambda$17$0(legacyTextFieldState7, focusRequester3, z23, z22, textFieldSelectionManager4, offsetMapping4, (Offset) obj4);
                                }
                            };
                            z14 = z22;
                            offsetMapping2 = offsetMapping4;
                            legacyTextFieldState3 = legacyTextFieldState7;
                            focusRequester3 = focusRequester3;
                            obj3 = function18;
                            composerStartRestartGroup.updateRememberedValue(obj3);
                        } else {
                            obj3 = objRememberedValue17;
                            legacyTextFieldState3 = legacyTextFieldState2;
                            offsetMapping2 = offsetMapping;
                            z14 = z22;
                        }
                        ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                        Modifier modifierTapPressTextFieldModifier = TextFieldPressGestureFilterKt.tapPressTextFieldModifier(modifierUpdateSelectionTouchMode, mutableInteractionSource8, z14, (Function1) obj3);
                        MouseSelectionObserver mouseSelectionObserver = textFieldSelectionManager4.getMouseSelectionObserver();
                        TextDragObserver touchSelectionObserver = textFieldSelectionManager4.getTouchSelectionObserver();
                        ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213507214, "CC(remember):CoreTextField.kt#9igjgp");
                        zChangedInstance4 = composerStartRestartGroup.changedInstance(textFieldSelectionManager4);
                        final boolean z24 = z14;
                        PointerInputEventHandler pointerInputEventHandlerRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (zChangedInstance4) {
                            mutableInteractionSource6 = mutableInteractionSource8;
                            if (pointerInputEventHandlerRememberedValue == Composer.INSTANCE.getEmpty()) {
                            }
                            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                            Modifier modifierPointerHoverIcon$default = PointerIconKt.pointerHoverIcon$default(SuspendingPointerInputFilterKt.pointerInput(modifierTapPressTextFieldModifier, mouseSelectionObserver, touchSelectionObserver, (PointerInputEventHandler) pointerInputEventHandlerRememberedValue), PointerIcon.INSTANCE.getText(), false, 2, null);
                            Modifier.Companion companion3 = Modifier.INSTANCE;
                            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213497918, "CC(remember):CoreTextField.kt#9igjgp");
                            zChangedInstance5 = composerStartRestartGroup.changedInstance(legacyTextFieldState3) | ((i39 & 14) == 4) | composerStartRestartGroup.changedInstance(offsetMapping2);
                            objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                            if (zChangedInstance5 || objRememberedValue5 == Composer.INSTANCE.getEmpty()) {
                                objRememberedValue5 = new Function1() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda18
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj4) {
                                        return CoreTextFieldKt.CoreTextField$lambda$19$0(legacyTextFieldState3, textFieldValue2, offsetMapping2, (DrawScope) obj4);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                            }
                            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                            final Modifier modifierDrawBehind = DrawModifierKt.drawBehind(companion3, (Function1) objRememberedValue5);
                            Modifier.Companion companion4 = Modifier.INSTANCE;
                            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213476153, "CC(remember):CoreTextField.kt#9igjgp");
                            final LegacyTextFieldState legacyTextFieldState8 = legacyTextFieldState3;
                            final WindowInfo windowInfo4 = windowInfo;
                            zChangedInstance6 = ((i16 & 7168) == 2048) | composerStartRestartGroup.changedInstance(legacyTextFieldState3) | composerStartRestartGroup.changed(windowInfo4) | composerStartRestartGroup.changedInstance(textFieldSelectionManager4) | ((i39 & 14) == 4) | composerStartRestartGroup.changedInstance(offsetMapping2);
                            Object objRememberedValue18 = composerStartRestartGroup.rememberedValue();
                            if (zChangedInstance6) {
                                i19 = i16;
                            } else {
                                i19 = i16;
                                if (objRememberedValue18 != Composer.INSTANCE.getEmpty()) {
                                    legacyTextFieldState4 = legacyTextFieldState8;
                                    z15 = z24;
                                    windowInfo2 = windowInfo4;
                                }
                                ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                                final Modifier modifierOnGloballyPositioned = OnGloballyPositionedModifierKt.onGloballyPositioned(companion4, (Function1) objRememberedValue18);
                                final LegacyTextFieldState legacyTextFieldState9 = legacyTextFieldState4;
                                boolean z25 = z15;
                                CoreTextFieldSemanticsModifier coreTextFieldSemanticsModifier = new CoreTextFieldSemanticsModifier(transformedText2, textFieldValue, legacyTextFieldState9, z9, z25, visualTransformation2 instanceof PasswordVisualTransformation, offsetMapping2, textFieldSelectionManager4, imeOptions7, focusRequester3);
                                final ImeOptions imeOptions9 = imeOptions7;
                                Brush brush7 = brush4;
                                Modifier modifierCursor = TextFieldCursorKt.cursor(Modifier.INSTANCE, legacyTextFieldState9, textFieldValue, offsetMapping2, brush7, (z25 || z9 || !windowInfo2.isWindowFocused() || legacyTextFieldState9.hasHighlight()) ? false : true);
                                ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213406735, "CC(remember):CoreTextField.kt#9igjgp");
                                zChangedInstance7 = composerStartRestartGroup.changedInstance(textFieldSelectionManager4);
                                Object objRememberedValue19 = composerStartRestartGroup.rememberedValue();
                                if (zChangedInstance7) {
                                    visualTransformation5 = visualTransformation2;
                                    if (objRememberedValue19 == Composer.INSTANCE.getEmpty()) {
                                    }
                                    ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                                    EffectsKt.DisposableEffect(textFieldSelectionManager4, (Function1<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue19, composerStartRestartGroup, 0);
                                    ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213403624, "CC(remember):CoreTextField.kt#9igjgp");
                                    zChangedInstance8 = composerStartRestartGroup.changedInstance(legacyTextFieldState9) | composerStartRestartGroup.changedInstance(textInputService3) | ((i39 & 14) == 4) | ((((i19 & 112) ^ 48) > 32 && composerStartRestartGroup.changed(imeOptions9)) || (i19 & 48) == 32);
                                    Object objRememberedValue20 = composerStartRestartGroup.rememberedValue();
                                    if (zChangedInstance8) {
                                        modifier5 = modifierCursor;
                                    } else {
                                        modifier5 = modifierCursor;
                                        if (objRememberedValue20 == Composer.INSTANCE.getEmpty()) {
                                        }
                                        ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                                        EffectsKt.DisposableEffect(imeOptions9, (Function1<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue20, composerStartRestartGroup, (i19 >> 3) & 14);
                                        final int i41 = i18;
                                        Modifier modifierM1276textFieldKeyInput2WJ9YEU = TextFieldKeyInputKt.m1276textFieldKeyInput2WJ9YEU(Modifier.INSTANCE, legacyTextFieldState9, textFieldSelectionManager4, textFieldValue, legacyTextFieldState9.getOnValueChange(), !z9, i41 != 1, offsetMapping2, undoManager, imeOptions9.getImeAction());
                                        final boolean z26 = KeyboardType.m7149equalsimpl0(imeOptions9.getKeyboardType(), KeyboardType.INSTANCE.m7168getPasswordPjHm6EE()) && !KeyboardType.m7149equalsimpl0(imeOptions9.getKeyboardType(), KeyboardType.INSTANCE.m7167getNumberPasswordPjHm6EE());
                                        Modifier.Companion companion5 = Modifier.INSTANCE;
                                        boolean zCoreTextField$lambda$14 = CoreTextField$lambda$14(state);
                                        ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213365476, "CC(remember):CoreTextField.kt#9igjgp");
                                        zChanged2 = composerStartRestartGroup.changed(z26) | composerStartRestartGroup.changedInstance(legacyPlatformTextInputServiceAdapter);
                                        Object objRememberedValue21 = composerStartRestartGroup.rememberedValue();
                                        if (zChanged2) {
                                            textInputService4 = textInputService3;
                                            if (objRememberedValue21 == Composer.INSTANCE.getEmpty()) {
                                            }
                                            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                                            Modifier modifierStylusHandwriting = StylusHandwritingKt.stylusHandwriting(companion5, zCoreTextField$lambda$14, z26, (Function0) objRememberedValue21);
                                            ProvidableCompositionLocal<Brush> localAutofillHighlightBrush = AutofillHighlightKt.getLocalAutofillHighlightBrush();
                                            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
                                            Object objConsume10 = composerStartRestartGroup.consume(localAutofillHighlightBrush);
                                            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                                            ProvidableCompositionLocal<Color> localAutofillHighlightColor = AutofillHighlightKt.getLocalAutofillHighlightColor();
                                            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
                                            Object objConsume11 = composerStartRestartGroup.consume(localAutofillHighlightColor);
                                            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                                            final OffsetMapping offsetMapping5 = offsetMapping2;
                                            final Brush brushM1132resolveAutofillHighlightWkMShQ = AutofillHighlightKt.m1132resolveAutofillHighlightWkMShQ((Brush) objConsume10, ((Color) objConsume11).m4707unboximpl(), AutofillHighlight_androidKt.autofillHighlightColor());
                                            Modifier.Companion companion6 = Modifier.INSTANCE;
                                            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213324568, "CC(remember):CoreTextField.kt#9igjgp");
                                            zChangedInstance9 = composerStartRestartGroup.changedInstance(legacyTextFieldState9) | composerStartRestartGroup.changed(brushM1132resolveAutofillHighlightWkMShQ);
                                            objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                                            if (zChangedInstance9 || objRememberedValue6 == Composer.INSTANCE.getEmpty()) {
                                                Function1 function19 = new Function1() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda7
                                                    @Override // kotlin.jvm.functions.Function1
                                                    public final Object invoke(Object obj4) {
                                                        return CoreTextFieldKt.CoreTextField$lambda$24$0(legacyTextFieldState9, brushM1132resolveAutofillHighlightWkMShQ, (ContentDrawScope) obj4);
                                                    }
                                                };
                                                composerStartRestartGroup.updateRememberedValue(function19);
                                                objRememberedValue6 = function19;
                                            }
                                            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                                            Modifier modifierDrawWithContent = DrawModifierKt.drawWithContent(companion6, (Function1) objRememberedValue6);
                                            final TextFieldScrollerPosition textFieldScrollerPosition7 = textFieldScrollerPosition5;
                                            Modifier modifierAddContextMenuComponents = addContextMenuComponents(OnGloballyPositionedModifierKt.onGloballyPositioned(TextFieldScrollKt.textFieldScrollable(previewKeyEventToDeselectOnBack(TextFieldFocusModifier_androidKt.interceptDPadAndMoveFocus(LegacyAdaptingPlatformTextInputModifierNodeKt.legacyTextInputAdapter(modifier7.then(modifierDrawWithContent), legacyPlatformTextInputServiceAdapter, legacyTextFieldState9, textFieldSelectionManager4).then(modifierStylusHandwriting).then(modifierTextFieldFocusModifier), legacyTextFieldState9, focusManager), legacyTextFieldState9, textFieldSelectionManager4).then(modifierM1276textFieldKeyInput2WJ9YEU), textFieldScrollerPosition7, mutableInteractionSource6, z25, TextFieldScroll_androidKt.rememberTextFieldOverscrollEffect(composerStartRestartGroup, 0)).then(modifierPointerHoverIcon$default).then(coreTextFieldSemanticsModifier), new Function1() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda8
                                                @Override // kotlin.jvm.functions.Function1
                                                public final Object invoke(Object obj4) {
                                                    return CoreTextFieldKt.CoreTextField$lambda$25(legacyTextFieldState9, (LayoutCoordinates) obj4);
                                                }
                                            }), textFieldSelectionManager4, coroutineScope);
                                            z16 = z25 && legacyTextFieldState9.getHasFocus() && legacyTextFieldState9.isInTouchMode() && windowInfo2.isWindowFocused();
                                            if (z16) {
                                                modifier6 = modifierAddContextMenuComponents;
                                                companionTextFieldMagnifier = Modifier.INSTANCE;
                                            } else {
                                                modifier6 = modifierAddContextMenuComponents;
                                                companionTextFieldMagnifier = TextFieldSelectionManager_androidKt.textFieldMagnifier(Modifier.INSTANCE, textFieldSelectionManager4);
                                            }
                                            final Modifier modifier8 = companionTextFieldMagnifier;
                                            final boolean z27 = z16;
                                            final Density density3 = density;
                                            final TextStyle textStyle6 = textStyle4;
                                            final Modifier modifier9 = modifier5;
                                            final VisualTransformation visualTransformation6 = visualTransformation5;
                                            final Function3<? super Function2<? super Composer, ? super Integer, Unit>, ? super Composer, ? super Integer, Unit> function33 = lambda$559628295$foundation;
                                            final BringIntoViewRequester bringIntoViewRequester3 = bringIntoViewRequester;
                                            Function2 function2 = new Function2() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda9
                                                @Override // kotlin.jvm.functions.Function2
                                                public final Object invoke(Object obj4, Object obj5) {
                                                    return CoreTextFieldKt.CoreTextField$lambda$26(function33, legacyTextFieldState9, textStyle6, i40, i41, textFieldScrollerPosition7, textFieldValue, visualTransformation6, modifier9, modifierDrawBehind, modifierOnGloballyPositioned, modifier8, bringIntoViewRequester3, textFieldSelectionManager4, z27, z9, function15, offsetMapping5, density3, (Composer) obj4, ((Integer) obj5).intValue());
                                                }
                                            };
                                            Composer composer3 = composerStartRestartGroup;
                                            CoreTextFieldRootBox(modifier6, textFieldSelectionManager4, ComposableLambdaKt.rememberComposableLambda(-814563849, true, function2, composer3, 54), composer3, RendererCapabilities.DECODER_SUPPORT_MASK);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                            }
                                            i12 = i41;
                                            i13 = i40;
                                            visualTransformation3 = visualTransformation6;
                                            textStyle3 = textStyle6;
                                            z6 = z9;
                                            function14 = function15;
                                            textFieldScrollerPosition2 = textFieldScrollerPosition3;
                                            z4 = z25;
                                            modifier3 = modifier7;
                                            keyboardActions2 = keyboardActions4;
                                            imeOptions2 = imeOptions9;
                                            brush3 = brush7;
                                            z5 = z11;
                                            mutableInteractionSource3 = mutableInteractionSource6;
                                            function32 = function33;
                                            composer2 = composer3;
                                        } else {
                                            textInputService4 = textInputService3;
                                        }
                                        objRememberedValue21 = new Function0() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda6
                                            @Override // kotlin.jvm.functions.Function0
                                            public final Object invoke() {
                                                return CoreTextFieldKt.CoreTextField$lambda$23$0(z26, legacyPlatformTextInputServiceAdapter);
                                            }
                                        };
                                        composerStartRestartGroup.updateRememberedValue(objRememberedValue21);
                                        ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                                        Modifier modifierStylusHandwriting2 = StylusHandwritingKt.stylusHandwriting(companion5, zCoreTextField$lambda$14, z26, (Function0) objRememberedValue21);
                                        ProvidableCompositionLocal<Brush> localAutofillHighlightBrush2 = AutofillHighlightKt.getLocalAutofillHighlightBrush();
                                        ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
                                        Object objConsume102 = composerStartRestartGroup.consume(localAutofillHighlightBrush2);
                                        ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                                        ProvidableCompositionLocal<Color> localAutofillHighlightColor2 = AutofillHighlightKt.getLocalAutofillHighlightColor();
                                        ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
                                        Object objConsume112 = composerStartRestartGroup.consume(localAutofillHighlightColor2);
                                        ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                                        final OffsetMapping offsetMapping52 = offsetMapping2;
                                        final Brush brushM1132resolveAutofillHighlightWkMShQ2 = AutofillHighlightKt.m1132resolveAutofillHighlightWkMShQ((Brush) objConsume102, ((Color) objConsume112).m4707unboximpl(), AutofillHighlight_androidKt.autofillHighlightColor());
                                        Modifier.Companion companion62 = Modifier.INSTANCE;
                                        ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213324568, "CC(remember):CoreTextField.kt#9igjgp");
                                        zChangedInstance9 = composerStartRestartGroup.changedInstance(legacyTextFieldState9) | composerStartRestartGroup.changed(brushM1132resolveAutofillHighlightWkMShQ2);
                                        objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                                        if (zChangedInstance9) {
                                        }
                                        Function1 function192 = new Function1() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda7
                                            @Override // kotlin.jvm.functions.Function1
                                            public final Object invoke(Object obj4) {
                                                return CoreTextFieldKt.CoreTextField$lambda$24$0(legacyTextFieldState9, brushM1132resolveAutofillHighlightWkMShQ2, (ContentDrawScope) obj4);
                                            }
                                        };
                                        composerStartRestartGroup.updateRememberedValue(function192);
                                        objRememberedValue6 = function192;
                                        ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                                        Modifier modifierDrawWithContent2 = DrawModifierKt.drawWithContent(companion62, (Function1) objRememberedValue6);
                                        final TextFieldScrollerPosition textFieldScrollerPosition72 = textFieldScrollerPosition5;
                                        Modifier modifierAddContextMenuComponents2 = addContextMenuComponents(OnGloballyPositionedModifierKt.onGloballyPositioned(TextFieldScrollKt.textFieldScrollable(previewKeyEventToDeselectOnBack(TextFieldFocusModifier_androidKt.interceptDPadAndMoveFocus(LegacyAdaptingPlatformTextInputModifierNodeKt.legacyTextInputAdapter(modifier7.then(modifierDrawWithContent2), legacyPlatformTextInputServiceAdapter, legacyTextFieldState9, textFieldSelectionManager4).then(modifierStylusHandwriting2).then(modifierTextFieldFocusModifier), legacyTextFieldState9, focusManager), legacyTextFieldState9, textFieldSelectionManager4).then(modifierM1276textFieldKeyInput2WJ9YEU), textFieldScrollerPosition72, mutableInteractionSource6, z25, TextFieldScroll_androidKt.rememberTextFieldOverscrollEffect(composerStartRestartGroup, 0)).then(modifierPointerHoverIcon$default).then(coreTextFieldSemanticsModifier), new Function1() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda8
                                            @Override // kotlin.jvm.functions.Function1
                                            public final Object invoke(Object obj4) {
                                                return CoreTextFieldKt.CoreTextField$lambda$25(legacyTextFieldState9, (LayoutCoordinates) obj4);
                                            }
                                        }), textFieldSelectionManager4, coroutineScope);
                                        if (z25) {
                                            if (z16) {
                                            }
                                            final Modifier modifier82 = companionTextFieldMagnifier;
                                            final boolean z272 = z16;
                                            final Density density32 = density;
                                            final TextStyle textStyle62 = textStyle4;
                                            final Modifier modifier92 = modifier5;
                                            final VisualTransformation visualTransformation62 = visualTransformation5;
                                            final Function3 function332 = lambda$559628295$foundation;
                                            final BringIntoViewRequester bringIntoViewRequester32 = bringIntoViewRequester;
                                            Function2 function22 = new Function2() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda9
                                                @Override // kotlin.jvm.functions.Function2
                                                public final Object invoke(Object obj4, Object obj5) {
                                                    return CoreTextFieldKt.CoreTextField$lambda$26(function332, legacyTextFieldState9, textStyle62, i40, i41, textFieldScrollerPosition72, textFieldValue, visualTransformation62, modifier92, modifierDrawBehind, modifierOnGloballyPositioned, modifier82, bringIntoViewRequester32, textFieldSelectionManager4, z272, z9, function15, offsetMapping52, density32, (Composer) obj4, ((Integer) obj5).intValue());
                                                }
                                            };
                                            Composer composer32 = composerStartRestartGroup;
                                            CoreTextFieldRootBox(modifier6, textFieldSelectionManager4, ComposableLambdaKt.rememberComposableLambda(-814563849, true, function22, composer32, 54), composer32, RendererCapabilities.DECODER_SUPPORT_MASK);
                                            if (ComposerKt.isTraceInProgress()) {
                                            }
                                            i12 = i41;
                                            i13 = i40;
                                            visualTransformation3 = visualTransformation62;
                                            textStyle3 = textStyle62;
                                            z6 = z9;
                                            function14 = function15;
                                            textFieldScrollerPosition2 = textFieldScrollerPosition3;
                                            z4 = z25;
                                            modifier3 = modifier7;
                                            keyboardActions2 = keyboardActions4;
                                            imeOptions2 = imeOptions9;
                                            brush3 = brush7;
                                            z5 = z11;
                                            mutableInteractionSource3 = mutableInteractionSource6;
                                            function32 = function332;
                                            composer2 = composer32;
                                        }
                                    }
                                    objRememberedValue20 = new Function1() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda5
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj4) {
                                            return CoreTextFieldKt.CoreTextField$lambda$22$0(legacyTextFieldState9, textInputService3, textFieldValue, imeOptions9, (DisposableEffectScope) obj4);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue20);
                                    ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                                    EffectsKt.DisposableEffect(imeOptions9, (Function1<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue20, composerStartRestartGroup, (i19 >> 3) & 14);
                                    final int i412 = i18;
                                    Modifier modifierM1276textFieldKeyInput2WJ9YEU2 = TextFieldKeyInputKt.m1276textFieldKeyInput2WJ9YEU(Modifier.INSTANCE, legacyTextFieldState9, textFieldSelectionManager4, textFieldValue, legacyTextFieldState9.getOnValueChange(), !z9, i412 != 1, offsetMapping2, undoManager, imeOptions9.getImeAction());
                                    if (KeyboardType.m7149equalsimpl0(imeOptions9.getKeyboardType(), KeyboardType.INSTANCE.m7168getPasswordPjHm6EE())) {
                                        Modifier.Companion companion52 = Modifier.INSTANCE;
                                        boolean zCoreTextField$lambda$142 = CoreTextField$lambda$14(state);
                                        ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213365476, "CC(remember):CoreTextField.kt#9igjgp");
                                        zChanged2 = composerStartRestartGroup.changed(z26) | composerStartRestartGroup.changedInstance(legacyPlatformTextInputServiceAdapter);
                                        Object objRememberedValue212 = composerStartRestartGroup.rememberedValue();
                                        if (zChanged2) {
                                        }
                                        objRememberedValue212 = new Function0() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda6
                                            @Override // kotlin.jvm.functions.Function0
                                            public final Object invoke() {
                                                return CoreTextFieldKt.CoreTextField$lambda$23$0(z26, legacyPlatformTextInputServiceAdapter);
                                            }
                                        };
                                        composerStartRestartGroup.updateRememberedValue(objRememberedValue212);
                                        ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                                        Modifier modifierStylusHandwriting22 = StylusHandwritingKt.stylusHandwriting(companion52, zCoreTextField$lambda$142, z26, (Function0) objRememberedValue212);
                                        ProvidableCompositionLocal<Brush> localAutofillHighlightBrush22 = AutofillHighlightKt.getLocalAutofillHighlightBrush();
                                        ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
                                        Object objConsume1022 = composerStartRestartGroup.consume(localAutofillHighlightBrush22);
                                        ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                                        ProvidableCompositionLocal<Color> localAutofillHighlightColor22 = AutofillHighlightKt.getLocalAutofillHighlightColor();
                                        ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
                                        Object objConsume1122 = composerStartRestartGroup.consume(localAutofillHighlightColor22);
                                        ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                                        final OffsetMapping offsetMapping522 = offsetMapping2;
                                        final Brush brushM1132resolveAutofillHighlightWkMShQ22 = AutofillHighlightKt.m1132resolveAutofillHighlightWkMShQ((Brush) objConsume1022, ((Color) objConsume1122).m4707unboximpl(), AutofillHighlight_androidKt.autofillHighlightColor());
                                        Modifier.Companion companion622 = Modifier.INSTANCE;
                                        ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213324568, "CC(remember):CoreTextField.kt#9igjgp");
                                        zChangedInstance9 = composerStartRestartGroup.changedInstance(legacyTextFieldState9) | composerStartRestartGroup.changed(brushM1132resolveAutofillHighlightWkMShQ22);
                                        objRememberedValue6 = composerStartRestartGroup.rememberedValue();
                                        if (zChangedInstance9) {
                                        }
                                        Function1 function1922 = new Function1() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda7
                                            @Override // kotlin.jvm.functions.Function1
                                            public final Object invoke(Object obj4) {
                                                return CoreTextFieldKt.CoreTextField$lambda$24$0(legacyTextFieldState9, brushM1132resolveAutofillHighlightWkMShQ22, (ContentDrawScope) obj4);
                                            }
                                        };
                                        composerStartRestartGroup.updateRememberedValue(function1922);
                                        objRememberedValue6 = function1922;
                                        ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                                        Modifier modifierDrawWithContent22 = DrawModifierKt.drawWithContent(companion622, (Function1) objRememberedValue6);
                                        final TextFieldScrollerPosition textFieldScrollerPosition722 = textFieldScrollerPosition5;
                                        Modifier modifierAddContextMenuComponents22 = addContextMenuComponents(OnGloballyPositionedModifierKt.onGloballyPositioned(TextFieldScrollKt.textFieldScrollable(previewKeyEventToDeselectOnBack(TextFieldFocusModifier_androidKt.interceptDPadAndMoveFocus(LegacyAdaptingPlatformTextInputModifierNodeKt.legacyTextInputAdapter(modifier7.then(modifierDrawWithContent22), legacyPlatformTextInputServiceAdapter, legacyTextFieldState9, textFieldSelectionManager4).then(modifierStylusHandwriting22).then(modifierTextFieldFocusModifier), legacyTextFieldState9, focusManager), legacyTextFieldState9, textFieldSelectionManager4).then(modifierM1276textFieldKeyInput2WJ9YEU2), textFieldScrollerPosition722, mutableInteractionSource6, z25, TextFieldScroll_androidKt.rememberTextFieldOverscrollEffect(composerStartRestartGroup, 0)).then(modifierPointerHoverIcon$default).then(coreTextFieldSemanticsModifier), new Function1() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda8
                                            @Override // kotlin.jvm.functions.Function1
                                            public final Object invoke(Object obj4) {
                                                return CoreTextFieldKt.CoreTextField$lambda$25(legacyTextFieldState9, (LayoutCoordinates) obj4);
                                            }
                                        }), textFieldSelectionManager4, coroutineScope);
                                        if (z25) {
                                        }
                                    }
                                } else {
                                    visualTransformation5 = visualTransformation2;
                                }
                                objRememberedValue19 = new Function1() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda4
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj4) {
                                        return CoreTextFieldKt.CoreTextField$lambda$21$0(textFieldSelectionManager4, (DisposableEffectScope) obj4);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue19);
                                ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                                EffectsKt.DisposableEffect(textFieldSelectionManager4, (Function1<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue19, composerStartRestartGroup, 0);
                                ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213403624, "CC(remember):CoreTextField.kt#9igjgp");
                                if (((i19 & 112) ^ 48) > 32) {
                                    zChangedInstance8 = composerStartRestartGroup.changedInstance(legacyTextFieldState9) | composerStartRestartGroup.changedInstance(textInputService3) | ((i39 & 14) == 4) | ((((i19 & 112) ^ 48) > 32 && composerStartRestartGroup.changed(imeOptions9)) || (i19 & 48) == 32);
                                    Object objRememberedValue202 = composerStartRestartGroup.rememberedValue();
                                    if (zChangedInstance8) {
                                    }
                                    objRememberedValue202 = new Function1() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda5
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj4) {
                                            return CoreTextFieldKt.CoreTextField$lambda$22$0(legacyTextFieldState9, textInputService3, textFieldValue, imeOptions9, (DisposableEffectScope) obj4);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue202);
                                    ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                                    EffectsKt.DisposableEffect(imeOptions9, (Function1<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue202, composerStartRestartGroup, (i19 >> 3) & 14);
                                    final int i4122 = i18;
                                    Modifier modifierM1276textFieldKeyInput2WJ9YEU22 = TextFieldKeyInputKt.m1276textFieldKeyInput2WJ9YEU(Modifier.INSTANCE, legacyTextFieldState9, textFieldSelectionManager4, textFieldValue, legacyTextFieldState9.getOnValueChange(), !z9, i4122 != 1, offsetMapping2, undoManager, imeOptions9.getImeAction());
                                    if (KeyboardType.m7149equalsimpl0(imeOptions9.getKeyboardType(), KeyboardType.INSTANCE.m7168getPasswordPjHm6EE())) {
                                    }
                                } else {
                                    zChangedInstance8 = composerStartRestartGroup.changedInstance(legacyTextFieldState9) | composerStartRestartGroup.changedInstance(textInputService3) | ((i39 & 14) == 4) | ((((i19 & 112) ^ 48) > 32 && composerStartRestartGroup.changed(imeOptions9)) || (i19 & 48) == 32);
                                    Object objRememberedValue2022 = composerStartRestartGroup.rememberedValue();
                                    if (zChangedInstance8) {
                                    }
                                    objRememberedValue2022 = new Function1() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda5
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj4) {
                                            return CoreTextFieldKt.CoreTextField$lambda$22$0(legacyTextFieldState9, textInputService3, textFieldValue, imeOptions9, (DisposableEffectScope) obj4);
                                        }
                                    };
                                    composerStartRestartGroup.updateRememberedValue(objRememberedValue2022);
                                    ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                                    EffectsKt.DisposableEffect(imeOptions9, (Function1<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue2022, composerStartRestartGroup, (i19 >> 3) & 14);
                                    final int i41222 = i18;
                                    Modifier modifierM1276textFieldKeyInput2WJ9YEU222 = TextFieldKeyInputKt.m1276textFieldKeyInput2WJ9YEU(Modifier.INSTANCE, legacyTextFieldState9, textFieldSelectionManager4, textFieldValue, legacyTextFieldState9.getOnValueChange(), !z9, i41222 != 1, offsetMapping2, undoManager, imeOptions9.getImeAction());
                                    if (KeyboardType.m7149equalsimpl0(imeOptions9.getKeyboardType(), KeyboardType.INSTANCE.m7168getPasswordPjHm6EE())) {
                                    }
                                }
                            }
                            final TextFieldValue textFieldValue3 = textFieldValue2;
                            final OffsetMapping offsetMapping6 = offsetMapping2;
                            Function1 function110 = new Function1() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda19
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj4) {
                                    return CoreTextFieldKt.CoreTextField$lambda$20$0(legacyTextFieldState8, z24, windowInfo4, textFieldSelectionManager4, textFieldValue3, offsetMapping6, (LayoutCoordinates) obj4);
                                }
                            };
                            legacyTextFieldState4 = legacyTextFieldState8;
                            z15 = z24;
                            windowInfo2 = windowInfo4;
                            composerStartRestartGroup.updateRememberedValue(function110);
                            objRememberedValue18 = function110;
                            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                            final Modifier modifierOnGloballyPositioned2 = OnGloballyPositionedModifierKt.onGloballyPositioned(companion4, (Function1) objRememberedValue18);
                            final LegacyTextFieldState legacyTextFieldState92 = legacyTextFieldState4;
                            boolean z252 = z15;
                            CoreTextFieldSemanticsModifier coreTextFieldSemanticsModifier2 = new CoreTextFieldSemanticsModifier(transformedText2, textFieldValue, legacyTextFieldState92, z9, z252, visualTransformation2 instanceof PasswordVisualTransformation, offsetMapping2, textFieldSelectionManager4, imeOptions7, focusRequester3);
                            final ImeOptions imeOptions92 = imeOptions7;
                            if (z252) {
                                Brush brush72 = brush4;
                                Modifier modifierCursor2 = TextFieldCursorKt.cursor(Modifier.INSTANCE, legacyTextFieldState92, textFieldValue, offsetMapping2, brush72, (z252 || z9 || !windowInfo2.isWindowFocused() || legacyTextFieldState92.hasHighlight()) ? false : true);
                                ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213406735, "CC(remember):CoreTextField.kt#9igjgp");
                                zChangedInstance7 = composerStartRestartGroup.changedInstance(textFieldSelectionManager4);
                                Object objRememberedValue192 = composerStartRestartGroup.rememberedValue();
                                if (zChangedInstance7) {
                                }
                                objRememberedValue192 = new Function1() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda4
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj4) {
                                        return CoreTextFieldKt.CoreTextField$lambda$21$0(textFieldSelectionManager4, (DisposableEffectScope) obj4);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue192);
                                ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                                EffectsKt.DisposableEffect(textFieldSelectionManager4, (Function1<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue192, composerStartRestartGroup, 0);
                                ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213403624, "CC(remember):CoreTextField.kt#9igjgp");
                            }
                        } else {
                            mutableInteractionSource6 = mutableInteractionSource8;
                        }
                        pointerInputEventHandlerRememberedValue = new PointerInputEventHandler() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$CoreTextField$pointerModifier$3$1
                            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                            public final Object invoke(PointerInputScope $this$pointerInput, Continuation<? super Unit> continuation) {
                                Object objAwaitSelectionGestures = SelectionGesturesKt.awaitSelectionGestures($this$pointerInput, textFieldSelectionManager4.getMouseSelectionObserver(), textFieldSelectionManager4.getTouchSelectionObserver(), continuation);
                                return objAwaitSelectionGestures == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objAwaitSelectionGestures : Unit.INSTANCE;
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(pointerInputEventHandlerRememberedValue);
                        ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                        Modifier modifierPointerHoverIcon$default2 = PointerIconKt.pointerHoverIcon$default(SuspendingPointerInputFilterKt.pointerInput(modifierTapPressTextFieldModifier, mouseSelectionObserver, touchSelectionObserver, (PointerInputEventHandler) pointerInputEventHandlerRememberedValue), PointerIcon.INSTANCE.getText(), false, 2, null);
                        Modifier.Companion companion32 = Modifier.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213497918, "CC(remember):CoreTextField.kt#9igjgp");
                        zChangedInstance5 = composerStartRestartGroup.changedInstance(legacyTextFieldState3) | ((i39 & 14) == 4) | composerStartRestartGroup.changedInstance(offsetMapping2);
                        objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                        if (zChangedInstance5) {
                        }
                        objRememberedValue5 = new Function1() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda18
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj4) {
                                return CoreTextFieldKt.CoreTextField$lambda$19$0(legacyTextFieldState3, textFieldValue2, offsetMapping2, (DrawScope) obj4);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                        final Modifier modifierDrawBehind2 = DrawModifierKt.drawBehind(companion32, (Function1) objRememberedValue5);
                        Modifier.Companion companion42 = Modifier.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213476153, "CC(remember):CoreTextField.kt#9igjgp");
                        final LegacyTextFieldState legacyTextFieldState82 = legacyTextFieldState3;
                        final WindowInfo windowInfo42 = windowInfo;
                        zChangedInstance6 = ((i16 & 7168) == 2048) | composerStartRestartGroup.changedInstance(legacyTextFieldState3) | composerStartRestartGroup.changed(windowInfo42) | composerStartRestartGroup.changedInstance(textFieldSelectionManager4) | ((i39 & 14) == 4) | composerStartRestartGroup.changedInstance(offsetMapping2);
                        Object objRememberedValue182 = composerStartRestartGroup.rememberedValue();
                        if (zChangedInstance6) {
                        }
                        final TextFieldValue textFieldValue32 = textFieldValue2;
                        final OffsetMapping offsetMapping62 = offsetMapping2;
                        Function1 function1102 = new Function1() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda19
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj4) {
                                return CoreTextFieldKt.CoreTextField$lambda$20$0(legacyTextFieldState82, z24, windowInfo42, textFieldSelectionManager4, textFieldValue32, offsetMapping62, (LayoutCoordinates) obj4);
                            }
                        };
                        legacyTextFieldState4 = legacyTextFieldState82;
                        z15 = z24;
                        windowInfo2 = windowInfo42;
                        composerStartRestartGroup.updateRememberedValue(function1102);
                        objRememberedValue182 = function1102;
                        ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                        final Modifier modifierOnGloballyPositioned22 = OnGloballyPositionedModifierKt.onGloballyPositioned(companion42, (Function1) objRememberedValue182);
                        final LegacyTextFieldState legacyTextFieldState922 = legacyTextFieldState4;
                        boolean z2522 = z15;
                        CoreTextFieldSemanticsModifier coreTextFieldSemanticsModifier22 = new CoreTextFieldSemanticsModifier(transformedText2, textFieldValue, legacyTextFieldState922, z9, z2522, visualTransformation2 instanceof PasswordVisualTransformation, offsetMapping2, textFieldSelectionManager4, imeOptions7, focusRequester3);
                        final ImeOptions imeOptions922 = imeOptions7;
                    }
                    objRememberedValue16 = new Function1() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda16
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj4) {
                            return CoreTextFieldKt.CoreTextField$lambda$16$0(legacyTextFieldState2, ((Boolean) obj4).booleanValue());
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue16);
                    ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                    Modifier modifierUpdateSelectionTouchMode2 = SelectionGesturesKt.updateSelectionTouchMode(companion2, (Function1) objRememberedValue16);
                    ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213541055, "CC(remember):CoreTextField.kt#9igjgp");
                    zChangedInstance3 = composerStartRestartGroup.changedInstance(legacyTextFieldState2) | ((57344 & i16) != 16384) | ((i16 & 7168) != 2048) | composerStartRestartGroup.changedInstance(offsetMapping) | composerStartRestartGroup.changedInstance(textFieldSelectionManager3);
                    textFieldSelectionManager4 = textFieldSelectionManager3;
                    Object objRememberedValue172 = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance3) {
                    }
                    final OffsetMapping offsetMapping42 = offsetMapping;
                    final LegacyTextFieldState legacyTextFieldState72 = legacyTextFieldState2;
                    final boolean z232 = z9;
                    Function1 function182 = new Function1() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda17
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj4) {
                            return CoreTextFieldKt.CoreTextField$lambda$17$0(legacyTextFieldState72, focusRequester3, z232, z22, textFieldSelectionManager4, offsetMapping42, (Offset) obj4);
                        }
                    };
                    z14 = z22;
                    offsetMapping2 = offsetMapping42;
                    legacyTextFieldState3 = legacyTextFieldState72;
                    focusRequester3 = focusRequester3;
                    obj3 = function182;
                    composerStartRestartGroup.updateRememberedValue(obj3);
                    ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                    Modifier modifierTapPressTextFieldModifier2 = TextFieldPressGestureFilterKt.tapPressTextFieldModifier(modifierUpdateSelectionTouchMode2, mutableInteractionSource8, z14, (Function1) obj3);
                    MouseSelectionObserver mouseSelectionObserver2 = textFieldSelectionManager4.getMouseSelectionObserver();
                    TextDragObserver touchSelectionObserver2 = textFieldSelectionManager4.getTouchSelectionObserver();
                    ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213507214, "CC(remember):CoreTextField.kt#9igjgp");
                    zChangedInstance4 = composerStartRestartGroup.changedInstance(textFieldSelectionManager4);
                    final boolean z242 = z14;
                    PointerInputEventHandler pointerInputEventHandlerRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance4) {
                    }
                    pointerInputEventHandlerRememberedValue2 = new PointerInputEventHandler() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$CoreTextField$pointerModifier$3$1
                        @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                        public final Object invoke(PointerInputScope $this$pointerInput, Continuation<? super Unit> continuation) {
                            Object objAwaitSelectionGestures = SelectionGesturesKt.awaitSelectionGestures($this$pointerInput, textFieldSelectionManager4.getMouseSelectionObserver(), textFieldSelectionManager4.getTouchSelectionObserver(), continuation);
                            return objAwaitSelectionGestures == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objAwaitSelectionGestures : Unit.INSTANCE;
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(pointerInputEventHandlerRememberedValue2);
                    ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                    Modifier modifierPointerHoverIcon$default22 = PointerIconKt.pointerHoverIcon$default(SuspendingPointerInputFilterKt.pointerInput(modifierTapPressTextFieldModifier2, mouseSelectionObserver2, touchSelectionObserver2, (PointerInputEventHandler) pointerInputEventHandlerRememberedValue2), PointerIcon.INSTANCE.getText(), false, 2, null);
                    Modifier.Companion companion322 = Modifier.INSTANCE;
                    ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213497918, "CC(remember):CoreTextField.kt#9igjgp");
                    zChangedInstance5 = composerStartRestartGroup.changedInstance(legacyTextFieldState3) | ((i39 & 14) == 4) | composerStartRestartGroup.changedInstance(offsetMapping2);
                    objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance5) {
                    }
                    objRememberedValue5 = new Function1() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda18
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj4) {
                            return CoreTextFieldKt.CoreTextField$lambda$19$0(legacyTextFieldState3, textFieldValue2, offsetMapping2, (DrawScope) obj4);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                    ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                    final Modifier modifierDrawBehind22 = DrawModifierKt.drawBehind(companion322, (Function1) objRememberedValue5);
                    Modifier.Companion companion422 = Modifier.INSTANCE;
                    ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213476153, "CC(remember):CoreTextField.kt#9igjgp");
                    final LegacyTextFieldState legacyTextFieldState822 = legacyTextFieldState3;
                    final WindowInfo windowInfo422 = windowInfo;
                    zChangedInstance6 = ((i16 & 7168) == 2048) | composerStartRestartGroup.changedInstance(legacyTextFieldState3) | composerStartRestartGroup.changed(windowInfo422) | composerStartRestartGroup.changedInstance(textFieldSelectionManager4) | ((i39 & 14) == 4) | composerStartRestartGroup.changedInstance(offsetMapping2);
                    Object objRememberedValue1822 = composerStartRestartGroup.rememberedValue();
                    if (zChangedInstance6) {
                    }
                    final TextFieldValue textFieldValue322 = textFieldValue2;
                    final OffsetMapping offsetMapping622 = offsetMapping2;
                    Function1 function11022 = new Function1() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda19
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj4) {
                            return CoreTextFieldKt.CoreTextField$lambda$20$0(legacyTextFieldState822, z242, windowInfo422, textFieldSelectionManager4, textFieldValue322, offsetMapping622, (LayoutCoordinates) obj4);
                        }
                    };
                    legacyTextFieldState4 = legacyTextFieldState822;
                    z15 = z242;
                    windowInfo2 = windowInfo422;
                    composerStartRestartGroup.updateRememberedValue(function11022);
                    objRememberedValue1822 = function11022;
                    ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                    final Modifier modifierOnGloballyPositioned222 = OnGloballyPositionedModifierKt.onGloballyPositioned(companion422, (Function1) objRememberedValue1822);
                    final LegacyTextFieldState legacyTextFieldState9222 = legacyTextFieldState4;
                    boolean z25222 = z15;
                    CoreTextFieldSemanticsModifier coreTextFieldSemanticsModifier222 = new CoreTextFieldSemanticsModifier(transformedText2, textFieldValue, legacyTextFieldState9222, z9, z25222, visualTransformation2 instanceof PasswordVisualTransformation, offsetMapping2, textFieldSelectionManager4, imeOptions7, focusRequester3);
                    final ImeOptions imeOptions9222 = imeOptions7;
                } else {
                    imeOptions6 = imeOptions5;
                }
                z12 = zChangedInstance10;
                boolean z28 = (i16 & 48) != 32;
                zChangedInstance = z12 | z28 | composerStartRestartGroup.changedInstance(offsetMapping3) | composerStartRestartGroup.changedInstance(coroutineScope2) | composerStartRestartGroup.changedInstance(bringIntoViewRequester2) | composerStartRestartGroup.changedInstance(textFieldSelectionManager5);
                Object objRememberedValue142 = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance) {
                }
                final ImeOptions imeOptions82 = imeOptions6;
                final boolean z202 = z8;
                final boolean z212 = z9;
                Function1 function172 = new Function1() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda15
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj4) {
                        return CoreTextFieldKt.CoreTextField$lambda$13$0(legacyTextFieldState5, z202, z212, textInputService5, textFieldValue, imeOptions82, offsetMapping3, textFieldSelectionManager5, coroutineScope2, bringIntoViewRequester2, (FocusState) obj4);
                    }
                };
                legacyTextFieldState = legacyTextFieldState5;
                z13 = z202;
                textInputService = textInputService5;
                textFieldValue2 = textFieldValue;
                offsetMapping = offsetMapping3;
                textFieldSelectionManager = textFieldSelectionManager5;
                bringIntoViewRequester = bringIntoViewRequester2;
                coroutineScope = coroutineScope2;
                obj2 = function172;
                composerStartRestartGroup.updateRememberedValue(obj2);
                ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                MutableInteractionSource mutableInteractionSource82 = mutableInteractionSource5;
                Modifier modifierTextFieldFocusModifier2 = TextFieldGestureModifiersKt.textFieldFocusModifier(companion, z13, focusRequester2, mutableInteractionSource82, (Function1) obj2);
                if (z13) {
                    final FocusRequester focusRequester32 = focusRequester2;
                    stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Boolean.valueOf(z13 && !z9), composerStartRestartGroup, 0);
                    Unit unit2 = Unit.INSTANCE;
                    final boolean z222 = z13;
                    ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213577460, "CC(remember):CoreTextField.kt#9igjgp");
                    textFieldSelectionManager2 = textFieldSelectionManager;
                    textInputService2 = textInputService;
                    if (((i16 & 112) ^ 48) <= 32) {
                        zChanged = ((((i16 & 112) ^ 48) <= 32 && composerStartRestartGroup.changed(imeOptions6)) || (i16 & 48) == 32) | composerStartRestartGroup.changed(stateRememberUpdatedState) | composerStartRestartGroup.changedInstance(legacyTextFieldState) | composerStartRestartGroup.changedInstance(textInputService) | composerStartRestartGroup.changedInstance(textFieldSelectionManager);
                        Object objRememberedValue152 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                        }
                        LegacyTextFieldState legacyTextFieldState62 = legacyTextFieldState;
                        CoreTextFieldKt$CoreTextField$5$1 coreTextFieldKt$CoreTextField$5$122 = new CoreTextFieldKt$CoreTextField$5$1(legacyTextFieldState62, stateRememberUpdatedState, textInputService2, textFieldSelectionManager2, imeOptions6, null);
                        legacyTextFieldState2 = legacyTextFieldState62;
                        state = stateRememberUpdatedState;
                        textInputService3 = textInputService2;
                        textFieldSelectionManager3 = textFieldSelectionManager2;
                        coreTextFieldKt$CoreTextField$5$1 = coreTextFieldKt$CoreTextField$5$122;
                        composerStartRestartGroup.updateRememberedValue(coreTextFieldKt$CoreTextField$5$1);
                        ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                        EffectsKt.LaunchedEffect(unit2, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) coreTextFieldKt$CoreTextField$5$1, composerStartRestartGroup, 6);
                        Modifier.Companion companion22 = Modifier.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213545091, "CC(remember):CoreTextField.kt#9igjgp");
                        zChangedInstance2 = composerStartRestartGroup.changedInstance(legacyTextFieldState2);
                        Object objRememberedValue162 = composerStartRestartGroup.rememberedValue();
                        if (zChangedInstance2) {
                        }
                        objRememberedValue162 = new Function1() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda16
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj4) {
                                return CoreTextFieldKt.CoreTextField$lambda$16$0(legacyTextFieldState2, ((Boolean) obj4).booleanValue());
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue162);
                        ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                        Modifier modifierUpdateSelectionTouchMode22 = SelectionGesturesKt.updateSelectionTouchMode(companion22, (Function1) objRememberedValue162);
                        ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213541055, "CC(remember):CoreTextField.kt#9igjgp");
                        zChangedInstance3 = composerStartRestartGroup.changedInstance(legacyTextFieldState2) | ((57344 & i16) != 16384) | ((i16 & 7168) != 2048) | composerStartRestartGroup.changedInstance(offsetMapping) | composerStartRestartGroup.changedInstance(textFieldSelectionManager3);
                        textFieldSelectionManager4 = textFieldSelectionManager3;
                        Object objRememberedValue1722 = composerStartRestartGroup.rememberedValue();
                        if (zChangedInstance3) {
                        }
                        final OffsetMapping offsetMapping422 = offsetMapping;
                        final LegacyTextFieldState legacyTextFieldState722 = legacyTextFieldState2;
                        final boolean z2322 = z9;
                        Function1 function1822 = new Function1() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda17
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj4) {
                                return CoreTextFieldKt.CoreTextField$lambda$17$0(legacyTextFieldState722, focusRequester32, z2322, z222, textFieldSelectionManager4, offsetMapping422, (Offset) obj4);
                            }
                        };
                        z14 = z222;
                        offsetMapping2 = offsetMapping422;
                        legacyTextFieldState3 = legacyTextFieldState722;
                        focusRequester32 = focusRequester32;
                        obj3 = function1822;
                        composerStartRestartGroup.updateRememberedValue(obj3);
                        ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                        Modifier modifierTapPressTextFieldModifier22 = TextFieldPressGestureFilterKt.tapPressTextFieldModifier(modifierUpdateSelectionTouchMode22, mutableInteractionSource82, z14, (Function1) obj3);
                        MouseSelectionObserver mouseSelectionObserver22 = textFieldSelectionManager4.getMouseSelectionObserver();
                        TextDragObserver touchSelectionObserver22 = textFieldSelectionManager4.getTouchSelectionObserver();
                        ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213507214, "CC(remember):CoreTextField.kt#9igjgp");
                        zChangedInstance4 = composerStartRestartGroup.changedInstance(textFieldSelectionManager4);
                        final boolean z2422 = z14;
                        PointerInputEventHandler pointerInputEventHandlerRememberedValue22 = composerStartRestartGroup.rememberedValue();
                        if (zChangedInstance4) {
                        }
                        pointerInputEventHandlerRememberedValue22 = new PointerInputEventHandler() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$CoreTextField$pointerModifier$3$1
                            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                            public final Object invoke(PointerInputScope $this$pointerInput, Continuation<? super Unit> continuation) {
                                Object objAwaitSelectionGestures = SelectionGesturesKt.awaitSelectionGestures($this$pointerInput, textFieldSelectionManager4.getMouseSelectionObserver(), textFieldSelectionManager4.getTouchSelectionObserver(), continuation);
                                return objAwaitSelectionGestures == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objAwaitSelectionGestures : Unit.INSTANCE;
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(pointerInputEventHandlerRememberedValue22);
                        ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                        Modifier modifierPointerHoverIcon$default222 = PointerIconKt.pointerHoverIcon$default(SuspendingPointerInputFilterKt.pointerInput(modifierTapPressTextFieldModifier22, mouseSelectionObserver22, touchSelectionObserver22, (PointerInputEventHandler) pointerInputEventHandlerRememberedValue22), PointerIcon.INSTANCE.getText(), false, 2, null);
                        Modifier.Companion companion3222 = Modifier.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213497918, "CC(remember):CoreTextField.kt#9igjgp");
                        zChangedInstance5 = composerStartRestartGroup.changedInstance(legacyTextFieldState3) | ((i39 & 14) == 4) | composerStartRestartGroup.changedInstance(offsetMapping2);
                        objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                        if (zChangedInstance5) {
                        }
                        objRememberedValue5 = new Function1() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda18
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj4) {
                                return CoreTextFieldKt.CoreTextField$lambda$19$0(legacyTextFieldState3, textFieldValue2, offsetMapping2, (DrawScope) obj4);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                        final Modifier modifierDrawBehind222 = DrawModifierKt.drawBehind(companion3222, (Function1) objRememberedValue5);
                        Modifier.Companion companion4222 = Modifier.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213476153, "CC(remember):CoreTextField.kt#9igjgp");
                        final LegacyTextFieldState legacyTextFieldState8222 = legacyTextFieldState3;
                        final WindowInfo windowInfo4222 = windowInfo;
                        zChangedInstance6 = ((i16 & 7168) == 2048) | composerStartRestartGroup.changedInstance(legacyTextFieldState3) | composerStartRestartGroup.changed(windowInfo4222) | composerStartRestartGroup.changedInstance(textFieldSelectionManager4) | ((i39 & 14) == 4) | composerStartRestartGroup.changedInstance(offsetMapping2);
                        Object objRememberedValue18222 = composerStartRestartGroup.rememberedValue();
                        if (zChangedInstance6) {
                        }
                        final TextFieldValue textFieldValue3222 = textFieldValue2;
                        final OffsetMapping offsetMapping6222 = offsetMapping2;
                        Function1 function110222 = new Function1() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda19
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj4) {
                                return CoreTextFieldKt.CoreTextField$lambda$20$0(legacyTextFieldState8222, z2422, windowInfo4222, textFieldSelectionManager4, textFieldValue3222, offsetMapping6222, (LayoutCoordinates) obj4);
                            }
                        };
                        legacyTextFieldState4 = legacyTextFieldState8222;
                        z15 = z2422;
                        windowInfo2 = windowInfo4222;
                        composerStartRestartGroup.updateRememberedValue(function110222);
                        objRememberedValue18222 = function110222;
                        ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                        final Modifier modifierOnGloballyPositioned2222 = OnGloballyPositionedModifierKt.onGloballyPositioned(companion4222, (Function1) objRememberedValue18222);
                        final LegacyTextFieldState legacyTextFieldState92222 = legacyTextFieldState4;
                        boolean z252222 = z15;
                        CoreTextFieldSemanticsModifier coreTextFieldSemanticsModifier2222 = new CoreTextFieldSemanticsModifier(transformedText2, textFieldValue, legacyTextFieldState92222, z9, z252222, visualTransformation2 instanceof PasswordVisualTransformation, offsetMapping2, textFieldSelectionManager4, imeOptions7, focusRequester32);
                        final ImeOptions imeOptions92222 = imeOptions7;
                    } else {
                        zChanged = ((((i16 & 112) ^ 48) <= 32 && composerStartRestartGroup.changed(imeOptions6)) || (i16 & 48) == 32) | composerStartRestartGroup.changed(stateRememberUpdatedState) | composerStartRestartGroup.changedInstance(legacyTextFieldState) | composerStartRestartGroup.changedInstance(textInputService) | composerStartRestartGroup.changedInstance(textFieldSelectionManager);
                        Object objRememberedValue1522 = composerStartRestartGroup.rememberedValue();
                        if (zChanged) {
                        }
                        LegacyTextFieldState legacyTextFieldState622 = legacyTextFieldState;
                        CoreTextFieldKt$CoreTextField$5$1 coreTextFieldKt$CoreTextField$5$1222 = new CoreTextFieldKt$CoreTextField$5$1(legacyTextFieldState622, stateRememberUpdatedState, textInputService2, textFieldSelectionManager2, imeOptions6, null);
                        legacyTextFieldState2 = legacyTextFieldState622;
                        state = stateRememberUpdatedState;
                        textInputService3 = textInputService2;
                        textFieldSelectionManager3 = textFieldSelectionManager2;
                        coreTextFieldKt$CoreTextField$5$1 = coreTextFieldKt$CoreTextField$5$1222;
                        composerStartRestartGroup.updateRememberedValue(coreTextFieldKt$CoreTextField$5$1);
                        ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                        EffectsKt.LaunchedEffect(unit2, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) coreTextFieldKt$CoreTextField$5$1, composerStartRestartGroup, 6);
                        Modifier.Companion companion222 = Modifier.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213545091, "CC(remember):CoreTextField.kt#9igjgp");
                        zChangedInstance2 = composerStartRestartGroup.changedInstance(legacyTextFieldState2);
                        Object objRememberedValue1622 = composerStartRestartGroup.rememberedValue();
                        if (zChangedInstance2) {
                        }
                        objRememberedValue1622 = new Function1() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda16
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj4) {
                                return CoreTextFieldKt.CoreTextField$lambda$16$0(legacyTextFieldState2, ((Boolean) obj4).booleanValue());
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue1622);
                        ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                        Modifier modifierUpdateSelectionTouchMode222 = SelectionGesturesKt.updateSelectionTouchMode(companion222, (Function1) objRememberedValue1622);
                        ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213541055, "CC(remember):CoreTextField.kt#9igjgp");
                        zChangedInstance3 = composerStartRestartGroup.changedInstance(legacyTextFieldState2) | ((57344 & i16) != 16384) | ((i16 & 7168) != 2048) | composerStartRestartGroup.changedInstance(offsetMapping) | composerStartRestartGroup.changedInstance(textFieldSelectionManager3);
                        textFieldSelectionManager4 = textFieldSelectionManager3;
                        Object objRememberedValue17222 = composerStartRestartGroup.rememberedValue();
                        if (zChangedInstance3) {
                        }
                        final OffsetMapping offsetMapping4222 = offsetMapping;
                        final LegacyTextFieldState legacyTextFieldState7222 = legacyTextFieldState2;
                        final boolean z23222 = z9;
                        Function1 function18222 = new Function1() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda17
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj4) {
                                return CoreTextFieldKt.CoreTextField$lambda$17$0(legacyTextFieldState7222, focusRequester32, z23222, z222, textFieldSelectionManager4, offsetMapping4222, (Offset) obj4);
                            }
                        };
                        z14 = z222;
                        offsetMapping2 = offsetMapping4222;
                        legacyTextFieldState3 = legacyTextFieldState7222;
                        focusRequester32 = focusRequester32;
                        obj3 = function18222;
                        composerStartRestartGroup.updateRememberedValue(obj3);
                        ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                        Modifier modifierTapPressTextFieldModifier222 = TextFieldPressGestureFilterKt.tapPressTextFieldModifier(modifierUpdateSelectionTouchMode222, mutableInteractionSource82, z14, (Function1) obj3);
                        MouseSelectionObserver mouseSelectionObserver222 = textFieldSelectionManager4.getMouseSelectionObserver();
                        TextDragObserver touchSelectionObserver222 = textFieldSelectionManager4.getTouchSelectionObserver();
                        ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213507214, "CC(remember):CoreTextField.kt#9igjgp");
                        zChangedInstance4 = composerStartRestartGroup.changedInstance(textFieldSelectionManager4);
                        final boolean z24222 = z14;
                        PointerInputEventHandler pointerInputEventHandlerRememberedValue222 = composerStartRestartGroup.rememberedValue();
                        if (zChangedInstance4) {
                        }
                        pointerInputEventHandlerRememberedValue222 = new PointerInputEventHandler() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$CoreTextField$pointerModifier$3$1
                            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                            public final Object invoke(PointerInputScope $this$pointerInput, Continuation<? super Unit> continuation) {
                                Object objAwaitSelectionGestures = SelectionGesturesKt.awaitSelectionGestures($this$pointerInput, textFieldSelectionManager4.getMouseSelectionObserver(), textFieldSelectionManager4.getTouchSelectionObserver(), continuation);
                                return objAwaitSelectionGestures == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objAwaitSelectionGestures : Unit.INSTANCE;
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(pointerInputEventHandlerRememberedValue222);
                        ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                        Modifier modifierPointerHoverIcon$default2222 = PointerIconKt.pointerHoverIcon$default(SuspendingPointerInputFilterKt.pointerInput(modifierTapPressTextFieldModifier222, mouseSelectionObserver222, touchSelectionObserver222, (PointerInputEventHandler) pointerInputEventHandlerRememberedValue222), PointerIcon.INSTANCE.getText(), false, 2, null);
                        Modifier.Companion companion32222 = Modifier.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213497918, "CC(remember):CoreTextField.kt#9igjgp");
                        zChangedInstance5 = composerStartRestartGroup.changedInstance(legacyTextFieldState3) | ((i39 & 14) == 4) | composerStartRestartGroup.changedInstance(offsetMapping2);
                        objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                        if (zChangedInstance5) {
                        }
                        objRememberedValue5 = new Function1() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda18
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj4) {
                                return CoreTextFieldKt.CoreTextField$lambda$19$0(legacyTextFieldState3, textFieldValue2, offsetMapping2, (DrawScope) obj4);
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                        final Modifier modifierDrawBehind2222 = DrawModifierKt.drawBehind(companion32222, (Function1) objRememberedValue5);
                        Modifier.Companion companion42222 = Modifier.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213476153, "CC(remember):CoreTextField.kt#9igjgp");
                        final LegacyTextFieldState legacyTextFieldState82222 = legacyTextFieldState3;
                        final WindowInfo windowInfo42222 = windowInfo;
                        zChangedInstance6 = ((i16 & 7168) == 2048) | composerStartRestartGroup.changedInstance(legacyTextFieldState3) | composerStartRestartGroup.changed(windowInfo42222) | composerStartRestartGroup.changedInstance(textFieldSelectionManager4) | ((i39 & 14) == 4) | composerStartRestartGroup.changedInstance(offsetMapping2);
                        Object objRememberedValue182222 = composerStartRestartGroup.rememberedValue();
                        if (zChangedInstance6) {
                        }
                        final TextFieldValue textFieldValue32222 = textFieldValue2;
                        final OffsetMapping offsetMapping62222 = offsetMapping2;
                        Function1 function1102222 = new Function1() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda19
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj4) {
                                return CoreTextFieldKt.CoreTextField$lambda$20$0(legacyTextFieldState82222, z24222, windowInfo42222, textFieldSelectionManager4, textFieldValue32222, offsetMapping62222, (LayoutCoordinates) obj4);
                            }
                        };
                        legacyTextFieldState4 = legacyTextFieldState82222;
                        z15 = z24222;
                        windowInfo2 = windowInfo42222;
                        composerStartRestartGroup.updateRememberedValue(function1102222);
                        objRememberedValue182222 = function1102222;
                        ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                        final Modifier modifierOnGloballyPositioned22222 = OnGloballyPositionedModifierKt.onGloballyPositioned(companion42222, (Function1) objRememberedValue182222);
                        final LegacyTextFieldState legacyTextFieldState922222 = legacyTextFieldState4;
                        boolean z2522222 = z15;
                        CoreTextFieldSemanticsModifier coreTextFieldSemanticsModifier22222 = new CoreTextFieldSemanticsModifier(transformedText2, textFieldValue, legacyTextFieldState922222, z9, z2522222, visualTransformation2 instanceof PasswordVisualTransformation, offsetMapping2, textFieldSelectionManager4, imeOptions7, focusRequester32);
                        final ImeOptions imeOptions922222 = imeOptions7;
                    }
                }
            }
            annotatedString2 = annotatedString;
            textStyle4 = textStyle5;
            z11 = z10;
            density = density2;
            resolver = resolver2;
            objRememberedValue13 = new LegacyTextFieldState(new TextDelegate(annotatedString, textStyle5, 0, 0, z10, 0, density2, resolver2, null, 300, null), currentRecomposeScope, softwareKeyboardController);
            composerStartRestartGroup.updateRememberedValue(objRememberedValue13);
            final LegacyTextFieldState legacyTextFieldState52 = (LegacyTextFieldState) objRememberedValue13;
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            legacyTextFieldState52.m1226updatefnh65Uc(textFieldValue.getText(), annotatedString2, textStyle4, z11, density, resolver, function1, keyboardActions4, focusManager, selectionBackgroundColor);
            legacyTextFieldState52.getProcessor().reset(textFieldValue, legacyTextFieldState52.getInputSession());
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213678725, "CC(remember):CoreTextField.kt#9igjgp");
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue != Composer.INSTANCE.getEmpty()) {
            }
            UndoManager undoManager2 = (UndoManager) objRememberedValue;
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            UndoManager.snapshotIfNeeded$default(undoManager2, textFieldValue, 0L, 2, null);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 773894976, "CC(rememberCoroutineScope)N(getContext)600@27430L68:Effects.kt#9igjgp");
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 683736516, "CC(remember):Effects.kt#9igjgp");
            objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue2 != Composer.INSTANCE.getEmpty()) {
            }
            final CoroutineScope coroutineScope22 = (CoroutineScope) objRememberedValue2;
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213673882, "CC(remember):CoreTextField.kt#9igjgp");
            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
            }
            final BringIntoViewRequester bringIntoViewRequester22 = (BringIntoViewRequester) objRememberedValue3;
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213672044, "CC(remember):CoreTextField.kt#9igjgp");
            objRememberedValue4 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue4 != Composer.INSTANCE.getEmpty()) {
            }
            final TextFieldSelectionManager textFieldSelectionManager52 = (TextFieldSelectionManager) objRememberedValue4;
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            textFieldSelectionManager52.setOffsetMapping$foundation(offsetMapping3);
            textFieldSelectionManager52.setVisualTransformation$foundation(visualTransformation2);
            textFieldSelectionManager52.setOnValueChange$foundation(legacyTextFieldState52.getOnValueChange());
            textFieldSelectionManager52.setState$foundation(legacyTextFieldState52);
            textFieldSelectionManager52.setValue$foundation(textFieldValue);
            ProvidableCompositionLocal<Clipboard> localClipboard2 = CompositionLocalsKt.getLocalClipboard();
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume72 = composerStartRestartGroup.consume(localClipboard2);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            textFieldSelectionManager52.setClipboard$foundation((Clipboard) objConsume72);
            textFieldSelectionManager52.setCoroutineScope$foundation(coroutineScope22);
            ProvidableCompositionLocal<TextToolbar> localTextToolbar2 = CompositionLocalsKt.getLocalTextToolbar();
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume82 = composerStartRestartGroup.consume(localTextToolbar2);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            textFieldSelectionManager52.setTextToolbar((TextToolbar) objConsume82);
            ProvidableCompositionLocal<HapticFeedback> localHapticFeedback2 = CompositionLocalsKt.getLocalHapticFeedback();
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume92 = composerStartRestartGroup.consume(localHapticFeedback2);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            textFieldSelectionManager52.setHapticFeedBack((HapticFeedback) objConsume92);
            textFieldSelectionManager52.setFocusRequester(focusRequester2);
            textFieldSelectionManager52.setEditable(!z9);
            textFieldSelectionManager52.setEnabled(z8);
            if (ComposeFoundationFlags.isSmartSelectionEnabled) {
            }
            composerStartRestartGroup.endReplaceGroup();
            legacyTextFieldState52.getHasFocus();
            new Function1() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda12
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj4) {
                    return CoreTextFieldKt.CoreTextField$lambda$10(textFieldSelectionManager52, (AnnotatedString) obj4);
                }
            };
            new Function0() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda13
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return TextFieldSelectionManager.copyWithResult$foundation$default(textFieldSelectionManager52, false, 1, null);
                }
            };
            new Function0() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda14
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return textFieldSelectionManager52.cutWithResult$foundation();
                }
            };
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 1197772674, "CC(rememberClipboardEventsHandler)N(onPaste,onCopy,onCut,isEnabled):ClipboardEventsHandler.jvm.kt#423gt5");
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            Modifier.Companion companion7 = Modifier.INSTANCE;
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -213630965, "CC(remember):CoreTextField.kt#9igjgp");
            boolean zChangedInstance102 = composerStartRestartGroup.changedInstance(legacyTextFieldState52) | ((i16 & 7168) != 2048) | ((57344 & i16) != 16384) | composerStartRestartGroup.changedInstance(textInputService5) | ((i39 & 14) != 4);
            if (((i16 & 112) ^ 48) <= 32) {
            }
            z12 = zChangedInstance102;
            if ((i16 & 48) != 32) {
            }
            zChangedInstance = z12 | z28 | composerStartRestartGroup.changedInstance(offsetMapping3) | composerStartRestartGroup.changedInstance(coroutineScope22) | composerStartRestartGroup.changedInstance(bringIntoViewRequester22) | composerStartRestartGroup.changedInstance(textFieldSelectionManager52);
            Object objRememberedValue1422 = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance) {
            }
            final ImeOptions imeOptions822 = imeOptions6;
            final boolean z2022 = z8;
            final boolean z2122 = z9;
            Function1 function1722 = new Function1() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda15
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj4) {
                    return CoreTextFieldKt.CoreTextField$lambda$13$0(legacyTextFieldState52, z2022, z2122, textInputService5, textFieldValue, imeOptions822, offsetMapping3, textFieldSelectionManager52, coroutineScope22, bringIntoViewRequester22, (FocusState) obj4);
                }
            };
            legacyTextFieldState = legacyTextFieldState52;
            z13 = z2022;
            textInputService = textInputService5;
            textFieldValue2 = textFieldValue;
            offsetMapping = offsetMapping3;
            textFieldSelectionManager = textFieldSelectionManager52;
            bringIntoViewRequester = bringIntoViewRequester22;
            coroutineScope = coroutineScope22;
            obj2 = function1722;
            composerStartRestartGroup.updateRememberedValue(obj2);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            MutableInteractionSource mutableInteractionSource822 = mutableInteractionSource5;
            Modifier modifierTextFieldFocusModifier22 = TextFieldGestureModifiersKt.textFieldFocusModifier(companion7, z13, focusRequester2, mutableInteractionSource822, (Function1) obj2);
        } else {
            Composer composer4 = composerStartRestartGroup;
            composer4.skipToGroupEnd();
            imeOptions2 = imeOptions;
            z4 = z2;
            function32 = function3;
            textFieldScrollerPosition2 = textFieldScrollerPosition;
            visualTransformation3 = visualTransformation2;
            brush3 = brush2;
            mutableInteractionSource3 = mutableInteractionSource2;
            function14 = function13;
            textStyle3 = textStyle2;
            modifier3 = modifier2;
            z5 = z;
            i12 = i;
            i13 = i2;
            keyboardActions2 = keyboardActions;
            z6 = z3;
            composer2 = composer4;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda10
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj4, Object obj5) {
                    return CoreTextFieldKt.CoreTextField$lambda$27(textFieldValue, function1, modifier3, textStyle3, visualTransformation3, function14, mutableInteractionSource3, brush3, z5, i12, i13, imeOptions2, keyboardActions2, z4, z6, function32, textFieldScrollerPosition2, i3, i4, i5, (Composer) obj4, ((Integer) obj5).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TextFieldScrollerPosition CoreTextField$lambda$4$0(Orientation $orientation) {
        return new TextFieldScrollerPosition($orientation, 0.0f, 2, null);
    }

    static final Unit CoreTextField$lambda$10(TextFieldSelectionManager $manager, AnnotatedString it) {
        $manager.paste$foundation(it);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit CoreTextField$lambda$13$0(LegacyTextFieldState $state, boolean $enabled, boolean $readOnly, TextInputService $textInputService, TextFieldValue $value, ImeOptions $imeOptions, OffsetMapping $offsetMapping, TextFieldSelectionManager $manager, CoroutineScope $coroutineScope, BringIntoViewRequester $bringIntoViewRequester, FocusState it) {
        TextFieldValue textFieldValue;
        OffsetMapping offsetMapping;
        TextLayoutResultProxy layoutResult;
        if ($state.getHasFocus() != it.isFocused()) {
            $state.setHasFocus(it.isFocused());
            if ($state.getHasFocus() && $enabled && !$readOnly) {
                textFieldValue = $value;
                offsetMapping = $offsetMapping;
                startInputSession($textInputService, $state, textFieldValue, $imeOptions, offsetMapping);
            } else {
                textFieldValue = $value;
                offsetMapping = $offsetMapping;
                endInputSession($state);
            }
            if (it.isFocused() && (layoutResult = $state.getLayoutResult()) != null) {
                BuildersKt__Builders_commonKt.launch$default($coroutineScope, null, null, new CoreTextFieldKt$CoreTextField$focusModifier$1$1$1$1($bringIntoViewRequester, textFieldValue, $state, layoutResult, offsetMapping, null), 3, null);
            }
            if (!it.isFocused()) {
                TextFieldSelectionManager.m1655deselect_kEHs6E$foundation$default($manager, null, 1, null);
            }
            return Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean CoreTextField$lambda$14(State<Boolean> state) {
        Object thisObj$iv = state.getValue();
        return ((Boolean) thisObj$iv).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit CoreTextField$lambda$16$0(LegacyTextFieldState $state, boolean it) {
        $state.setInTouchMode(it);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit CoreTextField$lambda$17$0(LegacyTextFieldState $state, FocusRequester $focusRequester, boolean $readOnly, boolean $enabled, TextFieldSelectionManager $manager, OffsetMapping $offsetMapping, Offset offset) {
        tapToFocus($state, $focusRequester, !$readOnly);
        if ($state.getHasFocus() && $enabled) {
            if ($state.getHandleState() != HandleState.Selection) {
                TextLayoutResultProxy layoutResult = $state.getLayoutResult();
                if (layoutResult != null) {
                    TextFieldDelegate.INSTANCE.m1264setCursorOffsetULxng0E$foundation(offset.m4462unboximpl(), layoutResult, $state.getProcessor(), $offsetMapping, $state.getOnValueChange());
                    if ($state.getTextDelegate().getText().length() > 0) {
                        $state.setHandleState(HandleState.Cursor);
                    }
                }
            } else {
                $manager.m1659deselect_kEHs6E$foundation(offset);
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit CoreTextField$lambda$19$0(LegacyTextFieldState $state, TextFieldValue $value, OffsetMapping $offsetMapping, DrawScope $this$drawBehind) {
        TextLayoutResultProxy layoutResult = $state.getLayoutResult();
        if (layoutResult != null) {
            Canvas canvas = $this$drawBehind.getDrawContext().getCanvas();
            TextFieldDelegate.INSTANCE.m1262drawQ1vqE60$foundation(canvas, $value, $state.m1221getSelectionPreviewHighlightRanged9O1mEE(), $state.m1218getDeletionPreviewHighlightRanged9O1mEE(), $offsetMapping, layoutResult.getValue(), $state.getHighlightPaint(), $state.getSelectionBackgroundColor());
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit CoreTextField$lambda$20$0(LegacyTextFieldState $state, boolean $enabled, WindowInfo $windowInfo, TextFieldSelectionManager $manager, TextFieldValue $value, OffsetMapping $offsetMapping, LayoutCoordinates it) {
        TextInputSession inputSession;
        $state.setLayoutCoordinates(it);
        TextLayoutResultProxy layoutResult = $state.getLayoutResult();
        if (layoutResult != null) {
            layoutResult.setInnerTextFieldCoordinates(it);
        }
        if ($enabled) {
            if ($state.getHandleState() == HandleState.Selection) {
                if ($state.getShowFloatingToolbar() && $windowInfo.isWindowFocused()) {
                    $manager.showSelectionToolbar$foundation();
                } else {
                    $manager.hideSelectionToolbar$foundation();
                }
                $state.setShowSelectionHandleStart(TextFieldSelectionManager_androidKt.isSelectionHandleInVisibleBound($manager, true));
                $state.setShowSelectionHandleEnd(TextFieldSelectionManager_androidKt.isSelectionHandleInVisibleBound($manager, false));
                $state.setShowCursorHandle(TextRange.m6922getCollapsedimpl($value.getSelection()));
            } else if ($state.getHandleState() == HandleState.Cursor) {
                $state.setShowCursorHandle(TextFieldSelectionManager_androidKt.isSelectionHandleInVisibleBound($manager, true));
            }
            notifyFocusedRect($state, $value, $offsetMapping);
            TextLayoutResultProxy layoutResult2 = $state.getLayoutResult();
            if (layoutResult2 != null && (inputSession = $state.getInputSession()) != null && $state.getHasFocus()) {
                TextFieldDelegate.INSTANCE.updateTextLayoutResult$foundation(inputSession, $value, $offsetMapping, layoutResult2);
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DisposableEffectResult CoreTextField$lambda$21$0(final TextFieldSelectionManager $manager, DisposableEffectScope $this$DisposableEffect) {
        return new DisposableEffectResult() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$CoreTextField$lambda$21$0$$inlined$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void dispose() {
                $manager.hideSelectionToolbar$foundation();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DisposableEffectResult CoreTextField$lambda$22$0(LegacyTextFieldState $state, TextInputService $textInputService, TextFieldValue $value, ImeOptions $imeOptions, DisposableEffectScope $this$DisposableEffect) {
        if ($state.getHasFocus()) {
            $state.setInputSession(TextFieldDelegate.INSTANCE.restartInput$foundation($textInputService, $value, $state.getProcessor(), $imeOptions, $state.getOnValueChange(), $state.getOnImeActionPerformed()));
        }
        return new DisposableEffectResult() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$CoreTextField$lambda$22$0$$inlined$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void dispose() {
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit CoreTextField$lambda$23$0(boolean $handwritingEnabled, LegacyPlatformTextInputServiceAdapter $legacyTextInputServiceAdapter) {
        if ($handwritingEnabled) {
            $legacyTextInputServiceAdapter.startStylusHandwriting();
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit CoreTextField$lambda$24$0(LegacyTextFieldState $state, Brush $autofillHighlightBrush, ContentDrawScope $this$drawWithContent) {
        $this$drawWithContent.drawContent();
        if ($state.getAutofillHighlightOn() || $state.getJustAutofilled()) {
            DrawScope.m5264drawRectAsUm42w$default($this$drawWithContent, $autofillHighlightBrush, 0L, 0L, 0.0f, null, null, 0, WebSocketProtocol.PAYLOAD_SHORT, null);
        }
        return Unit.INSTANCE;
    }

    static final Unit CoreTextField$lambda$25(LegacyTextFieldState $state, LayoutCoordinates it) {
        TextLayoutResultProxy layoutResult = $state.getLayoutResult();
        if (layoutResult != null) {
            layoutResult.setDecorationBoxCoordinates(it);
        }
        return Unit.INSTANCE;
    }

    static final Unit CoreTextField$lambda$26(Function3 $decorationBox, final LegacyTextFieldState $state, final TextStyle $textStyle, final int $minLines, final int $maxLines, final TextFieldScrollerPosition $scrollerPosition, final TextFieldValue $value, final VisualTransformation $visualTransformation, final Modifier $cursorModifier, final Modifier $drawModifier, final Modifier $onPositionedModifier, final Modifier $magnifierModifier, final BringIntoViewRequester $bringIntoViewRequester, final TextFieldSelectionManager $manager, final boolean $showHandleAndMagnifier, final boolean $readOnly, final Function1 $onTextLayout, final OffsetMapping $offsetMapping, final Density $density, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C588@27697L5379,588@27683L5393:CoreTextField.kt#423gt5");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-814563849, $changed, -1, "androidx.compose.foundation.text.CoreTextField.<anonymous> (CoreTextField.kt:588)");
            }
            $decorationBox.invoke(ComposableLambdaKt.rememberComposableLambda(-44346382, true, new Function2() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda23
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return CoreTextFieldKt.CoreTextField$lambda$26$0($state, $textStyle, $minLines, $maxLines, $scrollerPosition, $value, $visualTransformation, $cursorModifier, $drawModifier, $onPositionedModifier, $magnifierModifier, $bringIntoViewRequester, $manager, $showHandleAndMagnifier, $readOnly, $onTextLayout, $offsetMapping, $density, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer, 54), $composer, 6);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit CoreTextField$lambda$26$0(final LegacyTextFieldState $state, TextStyle $textStyle, int $minLines, final int $maxLines, TextFieldScrollerPosition $scrollerPosition, final TextFieldValue $value, VisualTransformation $visualTransformation, Modifier $cursorModifier, Modifier $drawModifier, Modifier $onPositionedModifier, Modifier $magnifierModifier, BringIntoViewRequester $bringIntoViewRequester, final TextFieldSelectionManager $manager, final boolean $showHandleAndMagnifier, final boolean $readOnly, final Function1 $onTextLayout, final OffsetMapping $offsetMapping, final Density $density, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C602@28548L22,611@28935L4131,611@28899L4167:CoreTextField.kt#423gt5");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-44346382, $changed, -1, "androidx.compose.foundation.text.CoreTextField.<anonymous>.<anonymous> (CoreTextField.kt:591)");
            }
            Modifier modifierHeightInLines = HeightInLinesModifierKt.heightInLines(SizeKt.m852heightInVpY3zN4$default(Modifier.INSTANCE, $state.m1219getMinHeightForSingleLineFieldD9Ej5fM(), 0.0f, 2, null), $textStyle, $minLines, $maxLines);
            ComposerKt.sourceInformationMarkerStart($composer, 332827112, "CC(remember):CoreTextField.kt#9igjgp");
            boolean invalid$iv = $composer.changedInstance($state);
            Object it$iv = $composer.rememberedValue();
            if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                Object value$iv = new Function0() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return $state.getLayoutResult();
                    }
                };
                $composer.updateRememberedValue(value$iv);
                it$iv = value$iv;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            Modifier coreTextFieldModifier = BringIntoViewRequesterKt.bringIntoViewRequester(TextFieldSizeKt.textFieldMinSize(TextFieldScroll_androidKt.textFieldScroll(modifierHeightInLines, $scrollerPosition, $value, $visualTransformation, (Function0) it$iv).then($cursorModifier).then($drawModifier), $textStyle).then($onPositionedModifier).then($magnifierModifier), $bringIntoViewRequester);
            SimpleLayoutKt.SimpleLayout(coreTextFieldModifier, ComposableLambdaKt.rememberComposableLambda(1412697320, true, new Function2() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return CoreTextFieldKt.CoreTextField$lambda$26$0$1($manager, $state, $showHandleAndMagnifier, $readOnly, $onTextLayout, $value, $offsetMapping, $density, $maxLines, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer, 54), $composer, 48, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:26:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x013c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Unit CoreTextField$lambda$26$0$1(TextFieldSelectionManager $manager, LegacyTextFieldState $state, boolean $showHandleAndMagnifier, boolean $readOnly, Function1 $onTextLayout, TextFieldValue $value, OffsetMapping $offsetMapping, Density $density, int $maxLines, Composer $composer, int $changed) {
        boolean z;
        ComposerKt.sourceInformation($composer, "C612@28953L3502,677@32473L359:CoreTextField.kt#423gt5");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1412697320, $changed, -1, "androidx.compose.foundation.text.CoreTextField.<anonymous>.<anonymous>.<anonymous> (CoreTextField.kt:612)");
            }
            MeasurePolicy measurePolicy$iv = new CoreTextFieldKt$CoreTextField$8$1$1$2($state, $onTextLayout, $value, $offsetMapping, $density, $maxLines);
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            Modifier modifier$iv = Modifier.INSTANCE;
            int compositeKeyHash$iv = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap localMap$iv = $composer.getCurrentCompositionLocalMap();
            Modifier materialized$iv = ComposedModifierKt.materializeModifier($composer, modifier$iv);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int $changed$iv$iv = ((0 << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                $composer.createNode(constructor);
            } else {
                $composer.useNode();
            }
            Composer $this$Layout_u24lambda_u240$iv = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv, localMap$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl($this$Layout_u24lambda_u240$iv, Integer.valueOf(compositeKeyHash$iv), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl($this$Layout_u24lambda_u240$iv, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv, materialized$iv, ComposeUiNode.INSTANCE.getSetModifier());
            int i = ($changed$iv$iv >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1613409842, "C:CoreTextField.kt#423gt5");
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            if ($state.getHandleState() == HandleState.None || $state.getLayoutCoordinates() == null) {
                z = false;
                SelectionToolbarAndHandles($manager, z, $composer, 0);
                if ($state.getHandleState() == HandleState.Cursor || $readOnly || !$showHandleAndMagnifier) {
                    $composer.startReplaceGroup(-747377894);
                } else {
                    $composer.startReplaceGroup(-714666198);
                    ComposerKt.sourceInformation($composer, "689@32994L40");
                    TextFieldCursorHandle($manager, $composer, 0);
                }
                $composer.endReplaceGroup();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                LayoutCoordinates layoutCoordinates = $state.getLayoutCoordinates();
                Intrinsics.checkNotNull(layoutCoordinates);
                if (layoutCoordinates.isAttached() && $showHandleAndMagnifier) {
                    z = true;
                }
                SelectionToolbarAndHandles($manager, z, $composer, 0);
                if ($state.getHandleState() == HandleState.Cursor) {
                    $composer.startReplaceGroup(-747377894);
                    $composer.endReplaceGroup();
                    if (ComposerKt.isTraceInProgress()) {
                    }
                }
            }
        }
        return Unit.INSTANCE;
    }

    private static final void CoreTextFieldRootBox(final Modifier modifier, final TextFieldSelectionManager manager, final Function2<? super Composer, ? super Integer, Unit> function2, Composer $composer, final int $changed) {
        Composer $composer2;
        Function0<ComposeUiNode> function0;
        Composer $composer3 = $composer.startRestartGroup(2036174316);
        ComposerKt.sourceInformation($composer3, "C(CoreTextFieldRootBox)N(modifier,manager,content)702@33241L83:CoreTextField.kt#423gt5");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer3.changed(modifier) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer3.changedInstance(manager) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty |= $composer3.changedInstance(function2) ? 256 : 128;
        }
        if (!$composer3.shouldExecute(($dirty & 147) != 146, $dirty & 1)) {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(2036174316, $dirty, -1, "androidx.compose.foundation.text.CoreTextFieldRootBox (CoreTextField.kt:701)");
            }
            int $changed$iv = ($dirty & 14) | RendererCapabilities.DECODER_SUPPORT_MASK;
            ComposerKt.sourceInformationMarkerStart($composer3, 1042775818, "CC(Box)N(modifier,contentAlignment,propagateMinConstraints,content)71@3424L131:Box.kt#2w3rfo");
            Alignment contentAlignment$iv = Alignment.INSTANCE.getTopStart();
            MeasurePolicy measurePolicy$iv = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv, true);
            int $changed$iv$iv = ($changed$iv << 3) & 112;
            ComposerKt.sourceInformationMarkerStart($composer3, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int compositeKeyHash$iv$iv = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer3, 0));
            CompositionLocalMap localMap$iv$iv = $composer3.getCurrentCompositionLocalMap();
            $composer2 = $composer3;
            Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer3, modifier);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int $changed$iv$iv$iv = (($changed$iv$iv << 6) & 896) | 6;
            int $dirty2 = $dirty;
            ComposerKt.sourceInformationMarkerStart($composer3, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer3.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer3.startReusableNode();
            if ($composer3.getInserting()) {
                function0 = constructor;
                $composer3.createNode(function0);
            } else {
                function0 = constructor;
                $composer3.useNode();
            }
            Composer $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer3);
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl($this$Layout_u24lambda_u240$iv$iv, Integer.valueOf(compositeKeyHash$iv$iv), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl($this$Layout_u24lambda_u240$iv$iv, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
            int i = ($changed$iv$iv$iv >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer3, 1833054614, "C72@3469L9:Box.kt#2w3rfo");
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            int i2 = (($changed$iv >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, 1799443472, "C702@33289L33:CoreTextField.kt#423gt5");
            ContextMenu_androidKt.ContextMenuArea(manager, function2, $composer3, (($dirty2 >> 3) & 14) | (($dirty2 >> 3) & 112));
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            $composer3.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return CoreTextFieldKt.CoreTextFieldRootBox$lambda$1(modifier, manager, function2, $changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    private static final Modifier previewKeyEventToDeselectOnBack(Modifier $this$previewKeyEventToDeselectOnBack, final LegacyTextFieldState state, final TextFieldSelectionManager manager) {
        return KeyInputModifierKt.onPreviewKeyEvent($this$previewKeyEventToDeselectOnBack, new Function1<KeyEvent, Boolean>() { // from class: androidx.compose.foundation.text.CoreTextFieldKt.previewKeyEventToDeselectOnBack.1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(KeyEvent keyEvent) {
                return m1196invokeZmokQxo(keyEvent.m5842unboximpl());
            }

            /* JADX INFO: renamed from: invoke-ZmokQxo, reason: not valid java name */
            public final Boolean m1196invokeZmokQxo(android.view.KeyEvent keyEvent) {
                boolean z;
                if (state.getHandleState() == HandleState.Selection && KeyEventHelpers_androidKt.m1199cancelsTextSelectionZmokQxo(keyEvent)) {
                    z = true;
                    TextFieldSelectionManager.m1655deselect_kEHs6E$foundation$default(manager, null, 1, null);
                } else {
                    z = false;
                }
                return Boolean.valueOf(z);
            }
        });
    }

    public static final void tapToFocus(LegacyTextFieldState state, FocusRequester focusRequester, boolean allowKeyboard) {
        SoftwareKeyboardController keyboardController;
        if (!state.getHasFocus()) {
            FocusRequester.m4357requestFocus3ESFkO8$default(focusRequester, 0, 1, null);
        } else {
            if (!allowKeyboard || (keyboardController = state.getKeyboardController()) == null) {
                return;
            }
            keyboardController.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startInputSession(TextInputService textInputService, LegacyTextFieldState state, TextFieldValue value, ImeOptions imeOptions, OffsetMapping offsetMapping) {
        state.setInputSession(TextFieldDelegate.INSTANCE.onFocus$foundation(textInputService, value, state.getProcessor(), imeOptions, state.getOnValueChange(), state.getOnImeActionPerformed()));
        notifyFocusedRect(state, value, offsetMapping);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void endInputSession(LegacyTextFieldState state) {
        TextInputSession session = state.getInputSession();
        if (session != null) {
            TextFieldDelegate.INSTANCE.onBlur$foundation(session, state.getProcessor(), state.getOnValueChange());
        }
        state.setInputSession(null);
    }

    public static final Object bringSelectionEndIntoView(BringIntoViewRequester $this$bringSelectionEndIntoView, TextFieldValue value, TextDelegate textDelegate, TextLayoutResult textLayoutResult, OffsetMapping offsetMapping, Continuation<? super Unit> continuation) {
        Rect selectionEndBounds;
        int selectionEndInTransformed = offsetMapping.originalToTransformed(TextRange.m6925getMaximpl(value.getSelection()));
        if (selectionEndInTransformed < textLayoutResult.getLayoutInput().getText().length()) {
            selectionEndBounds = textLayoutResult.getBoundingBox(selectionEndInTransformed);
        } else if (selectionEndInTransformed != 0) {
            selectionEndBounds = textLayoutResult.getBoundingBox(selectionEndInTransformed - 1);
        } else {
            long defaultSize = TextFieldDelegateKt.computeSizeForDefaultText$default(textDelegate.getStyle(), textDelegate.getDensity(), textDelegate.getFontFamilyResolver(), null, 0, 24, null);
            selectionEndBounds = new Rect(0.0f, 0.0f, 1.0f, (int) (4294967295L & defaultSize));
        }
        Object objBringIntoView = $this$bringSelectionEndIntoView.bringIntoView(selectionEndBounds, continuation);
        return objBringIntoView == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objBringIntoView : Unit.INSTANCE;
    }

    private static final void SelectionToolbarAndHandles(final TextFieldSelectionManager manager, final boolean show, Composer $composer, final int $changed) {
        TextLayoutResultProxy layoutResult;
        TextLayoutResult value;
        Composer $composer2 = $composer.startRestartGroup(626339208);
        ComposerKt.sourceInformation($composer2, "C(SelectionToolbarAndHandles)N(manager,show):CoreTextField.kt#423gt5");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changedInstance(manager) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer2.changed(show) ? 32 : 16;
        }
        if ($composer2.shouldExecute(($dirty & 19) != 18, $dirty & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(626339208, $dirty, -1, "androidx.compose.foundation.text.SelectionToolbarAndHandles (CoreTextField.kt:1054)");
            }
            if (show) {
                $composer2.startReplaceGroup(1530097388);
                ComposerKt.sourceInformation($composer2, "");
                LegacyTextFieldState state = manager.getState();
                TextLayoutResult it = null;
                if (state != null && (layoutResult = state.getLayoutResult()) != null && (value = layoutResult.getValue()) != null) {
                    LegacyTextFieldState state2 = manager.getState();
                    if (!(state2 != null ? state2.getIsLayoutResultStale() : true)) {
                        it = value;
                    }
                }
                if (it == null) {
                    $composer2.startReplaceGroup(1530097387);
                } else {
                    $composer2.startReplaceGroup(1530097388);
                    ComposerKt.sourceInformation($composer2, "");
                    if (TextRange.m6922getCollapsedimpl(manager.getValue$foundation().getSelection())) {
                        $composer2.startReplaceGroup(2062097806);
                    } else {
                        $composer2.startReplaceGroup(2109807302);
                        ComposerKt.sourceInformation($composer2, "");
                        int startOffset = manager.getOffsetMapping().originalToTransformed(TextRange.m6928getStartimpl(manager.getValue$foundation().getSelection()));
                        int endOffset = manager.getOffsetMapping().originalToTransformed(TextRange.m6923getEndimpl(manager.getValue$foundation().getSelection()));
                        ResolvedTextDirection startDirection = it.getBidiRunDirection(startOffset);
                        ResolvedTextDirection endDirection = it.getBidiRunDirection(Math.max(endOffset - 1, 0));
                        LegacyTextFieldState state3 = manager.getState();
                        if (state3 != null && state3.getShowSelectionHandleStart()) {
                            $composer2.startReplaceGroup(2110225306);
                            ComposerKt.sourceInformation($composer2, "1070@48536L220");
                            TextFieldSelectionManagerKt.TextFieldSelectionHandle(true, startDirection, manager, $composer2, (($dirty << 6) & 896) | 6);
                        } else {
                            $composer2.startReplaceGroup(2062097806);
                        }
                        $composer2.endReplaceGroup();
                        LegacyTextFieldState state4 = manager.getState();
                        if (state4 != null && state4.getShowSelectionHandleEnd()) {
                            $composer2.startReplaceGroup(2110574459);
                            ComposerKt.sourceInformation($composer2, "1077@48888L219");
                            TextFieldSelectionManagerKt.TextFieldSelectionHandle(false, endDirection, manager, $composer2, (($dirty << 6) & 896) | 6);
                        } else {
                            $composer2.startReplaceGroup(2062097806);
                        }
                        $composer2.endReplaceGroup();
                    }
                    $composer2.endReplaceGroup();
                    LegacyTextFieldState textFieldState = manager.getState();
                    if (textFieldState != null) {
                        if (manager.isTextChanged$foundation()) {
                            textFieldState.setShowFloatingToolbar(false);
                        }
                        if (textFieldState.getHasFocus()) {
                            if (textFieldState.getShowFloatingToolbar()) {
                                manager.showSelectionToolbar$foundation();
                            } else {
                                manager.hideSelectionToolbar$foundation();
                            }
                        }
                        Unit unit = Unit.INSTANCE;
                    }
                }
                $composer2.endReplaceGroup();
                $composer2.endReplaceGroup();
            } else {
                $composer2.startReplaceGroup(1989076778);
                $composer2.endReplaceGroup();
                manager.hideSelectionToolbar$foundation();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda22
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return CoreTextFieldKt.SelectionToolbarAndHandles$lambda$1(manager, show, $changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0181  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void TextFieldCursorHandle(final TextFieldSelectionManager manager, Composer $composer, final int $changed) {
        boolean z;
        Composer $composer2 = $composer.startRestartGroup(-1436003720);
        ComposerKt.sourceInformation($composer2, "C(TextFieldCursorHandle)N(manager):CoreTextField.kt#423gt5");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changedInstance(manager) ? 4 : 2;
        }
        int $dirty2 = $dirty;
        if (!$composer2.shouldExecute(($dirty2 & 3) != 2, $dirty2 & 1)) {
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1436003720, $dirty2, -1, "androidx.compose.foundation.text.TextFieldCursorHandle (CoreTextField.kt:1101)");
            }
            LegacyTextFieldState state = manager.getState();
            if (state != null && state.getShowCursorHandle()) {
                AnnotatedString transformedText$foundation = manager.getTransformedText$foundation();
                if (transformedText$foundation == null) {
                    z = false;
                    if (!z) {
                        $composer2.startReplaceGroup(-2112351432);
                        ComposerKt.sourceInformation($composer2, "1103@50051L50,1104@50164L7,1106@50224L12,1108@50309L645,1120@50986L385,1105@50181L1201");
                        ComposerKt.sourceInformationMarkerStart($composer2, -1315066870, "CC(remember):CoreTextField.kt#9igjgp");
                        boolean invalid$iv = $composer2.changed(manager);
                        Object it$iv = $composer2.rememberedValue();
                        if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                            Object value$iv = manager.cursorDragObserver$foundation();
                            $composer2.updateRememberedValue(value$iv);
                            it$iv = value$iv;
                        }
                        final TextDragObserver observer = (TextDragObserver) it$iv;
                        ComposerKt.sourceInformationMarkerEnd($composer2);
                        ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
                        ComposerKt.sourceInformationMarkerStart($composer2, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
                        Object objConsume = $composer2.consume(localDensity);
                        ComposerKt.sourceInformationMarkerEnd($composer2);
                        final long position = manager.m1661getCursorPositiontuRUvjQ$foundation((Density) objConsume);
                        ComposerKt.sourceInformationMarkerStart($composer2, -1315061372, "CC(remember):CoreTextField.kt#9igjgp");
                        boolean invalid$iv2 = $composer2.changed(position);
                        Object it$iv2 = $composer2.rememberedValue();
                        if (invalid$iv2 || it$iv2 == Composer.INSTANCE.getEmpty()) {
                            Object value$iv2 = (OffsetProvider) new OffsetProvider() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$1$1
                                @Override // androidx.compose.foundation.text.selection.OffsetProvider
                                /* JADX INFO: renamed from: provide-F1C5BW0 */
                                public final long mo1144provideF1C5BW0() {
                                    return position;
                                }
                            };
                            $composer2.updateRememberedValue(value$iv2);
                            it$iv2 = value$iv2;
                        }
                        OffsetProvider offsetProvider = (OffsetProvider) it$iv2;
                        ComposerKt.sourceInformationMarkerEnd($composer2);
                        Modifier.Companion companion = Modifier.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart($composer2, -1315058019, "CC(remember):CoreTextField.kt#9igjgp");
                        boolean invalid$iv3 = $composer2.changedInstance(observer) | $composer2.changedInstance(manager);
                        Object it$iv3 = $composer2.rememberedValue();
                        if (invalid$iv3 || it$iv3 == Composer.INSTANCE.getEmpty()) {
                            Object value$iv3 = (PointerInputEventHandler) new PointerInputEventHandler() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$2$1

                                /* JADX INFO: renamed from: androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$2$1$1, reason: invalid class name */
                                /* JADX INFO: compiled from: CoreTextField.kt */
                                @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
                                @DebugMetadata(c = "androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$2$1$1", f = "CoreTextField.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {}, v = 1)
                                static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                                    final /* synthetic */ TextFieldSelectionManager $manager;
                                    final /* synthetic */ TextDragObserver $observer;
                                    final /* synthetic */ PointerInputScope $this_pointerInput;
                                    private /* synthetic */ Object L$0;
                                    int label;

                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    AnonymousClass1(PointerInputScope pointerInputScope, TextDragObserver textDragObserver, TextFieldSelectionManager textFieldSelectionManager, Continuation<? super AnonymousClass1> continuation) {
                                        super(2, continuation);
                                        this.$this_pointerInput = pointerInputScope;
                                        this.$observer = textDragObserver;
                                        this.$manager = textFieldSelectionManager;
                                    }

                                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                                        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$this_pointerInput, this.$observer, this.$manager, continuation);
                                        anonymousClass1.L$0 = obj;
                                        return anonymousClass1;
                                    }

                                    @Override // kotlin.jvm.functions.Function2
                                    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                                        return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                                    }

                                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                    public final Object invokeSuspend(Object obj) {
                                        IntrinsicsKt.getCOROUTINE_SUSPENDED();
                                        switch (this.label) {
                                            case 0:
                                                ResultKt.throwOnFailure(obj);
                                                CoroutineScope $this$coroutineScope = (CoroutineScope) this.L$0;
                                                BuildersKt__Builders_commonKt.launch$default($this$coroutineScope, null, CoroutineStart.UNDISPATCHED, new C00281(this.$this_pointerInput, this.$observer, null), 1, null);
                                                BuildersKt__Builders_commonKt.launch$default($this$coroutineScope, null, CoroutineStart.UNDISPATCHED, new AnonymousClass2(this.$this_pointerInput, this.$manager, null), 1, null);
                                                return Unit.INSTANCE;
                                            default:
                                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                        }
                                    }

                                    /* JADX INFO: renamed from: androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$2$1$1$1, reason: invalid class name and collision with other inner class name */
                                    /* JADX INFO: compiled from: CoreTextField.kt */
                                    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
                                    @DebugMetadata(c = "androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$2$1$1$1", f = "CoreTextField.kt", i = {}, l = {1114}, m = "invokeSuspend", n = {}, s = {}, v = 1)
                                    static final class C00281 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                                        final /* synthetic */ TextDragObserver $observer;
                                        final /* synthetic */ PointerInputScope $this_pointerInput;
                                        int label;

                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                        C00281(PointerInputScope pointerInputScope, TextDragObserver textDragObserver, Continuation<? super C00281> continuation) {
                                            super(2, continuation);
                                            this.$this_pointerInput = pointerInputScope;
                                            this.$observer = textDragObserver;
                                        }

                                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                                            return new C00281(this.$this_pointerInput, this.$observer, continuation);
                                        }

                                        @Override // kotlin.jvm.functions.Function2
                                        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                                            return ((C00281) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                                        }

                                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                        public final Object invokeSuspend(Object $result) {
                                            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                                            switch (this.label) {
                                                case 0:
                                                    ResultKt.throwOnFailure($result);
                                                    this.label = 1;
                                                    if (LongPressTextDragObserverKt.detectDownAndDragGesturesWithObserver(this.$this_pointerInput, this.$observer, this) == coroutine_suspended) {
                                                        return coroutine_suspended;
                                                    }
                                                    break;
                                                case 1:
                                                    ResultKt.throwOnFailure($result);
                                                    break;
                                                default:
                                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                            }
                                            return Unit.INSTANCE;
                                        }
                                    }

                                    /* JADX INFO: renamed from: androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$2$1$1$2, reason: invalid class name */
                                    /* JADX INFO: compiled from: CoreTextField.kt */
                                    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
                                    @DebugMetadata(c = "androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$2$1$1$2", f = "CoreTextField.kt", i = {}, l = {1117}, m = "invokeSuspend", n = {}, s = {}, v = 1)
                                    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                                        final /* synthetic */ TextFieldSelectionManager $manager;
                                        final /* synthetic */ PointerInputScope $this_pointerInput;
                                        int label;

                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                        AnonymousClass2(PointerInputScope pointerInputScope, TextFieldSelectionManager textFieldSelectionManager, Continuation<? super AnonymousClass2> continuation) {
                                            super(2, continuation);
                                            this.$this_pointerInput = pointerInputScope;
                                            this.$manager = textFieldSelectionManager;
                                        }

                                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                                            return new AnonymousClass2(this.$this_pointerInput, this.$manager, continuation);
                                        }

                                        @Override // kotlin.jvm.functions.Function2
                                        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                                            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                                        }

                                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                        public final Object invokeSuspend(Object $result) {
                                            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                                            switch (this.label) {
                                                case 0:
                                                    ResultKt.throwOnFailure($result);
                                                    PointerInputScope pointerInputScope = this.$this_pointerInput;
                                                    final TextFieldSelectionManager textFieldSelectionManager = this.$manager;
                                                    this.label = 1;
                                                    if (TapGestureDetectorKt.detectTapGestures$default(pointerInputScope, null, null, null, 
                                                    /*  JADX ERROR: Method code generation error
                                                        jadx.core.utils.exceptions.JadxRuntimeException: Expected class to be processed at this point, class: androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$2$1$1$2$$ExternalSyntheticLambda0, state: NOT_LOADED
                                                        	at jadx.core.dex.nodes.ClassNode.ensureProcessed(ClassNode.java:306)
                                                        	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:807)
                                                        	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:730)
                                                        	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:418)
                                                        	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:145)
                                                        	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:121)
                                                        	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:108)
                                                        	at jadx.core.codegen.InsnGen.generateMethodArguments(InsnGen.java:1143)
                                                        	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:910)
                                                        	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:422)
                                                        	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:145)
                                                        	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:121)
                                                        	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:108)
                                                        	at jadx.core.codegen.ConditionGen.addCompare(ConditionGen.java:129)
                                                        	at jadx.core.codegen.ConditionGen.add(ConditionGen.java:57)
                                                        	at jadx.core.codegen.ConditionGen.add(ConditionGen.java:46)
                                                        	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:115)
                                                        	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                        	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                        	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:267)
                                                        	at jadx.core.dex.regions.SwitchRegion.generate(SwitchRegion.java:88)
                                                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                        	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:305)
                                                        	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:284)
                                                        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:412)
                                                        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:337)
                                                        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:303)
                                                        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                                                        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                                                        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                                                        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                                                        */
                                                    /*
                                                        this = this;
                                                        java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                                                        int r1 = r9.label
                                                        switch(r1) {
                                                            case 0: goto L16;
                                                            case 1: goto L12;
                                                            default: goto L9;
                                                        }
                                                    L9:
                                                        java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
                                                        java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                                                        r10.<init>(r0)
                                                        throw r10
                                                    L12:
                                                        kotlin.ResultKt.throwOnFailure(r10)
                                                        goto L34
                                                    L16:
                                                        kotlin.ResultKt.throwOnFailure(r10)
                                                        androidx.compose.ui.input.pointer.PointerInputScope r1 = r9.$this_pointerInput
                                                        androidx.compose.foundation.text.selection.TextFieldSelectionManager r2 = r9.$manager
                                                        androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$2$1$1$2$$ExternalSyntheticLambda0 r5 = new androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$2$1$1$2$$ExternalSyntheticLambda0
                                                        r5.<init>(r2)
                                                        r6 = r9
                                                        kotlin.coroutines.Continuation r6 = (kotlin.coroutines.Continuation) r6
                                                        r2 = 1
                                                        r9.label = r2
                                                        r2 = 0
                                                        r3 = 0
                                                        r4 = 0
                                                        r7 = 7
                                                        r8 = 0
                                                        java.lang.Object r1 = androidx.compose.foundation.gestures.TapGestureDetectorKt.detectTapGestures$default(r1, r2, r3, r4, r5, r6, r7, r8)
                                                        if (r1 != r0) goto L34
                                                        return r0
                                                    L34:
                                                        kotlin.Unit r0 = kotlin.Unit.INSTANCE
                                                        return r0
                                                    */
                                                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$2$1.AnonymousClass1.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
                                                }

                                                static final Unit invokeSuspend$lambda$0(TextFieldSelectionManager $manager, Offset it) {
                                                    $manager.showSelectionToolbar$foundation();
                                                    return Unit.INSTANCE;
                                                }
                                            }
                                        }

                                        @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                        public final Object invoke(PointerInputScope $this$pointerInput, Continuation<? super Unit> continuation) {
                                            Object objCoroutineScope = CoroutineScopeKt.coroutineScope(new AnonymousClass1($this$pointerInput, observer, manager, null), continuation);
                                            return objCoroutineScope == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCoroutineScope : Unit.INSTANCE;
                                        }
                                    };
                                    $composer2.updateRememberedValue(value$iv3);
                                    it$iv3 = value$iv3;
                                }
                                ComposerKt.sourceInformationMarkerEnd($composer2);
                                Modifier modifierPointerInput = SuspendingPointerInputFilterKt.pointerInput(companion, observer, (PointerInputEventHandler) it$iv3);
                                ComposerKt.sourceInformationMarkerStart($composer2, -1315036615, "CC(remember):CoreTextField.kt#9igjgp");
                                boolean invalid$iv4 = $composer2.changed(position);
                                Object it$iv4 = $composer2.rememberedValue();
                                if (invalid$iv4 || it$iv4 == Composer.INSTANCE.getEmpty()) {
                                    Object value$iv4 = new Function1() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda20
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj) {
                                            return CoreTextFieldKt.TextFieldCursorHandle$lambda$3$0(position, (SemanticsPropertyReceiver) obj);
                                        }
                                    };
                                    $composer2.updateRememberedValue(value$iv4);
                                    it$iv4 = value$iv4;
                                }
                                ComposerKt.sourceInformationMarkerEnd($composer2);
                                AndroidCursorHandle_androidKt.m1130CursorHandleUSBMPiE(offsetProvider, SemanticsModifierKt.semantics$default(modifierPointerInput, false, (Function1) it$iv4, 1, null), 0L, $composer2, 0, 4);
                            }
                            $composer2.endReplaceGroup();
                            if (ComposerKt.isTraceInProgress()) {
                            }
                        } else {
                            if (transformedText$foundation.length() > 0) {
                                z = true;
                            }
                            if (!z) {
                            }
                            $composer2.endReplaceGroup();
                            if (ComposerKt.isTraceInProgress()) {
                            }
                        }
                    } else {
                        $composer2.startReplaceGroup(2132946858);
                        $composer2.endReplaceGroup();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }
                }
                ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda21
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            return CoreTextFieldKt.TextFieldCursorHandle$lambda$4(manager, $changed, (Composer) obj, ((Integer) obj2).intValue());
                        }
                    });
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final Unit TextFieldCursorHandle$lambda$3$0(long $position, SemanticsPropertyReceiver $this$semantics) {
                $this$semantics.set(SelectionHandlesKt.getSelectionHandleInfoKey(), new SelectionHandleInfo(Handle.Cursor, $position, SelectionHandleAnchor.Middle, true, null));
                return Unit.INSTANCE;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final void notifyFocusedRect(LegacyTextFieldState state, TextFieldValue value, OffsetMapping offsetMapping) {
                TextInputSession inputSession;
                LayoutCoordinates layoutCoordinates;
                Snapshot.Companion this_$iv = Snapshot.INSTANCE;
                Snapshot previousSnapshot$iv = this_$iv.getCurrentThreadSnapshot();
                Function1<Object, Unit> readObserver = previousSnapshot$iv != null ? previousSnapshot$iv.getReadObserver() : null;
                Snapshot newSnapshot$iv = this_$iv.makeCurrentNonObservable(previousSnapshot$iv);
                try {
                    TextLayoutResultProxy layoutResult = state.getLayoutResult();
                    if (layoutResult != null && (inputSession = state.getInputSession()) != null && (layoutCoordinates = state.getLayoutCoordinates()) != null) {
                        TextFieldDelegate.INSTANCE.notifyFocusedRect$foundation(value, state.getTextDelegate(), layoutResult.getValue(), layoutCoordinates, inputSession, state.getHasFocus(), offsetMapping);
                        Unit unit = Unit.INSTANCE;
                    }
                } finally {
                    this_$iv.restoreNonObservable(previousSnapshot$iv, newSnapshot$iv, readObserver);
                }
            }

            private static final Modifier addContextMenuComponents(Modifier $this$addContextMenuComponents, TextFieldSelectionManager textFieldSelectionManager, CoroutineScope coroutineScope) {
                if (ComposeFoundationFlags.isNewContextMenuEnabled) {
                    return TextFieldSelectionManager_androidKt.addBasicTextFieldTextContextMenuComponents($this$addContextMenuComponents, textFieldSelectionManager, coroutineScope);
                }
                return $this$addContextMenuComponents;
            }
        }
