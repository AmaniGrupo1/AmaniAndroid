package androidx.compose.foundation.text;

import androidx.autofill.HintConstants;
import androidx.compose.foundation.ComposeFoundationFlags;
import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollableDefaults;
import androidx.compose.foundation.gestures.ScrollableKt;
import androidx.compose.foundation.interaction.FocusInteractionKt;
import androidx.compose.foundation.interaction.HoverInteractionKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.text.contextmenu.modifier.ToolbarRequesterImpl;
import androidx.compose.foundation.text.handwriting.StylusHandwritingKt;
import androidx.compose.foundation.text.input.InputTransformation;
import androidx.compose.foundation.text.input.KeyboardActionHandler;
import androidx.compose.foundation.text.input.OutputTransformation;
import androidx.compose.foundation.text.input.TextFieldDecorator;
import androidx.compose.foundation.text.input.TextFieldLineLimits;
import androidx.compose.foundation.text.input.TextFieldState;
import androidx.compose.foundation.text.input.internal.CodepointTransformation;
import androidx.compose.foundation.text.input.internal.SingleLineCodepointTransformation;
import androidx.compose.foundation.text.input.internal.TextFieldCoreModifier;
import androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifier;
import androidx.compose.foundation.text.input.internal.TextFieldTextLayoutModifier;
import androidx.compose.foundation.text.input.internal.TextLayoutState;
import androidx.compose.foundation.text.input.internal.TransformedTextFieldState;
import androidx.compose.foundation.text.input.internal.selection.TextFieldHandleState;
import androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState;
import androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState_androidKt;
import androidx.compose.foundation.text.selection.AndroidSelectionHandles_androidKt;
import androidx.compose.foundation.text.selection.OffsetProvider;
import androidx.compose.foundation.text.selection.PlatformSelectionBehaviors;
import androidx.compose.foundation.text.selection.PlatformSelectionBehaviors_androidKt;
import androidx.compose.foundation.text.selection.SelectedTextType;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.input.pointer.PointerIcon;
import androidx.compose.ui.input.pointer.PointerIconKt;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.Clipboard;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.TextToolbar;
import androidx.compose.ui.platform.WindowInfo;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.KeyboardType;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.common.C;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.profileinstaller.ProfileVerifier;
import com.google.firebase.firestore.model.Values;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.SharedFlowKt;

/* JADX INFO: compiled from: BasicTextField.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000Ð\u0001\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u001aÛ\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u001228\b\u0002\u0010\u0013\u001a2\u0012\u0004\u0012\u00020\u0015\u0012\u001b\u0012\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u0016¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(\u001a\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0014¢\u0006\u0002\b\u001b2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\b\b\u0002\u0010\u001e\u001a\u00020\u001f2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010!2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010#2\b\b\u0002\u0010$\u001a\u00020%H\u0007¢\u0006\u0002\u0010&\u001añ\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u001228\b\u0002\u0010\u0013\u001a2\u0012\u0004\u0012\u00020\u0015\u0012\u001b\u0012\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u0016¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(\u001a\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0014¢\u0006\u0002\b\u001b2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\b\b\u0002\u0010\u001e\u001a\u00020\u001f2\n\b\u0002\u0010'\u001a\u0004\u0018\u00010(2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010!2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010#2\b\b\u0002\u0010$\u001a\u00020%2\b\b\u0002\u0010)\u001a\u00020\u0007H\u0001¢\u0006\u0002\u0010*\u001a\u001c\u0010+\u001a\u00020\u0005*\u00020\u00052\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/H\u0002\u001a\u0015\u00100\u001a\u00020\u00012\u0006\u00101\u001a\u00020-H\u0001¢\u0006\u0002\u00102\u001a\u0015\u00103\u001a\u00020\u00012\u0006\u00101\u001a\u00020-H\u0001¢\u0006\u0002\u00102\u001aî\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u00108\u001a\u0002092\u0012\u0010:\u001a\u000e\u0012\u0004\u0012\u000209\u0012\u0004\u0012\u00020\u00010;2\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010<\u001a\u00020=2\b\b\u0002\u0010>\u001a\u00020\u00072\b\b\u0002\u0010?\u001a\u00020@2\b\b\u0002\u0010A\u001a\u00020@2\b\b\u0002\u0010B\u001a\u00020C2\u0014\b\u0002\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00010;2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\b\b\u0002\u0010\u001e\u001a\u00020\u001f23\b\u0002\u0010D\u001a-\u0012\u001e\u0012\u001c\u0012\u0004\u0012\u00020\u00010\u0016¢\u0006\u0002\bE¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(F\u0012\u0004\u0012\u00020\u00010;¢\u0006\u0002\bEH\u0007¢\u0006\u0002\u0010G\u001aî\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u00108\u001a\u00020H2\u0012\u0010:\u001a\u000e\u0012\u0004\u0012\u00020H\u0012\u0004\u0012\u00020\u00010;2\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010<\u001a\u00020=2\b\b\u0002\u0010>\u001a\u00020\u00072\b\b\u0002\u0010?\u001a\u00020@2\b\b\u0002\u0010A\u001a\u00020@2\b\b\u0002\u0010B\u001a\u00020C2\u0014\b\u0002\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00010;2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\b\b\u0002\u0010\u001e\u001a\u00020\u001f23\b\u0002\u0010D\u001a-\u0012\u001e\u0012\u001c\u0012\u0004\u0012\u00020\u00010\u0016¢\u0006\u0002\bE¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(F\u0012\u0004\u0012\u00020\u00010;¢\u0006\u0002\bEH\u0007¢\u0006\u0002\u0010I\u001aâ\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u00108\u001a\u0002092\u0012\u0010:\u001a\u000e\u0012\u0004\u0012\u000209\u0012\u0004\u0012\u00020\u00010;2\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010<\u001a\u00020=2\b\b\u0002\u0010>\u001a\u00020\u00072\b\b\u0002\u0010?\u001a\u00020@2\b\b\u0002\u0010B\u001a\u00020C2\u0014\b\u0002\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00010;2\b\b\u0002\u0010\u001c\u001a\u00020\u001d2\b\b\u0002\u0010\u001e\u001a\u00020\u001f23\b\u0002\u0010D\u001a-\u0012\u001e\u0012\u001c\u0012\u0004\u0012\u00020\u00010\u0016¢\u0006\u0002\bE¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(F\u0012\u0004\u0012\u00020\u00010;¢\u0006\u0002\bEH\u0007¢\u0006\u0002\u0010J\u001aâ\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u00108\u001a\u00020H2\u0012\u0010:\u001a\u000e\u0012\u0004\u0012\u00020H\u0012\u0004\u0012\u00020\u00010;2\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010<\u001a\u00020=2\b\b\u0002\u0010>\u001a\u00020\u00072\b\b\u0002\u0010?\u001a\u00020@2\b\b\u0002\u0010B\u001a\u00020C2\u0014\b\u0002\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00010;2\b\b\u0002\u0010\u001c\u001a\u00020\u001d2\b\b\u0002\u0010\u001e\u001a\u00020\u001f23\b\u0002\u0010D\u001a-\u0012\u001e\u0012\u001c\u0012\u0004\u0012\u00020\u00010\u0016¢\u0006\u0002\bE¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(F\u0012\u0004\u0012\u00020\u00010;¢\u0006\u0002\bEH\u0007¢\u0006\u0002\u0010K\"\u000e\u00104\u001a\u00020#X\u0082\u0004¢\u0006\u0002\n\u0000\"\u0010\u00105\u001a\u000206X\u0082\u0004¢\u0006\u0004\n\u0002\u00107¨\u0006L²\u0006\n\u0010M\u001a\u00020NX\u008a\u0084\u0002²\u0006\n\u0010O\u001a\u00020NX\u008a\u0084\u0002²\u0006\n\u0010P\u001a\u00020NX\u008a\u0084\u0002²\u0006\n\u0010Q\u001a\u00020HX\u008a\u008e\u0002²\u0006\n\u0010R\u001a\u000209X\u008a\u008e\u0002"}, d2 = {"BasicTextField", "", "state", "Landroidx/compose/foundation/text/input/TextFieldState;", "modifier", "Landroidx/compose/ui/Modifier;", "enabled", "", "readOnly", "inputTransformation", "Landroidx/compose/foundation/text/input/InputTransformation;", "textStyle", "Landroidx/compose/ui/text/TextStyle;", "keyboardOptions", "Landroidx/compose/foundation/text/KeyboardOptions;", "onKeyboardAction", "Landroidx/compose/foundation/text/input/KeyboardActionHandler;", "lineLimits", "Landroidx/compose/foundation/text/input/TextFieldLineLimits;", "onTextLayout", "Lkotlin/Function2;", "Landroidx/compose/ui/unit/Density;", "Lkotlin/Function0;", "Landroidx/compose/ui/text/TextLayoutResult;", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "getResult", "Lkotlin/ExtensionFunctionType;", "interactionSource", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "cursorBrush", "Landroidx/compose/ui/graphics/Brush;", "outputTransformation", "Landroidx/compose/foundation/text/input/OutputTransformation;", "decorator", "Landroidx/compose/foundation/text/input/TextFieldDecorator;", "scrollState", "Landroidx/compose/foundation/ScrollState;", "(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/input/KeyboardActionHandler;Landroidx/compose/foundation/text/input/TextFieldLineLimits;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/text/input/TextFieldDecorator;Landroidx/compose/foundation/ScrollState;Landroidx/compose/runtime/Composer;III)V", "codepointTransformation", "Landroidx/compose/foundation/text/input/internal/CodepointTransformation;", "isPassword", "(Landroidx/compose/foundation/text/input/TextFieldState;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/foundation/text/input/InputTransformation;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/input/KeyboardActionHandler;Landroidx/compose/foundation/text/input/TextFieldLineLimits;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/foundation/text/input/internal/CodepointTransformation;Landroidx/compose/foundation/text/input/OutputTransformation;Landroidx/compose/foundation/text/input/TextFieldDecorator;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/runtime/Composer;III)V", "addContextMenuComponents", "textFieldSelectionState", "Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;", "coroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "TextFieldCursorHandle", "selectionState", "(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;Landroidx/compose/runtime/Composer;I)V", "TextFieldSelectionHandles", "DefaultTextFieldDecorator", "MinTouchTargetSizeForHandles", "Landroidx/compose/ui/unit/DpSize;", "J", Values.VECTOR_MAP_VECTORS_KEY, "", "onValueChange", "Lkotlin/Function1;", "keyboardActions", "Landroidx/compose/foundation/text/KeyboardActions;", "singleLine", "maxLines", "", "minLines", "visualTransformation", "Landroidx/compose/ui/text/input/VisualTransformation;", "decorationBox", "Landroidx/compose/runtime/Composable;", "innerTextField", "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V", "Landroidx/compose/ui/text/input/TextFieldValue;", "(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V", "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V", "(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V", "foundation", "cursorHandleState", "Landroidx/compose/foundation/text/input/internal/selection/TextFieldHandleState;", "startHandleState", "endHandleState", "textFieldValueState", "lastTextValue"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class BasicTextFieldKt {
    private static final TextFieldDecorator DefaultTextFieldDecorator = BasicTextFieldKt$DefaultTextFieldDecorator$1.INSTANCE;
    private static final long MinTouchTargetSizeForHandles = DpKt.m7527DpSizeYgX7TsA(Dp.m7505constructorimpl(40), Dp.m7505constructorimpl(40));

    static final Unit BasicTextField$lambda$0(TextFieldState textFieldState, Modifier modifier, boolean z, boolean z2, InputTransformation inputTransformation, TextStyle textStyle, KeyboardOptions keyboardOptions, KeyboardActionHandler keyboardActionHandler, TextFieldLineLimits textFieldLineLimits, Function2 function2, MutableInteractionSource mutableInteractionSource, Brush brush, OutputTransformation outputTransformation, TextFieldDecorator textFieldDecorator, ScrollState scrollState, int i, int i2, int i3, Composer composer, int i4) {
        BasicTextField(textFieldState, modifier, z, z2, inputTransformation, textStyle, keyboardOptions, keyboardActionHandler, textFieldLineLimits, (Function2<? super Density, ? super Function0<TextLayoutResult>, Unit>) function2, mutableInteractionSource, brush, outputTransformation, textFieldDecorator, scrollState, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), RecomposeScopeImplKt.updateChangedFlags(i2), i3);
        return Unit.INSTANCE;
    }

    static final Unit BasicTextField$lambda$15(TextFieldState textFieldState, Modifier modifier, boolean z, boolean z2, InputTransformation inputTransformation, TextStyle textStyle, KeyboardOptions keyboardOptions, KeyboardActionHandler keyboardActionHandler, TextFieldLineLimits textFieldLineLimits, Function2 function2, MutableInteractionSource mutableInteractionSource, Brush brush, CodepointTransformation codepointTransformation, OutputTransformation outputTransformation, TextFieldDecorator textFieldDecorator, ScrollState scrollState, boolean z3, int i, int i2, int i3, Composer composer, int i4) {
        BasicTextField(textFieldState, modifier, z, z2, inputTransformation, textStyle, keyboardOptions, keyboardActionHandler, textFieldLineLimits, function2, mutableInteractionSource, brush, codepointTransformation, outputTransformation, textFieldDecorator, scrollState, z3, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), RecomposeScopeImplKt.updateChangedFlags(i2), i3);
        return Unit.INSTANCE;
    }

    static final Unit BasicTextField$lambda$25(String str, Function1 function1, Modifier modifier, boolean z, boolean z2, TextStyle textStyle, KeyboardOptions keyboardOptions, KeyboardActions keyboardActions, boolean z3, int i, int i2, VisualTransformation visualTransformation, Function1 function12, MutableInteractionSource mutableInteractionSource, Brush brush, Function3 function3, int i3, int i4, int i5, Composer composer, int i6) {
        BasicTextField(str, (Function1<? super String, Unit>) function1, modifier, z, z2, textStyle, keyboardOptions, keyboardActions, z3, i, i2, visualTransformation, (Function1<? super TextLayoutResult, Unit>) function12, mutableInteractionSource, brush, (Function3<? super Function2<? super Composer, ? super Integer, Unit>, ? super Composer, ? super Integer, Unit>) function3, composer, RecomposeScopeImplKt.updateChangedFlags(i3 | 1), RecomposeScopeImplKt.updateChangedFlags(i4), i5);
        return Unit.INSTANCE;
    }

    static final Unit BasicTextField$lambda$28(TextFieldValue textFieldValue, Function1 function1, Modifier modifier, boolean z, boolean z2, TextStyle textStyle, KeyboardOptions keyboardOptions, KeyboardActions keyboardActions, boolean z3, int i, int i2, VisualTransformation visualTransformation, Function1 function12, MutableInteractionSource mutableInteractionSource, Brush brush, Function3 function3, int i3, int i4, int i5, Composer composer, int i6) {
        BasicTextField(textFieldValue, (Function1<? super TextFieldValue, Unit>) function1, modifier, z, z2, textStyle, keyboardOptions, keyboardActions, z3, i, i2, visualTransformation, (Function1<? super TextLayoutResult, Unit>) function12, mutableInteractionSource, brush, (Function3<? super Function2<? super Composer, ? super Integer, Unit>, ? super Composer, ? super Integer, Unit>) function3, composer, RecomposeScopeImplKt.updateChangedFlags(i3 | 1), RecomposeScopeImplKt.updateChangedFlags(i4), i5);
        return Unit.INSTANCE;
    }

    static final Unit BasicTextField$lambda$31(String str, Function1 function1, Modifier modifier, boolean z, boolean z2, TextStyle textStyle, KeyboardOptions keyboardOptions, KeyboardActions keyboardActions, boolean z3, int i, VisualTransformation visualTransformation, Function1 function12, MutableInteractionSource mutableInteractionSource, Brush brush, Function3 function3, int i2, int i3, int i4, Composer composer, int i5) {
        BasicTextField(str, function1, modifier, z, z2, textStyle, keyboardOptions, keyboardActions, z3, i, visualTransformation, function12, mutableInteractionSource, brush, function3, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1), RecomposeScopeImplKt.updateChangedFlags(i3), i4);
        return Unit.INSTANCE;
    }

    static final Unit BasicTextField$lambda$34(TextFieldValue textFieldValue, Function1 function1, Modifier modifier, boolean z, boolean z2, TextStyle textStyle, KeyboardOptions keyboardOptions, KeyboardActions keyboardActions, boolean z3, int i, VisualTransformation visualTransformation, Function1 function12, MutableInteractionSource mutableInteractionSource, Brush brush, Function3 function3, int i2, int i3, int i4, Composer composer, int i5) {
        BasicTextField(textFieldValue, function1, modifier, z, z2, textStyle, keyboardOptions, keyboardActions, z3, i, visualTransformation, function12, mutableInteractionSource, brush, function3, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1), RecomposeScopeImplKt.updateChangedFlags(i3), i4);
        return Unit.INSTANCE;
    }

    static final Unit TextFieldCursorHandle$lambda$4(TextFieldSelectionState textFieldSelectionState, int i, Composer composer, int i2) {
        TextFieldCursorHandle(textFieldSelectionState, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    static final Unit TextFieldSelectionHandles$lambda$8(TextFieldSelectionState textFieldSelectionState, int i, Composer composer, int i2) {
        TextFieldSelectionHandles(textFieldSelectionState, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    public static final void BasicTextField(final TextFieldState state, Modifier modifier, boolean enabled, boolean readOnly, InputTransformation inputTransformation, TextStyle textStyle, KeyboardOptions keyboardOptions, KeyboardActionHandler onKeyboardAction, TextFieldLineLimits lineLimits, Function2<? super Density, ? super Function0<TextLayoutResult>, Unit> function2, MutableInteractionSource interactionSource, Brush cursorBrush, OutputTransformation outputTransformation, TextFieldDecorator decorator, ScrollState scrollState, Composer $composer, final int $changed, final int $changed1, final int i) {
        Modifier modifier2;
        boolean z;
        boolean z2;
        InputTransformation inputTransformation2;
        TextStyle textStyle2;
        KeyboardOptions keyboardOptions2;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        Composer $composer2;
        final KeyboardActionHandler onKeyboardAction2;
        final MutableInteractionSource interactionSource2;
        final ScrollState scrollState2;
        final boolean enabled2;
        final InputTransformation inputTransformation3;
        final TextStyle textStyle3;
        final Modifier modifier3;
        final TextFieldLineLimits lineLimits2;
        final Brush cursorBrush2;
        final OutputTransformation outputTransformation2;
        final TextFieldDecorator decorator2;
        final KeyboardOptions keyboardOptions3;
        final boolean readOnly2;
        final Function2<? super Density, ? super Function0<TextLayoutResult>, Unit> function22;
        boolean enabled3;
        boolean readOnly3;
        InputTransformation inputTransformation4;
        KeyboardActionHandler onKeyboardAction3;
        TextFieldLineLimits lineLimits3;
        Function2<? super Density, ? super Function0<TextLayoutResult>, Unit> function23;
        MutableInteractionSource interactionSource3;
        SolidColor cursorBrush3;
        OutputTransformation outputTransformation3;
        TextFieldDecorator decorator3;
        ScrollState scrollState3;
        boolean readOnly4;
        int $dirty1;
        Function2<? super Density, ? super Function0<TextLayoutResult>, Unit> function24;
        TextFieldDecorator decorator4;
        Brush cursorBrush4;
        boolean enabled4;
        KeyboardActionHandler onKeyboardAction4;
        TextStyle textStyle4;
        TextFieldLineLimits lineLimits4;
        KeyboardOptions keyboardOptions4;
        Composer $composer3 = $composer.startRestartGroup(469439921);
        ComposerKt.sourceInformation($composer3, "C(BasicTextField)N(state,modifier,enabled,readOnly,inputTransformation,textStyle,keyboardOptions,onKeyboardAction,lineLimits,onTextLayout,interactionSource,cursorBrush,outputTransformation,decorator,scrollState)202@12315L610:BasicTextField.kt#423gt5");
        int $dirty = $changed;
        int $dirty12 = $changed1;
        if (($changed & 6) == 0) {
            $dirty |= $composer3.changed(state) ? 4 : 2;
        }
        int i9 = i & 2;
        if (i9 != 0) {
            $dirty |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty |= $composer3.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        int i10 = i & 4;
        if (i10 != 0) {
            $dirty |= RendererCapabilities.DECODER_SUPPORT_MASK;
            z = enabled;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            z = enabled;
            $dirty |= $composer3.changed(z) ? 256 : 128;
        } else {
            z = enabled;
        }
        int i11 = i & 8;
        if (i11 != 0) {
            $dirty |= 3072;
            z2 = readOnly;
        } else if (($changed & 3072) == 0) {
            z2 = readOnly;
            $dirty |= $composer3.changed(z2) ? 2048 : 1024;
        } else {
            z2 = readOnly;
        }
        int i12 = i & 16;
        int i13 = 8192;
        if (i12 != 0) {
            $dirty |= 24576;
            inputTransformation2 = inputTransformation;
        } else if (($changed & 24576) == 0) {
            inputTransformation2 = inputTransformation;
            $dirty |= $composer3.changed(inputTransformation2) ? 16384 : 8192;
        } else {
            inputTransformation2 = inputTransformation;
        }
        int i14 = i & 32;
        if (i14 != 0) {
            $dirty |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            textStyle2 = textStyle;
        } else if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            textStyle2 = textStyle;
            $dirty |= $composer3.changed(textStyle2) ? 131072 : 65536;
        } else {
            textStyle2 = textStyle;
        }
        int i15 = i & 64;
        if (i15 != 0) {
            $dirty |= 1572864;
            keyboardOptions2 = keyboardOptions;
        } else if (($changed & 1572864) == 0) {
            keyboardOptions2 = keyboardOptions;
            $dirty |= $composer3.changed(keyboardOptions2) ? 1048576 : 524288;
        } else {
            keyboardOptions2 = keyboardOptions;
        }
        int i16 = i & 128;
        if (i16 != 0) {
            $dirty |= 12582912;
            i2 = i16;
        } else if (($changed & 12582912) == 0) {
            i2 = i16;
            $dirty |= $composer3.changed(onKeyboardAction) ? 8388608 : 4194304;
        } else {
            i2 = i16;
        }
        int i17 = i & 256;
        if (i17 != 0) {
            $dirty |= 100663296;
            i3 = i17;
        } else if (($changed & 100663296) == 0) {
            i3 = i17;
            $dirty |= $composer3.changed(lineLimits) ? 67108864 : 33554432;
        } else {
            i3 = i17;
        }
        int i18 = i & 512;
        if (i18 != 0) {
            $dirty |= 805306368;
            i4 = i18;
        } else if (($changed & 805306368) == 0) {
            i4 = i18;
            $dirty |= $composer3.changedInstance(function2) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
        } else {
            i4 = i18;
        }
        int i19 = i & 1024;
        if (i19 != 0) {
            $dirty12 |= 6;
            i5 = i19;
        } else if (($changed1 & 6) == 0) {
            i5 = i19;
            $dirty12 |= $composer3.changed(interactionSource) ? 4 : 2;
        } else {
            i5 = i19;
        }
        int i20 = i & 2048;
        if (i20 != 0) {
            $dirty12 |= 48;
            i6 = i20;
        } else if (($changed1 & 48) == 0) {
            i6 = i20;
            $dirty12 |= $composer3.changed(cursorBrush) ? 32 : 16;
        } else {
            i6 = i20;
        }
        int i21 = i & 4096;
        if (i21 != 0) {
            $dirty12 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            i7 = i21;
        } else {
            i7 = i21;
            if (($changed1 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                $dirty12 |= $composer3.changed(outputTransformation) ? 256 : 128;
            }
        }
        int i22 = i & 8192;
        if (i22 != 0) {
            $dirty12 |= 3072;
            i8 = i22;
        } else {
            i8 = i22;
            if (($changed1 & 3072) == 0) {
                $dirty12 |= ($changed1 & 4096) == 0 ? $composer3.changed(decorator) : $composer3.changedInstance(decorator) ? 2048 : 1024;
            }
        }
        if (($changed1 & 24576) == 0) {
            if ((i & 16384) == 0 && $composer3.changed(scrollState)) {
                i13 = 16384;
            }
            $dirty12 |= i13;
        }
        if ($composer3.shouldExecute((($dirty & 306783379) == 306783378 && ($dirty12 & 9363) == 9362) ? false : true, $dirty & 1)) {
            $composer3.startDefaults();
            ComposerKt.sourceInformation($composer3, "198@12169L21");
            if (($changed & 1) != 0 && !$composer3.getDefaultsInvalid()) {
                $composer3.skipToGroupEnd();
                if ((i & 16384) != 0) {
                    interactionSource3 = interactionSource;
                    cursorBrush4 = cursorBrush;
                    outputTransformation3 = outputTransformation;
                    decorator4 = decorator;
                    scrollState3 = scrollState;
                    $dirty1 = (-57345) & $dirty12;
                    keyboardOptions4 = keyboardOptions2;
                    enabled4 = z;
                    readOnly4 = z2;
                    inputTransformation4 = inputTransformation2;
                    textStyle4 = textStyle2;
                    onKeyboardAction4 = onKeyboardAction;
                    lineLimits4 = lineLimits;
                    function24 = function2;
                } else {
                    function24 = function2;
                    interactionSource3 = interactionSource;
                    cursorBrush4 = cursorBrush;
                    outputTransformation3 = outputTransformation;
                    decorator4 = decorator;
                    scrollState3 = scrollState;
                    keyboardOptions4 = keyboardOptions2;
                    $dirty1 = $dirty12;
                    enabled4 = z;
                    readOnly4 = z2;
                    inputTransformation4 = inputTransformation2;
                    textStyle4 = textStyle2;
                    onKeyboardAction4 = onKeyboardAction;
                    lineLimits4 = lineLimits;
                }
            } else {
                if (i9 != 0) {
                    modifier2 = Modifier.INSTANCE;
                }
                if (i10 == 0) {
                    enabled3 = z;
                } else {
                    enabled3 = true;
                }
                if (i11 == 0) {
                    readOnly3 = z2;
                } else {
                    readOnly3 = false;
                }
                if (i12 == 0) {
                    inputTransformation4 = inputTransformation2;
                } else {
                    inputTransformation4 = null;
                }
                if (i14 != 0) {
                    textStyle2 = TextStyle.INSTANCE.getDefault();
                }
                if (i15 != 0) {
                    keyboardOptions2 = KeyboardOptions.INSTANCE.getDefault();
                }
                if (i2 == 0) {
                    onKeyboardAction3 = onKeyboardAction;
                } else {
                    onKeyboardAction3 = null;
                }
                if (i3 == 0) {
                    lineLimits3 = lineLimits;
                } else {
                    lineLimits3 = TextFieldLineLimits.INSTANCE.getDefault();
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
                    cursorBrush3 = cursorBrush;
                } else {
                    cursorBrush3 = BasicTextFieldDefaults.INSTANCE.getCursorBrush();
                }
                if (i7 == 0) {
                    outputTransformation3 = outputTransformation;
                } else {
                    outputTransformation3 = null;
                }
                if (i8 == 0) {
                    decorator3 = decorator;
                } else {
                    decorator3 = null;
                }
                if ((i & 16384) == 0) {
                    boolean enabled5 = enabled3;
                    scrollState3 = scrollState;
                    readOnly4 = readOnly3;
                    $dirty1 = $dirty12;
                    function24 = function23;
                    decorator4 = decorator3;
                    cursorBrush4 = cursorBrush3;
                    enabled4 = enabled5;
                    onKeyboardAction4 = onKeyboardAction3;
                    textStyle4 = textStyle2;
                    lineLimits4 = lineLimits3;
                    keyboardOptions4 = keyboardOptions2;
                } else {
                    $dirty1 = (-57345) & $dirty12;
                    enabled4 = enabled3;
                    scrollState3 = ScrollKt.rememberScrollState(0, $composer3, 0, 1);
                    readOnly4 = readOnly3;
                    function24 = function23;
                    decorator4 = decorator3;
                    cursorBrush4 = cursorBrush3;
                    onKeyboardAction4 = onKeyboardAction3;
                    textStyle4 = textStyle2;
                    lineLimits4 = lineLimits3;
                    keyboardOptions4 = keyboardOptions2;
                }
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(469439921, $dirty, $dirty1, "androidx.compose.foundation.text.BasicTextField (BasicTextField.kt:201)");
            }
            $composer2 = $composer3;
            Modifier modifier4 = modifier2;
            Function2<? super Density, ? super Function0<TextLayoutResult>, Unit> function25 = function24;
            BasicTextField(state, modifier4, enabled4, readOnly4, inputTransformation4, textStyle4, keyboardOptions4, onKeyboardAction4, lineLimits4, function25, interactionSource3, cursorBrush4, null, outputTransformation3, decorator4, scrollState3, false, $composer2, ($dirty & 14) | ($dirty & 112) | ($dirty & 896) | ($dirty & 7168) | (57344 & $dirty) | (458752 & $dirty) | (3670016 & $dirty) | (29360128 & $dirty) | (234881024 & $dirty) | (1879048192 & $dirty), ($dirty1 & 14) | RendererCapabilities.DECODER_SUPPORT_MASK | ($dirty1 & 112) | (($dirty1 << 3) & 7168) | (($dirty1 << 3) & 57344) | (($dirty1 << 3) & 458752), 65536);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier4;
            textStyle3 = textStyle4;
            function22 = function25;
            decorator2 = decorator4;
            enabled2 = enabled4;
            readOnly2 = readOnly4;
            inputTransformation3 = inputTransformation4;
            keyboardOptions3 = keyboardOptions4;
            onKeyboardAction2 = onKeyboardAction4;
            lineLimits2 = lineLimits4;
            interactionSource2 = interactionSource3;
            cursorBrush2 = cursorBrush4;
            outputTransformation2 = outputTransformation3;
            scrollState2 = scrollState3;
        } else {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
            onKeyboardAction2 = onKeyboardAction;
            interactionSource2 = interactionSource;
            scrollState2 = scrollState;
            enabled2 = z;
            inputTransformation3 = inputTransformation2;
            textStyle3 = textStyle2;
            modifier3 = modifier2;
            lineLimits2 = lineLimits;
            cursorBrush2 = cursorBrush;
            outputTransformation2 = outputTransformation;
            decorator2 = decorator;
            keyboardOptions3 = keyboardOptions2;
            readOnly2 = z2;
            function22 = function2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return BasicTextFieldKt.BasicTextField$lambda$0(state, modifier3, enabled2, readOnly2, inputTransformation3, textStyle3, keyboardOptions3, onKeyboardAction2, lineLimits2, function22, interactionSource2, cursorBrush2, outputTransformation2, decorator2, scrollState2, $changed, $changed1, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:309:0x055b  */
    /* JADX WARN: Removed duplicated region for block: B:310:0x0560  */
    /* JADX WARN: Removed duplicated region for block: B:313:0x0594  */
    /* JADX WARN: Removed duplicated region for block: B:314:0x05a9  */
    /* JADX WARN: Removed duplicated region for block: B:317:0x05bb  */
    /* JADX WARN: Removed duplicated region for block: B:321:0x05de  */
    /* JADX WARN: Removed duplicated region for block: B:324:0x0604  */
    /* JADX WARN: Removed duplicated region for block: B:328:0x0646  */
    /* JADX WARN: Removed duplicated region for block: B:332:0x065d  */
    /* JADX WARN: Removed duplicated region for block: B:336:0x06f6  */
    /* JADX WARN: Removed duplicated region for block: B:340:0x0702 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:344:0x0759  */
    /* JADX WARN: Removed duplicated region for block: B:345:0x075b  */
    /* JADX WARN: Removed duplicated region for block: B:348:0x077c  */
    /* JADX WARN: Removed duplicated region for block: B:349:0x077e  */
    /* JADX WARN: Removed duplicated region for block: B:352:0x0786  */
    /* JADX WARN: Removed duplicated region for block: B:353:0x0788  */
    /* JADX WARN: Removed duplicated region for block: B:356:0x0792  */
    /* JADX WARN: Removed duplicated region for block: B:357:0x0794  */
    /* JADX WARN: Removed duplicated region for block: B:360:0x07a0  */
    /* JADX WARN: Removed duplicated region for block: B:364:0x07b7  */
    /* JADX WARN: Removed duplicated region for block: B:368:0x0806  */
    /* JADX WARN: Removed duplicated region for block: B:372:0x0812 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:376:0x0831  */
    /* JADX WARN: Removed duplicated region for block: B:381:0x0853  */
    /* JADX WARN: Removed duplicated region for block: B:384:0x086e  */
    /* JADX WARN: Removed duplicated region for block: B:388:0x087a  */
    /* JADX WARN: Removed duplicated region for block: B:392:0x08d2  */
    /* JADX WARN: Removed duplicated region for block: B:395:0x08dd  */
    /* JADX WARN: Removed duplicated region for block: B:398:0x099a  */
    /* JADX WARN: Removed duplicated region for block: B:401:0x09a6  */
    /* JADX WARN: Removed duplicated region for block: B:402:0x09ac  */
    /* JADX WARN: Removed duplicated region for block: B:405:0x0a6a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void BasicTextField(final TextFieldState state, Modifier modifier, boolean enabled, boolean readOnly, InputTransformation inputTransformation, TextStyle textStyle, KeyboardOptions keyboardOptions, KeyboardActionHandler onKeyboardAction, TextFieldLineLimits lineLimits, Function2<? super Density, ? super Function0<TextLayoutResult>, Unit> function2, MutableInteractionSource interactionSource, Brush cursorBrush, CodepointTransformation codepointTransformation, OutputTransformation outputTransformation, TextFieldDecorator decorator, ScrollState scrollState, boolean isPassword, Composer $composer, final int $changed, final int $changed1, final int i) {
        Modifier modifier2;
        boolean enabled2;
        boolean readOnly2;
        InputTransformation inputTransformation2;
        TextStyle textStyle2;
        KeyboardOptions keyboardOptions2;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        Composer $composer2;
        final KeyboardActionHandler onKeyboardAction2;
        final OutputTransformation outputTransformation2;
        final ScrollState scrollState2;
        final boolean isPassword2;
        int $dirty;
        final TextStyle textStyle3;
        final KeyboardOptions keyboardOptions3;
        final InputTransformation inputTransformation3;
        final boolean enabled3;
        final Modifier modifier3;
        final boolean readOnly3;
        final TextFieldLineLimits lineLimits2;
        final Function2<? super Density, ? super Function0<TextLayoutResult>, Unit> function22;
        final MutableInteractionSource interactionSource2;
        final Brush cursorBrush2;
        final CodepointTransformation codepointTransformation2;
        final TextFieldDecorator decorator2;
        KeyboardOptions keyboardOptions4;
        KeyboardActionHandler onKeyboardAction3;
        TextFieldLineLimits lineLimits3;
        MutableInteractionSource interactionSource3;
        CodepointTransformation codepointTransformation3;
        TextStyle textStyle4;
        ScrollState scrollState3;
        final TextStyle textStyle5;
        final Function2<? super Density, ? super Function0<TextLayoutResult>, Unit> function23;
        boolean enabled4;
        final boolean readOnly4;
        final Brush cursorBrush3;
        final ScrollState scrollState4;
        OutputTransformation outputTransformation3;
        final TextFieldDecorator decorator3;
        int $dirty1;
        boolean isPassword3;
        KeyboardActionHandler onKeyboardAction4;
        MutableInteractionSource mutableInteractionSource;
        final TextFieldLineLimits lineLimits4;
        MutableInteractionSource interactionSource4;
        final boolean isWindowAndTextFieldFocused;
        Orientation orientation;
        LayoutDirection layoutDirection;
        SingleLineCodepointTransformation singleLineCodepointTransformation;
        OutputTransformation outputTransformation4;
        Object value$iv$iv;
        final PlatformSelectionBehaviors platformSelectionBehaviors;
        Object it$iv;
        boolean invalid$iv;
        CoroutineScope coroutineScope;
        Density density;
        boolean isPassword4;
        KeyboardOptions keyboardOptions5;
        CoroutineScope coroutineScope2;
        Clipboard currentClipboard;
        boolean invalid$iv2;
        Object it$iv2;
        boolean invalid$iv3;
        Density density2;
        final TransformedTextFieldState transformedState;
        InputTransformation inputTransformation4;
        boolean enabled5;
        boolean invalid$iv4;
        Object it$iv3;
        boolean invalid$iv5;
        InputTransformation inputTransformation5;
        Function0<ComposeUiNode> function0;
        Object value$iv;
        Composer $composer3 = $composer.startRestartGroup(965149429);
        ComposerKt.sourceInformation($composer3, "C(BasicTextField)N(state,modifier,enabled,readOnly,inputTransformation,textStyle,keyboardOptions,onKeyboardAction,lineLimits,onTextLayout,interactionSource,cursorBrush,codepointTransformation,outputTransformation,decorator,scrollState,isPassword)252@14291L7,253@14346L7,259@14716L25,260@14790L25,264@15134L107,269@15278L846,287@16322L48,294@16698L24,303@17116L35,304@17194L7,306@17244L617,321@17914L7,322@17968L7,325@18014L2260,372@20280L256,379@20553L510,379@20542L521,395@21111L51,395@21069L93,397@21191L35,405@21528L1339,462@24584L3165:BasicTextField.kt#423gt5");
        int $dirty2 = $changed;
        int $dirty12 = $changed1;
        if (($changed & 6) == 0) {
            $dirty2 |= $composer3.changed(state) ? 4 : 2;
        }
        int i10 = i & 2;
        if (i10 != 0) {
            $dirty2 |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty2 |= $composer3.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        int i11 = i & 4;
        if (i11 != 0) {
            $dirty2 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            enabled2 = enabled;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            enabled2 = enabled;
            $dirty2 |= $composer3.changed(enabled2) ? 256 : 128;
        } else {
            enabled2 = enabled;
        }
        int i12 = i & 8;
        if (i12 != 0) {
            $dirty2 |= 3072;
            readOnly2 = readOnly;
        } else if (($changed & 3072) == 0) {
            readOnly2 = readOnly;
            $dirty2 |= $composer3.changed(readOnly2) ? 2048 : 1024;
        } else {
            readOnly2 = readOnly;
        }
        int i13 = i & 16;
        if (i13 != 0) {
            $dirty2 |= 24576;
            inputTransformation2 = inputTransformation;
        } else if (($changed & 24576) == 0) {
            inputTransformation2 = inputTransformation;
            $dirty2 |= $composer3.changed(inputTransformation2) ? 16384 : 8192;
        } else {
            inputTransformation2 = inputTransformation;
        }
        int i14 = i & 32;
        if (i14 != 0) {
            $dirty2 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            textStyle2 = textStyle;
        } else if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            textStyle2 = textStyle;
            $dirty2 |= $composer3.changed(textStyle2) ? 131072 : 65536;
        } else {
            textStyle2 = textStyle;
        }
        int i15 = i & 64;
        if (i15 != 0) {
            $dirty2 |= 1572864;
            keyboardOptions2 = keyboardOptions;
        } else if (($changed & 1572864) == 0) {
            keyboardOptions2 = keyboardOptions;
            $dirty2 |= $composer3.changed(keyboardOptions2) ? 1048576 : 524288;
        } else {
            keyboardOptions2 = keyboardOptions;
        }
        int i16 = i & 128;
        if (i16 != 0) {
            $dirty2 |= 12582912;
            i2 = i16;
        } else if (($changed & 12582912) == 0) {
            i2 = i16;
            $dirty2 |= $composer3.changed(onKeyboardAction) ? 8388608 : 4194304;
        } else {
            i2 = i16;
        }
        int i17 = i & 256;
        if (i17 != 0) {
            $dirty2 |= 100663296;
            i3 = i17;
        } else if (($changed & 100663296) == 0) {
            i3 = i17;
            $dirty2 |= $composer3.changed(lineLimits) ? 67108864 : 33554432;
        } else {
            i3 = i17;
        }
        int i18 = i & 512;
        if (i18 != 0) {
            $dirty2 |= 805306368;
            i4 = i18;
        } else if (($changed & 805306368) == 0) {
            i4 = i18;
            $dirty2 |= $composer3.changedInstance(function2) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
        } else {
            i4 = i18;
        }
        int i19 = i & 1024;
        if (i19 != 0) {
            $dirty12 |= 6;
            i5 = i19;
        } else if (($changed1 & 6) == 0) {
            i5 = i19;
            $dirty12 |= $composer3.changed(interactionSource) ? 4 : 2;
        } else {
            i5 = i19;
        }
        int i20 = i & 2048;
        if (i20 != 0) {
            $dirty12 |= 48;
            i6 = i20;
        } else if (($changed1 & 48) == 0) {
            i6 = i20;
            $dirty12 |= $composer3.changed(cursorBrush) ? 32 : 16;
        } else {
            i6 = i20;
        }
        int i21 = i & 4096;
        if (i21 != 0) {
            $dirty12 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            i7 = i21;
        } else {
            i7 = i21;
            if (($changed1 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                $dirty12 |= $composer3.changed(codepointTransformation) ? 256 : 128;
            }
        }
        int i22 = i & 8192;
        if (i22 != 0) {
            $dirty12 |= 3072;
            i8 = i22;
        } else {
            i8 = i22;
            if (($changed1 & 3072) == 0) {
                $dirty12 |= $composer3.changed(outputTransformation) ? 2048 : 1024;
            }
        }
        int i23 = i & 16384;
        if (i23 != 0) {
            $dirty12 |= 24576;
            i9 = i23;
        } else {
            i9 = i23;
            if (($changed1 & 24576) == 0) {
                $dirty12 |= ($changed1 & 32768) == 0 ? $composer3.changed(decorator) : $composer3.changedInstance(decorator) ? 16384 : 8192;
            }
        }
        if ((196608 & $changed1) == 0) {
            $dirty12 |= ((i & 32768) == 0 && $composer3.changed(scrollState)) ? 131072 : 65536;
        }
        int i24 = i & 65536;
        if (i24 != 0) {
            $dirty12 |= 1572864;
        } else if (($changed1 & 1572864) == 0) {
            $dirty12 |= $composer3.changed(isPassword) ? 1048576 : 524288;
        }
        if ($composer3.shouldExecute((($dirty2 & 306783379) == 306783378 && (599187 & $dirty12) == 599186) ? false : true, $dirty2 & 1)) {
            $composer3.startDefaults();
            ComposerKt.sourceInformation($composer3, "247@14085L21");
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                if (i10 != 0) {
                    modifier2 = Modifier.INSTANCE;
                }
                if (i11 != 0) {
                    enabled2 = true;
                }
                if (i12 != 0) {
                    readOnly2 = false;
                }
                if (i13 != 0) {
                    inputTransformation2 = null;
                }
                TextStyle textStyle6 = i14 != 0 ? TextStyle.INSTANCE.getDefault() : textStyle2;
                keyboardOptions4 = i15 != 0 ? KeyboardOptions.INSTANCE.getDefault() : keyboardOptions2;
                onKeyboardAction3 = i2 != 0 ? null : onKeyboardAction;
                lineLimits3 = i3 != 0 ? TextFieldLineLimits.INSTANCE.getDefault() : lineLimits;
                Function2<? super Density, ? super Function0<TextLayoutResult>, Unit> function24 = i4 != 0 ? null : function2;
                interactionSource3 = i5 != 0 ? null : interactionSource;
                SolidColor cursorBrush4 = i6 != 0 ? BasicTextFieldDefaults.INSTANCE.getCursorBrush() : cursorBrush;
                codepointTransformation3 = i7 != 0 ? null : codepointTransformation;
                OutputTransformation outputTransformation5 = i8 != 0 ? null : outputTransformation;
                TextFieldDecorator decorator4 = i9 != 0 ? null : decorator;
                if ((i & 32768) != 0) {
                    textStyle4 = textStyle6;
                    scrollState3 = ScrollKt.rememberScrollState(0, $composer3, 0, 1);
                    $dirty12 &= -458753;
                } else {
                    textStyle4 = textStyle6;
                    scrollState3 = scrollState;
                }
                if (i24 != 0) {
                    textStyle5 = textStyle4;
                    function23 = function24;
                    enabled4 = enabled2;
                    readOnly4 = readOnly2;
                    cursorBrush3 = cursorBrush4;
                    scrollState4 = scrollState3;
                    decorator3 = decorator4;
                    $dirty1 = $dirty12;
                    isPassword3 = false;
                    outputTransformation3 = outputTransformation5;
                } else {
                    textStyle5 = textStyle4;
                    function23 = function24;
                    enabled4 = enabled2;
                    readOnly4 = readOnly2;
                    cursorBrush3 = cursorBrush4;
                    scrollState4 = scrollState3;
                    outputTransformation3 = outputTransformation5;
                    decorator3 = decorator4;
                    $dirty1 = $dirty12;
                    isPassword3 = isPassword;
                }
            } else {
                $composer3.skipToGroupEnd();
                if ((i & 32768) != 0) {
                    $dirty12 &= -458753;
                }
                onKeyboardAction3 = onKeyboardAction;
                function23 = function2;
                interactionSource3 = interactionSource;
                cursorBrush3 = cursorBrush;
                codepointTransformation3 = codepointTransformation;
                outputTransformation3 = outputTransformation;
                decorator3 = decorator;
                scrollState4 = scrollState;
                textStyle5 = textStyle2;
                keyboardOptions4 = keyboardOptions2;
                enabled4 = enabled2;
                readOnly4 = readOnly2;
                lineLimits3 = lineLimits;
                $dirty1 = $dirty12;
                isPassword3 = isPassword;
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(965149429, $dirty2, $dirty1, "androidx.compose.foundation.text.BasicTextField (BasicTextField.kt:251)");
            }
            ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
            boolean isPassword5 = isPassword3;
            ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume = $composer3.consume(localDensity);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            Density density3 = (Density) objConsume;
            ProvidableCompositionLocal<LayoutDirection> localLayoutDirection = CompositionLocalsKt.getLocalLayoutDirection();
            ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume2 = $composer3.consume(localLayoutDirection);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            LayoutDirection layoutDirection2 = (LayoutDirection) objConsume2;
            final boolean singleLine = Intrinsics.areEqual(lineLimits3, TextFieldLineLimits.SingleLine.INSTANCE);
            if (interactionSource3 == null) {
                $composer3.startReplaceGroup(-2038132442);
                ComposerKt.sourceInformation($composer3, "257@14551L39");
                ComposerKt.sourceInformationMarkerStart($composer3, -204293540, "CC(remember):BasicTextField.kt#9igjgp");
                Object it$iv4 = $composer3.rememberedValue();
                onKeyboardAction4 = onKeyboardAction3;
                if (it$iv4 == Composer.INSTANCE.getEmpty()) {
                    value$iv = InteractionSourceKt.MutableInteractionSource();
                    $composer3.updateRememberedValue(value$iv);
                } else {
                    value$iv = it$iv4;
                }
                mutableInteractionSource = (MutableInteractionSource) value$iv;
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer3.endReplaceGroup();
            } else {
                onKeyboardAction4 = onKeyboardAction3;
                $composer3.startReplaceGroup(-204294191);
                $composer3.endReplaceGroup();
                mutableInteractionSource = interactionSource3;
            }
            MutableInteractionSource interactionSource5 = mutableInteractionSource;
            Orientation orientation2 = singleLine ? Orientation.Horizontal : Orientation.Vertical;
            boolean isFocused = FocusInteractionKt.collectIsFocusedAsState(interactionSource5, $composer3, 0).getValue().booleanValue();
            final boolean isDragHovered = HoverInteractionKt.collectIsHoveredAsState(interactionSource5, $composer3, 0).getValue().booleanValue();
            if (isFocused) {
                $composer3.startReplaceGroup(-204276540);
                ComposerKt.sourceInformation($composer3, "263@15075L7");
                ProvidableCompositionLocal<WindowInfo> localWindowInfo = CompositionLocalsKt.getLocalWindowInfo();
                lineLimits4 = lineLimits3;
                interactionSource4 = interactionSource3;
                ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
                Object objConsume3 = $composer3.consume(localWindowInfo);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                boolean zIsWindowFocused = ((WindowInfo) objConsume3).isWindowFocused();
                $composer3.endReplaceGroup();
                isWindowAndTextFieldFocused = zIsWindowFocused;
            } else {
                lineLimits4 = lineLimits3;
                interactionSource4 = interactionSource3;
                $composer3.startReplaceGroup(-2037604207);
                $composer3.endReplaceGroup();
                isWindowAndTextFieldFocused = false;
            }
            ComposerKt.sourceInformationMarkerStart($composer3, -204274816, "CC(remember):BasicTextField.kt#9igjgp");
            Object it$iv5 = $composer3.rememberedValue();
            if (it$iv5 == Composer.INSTANCE.getEmpty()) {
                orientation = orientation2;
                layoutDirection = layoutDirection2;
                Object value$iv2 = SharedFlowKt.MutableSharedFlow$default(1, 0, BufferOverflow.DROP_LATEST, 2, null);
                $composer3.updateRememberedValue(value$iv2);
                it$iv5 = value$iv2;
            } else {
                orientation = orientation2;
                layoutDirection = layoutDirection2;
            }
            final MutableSharedFlow stylusHandwritingTrigger = (MutableSharedFlow) it$iv5;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerStart($composer3, -204269469, "CC(remember):BasicTextField.kt#9igjgp");
            boolean invalid$iv6 = (($dirty2 & 14) == 4) | (($dirty1 & 896) == 256) | (($dirty1 & 7168) == 2048);
            Object it$iv6 = $composer3.rememberedValue();
            if (invalid$iv6 || it$iv6 == Composer.INSTANCE.getEmpty()) {
                if (codepointTransformation3 == null) {
                    SingleLineCodepointTransformation singleLineCodepointTransformation2 = SingleLineCodepointTransformation.INSTANCE;
                    if (!singleLine) {
                        singleLineCodepointTransformation2 = null;
                    }
                    singleLineCodepointTransformation = singleLineCodepointTransformation2;
                } else {
                    singleLineCodepointTransformation = codepointTransformation3;
                }
                CodepointTransformation appliedCodepointTransformation = singleLineCodepointTransformation;
                Object value$iv3 = new TransformedTextFieldState(state, inputTransformation2, appliedCodepointTransformation, outputTransformation3);
                $composer3.updateRememberedValue(value$iv3);
                it$iv6 = value$iv3;
            }
            final TransformedTextFieldState transformedState2 = (TransformedTextFieldState) it$iv6;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerStart($composer3, -204236859, "CC(remember):BasicTextField.kt#9igjgp");
            boolean invalid$iv7 = $composer3.changed(transformedState2);
            Object it$iv7 = $composer3.rememberedValue();
            if (invalid$iv7) {
                outputTransformation4 = outputTransformation3;
            } else {
                outputTransformation4 = outputTransformation3;
                if (it$iv7 == Composer.INSTANCE.getEmpty()) {
                }
                final TextLayoutState textLayoutState = (TextLayoutState) it$iv7;
                ComposerKt.sourceInformationMarkerEnd($composer3);
                final KeyboardOptions resolvedKeyboardOptions = keyboardOptions4.fillUnspecifiedValuesWith$foundation(inputTransformation2 == null ? inputTransformation2.getKeyboardOptions() : null);
                ComposerKt.sourceInformationMarkerStart($composer3, 773894976, "CC(rememberCoroutineScope)N(getContext)600@27430L68:Effects.kt#9igjgp");
                ComposerKt.sourceInformationMarkerStart($composer3, 683736516, "CC(remember):Effects.kt#9igjgp");
                value$iv$iv = $composer3.rememberedValue();
                if (value$iv$iv != Composer.INSTANCE.getEmpty()) {
                    value$iv$iv = EffectsKt.createCompositionCoroutineScope(EmptyCoroutineContext.INSTANCE, $composer3);
                    $composer3.updateRememberedValue(value$iv$iv);
                }
                CoroutineScope coroutineScope3 = (CoroutineScope) value$iv$iv;
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                if (ComposeFoundationFlags.isSmartSelectionEnabled) {
                    $composer3.startReplaceGroup(-2035643855);
                    $composer3.endReplaceGroup();
                    platformSelectionBehaviors = null;
                } else {
                    $composer3.startReplaceGroup(-2035832304);
                    ComposerKt.sourceInformation($composer3, "299@16959L85");
                    LocaleList resolvedLocaleList = textStyle5.getLocaleList();
                    if (resolvedLocaleList == null) {
                        resolvedLocaleList = LocaleList.INSTANCE.getCurrent();
                    }
                    PlatformSelectionBehaviors platformSelectionBehaviorsRememberPlatformSelectionBehaviors = PlatformSelectionBehaviors_androidKt.rememberPlatformSelectionBehaviors(SelectedTextType.EditableText, resolvedLocaleList, $composer3, 6);
                    $composer3.endReplaceGroup();
                    platformSelectionBehaviors = platformSelectionBehaviorsRememberPlatformSelectionBehaviors;
                }
                ComposerKt.sourceInformationMarkerStart($composer3, -204211464, "CC(remember):BasicTextField.kt#9igjgp");
                it$iv = $composer3.rememberedValue();
                if (it$iv == Composer.INSTANCE.getEmpty()) {
                    Object value$iv4 = new ToolbarRequesterImpl();
                    $composer3.updateRememberedValue(value$iv4);
                    it$iv = value$iv4;
                }
                final ToolbarRequesterImpl toolbarRequester = (ToolbarRequesterImpl) it$iv;
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ProvidableCompositionLocal<Clipboard> localClipboard = CompositionLocalsKt.getLocalClipboard();
                ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
                Object objConsume4 = $composer3.consume(localClipboard);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                Clipboard currentClipboard2 = (Clipboard) objConsume4;
                ComposerKt.sourceInformationMarkerStart($composer3, -204206786, "CC(remember):BasicTextField.kt#9igjgp");
                invalid$iv = $composer3.changed(transformedState2);
                Object it$iv8 = $composer3.rememberedValue();
                if (invalid$iv) {
                    coroutineScope = coroutineScope3;
                    if (it$iv8 != Composer.INSTANCE.getEmpty()) {
                        isPassword4 = isPassword5;
                        coroutineScope2 = coroutineScope;
                        keyboardOptions5 = keyboardOptions4;
                        currentClipboard = currentClipboard2;
                        density = density3;
                    }
                    final TextFieldSelectionState textFieldSelectionState = (TextFieldSelectionState) it$iv8;
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    ProvidableCompositionLocal<HapticFeedback> localHapticFeedback = CompositionLocalsKt.getLocalHapticFeedback();
                    int $dirty13 = $dirty1;
                    ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
                    Object objConsume5 = $composer3.consume(localHapticFeedback);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    final HapticFeedback currentHapticFeedback = (HapticFeedback) objConsume5;
                    ProvidableCompositionLocal<TextToolbar> localTextToolbar = CompositionLocalsKt.getLocalTextToolbar();
                    final InputTransformation inputTransformation6 = inputTransformation2;
                    ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
                    Object objConsume6 = $composer3.consume(localTextToolbar);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    TextToolbar currentTextToolbar = (TextToolbar) objConsume6;
                    ComposerKt.sourceInformationMarkerStart($composer3, -204180503, "CC(remember):BasicTextField.kt#9igjgp");
                    invalid$iv2 = $composer3.changed(coroutineScope2) | $composer3.changed(currentTextToolbar);
                    it$iv2 = $composer3.rememberedValue();
                    if (invalid$iv2 || it$iv2 == Composer.INSTANCE.getEmpty()) {
                        Object value$iv5 = new BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1(currentTextToolbar, coroutineScope2);
                        $composer3.updateRememberedValue(value$iv5);
                        it$iv2 = value$iv5;
                    }
                    final BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1 textToolbarHandler = (BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1) it$iv2;
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    new Function1() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$$ExternalSyntheticLambda16
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return BasicTextFieldKt.BasicTextField$lambda$8(textFieldSelectionState, (AnnotatedString) obj);
                        }
                    };
                    new Function0() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$$ExternalSyntheticLambda17
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return TextFieldSelectionState.copyWithResult$foundation$default(textFieldSelectionState, false, 1, null);
                        }
                    };
                    new Function0() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$$ExternalSyntheticLambda18
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return textFieldSelectionState.cutWithResult();
                        }
                    };
                    ComposerKt.sourceInformationMarkerStart($composer3, 1197772674, "CC(rememberClipboardEventsHandler)N(onPaste,onCopy,onCut,isEnabled):ClipboardEventsHandler.jvm.kt#423gt5");
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    ComposerKt.sourceInformationMarkerStart($composer3, -204101005, "CC(remember):BasicTextField.kt#9igjgp");
                    invalid$iv3 = $composer3.changed(transformedState2) | ((57344 & $dirty2) == 16384) | $composer3.changedInstance(textFieldSelectionState) | $composer3.changedInstance(currentHapticFeedback) | $composer3.changedInstance(currentClipboard) | $composer3.changed(textToolbarHandler) | $composer3.changed(density) | (($dirty2 & 896) == 256) | (($dirty2 & 7168) == 2048) | (($dirty13 & 3670016) == 1048576);
                    Object it$iv9 = $composer3.rememberedValue();
                    if (invalid$iv3) {
                        density2 = density;
                    } else {
                        density2 = density;
                        if (it$iv9 != Composer.INSTANCE.getEmpty()) {
                            transformedState = transformedState2;
                            enabled5 = enabled4;
                            inputTransformation4 = inputTransformation6;
                        }
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        EffectsKt.SideEffect((Function0) it$iv9, $composer3, 0);
                        ComposerKt.sourceInformationMarkerStart($composer3, -204083608, "CC(remember):BasicTextField.kt#9igjgp");
                        invalid$iv4 = $composer3.changedInstance(textFieldSelectionState);
                        it$iv3 = $composer3.rememberedValue();
                        if (!invalid$iv4 || it$iv3 == Composer.INSTANCE.getEmpty()) {
                            Object value$iv6 = new Function1() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$$ExternalSyntheticLambda20
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) {
                                    return BasicTextFieldKt.BasicTextField$lambda$12$0(textFieldSelectionState, (DisposableEffectScope) obj);
                                }
                            };
                            $composer3.updateRememberedValue(value$iv6);
                            it$iv3 = value$iv6;
                        }
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        EffectsKt.DisposableEffect(textFieldSelectionState, (Function1<? super DisposableEffectScope, ? extends DisposableEffectResult>) it$iv3, $composer3, 0);
                        OverscrollEffect overscrollEffect = TextFieldScroll_androidKt.rememberTextFieldOverscrollEffect($composer3, 0);
                        final boolean handwritingEnabled = (!isPassword4 || KeyboardType.m7149equalsimpl0(keyboardOptions5.getKeyboardType(), KeyboardType.INSTANCE.m7168getPasswordPjHm6EE()) || KeyboardType.m7149equalsimpl0(keyboardOptions5.getKeyboardType(), KeyboardType.INSTANCE.m7167getNumberPasswordPjHm6EE())) ? false : true;
                        ComposerKt.sourceInformationMarkerStart($composer3, -204068976, "CC(remember):BasicTextField.kt#9igjgp");
                        invalid$iv5 = $composer3.changed(handwritingEnabled) | $composer3.changedInstance(stylusHandwritingTrigger);
                        Object it$iv10 = $composer3.rememberedValue();
                        if (invalid$iv5) {
                            inputTransformation5 = inputTransformation4;
                            if (it$iv10 == Composer.INSTANCE.getEmpty()) {
                            }
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            InputTransformation inputTransformation7 = inputTransformation5;
                            KeyboardActionHandler onKeyboardAction5 = onKeyboardAction4;
                            final boolean enabled6 = enabled5;
                            boolean isPassword6 = isPassword4;
                            Modifier decorationModifiers = addContextMenuComponents(PointerIconKt.pointerHoverIcon$default(ScrollableKt.scrollable$default(StylusHandwritingKt.stylusHandwriting(modifier2, enabled5, handwritingEnabled, (Function0) it$iv10).then(new TextFieldDecoratorModifier(transformedState, textLayoutState, textFieldSelectionState, inputTransformation7, enabled6, readOnly4, resolvedKeyboardOptions, onKeyboardAction5, singleLine, interactionSource5, isPassword6, stylusHandwritingTrigger)), scrollState4, orientation, overscrollEffect, enabled6 && textFieldSelectionState.getDirectDragGestureInitiator() == TextFieldSelectionState.InputType.None, ScrollableDefaults.INSTANCE.reverseDirection(layoutDirection, orientation, false), null, interactionSource5, null, 160, null), PointerIcon.INSTANCE.getText(), false, 2, null), textFieldSelectionState, coroutineScope2);
                            ComposerKt.sourceInformationMarkerStart($composer3, 1042775818, "CC(Box)N(modifier,contentAlignment,propagateMinConstraints,content)71@3424L131:Box.kt#2w3rfo");
                            Alignment contentAlignment$iv = Alignment.INSTANCE.getTopStart();
                            MeasurePolicy measurePolicy$iv = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv, true);
                            int $changed$iv$iv = (RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 112;
                            ComposerKt.sourceInformationMarkerStart($composer3, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                            int compositeKeyHash$iv$iv = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer3, 0));
                            CompositionLocalMap localMap$iv$iv = $composer3.getCurrentCompositionLocalMap();
                            Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer3, decorationModifiers);
                            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
                            int $changed$iv$iv$iv = (($changed$iv$iv << 6) & 896) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer3, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
                            if (!($composer3.getApplier() instanceof Applier)) {
                                ComposablesKt.invalidApplier();
                            }
                            $composer3.startReusableNode();
                            if ($composer3.getInserting()) {
                                function0 = constructor;
                                $composer3.useNode();
                            } else {
                                function0 = constructor;
                                $composer3.createNode(function0);
                            }
                            Composer $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer3);
                            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                            Updater.m3971initimpl($this$Layout_u24lambda_u240$iv$iv, Integer.valueOf(compositeKeyHash$iv$iv), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                            Updater.m3973reconcileimpl($this$Layout_u24lambda_u240$iv$iv, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
                            int i25 = ($changed$iv$iv$iv >> 6) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer3, 1833054614, "C72@3469L9:Box.kt#2w3rfo");
                            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                            int i26 = ((RendererCapabilities.DECODER_SUPPORT_MASK >> 6) & 112) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer3, -1520421984, "C463@24701L3042,463@24651L3092:BasicTextField.kt#423gt5");
                            final Orientation orientation3 = orientation;
                            $composer2 = $composer3;
                            ContextMenu_androidKt.ContextMenuArea(textFieldSelectionState, enabled6, ComposableLambdaKt.rememberComposableLambda(-673241599, true, new Function2() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$$ExternalSyntheticLambda22
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj, Object obj2) {
                                    return BasicTextFieldKt.BasicTextField$lambda$14$0(decorator3, lineLimits4, textLayoutState, textStyle5, isWindowAndTextFieldFocused, isDragHovered, transformedState, textFieldSelectionState, cursorBrush3, enabled6, readOnly4, scrollState4, orientation3, toolbarRequester, platformSelectionBehaviors, singleLine, function23, resolvedKeyboardOptions, (Composer) obj, ((Integer) obj2).intValue());
                                }
                            }, $composer3, 54), $composer3, (($dirty2 >> 3) & 112) | RendererCapabilities.DECODER_SUPPORT_MASK);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            $composer3.endNode();
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            enabled3 = enabled6;
                            $dirty = $dirty2;
                            isPassword2 = isPassword6;
                            inputTransformation3 = inputTransformation7;
                            modifier3 = modifier2;
                            onKeyboardAction2 = onKeyboardAction5;
                            codepointTransformation2 = codepointTransformation3;
                            keyboardOptions3 = keyboardOptions5;
                            outputTransformation2 = outputTransformation4;
                            decorator2 = decorator3;
                            lineLimits2 = lineLimits4;
                            textStyle3 = textStyle5;
                            cursorBrush2 = cursorBrush3;
                            readOnly3 = readOnly4;
                            scrollState2 = scrollState4;
                            function22 = function23;
                            interactionSource2 = interactionSource4;
                        } else {
                            inputTransformation5 = inputTransformation4;
                        }
                        Object value$iv7 = new Function0() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$$ExternalSyntheticLambda21
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return BasicTextFieldKt.BasicTextField$lambda$13$0(handwritingEnabled, stylusHandwritingTrigger);
                            }
                        };
                        $composer3.updateRememberedValue(value$iv7);
                        it$iv10 = value$iv7;
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        InputTransformation inputTransformation72 = inputTransformation5;
                        KeyboardActionHandler onKeyboardAction52 = onKeyboardAction4;
                        final boolean enabled62 = enabled5;
                        boolean isPassword62 = isPassword4;
                        if (enabled62) {
                            Modifier decorationModifiers2 = addContextMenuComponents(PointerIconKt.pointerHoverIcon$default(ScrollableKt.scrollable$default(StylusHandwritingKt.stylusHandwriting(modifier2, enabled5, handwritingEnabled, (Function0) it$iv10).then(new TextFieldDecoratorModifier(transformedState, textLayoutState, textFieldSelectionState, inputTransformation72, enabled62, readOnly4, resolvedKeyboardOptions, onKeyboardAction52, singleLine, interactionSource5, isPassword62, stylusHandwritingTrigger)), scrollState4, orientation, overscrollEffect, enabled62 && textFieldSelectionState.getDirectDragGestureInitiator() == TextFieldSelectionState.InputType.None, ScrollableDefaults.INSTANCE.reverseDirection(layoutDirection, orientation, false), null, interactionSource5, null, 160, null), PointerIcon.INSTANCE.getText(), false, 2, null), textFieldSelectionState, coroutineScope2);
                            ComposerKt.sourceInformationMarkerStart($composer3, 1042775818, "CC(Box)N(modifier,contentAlignment,propagateMinConstraints,content)71@3424L131:Box.kt#2w3rfo");
                            Alignment contentAlignment$iv2 = Alignment.INSTANCE.getTopStart();
                            MeasurePolicy measurePolicy$iv2 = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv2, true);
                            int $changed$iv$iv2 = (RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 112;
                            ComposerKt.sourceInformationMarkerStart($composer3, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                            int compositeKeyHash$iv$iv2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer3, 0));
                            CompositionLocalMap localMap$iv$iv2 = $composer3.getCurrentCompositionLocalMap();
                            Modifier materialized$iv$iv2 = ComposedModifierKt.materializeModifier($composer3, decorationModifiers2);
                            Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
                            int $changed$iv$iv$iv2 = (($changed$iv$iv2 << 6) & 896) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer3, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
                            if (!($composer3.getApplier() instanceof Applier)) {
                            }
                            $composer3.startReusableNode();
                            if ($composer3.getInserting()) {
                            }
                            Composer $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3967constructorimpl($composer3);
                            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                            Updater.m3971initimpl($this$Layout_u24lambda_u240$iv$iv2, Integer.valueOf(compositeKeyHash$iv$iv2), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                            Updater.m3973reconcileimpl($this$Layout_u24lambda_u240$iv$iv2, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, materialized$iv$iv2, ComposeUiNode.INSTANCE.getSetModifier());
                            int i252 = ($changed$iv$iv$iv2 >> 6) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer3, 1833054614, "C72@3469L9:Box.kt#2w3rfo");
                            BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                            int i262 = ((RendererCapabilities.DECODER_SUPPORT_MASK >> 6) & 112) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer3, -1520421984, "C463@24701L3042,463@24651L3092:BasicTextField.kt#423gt5");
                            final Orientation orientation32 = orientation;
                            $composer2 = $composer3;
                            ContextMenu_androidKt.ContextMenuArea(textFieldSelectionState, enabled62, ComposableLambdaKt.rememberComposableLambda(-673241599, true, new Function2() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$$ExternalSyntheticLambda22
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj, Object obj2) {
                                    return BasicTextFieldKt.BasicTextField$lambda$14$0(decorator3, lineLimits4, textLayoutState, textStyle5, isWindowAndTextFieldFocused, isDragHovered, transformedState, textFieldSelectionState, cursorBrush3, enabled62, readOnly4, scrollState4, orientation32, toolbarRequester, platformSelectionBehaviors, singleLine, function23, resolvedKeyboardOptions, (Composer) obj, ((Integer) obj2).intValue());
                                }
                            }, $composer3, 54), $composer3, (($dirty2 >> 3) & 112) | RendererCapabilities.DECODER_SUPPORT_MASK);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            $composer3.endNode();
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            if (ComposerKt.isTraceInProgress()) {
                            }
                            enabled3 = enabled62;
                            $dirty = $dirty2;
                            isPassword2 = isPassword62;
                            inputTransformation3 = inputTransformation72;
                            modifier3 = modifier2;
                            onKeyboardAction2 = onKeyboardAction52;
                            codepointTransformation2 = codepointTransformation3;
                            keyboardOptions3 = keyboardOptions5;
                            outputTransformation2 = outputTransformation4;
                            decorator2 = decorator3;
                            lineLimits2 = lineLimits4;
                            textStyle3 = textStyle5;
                            cursorBrush2 = cursorBrush3;
                            readOnly3 = readOnly4;
                            scrollState2 = scrollState4;
                            function22 = function23;
                            interactionSource2 = interactionSource4;
                        }
                    }
                    final Density density4 = density2;
                    final Clipboard currentClipboard3 = currentClipboard;
                    final boolean isPassword7 = isPassword4;
                    final boolean enabled7 = enabled4;
                    final boolean readOnly5 = readOnly4;
                    Object value$iv8 = new Function0() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$$ExternalSyntheticLambda19
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return BasicTextFieldKt.BasicTextField$lambda$11$0(transformedState2, inputTransformation6, textFieldSelectionState, currentHapticFeedback, currentClipboard3, textToolbarHandler, density4, enabled7, readOnly5, isPassword7);
                        }
                    };
                    transformedState = transformedState2;
                    inputTransformation4 = inputTransformation6;
                    enabled5 = enabled7;
                    $composer3.updateRememberedValue(value$iv8);
                    it$iv9 = value$iv8;
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    EffectsKt.SideEffect((Function0) it$iv9, $composer3, 0);
                    ComposerKt.sourceInformationMarkerStart($composer3, -204083608, "CC(remember):BasicTextField.kt#9igjgp");
                    invalid$iv4 = $composer3.changedInstance(textFieldSelectionState);
                    it$iv3 = $composer3.rememberedValue();
                    if (!invalid$iv4) {
                    }
                    Object value$iv62 = new Function1() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$$ExternalSyntheticLambda20
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return BasicTextFieldKt.BasicTextField$lambda$12$0(textFieldSelectionState, (DisposableEffectScope) obj);
                        }
                    };
                    $composer3.updateRememberedValue(value$iv62);
                    it$iv3 = value$iv62;
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    EffectsKt.DisposableEffect(textFieldSelectionState, (Function1<? super DisposableEffectScope, ? extends DisposableEffectResult>) it$iv3, $composer3, 0);
                    OverscrollEffect overscrollEffect2 = TextFieldScroll_androidKt.rememberTextFieldOverscrollEffect($composer3, 0);
                    if (!isPassword4) {
                        ComposerKt.sourceInformationMarkerStart($composer3, -204068976, "CC(remember):BasicTextField.kt#9igjgp");
                        invalid$iv5 = $composer3.changed(handwritingEnabled) | $composer3.changedInstance(stylusHandwritingTrigger);
                        Object it$iv102 = $composer3.rememberedValue();
                        if (invalid$iv5) {
                        }
                        Object value$iv72 = new Function0() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$$ExternalSyntheticLambda21
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                return BasicTextFieldKt.BasicTextField$lambda$13$0(handwritingEnabled, stylusHandwritingTrigger);
                            }
                        };
                        $composer3.updateRememberedValue(value$iv72);
                        it$iv102 = value$iv72;
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        InputTransformation inputTransformation722 = inputTransformation5;
                        KeyboardActionHandler onKeyboardAction522 = onKeyboardAction4;
                        final boolean enabled622 = enabled5;
                        boolean isPassword622 = isPassword4;
                    }
                } else {
                    coroutineScope = coroutineScope3;
                }
                Object value$iv9 = new TextFieldSelectionState(transformedState2, textLayoutState, density3, enabled4, readOnly4, isWindowAndTextFieldFocused, isPassword5, toolbarRequester, coroutineScope, platformSelectionBehaviors, currentClipboard2);
                density = density3;
                isPassword4 = isPassword5;
                keyboardOptions5 = keyboardOptions4;
                coroutineScope2 = coroutineScope;
                currentClipboard = currentClipboard2;
                $composer3.updateRememberedValue(value$iv9);
                it$iv8 = value$iv9;
                final TextFieldSelectionState textFieldSelectionState2 = (TextFieldSelectionState) it$iv8;
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ProvidableCompositionLocal<HapticFeedback> localHapticFeedback2 = CompositionLocalsKt.getLocalHapticFeedback();
                int $dirty132 = $dirty1;
                ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
                Object objConsume52 = $composer3.consume(localHapticFeedback2);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                final HapticFeedback currentHapticFeedback2 = (HapticFeedback) objConsume52;
                ProvidableCompositionLocal<TextToolbar> localTextToolbar2 = CompositionLocalsKt.getLocalTextToolbar();
                final InputTransformation inputTransformation62 = inputTransformation2;
                ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
                Object objConsume62 = $composer3.consume(localTextToolbar2);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                TextToolbar currentTextToolbar2 = (TextToolbar) objConsume62;
                ComposerKt.sourceInformationMarkerStart($composer3, -204180503, "CC(remember):BasicTextField.kt#9igjgp");
                invalid$iv2 = $composer3.changed(coroutineScope2) | $composer3.changed(currentTextToolbar2);
                it$iv2 = $composer3.rememberedValue();
                if (invalid$iv2) {
                }
                Object value$iv52 = new BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1(currentTextToolbar2, coroutineScope2);
                $composer3.updateRememberedValue(value$iv52);
                it$iv2 = value$iv52;
                final BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1 textToolbarHandler2 = (BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1) it$iv2;
                ComposerKt.sourceInformationMarkerEnd($composer3);
                new Function1() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$$ExternalSyntheticLambda16
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return BasicTextFieldKt.BasicTextField$lambda$8(textFieldSelectionState2, (AnnotatedString) obj);
                    }
                };
                new Function0() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$$ExternalSyntheticLambda17
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return TextFieldSelectionState.copyWithResult$foundation$default(textFieldSelectionState2, false, 1, null);
                    }
                };
                new Function0() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$$ExternalSyntheticLambda18
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return textFieldSelectionState2.cutWithResult();
                    }
                };
                ComposerKt.sourceInformationMarkerStart($composer3, 1197772674, "CC(rememberClipboardEventsHandler)N(onPaste,onCopy,onCut,isEnabled):ClipboardEventsHandler.jvm.kt#423gt5");
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerStart($composer3, -204101005, "CC(remember):BasicTextField.kt#9igjgp");
                invalid$iv3 = $composer3.changed(transformedState2) | ((57344 & $dirty2) == 16384) | $composer3.changedInstance(textFieldSelectionState2) | $composer3.changedInstance(currentHapticFeedback2) | $composer3.changedInstance(currentClipboard) | $composer3.changed(textToolbarHandler2) | $composer3.changed(density) | (($dirty2 & 896) == 256) | (($dirty2 & 7168) == 2048) | (($dirty132 & 3670016) == 1048576);
                Object it$iv92 = $composer3.rememberedValue();
                if (invalid$iv3) {
                }
                final Density density42 = density2;
                final Clipboard currentClipboard32 = currentClipboard;
                final boolean isPassword72 = isPassword4;
                final boolean enabled72 = enabled4;
                final boolean readOnly52 = readOnly4;
                Object value$iv82 = new Function0() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$$ExternalSyntheticLambda19
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BasicTextFieldKt.BasicTextField$lambda$11$0(transformedState2, inputTransformation62, textFieldSelectionState2, currentHapticFeedback2, currentClipboard32, textToolbarHandler2, density42, enabled72, readOnly52, isPassword72);
                    }
                };
                transformedState = transformedState2;
                inputTransformation4 = inputTransformation62;
                enabled5 = enabled72;
                $composer3.updateRememberedValue(value$iv82);
                it$iv92 = value$iv82;
                ComposerKt.sourceInformationMarkerEnd($composer3);
                EffectsKt.SideEffect((Function0) it$iv92, $composer3, 0);
                ComposerKt.sourceInformationMarkerStart($composer3, -204083608, "CC(remember):BasicTextField.kt#9igjgp");
                invalid$iv4 = $composer3.changedInstance(textFieldSelectionState2);
                it$iv3 = $composer3.rememberedValue();
                if (!invalid$iv4) {
                }
                Object value$iv622 = new Function1() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$$ExternalSyntheticLambda20
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return BasicTextFieldKt.BasicTextField$lambda$12$0(textFieldSelectionState2, (DisposableEffectScope) obj);
                    }
                };
                $composer3.updateRememberedValue(value$iv622);
                it$iv3 = value$iv622;
                ComposerKt.sourceInformationMarkerEnd($composer3);
                EffectsKt.DisposableEffect(textFieldSelectionState2, (Function1<? super DisposableEffectScope, ? extends DisposableEffectResult>) it$iv3, $composer3, 0);
                OverscrollEffect overscrollEffect22 = TextFieldScroll_androidKt.rememberTextFieldOverscrollEffect($composer3, 0);
                if (!isPassword4) {
                }
            }
            Object value$iv10 = new TextLayoutState();
            $composer3.updateRememberedValue(value$iv10);
            it$iv7 = value$iv10;
            final TextLayoutState textLayoutState2 = (TextLayoutState) it$iv7;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            final KeyboardOptions resolvedKeyboardOptions2 = keyboardOptions4.fillUnspecifiedValuesWith$foundation(inputTransformation2 == null ? inputTransformation2.getKeyboardOptions() : null);
            ComposerKt.sourceInformationMarkerStart($composer3, 773894976, "CC(rememberCoroutineScope)N(getContext)600@27430L68:Effects.kt#9igjgp");
            ComposerKt.sourceInformationMarkerStart($composer3, 683736516, "CC(remember):Effects.kt#9igjgp");
            value$iv$iv = $composer3.rememberedValue();
            if (value$iv$iv != Composer.INSTANCE.getEmpty()) {
            }
            CoroutineScope coroutineScope32 = (CoroutineScope) value$iv$iv;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            if (ComposeFoundationFlags.isSmartSelectionEnabled) {
            }
            ComposerKt.sourceInformationMarkerStart($composer3, -204211464, "CC(remember):BasicTextField.kt#9igjgp");
            it$iv = $composer3.rememberedValue();
            if (it$iv == Composer.INSTANCE.getEmpty()) {
            }
            final ToolbarRequesterImpl toolbarRequester2 = (ToolbarRequesterImpl) it$iv;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ProvidableCompositionLocal<Clipboard> localClipboard2 = CompositionLocalsKt.getLocalClipboard();
            ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume42 = $composer3.consume(localClipboard2);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            Clipboard currentClipboard22 = (Clipboard) objConsume42;
            ComposerKt.sourceInformationMarkerStart($composer3, -204206786, "CC(remember):BasicTextField.kt#9igjgp");
            invalid$iv = $composer3.changed(transformedState2);
            Object it$iv82 = $composer3.rememberedValue();
            if (invalid$iv) {
            }
            Object value$iv92 = new TextFieldSelectionState(transformedState2, textLayoutState2, density3, enabled4, readOnly4, isWindowAndTextFieldFocused, isPassword5, toolbarRequester2, coroutineScope, platformSelectionBehaviors, currentClipboard22);
            density = density3;
            isPassword4 = isPassword5;
            keyboardOptions5 = keyboardOptions4;
            coroutineScope2 = coroutineScope;
            currentClipboard = currentClipboard22;
            $composer3.updateRememberedValue(value$iv92);
            it$iv82 = value$iv92;
            final TextFieldSelectionState textFieldSelectionState22 = (TextFieldSelectionState) it$iv82;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ProvidableCompositionLocal<HapticFeedback> localHapticFeedback22 = CompositionLocalsKt.getLocalHapticFeedback();
            int $dirty1322 = $dirty1;
            ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume522 = $composer3.consume(localHapticFeedback22);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            final HapticFeedback currentHapticFeedback22 = (HapticFeedback) objConsume522;
            ProvidableCompositionLocal<TextToolbar> localTextToolbar22 = CompositionLocalsKt.getLocalTextToolbar();
            final InputTransformation inputTransformation622 = inputTransformation2;
            ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume622 = $composer3.consume(localTextToolbar22);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            TextToolbar currentTextToolbar22 = (TextToolbar) objConsume622;
            ComposerKt.sourceInformationMarkerStart($composer3, -204180503, "CC(remember):BasicTextField.kt#9igjgp");
            invalid$iv2 = $composer3.changed(coroutineScope2) | $composer3.changed(currentTextToolbar22);
            it$iv2 = $composer3.rememberedValue();
            if (invalid$iv2) {
            }
            Object value$iv522 = new BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1(currentTextToolbar22, coroutineScope2);
            $composer3.updateRememberedValue(value$iv522);
            it$iv2 = value$iv522;
            final BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1 textToolbarHandler22 = (BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1) it$iv2;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            new Function1() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$$ExternalSyntheticLambda16
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return BasicTextFieldKt.BasicTextField$lambda$8(textFieldSelectionState22, (AnnotatedString) obj);
                }
            };
            new Function0() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$$ExternalSyntheticLambda17
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return TextFieldSelectionState.copyWithResult$foundation$default(textFieldSelectionState22, false, 1, null);
                }
            };
            new Function0() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$$ExternalSyntheticLambda18
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return textFieldSelectionState22.cutWithResult();
                }
            };
            ComposerKt.sourceInformationMarkerStart($composer3, 1197772674, "CC(rememberClipboardEventsHandler)N(onPaste,onCopy,onCut,isEnabled):ClipboardEventsHandler.jvm.kt#423gt5");
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerStart($composer3, -204101005, "CC(remember):BasicTextField.kt#9igjgp");
            invalid$iv3 = $composer3.changed(transformedState2) | ((57344 & $dirty2) == 16384) | $composer3.changedInstance(textFieldSelectionState22) | $composer3.changedInstance(currentHapticFeedback22) | $composer3.changedInstance(currentClipboard) | $composer3.changed(textToolbarHandler22) | $composer3.changed(density) | (($dirty2 & 896) == 256) | (($dirty2 & 7168) == 2048) | (($dirty1322 & 3670016) == 1048576);
            Object it$iv922 = $composer3.rememberedValue();
            if (invalid$iv3) {
            }
            final Density density422 = density2;
            final Clipboard currentClipboard322 = currentClipboard;
            final boolean isPassword722 = isPassword4;
            final boolean enabled722 = enabled4;
            final boolean readOnly522 = readOnly4;
            Object value$iv822 = new Function0() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$$ExternalSyntheticLambda19
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BasicTextFieldKt.BasicTextField$lambda$11$0(transformedState2, inputTransformation622, textFieldSelectionState22, currentHapticFeedback22, currentClipboard322, textToolbarHandler22, density422, enabled722, readOnly522, isPassword722);
                }
            };
            transformedState = transformedState2;
            inputTransformation4 = inputTransformation622;
            enabled5 = enabled722;
            $composer3.updateRememberedValue(value$iv822);
            it$iv922 = value$iv822;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            EffectsKt.SideEffect((Function0) it$iv922, $composer3, 0);
            ComposerKt.sourceInformationMarkerStart($composer3, -204083608, "CC(remember):BasicTextField.kt#9igjgp");
            invalid$iv4 = $composer3.changedInstance(textFieldSelectionState22);
            it$iv3 = $composer3.rememberedValue();
            if (!invalid$iv4) {
            }
            Object value$iv6222 = new Function1() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$$ExternalSyntheticLambda20
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return BasicTextFieldKt.BasicTextField$lambda$12$0(textFieldSelectionState22, (DisposableEffectScope) obj);
                }
            };
            $composer3.updateRememberedValue(value$iv6222);
            it$iv3 = value$iv6222;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            EffectsKt.DisposableEffect(textFieldSelectionState22, (Function1<? super DisposableEffectScope, ? extends DisposableEffectResult>) it$iv3, $composer3, 0);
            OverscrollEffect overscrollEffect222 = TextFieldScroll_androidKt.rememberTextFieldOverscrollEffect($composer3, 0);
            if (!isPassword4) {
            }
        } else {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
            onKeyboardAction2 = onKeyboardAction;
            outputTransformation2 = outputTransformation;
            scrollState2 = scrollState;
            isPassword2 = isPassword;
            $dirty = $dirty2;
            textStyle3 = textStyle2;
            keyboardOptions3 = keyboardOptions2;
            inputTransformation3 = inputTransformation2;
            enabled3 = enabled2;
            modifier3 = modifier2;
            readOnly3 = readOnly2;
            lineLimits2 = lineLimits;
            function22 = function2;
            interactionSource2 = interactionSource;
            cursorBrush2 = cursorBrush;
            codepointTransformation2 = codepointTransformation;
            decorator2 = decorator;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$$ExternalSyntheticLambda23
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return BasicTextFieldKt.BasicTextField$lambda$15(state, modifier3, enabled3, readOnly3, inputTransformation3, textStyle3, keyboardOptions3, onKeyboardAction2, lineLimits2, function22, interactionSource2, cursorBrush2, codepointTransformation2, outputTransformation2, decorator2, scrollState2, isPassword2, $changed, $changed1, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    static final Unit BasicTextField$lambda$8(TextFieldSelectionState $textFieldSelectionState, AnnotatedString it) {
        $textFieldSelectionState.onPasteEvent$foundation(it);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit BasicTextField$lambda$11$0(TransformedTextFieldState $transformedState, InputTransformation $inputTransformation, TextFieldSelectionState $textFieldSelectionState, HapticFeedback $currentHapticFeedback, Clipboard $currentClipboard, BasicTextFieldKt$BasicTextField$textToolbarHandler$1$1 $textToolbarHandler, Density $density, boolean $enabled, boolean $readOnly, boolean $isPassword) {
        $transformedState.update($inputTransformation);
        $textFieldSelectionState.update($currentHapticFeedback, $currentClipboard, $textToolbarHandler, $density, $enabled, $readOnly, $isPassword);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DisposableEffectResult BasicTextField$lambda$12$0(final TextFieldSelectionState $textFieldSelectionState, DisposableEffectScope $this$DisposableEffect) {
        return new DisposableEffectResult() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$BasicTextField$lambda$12$0$$inlined$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void dispose() {
                $textFieldSelectionState.dispose();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit BasicTextField$lambda$13$0(boolean $handwritingEnabled, MutableSharedFlow $stylusHandwritingTrigger) {
        if ($handwritingEnabled) {
            $stylusHandwritingTrigger.tryEmit(Unit.INSTANCE);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit BasicTextField$lambda$14$0(TextFieldDecorator $decorator, final TextFieldLineLimits $lineLimits, final TextLayoutState $textLayoutState, final TextStyle $textStyle, final boolean $isWindowAndTextFieldFocused, final boolean $isDragHovered, final TransformedTextFieldState $transformedState, final TextFieldSelectionState $textFieldSelectionState, final Brush $cursorBrush, final boolean $enabled, final boolean $readOnly, final ScrollState $scrollState, final Orientation $orientation, final ToolbarRequesterImpl $toolbarRequester, final PlatformSelectionBehaviors $platformSelectionBehaviors, final boolean $singleLine, final Function2 $onTextLayout, final KeyboardOptions $resolvedKeyboardOptions, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C465@24817L2916,465@24806L2927:BasicTextField.kt#423gt5");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-673241599, $changed, -1, "androidx.compose.foundation.text.BasicTextField.<anonymous>.<anonymous> (BasicTextField.kt:464)");
            }
            TextFieldDecorator nonNullDecorator = $decorator == null ? DefaultTextFieldDecorator : $decorator;
            nonNullDecorator.Decoration(ComposableLambdaKt.rememberComposableLambda(1969169726, true, new Function2() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$$ExternalSyntheticLambda11
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return BasicTextFieldKt.BasicTextField$lambda$14$0$0($lineLimits, $textLayoutState, $textStyle, $isWindowAndTextFieldFocused, $isDragHovered, $transformedState, $textFieldSelectionState, $cursorBrush, $enabled, $readOnly, $scrollState, $orientation, $toolbarRequester, $platformSelectionBehaviors, $singleLine, $onTextLayout, $resolvedKeyboardOptions, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer, 54), $composer, 6);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit BasicTextField$lambda$14$0$0(TextFieldLineLimits $lineLimits, TextLayoutState $textLayoutState, TextStyle $textStyle, boolean $isWindowAndTextFieldFocused, boolean $isDragHovered, TransformedTextFieldState $transformedState, TextFieldSelectionState $textFieldSelectionState, Brush $cursorBrush, boolean $enabled, boolean $readOnly, ScrollState $scrollState, Orientation $orientation, ToolbarRequesterImpl $toolbarRequester, PlatformSelectionBehaviors $platformSelectionBehaviors, boolean $singleLine, Function2 $onTextLayout, KeyboardOptions $resolvedKeyboardOptions, Composer $composer, int $changed) {
        int minLines;
        int maxLines;
        ComposerKt.sourceInformation($composer, "C476@25178L2541:BasicTextField.kt#423gt5");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1969169726, $changed, -1, "androidx.compose.foundation.text.BasicTextField.<anonymous>.<anonymous>.<anonymous> (BasicTextField.kt:466)");
            }
            if ($lineLimits instanceof TextFieldLineLimits.MultiLine) {
                minLines = ((TextFieldLineLimits.MultiLine) $lineLimits).getMinHeightInLines();
                maxLines = ((TextFieldLineLimits.MultiLine) $lineLimits).getMaxHeightInLines();
            } else {
                minLines = 1;
                maxLines = 1;
            }
            Modifier modifier$iv = ClipKt.clipToBounds(TextFieldSizeKt.textFieldMinSize(HeightInLinesModifierKt.heightInLines(SizeKt.m852heightInVpY3zN4$default(Modifier.INSTANCE, $textLayoutState.m1448getMinHeightForSingleLineFieldD9Ej5fM(), 0.0f, 2, null), $textStyle, minLines, maxLines), $textStyle)).then(new TextFieldCoreModifier($isWindowAndTextFieldFocused, $isDragHovered, $textLayoutState, $transformedState, $textFieldSelectionState, $cursorBrush, $enabled && !$readOnly, $scrollState, $orientation, $toolbarRequester, $platformSelectionBehaviors));
            ComposerKt.sourceInformationMarkerStart($composer, 1042775818, "CC(Box)N(modifier,contentAlignment,propagateMinConstraints,content)71@3424L131:Box.kt#2w3rfo");
            Alignment contentAlignment$iv = Alignment.INSTANCE.getTopStart();
            MeasurePolicy measurePolicy$iv = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv, true);
            int $changed$iv$iv = (RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 112;
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int compositeKeyHash$iv$iv = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap localMap$iv$iv = $composer.getCurrentCompositionLocalMap();
            Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer, modifier$iv);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int $changed$iv$iv$iv = (($changed$iv$iv << 6) & 896) | 6;
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
            Composer $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl($this$Layout_u24lambda_u240$iv$iv, Integer.valueOf(compositeKeyHash$iv$iv), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl($this$Layout_u24lambda_u240$iv$iv, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
            int i = ($changed$iv$iv$iv >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1833054614, "C72@3469L9:Box.kt#2w3rfo");
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            int i2 = ((RendererCapabilities.DECODER_SUPPORT_MASK >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -811364182, "C503@26688L530:BasicTextField.kt#423gt5");
            BoxKt.Box(new TextFieldTextLayoutModifier($textLayoutState, $transformedState, $textStyle, $singleLine, $onTextLayout, $resolvedKeyboardOptions), $composer, 0);
            if (!$enabled || !$isWindowAndTextFieldFocused || !$textFieldSelectionState.isInTouchMode()) {
                $composer.startReplaceGroup(-837871074);
            } else {
                $composer.startReplaceGroup(-810654004);
                ComposerKt.sourceInformation($composer, "520@27453L67");
                TextFieldSelectionHandles($textFieldSelectionState, $composer, 0);
                if (!$readOnly) {
                    $composer.startReplaceGroup(-810526873);
                    ComposerKt.sourceInformation($composer, "522@27590L63");
                    TextFieldCursorHandle($textFieldSelectionState, $composer, 0);
                } else {
                    $composer.startReplaceGroup(-837871074);
                }
                $composer.endReplaceGroup();
            }
            $composer.endReplaceGroup();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    private static final Modifier addContextMenuComponents(Modifier $this$addContextMenuComponents, TextFieldSelectionState textFieldSelectionState, CoroutineScope coroutineScope) {
        if (ComposeFoundationFlags.isNewContextMenuEnabled) {
            return TextFieldSelectionState_androidKt.addBasicTextFieldTextContextMenuComponents($this$addContextMenuComponents, textFieldSelectionState, coroutineScope);
        }
        return $this$addContextMenuComponents;
    }

    public static final void TextFieldCursorHandle(final TextFieldSelectionState selectionState, Composer $composer, final int $changed) {
        Composer $composer2 = $composer.startRestartGroup(1991581797);
        ComposerKt.sourceInformation($composer2, "C(TextFieldCursorHandle)N(selectionState)544@28301L128:BasicTextField.kt#423gt5");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changedInstance(selectionState) ? 4 : 2;
        }
        if (!$composer2.shouldExecute(($dirty & 3) != 2, $dirty & 1)) {
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1991581797, $dirty, -1, "androidx.compose.foundation.text.TextFieldCursorHandle (BasicTextField.kt:541)");
            }
            ComposerKt.sourceInformationMarkerStart($composer2, -1645301467, "CC(remember):BasicTextField.kt#9igjgp");
            boolean invalid$iv = $composer2.changed(selectionState);
            Object it$iv = $composer2.rememberedValue();
            if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                Object value$iv = SnapshotStateKt.derivedStateOf(new Function0() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$$ExternalSyntheticLambda24
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BasicTextFieldKt.TextFieldCursorHandle$lambda$0$0(selectionState);
                    }
                });
                $composer2.updateRememberedValue(value$iv);
                it$iv = value$iv;
            }
            State cursorHandleState$delegate = (State) it$iv;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            if (TextFieldCursorHandle$lambda$1(cursorHandleState$delegate).getVisible()) {
                $composer2.startReplaceGroup(535433166);
                ComposerKt.sourceInformation($composer2, "549@28518L100,553@28697L87,548@28475L383");
                ComposerKt.sourceInformationMarkerStart($composer2, -1645294551, "CC(remember):BasicTextField.kt#9igjgp");
                boolean invalid$iv2 = $composer2.changedInstance(selectionState);
                Object it$iv2 = $composer2.rememberedValue();
                if (invalid$iv2 || it$iv2 == Composer.INSTANCE.getEmpty()) {
                    Object value$iv2 = (OffsetProvider) new OffsetProvider() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$TextFieldCursorHandle$1$1
                        @Override // androidx.compose.foundation.text.selection.OffsetProvider
                        /* JADX INFO: renamed from: provide-F1C5BW0, reason: not valid java name */
                        public final long mo1144provideF1C5BW0() {
                            return selectionState.getCursorHandleState$foundation(true).m1492getPositionF1C5BW0();
                        }
                    };
                    $composer2.updateRememberedValue(value$iv2);
                    it$iv2 = value$iv2;
                }
                OffsetProvider offsetProvider = (OffsetProvider) it$iv2;
                ComposerKt.sourceInformationMarkerEnd($composer2);
                Modifier.Companion companion = Modifier.INSTANCE;
                ComposerKt.sourceInformationMarkerStart($composer2, -1645288836, "CC(remember):BasicTextField.kt#9igjgp");
                boolean invalid$iv3 = $composer2.changedInstance(selectionState);
                Object it$iv3 = $composer2.rememberedValue();
                if (invalid$iv3 || it$iv3 == Composer.INSTANCE.getEmpty()) {
                    Object value$iv3 = (PointerInputEventHandler) new PointerInputEventHandler() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$TextFieldCursorHandle$2$1
                        @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                        public final Object invoke(PointerInputScope $this$pointerInput, Continuation<? super Unit> continuation) {
                            TextFieldSelectionState $this$invoke_u24lambda_u240 = selectionState;
                            Object objCursorHandleGestures = $this$invoke_u24lambda_u240.cursorHandleGestures($this$pointerInput, continuation);
                            return objCursorHandleGestures == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCursorHandleGestures : Unit.INSTANCE;
                        }
                    };
                    $composer2.updateRememberedValue(value$iv3);
                    it$iv3 = value$iv3;
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                AndroidCursorHandle_androidKt.m1130CursorHandleUSBMPiE(offsetProvider, SuspendingPointerInputFilterKt.pointerInput(companion, selectionState, (PointerInputEventHandler) it$iv3), MinTouchTargetSizeForHandles, $composer2, RendererCapabilities.DECODER_SUPPORT_MASK, 0);
            } else {
                $composer2.startReplaceGroup(507182525);
            }
            $composer2.endReplaceGroup();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$$ExternalSyntheticLambda25
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return BasicTextFieldKt.TextFieldCursorHandle$lambda$4(selectionState, $changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    private static final TextFieldHandleState TextFieldCursorHandle$lambda$1(State<TextFieldHandleState> state) {
        Object thisObj$iv = state.getValue();
        return (TextFieldHandleState) thisObj$iv;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TextFieldHandleState TextFieldCursorHandle$lambda$0$0(TextFieldSelectionState $selectionState) {
        return $selectionState.getCursorHandleState$foundation(false);
    }

    public static final void TextFieldSelectionHandles(final TextFieldSelectionState selectionState, Composer $composer, final int $changed) {
        int i;
        State startHandleState$delegate;
        Composer $composer2 = $composer.startRestartGroup(2025287684);
        ComposerKt.sourceInformation($composer2, "C(TextFieldSelectionHandles)N(selectionState)565@29064L240,594@30119L241:BasicTextField.kt#423gt5");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changedInstance(selectionState) ? 4 : 2;
        }
        int $dirty2 = $dirty;
        if ($composer2.shouldExecute(($dirty2 & 3) != 2, $dirty2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(2025287684, $dirty2, -1, "androidx.compose.foundation.text.TextFieldSelectionHandles (BasicTextField.kt:562)");
            }
            ComposerKt.sourceInformationMarkerStart($composer2, 681285076, "CC(remember):BasicTextField.kt#9igjgp");
            boolean invalid$iv = $composer2.changed(selectionState);
            Object it$iv = $composer2.rememberedValue();
            if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                Object value$iv = SnapshotStateKt.derivedStateOf(new Function0() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$$ExternalSyntheticLambda6
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BasicTextFieldKt.TextFieldSelectionHandles$lambda$0$0(selectionState);
                    }
                });
                $composer2.updateRememberedValue(value$iv);
                it$iv = value$iv;
            }
            State startHandleState$delegate2 = (State) it$iv;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            if (TextFieldSelectionHandles$lambda$1(startHandleState$delegate2).getVisible()) {
                $composer2.startReplaceGroup(-354703320);
                ComposerKt.sourceInformation($composer2, "575@29395L167,584@29789L94,574@29349L662");
                ComposerKt.sourceInformationMarkerStart($composer2, 681295595, "CC(remember):BasicTextField.kt#9igjgp");
                boolean invalid$iv2 = $composer2.changedInstance(selectionState);
                Object it$iv2 = $composer2.rememberedValue();
                if (invalid$iv2 || it$iv2 == Composer.INSTANCE.getEmpty()) {
                    Object value$iv2 = (OffsetProvider) new OffsetProvider() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$TextFieldSelectionHandles$1$1
                        @Override // androidx.compose.foundation.text.selection.OffsetProvider
                        /* JADX INFO: renamed from: provide-F1C5BW0 */
                        public final long mo1144provideF1C5BW0() {
                            return selectionState.getSelectionHandleState$foundation(true, true).m1492getPositionF1C5BW0();
                        }
                    };
                    $composer2.updateRememberedValue(value$iv2);
                    it$iv2 = value$iv2;
                }
                OffsetProvider offsetProvider = (OffsetProvider) it$iv2;
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ResolvedTextDirection direction = TextFieldSelectionHandles$lambda$1(startHandleState$delegate2).getDirection();
                boolean handlesCrossed = TextFieldSelectionHandles$lambda$1(startHandleState$delegate2).getHandlesCrossed();
                Modifier.Companion companion = Modifier.INSTANCE;
                ComposerKt.sourceInformationMarkerStart($composer2, 681308130, "CC(remember):BasicTextField.kt#9igjgp");
                boolean invalid$iv3 = $composer2.changedInstance(selectionState);
                Object it$iv3 = $composer2.rememberedValue();
                if (invalid$iv3 || it$iv3 == Composer.INSTANCE.getEmpty()) {
                    startHandleState$delegate = startHandleState$delegate2;
                    Object value$iv3 = (PointerInputEventHandler) new PointerInputEventHandler() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$TextFieldSelectionHandles$2$1
                        @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                        public final Object invoke(PointerInputScope $this$pointerInput, Continuation<? super Unit> continuation) {
                            TextFieldSelectionState $this$invoke_u24lambda_u240 = selectionState;
                            Object objSelectionHandleGestures = $this$invoke_u24lambda_u240.selectionHandleGestures($this$pointerInput, true, continuation);
                            return objSelectionHandleGestures == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objSelectionHandleGestures : Unit.INSTANCE;
                        }
                    };
                    $composer2.updateRememberedValue(value$iv3);
                    it$iv3 = value$iv3;
                } else {
                    startHandleState$delegate = startHandleState$delegate2;
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                i = -383839042;
                AndroidSelectionHandles_androidKt.m1579SelectionHandlewLIcFTc(offsetProvider, true, direction, handlesCrossed, MinTouchTargetSizeForHandles, TextFieldSelectionHandles$lambda$1(startHandleState$delegate).getLineHeight(), SuspendingPointerInputFilterKt.pointerInput(companion, selectionState, (PointerInputEventHandler) it$iv3), $composer2, 24624, 0);
            } else {
                i = -383839042;
                $composer2.startReplaceGroup(-383839042);
            }
            $composer2.endReplaceGroup();
            ComposerKt.sourceInformationMarkerStart($composer2, 681318837, "CC(remember):BasicTextField.kt#9igjgp");
            boolean invalid$iv4 = $composer2.changed(selectionState);
            Object it$iv4 = $composer2.rememberedValue();
            if (invalid$iv4 || it$iv4 == Composer.INSTANCE.getEmpty()) {
                Object value$iv4 = SnapshotStateKt.derivedStateOf(new Function0() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$$ExternalSyntheticLambda7
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BasicTextFieldKt.TextFieldSelectionHandles$lambda$4$0(selectionState);
                    }
                });
                $composer2.updateRememberedValue(value$iv4);
                it$iv4 = value$iv4;
            }
            State endHandleState$delegate = (State) it$iv4;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            if (TextFieldSelectionHandles$lambda$5(endHandleState$delegate).getVisible()) {
                $composer2.startReplaceGroup(-353657845);
                ComposerKt.sourceInformation($composer2, "604@30449L168,613@30841L95,603@30403L659");
                ComposerKt.sourceInformationMarkerStart($composer2, 681329324, "CC(remember):BasicTextField.kt#9igjgp");
                boolean invalid$iv5 = $composer2.changedInstance(selectionState);
                Object it$iv5 = $composer2.rememberedValue();
                if (invalid$iv5 || it$iv5 == Composer.INSTANCE.getEmpty()) {
                    Object value$iv5 = (OffsetProvider) new OffsetProvider() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$TextFieldSelectionHandles$3$1
                        @Override // androidx.compose.foundation.text.selection.OffsetProvider
                        /* JADX INFO: renamed from: provide-F1C5BW0 */
                        public final long mo1144provideF1C5BW0() {
                            return selectionState.getSelectionHandleState$foundation(false, true).m1492getPositionF1C5BW0();
                        }
                    };
                    $composer2.updateRememberedValue(value$iv5);
                    it$iv5 = value$iv5;
                }
                OffsetProvider offsetProvider2 = (OffsetProvider) it$iv5;
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ResolvedTextDirection direction2 = TextFieldSelectionHandles$lambda$5(endHandleState$delegate).getDirection();
                boolean handlesCrossed2 = TextFieldSelectionHandles$lambda$5(endHandleState$delegate).getHandlesCrossed();
                Modifier.Companion companion2 = Modifier.INSTANCE;
                ComposerKt.sourceInformationMarkerStart($composer2, 681341795, "CC(remember):BasicTextField.kt#9igjgp");
                boolean invalid$iv6 = $composer2.changedInstance(selectionState);
                Object it$iv6 = $composer2.rememberedValue();
                if (invalid$iv6 || it$iv6 == Composer.INSTANCE.getEmpty()) {
                    Object value$iv6 = (PointerInputEventHandler) new PointerInputEventHandler() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$TextFieldSelectionHandles$4$1
                        @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                        public final Object invoke(PointerInputScope $this$pointerInput, Continuation<? super Unit> continuation) {
                            TextFieldSelectionState $this$invoke_u24lambda_u240 = selectionState;
                            Object objSelectionHandleGestures = $this$invoke_u24lambda_u240.selectionHandleGestures($this$pointerInput, false, continuation);
                            return objSelectionHandleGestures == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objSelectionHandleGestures : Unit.INSTANCE;
                        }
                    };
                    $composer2.updateRememberedValue(value$iv6);
                    it$iv6 = value$iv6;
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                AndroidSelectionHandles_androidKt.m1579SelectionHandlewLIcFTc(offsetProvider2, false, direction2, handlesCrossed2, MinTouchTargetSizeForHandles, TextFieldSelectionHandles$lambda$5(endHandleState$delegate).getLineHeight(), SuspendingPointerInputFilterKt.pointerInput(companion2, selectionState, (PointerInputEventHandler) it$iv6), $composer2, 24624, 0);
            } else {
                $composer2.startReplaceGroup(i);
            }
            $composer2.endReplaceGroup();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return BasicTextFieldKt.TextFieldSelectionHandles$lambda$8(selectionState, $changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    private static final TextFieldHandleState TextFieldSelectionHandles$lambda$1(State<TextFieldHandleState> state) {
        Object thisObj$iv = state.getValue();
        return (TextFieldHandleState) thisObj$iv;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TextFieldHandleState TextFieldSelectionHandles$lambda$0$0(TextFieldSelectionState $selectionState) {
        return $selectionState.getSelectionHandleState$foundation(true, false);
    }

    private static final TextFieldHandleState TextFieldSelectionHandles$lambda$5(State<TextFieldHandleState> state) {
        Object thisObj$iv = state.getValue();
        return (TextFieldHandleState) thisObj$iv;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TextFieldHandleState TextFieldSelectionHandles$lambda$4$0(TextFieldSelectionState $selectionState) {
        return $selectionState.getSelectionHandleState$foundation(false, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit BasicTextField$lambda$16$0(TextLayoutResult it) {
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:251:0x0446  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x0448  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x0454  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x0462  */
    /* JADX WARN: Removed duplicated region for block: B:263:0x0484  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x0487  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x048b  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x048d  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x04a2  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x04a4  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x04b2  */
    /* JADX WARN: Removed duplicated region for block: B:278:0x04be  */
    /* JADX WARN: Removed duplicated region for block: B:282:0x0534  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void BasicTextField(final String value, final Function1<? super String, Unit> function1, Modifier modifier, boolean enabled, boolean readOnly, TextStyle textStyle, KeyboardOptions keyboardOptions, KeyboardActions keyboardActions, boolean singleLine, int maxLines, int minLines, VisualTransformation visualTransformation, Function1<? super TextLayoutResult, Unit> function12, MutableInteractionSource interactionSource, Brush cursorBrush, Function3<? super Function2<? super Composer, ? super Integer, Unit>, ? super Composer, ? super Integer, Unit> function3, Composer $composer, final int $changed, final int $changed1, final int i) {
        Modifier modifier2;
        boolean enabled2;
        boolean readOnly2;
        TextStyle textStyle2;
        KeyboardOptions keyboardOptions2;
        KeyboardActions keyboardActions2;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        Composer $composer2;
        final int maxLines2;
        final Function3<? super Function2<? super Composer, ? super Integer, Unit>, ? super Composer, ? super Integer, Unit> function32;
        final KeyboardActions keyboardActions3;
        final boolean enabled3;
        final KeyboardOptions keyboardOptions3;
        final boolean readOnly3;
        final TextStyle textStyle3;
        final Modifier modifier3;
        final boolean singleLine2;
        final int minLines2;
        final VisualTransformation visualTransformation2;
        final Function1<? super TextLayoutResult, Unit> function13;
        final MutableInteractionSource interactionSource2;
        final Brush cursorBrush2;
        int maxLines3;
        boolean enabled4;
        Function1<? super TextLayoutResult, Unit> function14;
        Function1<? super TextLayoutResult, Unit> function15;
        MutableInteractionSource interactionSource3;
        KeyboardActions keyboardActions4;
        boolean singleLine3;
        SolidColor cursorBrush3;
        KeyboardActions keyboardActions5;
        boolean singleLine4;
        Function3<? super Function2<? super Composer, ? super Integer, Unit>, ? super Composer, ? super Integer, Unit> lambda$759698998$foundation;
        int maxLines4;
        int minLines3;
        TextStyle textStyle4;
        Modifier modifier4;
        VisualTransformation visualTransformation3;
        int $dirty;
        boolean readOnly4;
        Function1<? super TextLayoutResult, Unit> function16;
        Brush cursorBrush4;
        KeyboardOptions keyboardOptions4;
        MutableInteractionSource interactionSource4;
        Object value$iv;
        int $dirty1;
        TextStyle textStyle5;
        boolean invalid$iv;
        TextFieldValue textFieldValue;
        boolean invalid$iv2;
        boolean singleLine5;
        Composer $composer3 = $composer.startRestartGroup(2026950908);
        ComposerKt.sourceInformation($composer3, "C(BasicTextField)N(value,onValueChange,modifier,enabled,readOnly,textStyle,keyboardOptions,keyboardActions,singleLine,maxLines,minLines,visualTransformation,onTextLayout,interactionSource,cursorBrush,decorationBox)752@39049L57,758@39402L242,758@39391L253,769@39965L41,773@40083L373,771@40012L1033:BasicTextField.kt#423gt5");
        int $dirty2 = $changed;
        int $dirty12 = $changed1;
        if (($changed & 6) == 0) {
            $dirty2 |= $composer3.changed(value) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty2 |= $composer3.changedInstance(function1) ? 32 : 16;
        }
        int i8 = i & 4;
        if (i8 != 0) {
            $dirty2 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            modifier2 = modifier;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            modifier2 = modifier;
            $dirty2 |= $composer3.changed(modifier2) ? 256 : 128;
        } else {
            modifier2 = modifier;
        }
        int i9 = i & 8;
        if (i9 != 0) {
            $dirty2 |= 3072;
            enabled2 = enabled;
        } else if (($changed & 3072) == 0) {
            enabled2 = enabled;
            $dirty2 |= $composer3.changed(enabled2) ? 2048 : 1024;
        } else {
            enabled2 = enabled;
        }
        int i10 = i & 16;
        if (i10 != 0) {
            $dirty2 |= 24576;
            readOnly2 = readOnly;
        } else if (($changed & 24576) == 0) {
            readOnly2 = readOnly;
            $dirty2 |= $composer3.changed(readOnly2) ? 16384 : 8192;
        } else {
            readOnly2 = readOnly;
        }
        int i11 = i & 32;
        if (i11 != 0) {
            $dirty2 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            textStyle2 = textStyle;
        } else if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            textStyle2 = textStyle;
            $dirty2 |= $composer3.changed(textStyle2) ? 131072 : 65536;
        } else {
            textStyle2 = textStyle;
        }
        int i12 = i & 64;
        if (i12 != 0) {
            $dirty2 |= 1572864;
            keyboardOptions2 = keyboardOptions;
        } else if (($changed & 1572864) == 0) {
            keyboardOptions2 = keyboardOptions;
            $dirty2 |= $composer3.changed(keyboardOptions2) ? 1048576 : 524288;
        } else {
            keyboardOptions2 = keyboardOptions;
        }
        int i13 = i & 128;
        if (i13 != 0) {
            $dirty2 |= 12582912;
            keyboardActions2 = keyboardActions;
        } else if (($changed & 12582912) == 0) {
            keyboardActions2 = keyboardActions;
            $dirty2 |= $composer3.changed(keyboardActions2) ? 8388608 : 4194304;
        } else {
            keyboardActions2 = keyboardActions;
        }
        int i14 = i & 256;
        if (i14 != 0) {
            $dirty2 |= 100663296;
            i2 = i14;
        } else if (($changed & 100663296) == 0) {
            i2 = i14;
            $dirty2 |= $composer3.changed(singleLine) ? 67108864 : 33554432;
        } else {
            i2 = i14;
        }
        if (($changed & 805306368) == 0) {
            $dirty2 |= ((i & 512) == 0 && $composer3.changed(maxLines)) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
        }
        int i15 = i & 1024;
        if (i15 != 0) {
            $dirty12 |= 6;
            i3 = i15;
        } else if (($changed1 & 6) == 0) {
            i3 = i15;
            $dirty12 |= $composer3.changed(minLines) ? 4 : 2;
        } else {
            i3 = i15;
        }
        int i16 = i & 2048;
        if (i16 != 0) {
            $dirty12 |= 48;
            i4 = i16;
        } else if (($changed1 & 48) == 0) {
            i4 = i16;
            $dirty12 |= $composer3.changed(visualTransformation) ? 32 : 16;
        } else {
            i4 = i16;
        }
        int i17 = i & 4096;
        if (i17 != 0) {
            $dirty12 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            i5 = i17;
        } else {
            i5 = i17;
            if (($changed1 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                $dirty12 |= $composer3.changedInstance(function12) ? 256 : 128;
            }
        }
        int i18 = i & 8192;
        if (i18 != 0) {
            $dirty12 |= 3072;
            i6 = i18;
        } else {
            i6 = i18;
            if (($changed1 & 3072) == 0) {
                $dirty12 |= $composer3.changed(interactionSource) ? 2048 : 1024;
            }
        }
        int i19 = i & 16384;
        if (i19 != 0) {
            $dirty12 |= 24576;
            i7 = i19;
        } else {
            i7 = i19;
            if (($changed1 & 24576) == 0) {
                $dirty12 |= $composer3.changed(cursorBrush) ? 16384 : 8192;
            }
        }
        int i20 = i & 32768;
        if (i20 != 0) {
            $dirty12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if (($changed1 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            $dirty12 |= $composer3.changedInstance(function3) ? 131072 : 65536;
        }
        if ($composer3.shouldExecute((($dirty2 & 306783379) == 306783378 && (74899 & $dirty12) == 74898) ? false : true, $dirty2 & 1)) {
            $composer3.startDefaults();
            ComposerKt.sourceInformation($composer3, "744@38634L2");
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                if (i8 != 0) {
                    modifier2 = Modifier.INSTANCE;
                }
                boolean enabled5 = i9 != 0 ? true : enabled2;
                if (i10 != 0) {
                    readOnly2 = false;
                }
                if (i11 != 0) {
                    textStyle2 = TextStyle.INSTANCE.getDefault();
                }
                if (i12 != 0) {
                    keyboardOptions2 = KeyboardOptions.INSTANCE.getDefault();
                }
                KeyboardActions keyboardActions6 = i13 != 0 ? KeyboardActions.INSTANCE.getDefault() : keyboardActions2;
                boolean singleLine6 = i2 != 0 ? false : singleLine;
                if ((i & 512) != 0) {
                    maxLines3 = singleLine6 ? 1 : Integer.MAX_VALUE;
                    $dirty2 &= -1879048193;
                } else {
                    maxLines3 = maxLines;
                }
                int minLines4 = i3 != 0 ? 1 : minLines;
                VisualTransformation visualTransformation4 = i4 != 0 ? VisualTransformation.INSTANCE.getNone() : visualTransformation;
                if (i5 != 0) {
                    ComposerKt.sourceInformationMarkerStart($composer3, -2015311170, "CC(remember):BasicTextField.kt#9igjgp");
                    enabled4 = enabled5;
                    Object it$iv = $composer3.rememberedValue();
                    if (it$iv == Composer.INSTANCE.getEmpty()) {
                        value$iv = new Function1() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$$ExternalSyntheticLambda12
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                return BasicTextFieldKt.BasicTextField$lambda$16$0((TextLayoutResult) obj);
                            }
                        };
                        $composer3.updateRememberedValue(value$iv);
                    } else {
                        value$iv = it$iv;
                    }
                    function14 = (Function1) value$iv;
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                } else {
                    enabled4 = enabled5;
                    function14 = function12;
                }
                MutableInteractionSource interactionSource5 = i6 != 0 ? null : interactionSource;
                if (i7 != 0) {
                    function15 = function14;
                    keyboardActions4 = keyboardActions6;
                    singleLine3 = singleLine6;
                    interactionSource3 = interactionSource5;
                    cursorBrush3 = new SolidColor(Color.INSTANCE.m4723getBlack0d7_KjU(), null);
                } else {
                    function15 = function14;
                    interactionSource3 = interactionSource5;
                    keyboardActions4 = keyboardActions6;
                    singleLine3 = singleLine6;
                    cursorBrush3 = cursorBrush;
                }
                if (i20 != 0) {
                    keyboardActions5 = keyboardActions4;
                    lambda$759698998$foundation = ComposableSingletons$BasicTextFieldKt.INSTANCE.getLambda$759698998$foundation();
                    maxLines4 = maxLines3;
                    minLines3 = minLines4;
                    textStyle4 = textStyle2;
                    modifier4 = modifier2;
                    visualTransformation3 = visualTransformation4;
                    enabled2 = enabled4;
                    singleLine4 = singleLine3;
                    $dirty = $dirty2;
                    readOnly4 = readOnly2;
                    function16 = function15;
                    cursorBrush4 = cursorBrush3;
                    keyboardOptions4 = keyboardOptions2;
                    interactionSource4 = interactionSource3;
                } else {
                    keyboardActions5 = keyboardActions4;
                    singleLine4 = singleLine3;
                    lambda$759698998$foundation = function3;
                    maxLines4 = maxLines3;
                    minLines3 = minLines4;
                    textStyle4 = textStyle2;
                    modifier4 = modifier2;
                    visualTransformation3 = visualTransformation4;
                    enabled2 = enabled4;
                    $dirty = $dirty2;
                    readOnly4 = readOnly2;
                    function16 = function15;
                    cursorBrush4 = cursorBrush3;
                    keyboardOptions4 = keyboardOptions2;
                    interactionSource4 = interactionSource3;
                }
            } else {
                $composer3.skipToGroupEnd();
                if ((i & 512) != 0) {
                    $dirty2 &= -1879048193;
                }
                singleLine4 = singleLine;
                maxLines4 = maxLines;
                minLines3 = minLines;
                visualTransformation3 = visualTransformation;
                lambda$759698998$foundation = function3;
                keyboardActions5 = keyboardActions2;
                keyboardOptions4 = keyboardOptions2;
                textStyle4 = textStyle2;
                modifier4 = modifier2;
                interactionSource4 = interactionSource;
                $dirty = $dirty2;
                readOnly4 = readOnly2;
                function16 = function12;
                cursorBrush4 = cursorBrush;
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(2026950908, $dirty, $dirty12, "androidx.compose.foundation.text.BasicTextField (BasicTextField.kt:749)");
            }
            ComposerKt.sourceInformationMarkerStart($composer3, -2015297835, "CC(remember):BasicTextField.kt#9igjgp");
            Object value$iv2 = $composer3.rememberedValue();
            Function1<? super TextLayoutResult, Unit> function17 = function16;
            if (value$iv2 == Composer.INSTANCE.getEmpty()) {
                $dirty1 = $dirty12;
                value$iv2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(new TextFieldValue(value, 0L, (TextRange) null, 6, (DefaultConstructorMarker) null), null, 2, null);
                $composer3.updateRememberedValue(value$iv2);
            } else {
                $dirty1 = $dirty12;
            }
            final MutableState textFieldValueState$delegate = (MutableState) value$iv2;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            final TextFieldValue textFieldValue2 = TextFieldValue.m7174copy3r_uNRQ$default(BasicTextField$lambda$18(textFieldValueState$delegate), value, 0L, (TextRange) null, 6, (Object) null);
            ComposerKt.sourceInformationMarkerStart($composer3, -2015286354, "CC(remember):BasicTextField.kt#9igjgp");
            boolean invalid$iv3 = $composer3.changed(textFieldValue2);
            Modifier modifier5 = modifier4;
            Object value$iv3 = $composer3.rememberedValue();
            if (invalid$iv3) {
                textStyle5 = textStyle4;
            } else {
                textStyle5 = textStyle4;
                if (value$iv3 == Composer.INSTANCE.getEmpty()) {
                }
                ComposerKt.sourceInformationMarkerEnd($composer3);
                EffectsKt.SideEffect((Function0) value$iv3, $composer3, 0);
                ComposerKt.sourceInformationMarkerStart($composer3, -2015268539, "CC(remember):BasicTextField.kt#9igjgp");
                invalid$iv = ($dirty & 14) != 4;
                Object it$iv2 = $composer3.rememberedValue();
                if (invalid$iv) {
                    textFieldValue = textFieldValue2;
                    if (it$iv2 == Composer.INSTANCE.getEmpty()) {
                    }
                    final MutableState lastTextValue$delegate = (MutableState) it$iv2;
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    ImeOptions imeOptions$foundation = keyboardOptions4.toImeOptions$foundation(singleLine4);
                    boolean z = !singleLine4;
                    int i21 = singleLine4 ? 1 : minLines3;
                    int i22 = singleLine4 ? 1 : maxLines4;
                    ComposerKt.sourceInformationMarkerStart($composer3, -2015264431, "CC(remember):BasicTextField.kt#9igjgp");
                    KeyboardOptions keyboardOptions5 = keyboardOptions4;
                    invalid$iv2 = (($dirty & 112) == 32) | $composer3.changed(lastTextValue$delegate);
                    Object value$iv4 = $composer3.rememberedValue();
                    if (invalid$iv2) {
                        singleLine5 = singleLine4;
                    } else {
                        singleLine5 = singleLine4;
                        if (value$iv4 == Composer.INSTANCE.getEmpty()) {
                        }
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        TextStyle textStyle6 = textStyle5;
                        $composer2 = $composer3;
                        boolean enabled6 = enabled2;
                        CoreTextFieldKt.CoreTextField(textFieldValue, (Function1) value$iv4, modifier5, textStyle6, visualTransformation3, function17, interactionSource4, cursorBrush4, z, i22, i21, imeOptions$foundation, keyboardActions5, enabled6, readOnly4, lambda$759698998$foundation, null, $composer2, ($dirty & 896) | (($dirty >> 6) & 7168) | (($dirty1 << 9) & 57344) | (($dirty1 << 9) & 458752) | (($dirty1 << 9) & 3670016) | (29360128 & ($dirty1 << 9)), (($dirty >> 15) & 896) | ($dirty & 7168) | (57344 & $dirty) | ($dirty1 & 458752), 65536);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier5;
                        textStyle3 = textStyle6;
                        interactionSource2 = interactionSource4;
                        cursorBrush2 = cursorBrush4;
                        keyboardActions3 = keyboardActions5;
                        enabled3 = enabled6;
                        readOnly3 = readOnly4;
                        function32 = lambda$759698998$foundation;
                        singleLine2 = singleLine5;
                        keyboardOptions3 = keyboardOptions5;
                        visualTransformation2 = visualTransformation3;
                        function13 = function17;
                        maxLines2 = maxLines4;
                        minLines2 = minLines3;
                    }
                    value$iv4 = new Function1() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$$ExternalSyntheticLambda14
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return BasicTextFieldKt.BasicTextField$lambda$24$0(function1, textFieldValueState$delegate, lastTextValue$delegate, (TextFieldValue) obj);
                        }
                    };
                    $composer3.updateRememberedValue(value$iv4);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    TextStyle textStyle62 = textStyle5;
                    $composer2 = $composer3;
                    boolean enabled62 = enabled2;
                    CoreTextFieldKt.CoreTextField(textFieldValue, (Function1) value$iv4, modifier5, textStyle62, visualTransformation3, function17, interactionSource4, cursorBrush4, z, i22, i21, imeOptions$foundation, keyboardActions5, enabled62, readOnly4, lambda$759698998$foundation, null, $composer2, ($dirty & 896) | (($dirty >> 6) & 7168) | (($dirty1 << 9) & 57344) | (($dirty1 << 9) & 458752) | (($dirty1 << 9) & 3670016) | (29360128 & ($dirty1 << 9)), (($dirty >> 15) & 896) | ($dirty & 7168) | (57344 & $dirty) | ($dirty1 & 458752), 65536);
                    if (ComposerKt.isTraceInProgress()) {
                    }
                    modifier3 = modifier5;
                    textStyle3 = textStyle62;
                    interactionSource2 = interactionSource4;
                    cursorBrush2 = cursorBrush4;
                    keyboardActions3 = keyboardActions5;
                    enabled3 = enabled62;
                    readOnly3 = readOnly4;
                    function32 = lambda$759698998$foundation;
                    singleLine2 = singleLine5;
                    keyboardOptions3 = keyboardOptions5;
                    visualTransformation2 = visualTransformation3;
                    function13 = function17;
                    maxLines2 = maxLines4;
                    minLines2 = minLines3;
                } else {
                    textFieldValue = textFieldValue2;
                }
                Object value$iv5 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(value, null, 2, null);
                $composer3.updateRememberedValue(value$iv5);
                it$iv2 = value$iv5;
                final MutableState lastTextValue$delegate2 = (MutableState) it$iv2;
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ImeOptions imeOptions$foundation2 = keyboardOptions4.toImeOptions$foundation(singleLine4);
                boolean z2 = !singleLine4;
                if (singleLine4) {
                }
                if (singleLine4) {
                }
                ComposerKt.sourceInformationMarkerStart($composer3, -2015264431, "CC(remember):BasicTextField.kt#9igjgp");
                KeyboardOptions keyboardOptions52 = keyboardOptions4;
                invalid$iv2 = (($dirty & 112) == 32) | $composer3.changed(lastTextValue$delegate2);
                Object value$iv42 = $composer3.rememberedValue();
                if (invalid$iv2) {
                }
                value$iv42 = new Function1() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$$ExternalSyntheticLambda14
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return BasicTextFieldKt.BasicTextField$lambda$24$0(function1, textFieldValueState$delegate, lastTextValue$delegate2, (TextFieldValue) obj);
                    }
                };
                $composer3.updateRememberedValue(value$iv42);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                TextStyle textStyle622 = textStyle5;
                $composer2 = $composer3;
                boolean enabled622 = enabled2;
                CoreTextFieldKt.CoreTextField(textFieldValue, (Function1) value$iv42, modifier5, textStyle622, visualTransformation3, function17, interactionSource4, cursorBrush4, z2, i22, i21, imeOptions$foundation2, keyboardActions5, enabled622, readOnly4, lambda$759698998$foundation, null, $composer2, ($dirty & 896) | (($dirty >> 6) & 7168) | (($dirty1 << 9) & 57344) | (($dirty1 << 9) & 458752) | (($dirty1 << 9) & 3670016) | (29360128 & ($dirty1 << 9)), (($dirty >> 15) & 896) | ($dirty & 7168) | (57344 & $dirty) | ($dirty1 & 458752), 65536);
                if (ComposerKt.isTraceInProgress()) {
                }
                modifier3 = modifier5;
                textStyle3 = textStyle622;
                interactionSource2 = interactionSource4;
                cursorBrush2 = cursorBrush4;
                keyboardActions3 = keyboardActions5;
                enabled3 = enabled622;
                readOnly3 = readOnly4;
                function32 = lambda$759698998$foundation;
                singleLine2 = singleLine5;
                keyboardOptions3 = keyboardOptions52;
                visualTransformation2 = visualTransformation3;
                function13 = function17;
                maxLines2 = maxLines4;
                minLines2 = minLines3;
            }
            value$iv3 = new Function0() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$$ExternalSyntheticLambda13
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BasicTextFieldKt.BasicTextField$lambda$20$0(textFieldValue2, textFieldValueState$delegate);
                }
            };
            $composer3.updateRememberedValue(value$iv3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            EffectsKt.SideEffect((Function0) value$iv3, $composer3, 0);
            ComposerKt.sourceInformationMarkerStart($composer3, -2015268539, "CC(remember):BasicTextField.kt#9igjgp");
            if (($dirty & 14) != 4) {
            }
            Object it$iv22 = $composer3.rememberedValue();
            if (invalid$iv) {
            }
            Object value$iv52 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(value, null, 2, null);
            $composer3.updateRememberedValue(value$iv52);
            it$iv22 = value$iv52;
            final MutableState lastTextValue$delegate22 = (MutableState) it$iv22;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ImeOptions imeOptions$foundation22 = keyboardOptions4.toImeOptions$foundation(singleLine4);
            boolean z22 = !singleLine4;
            if (singleLine4) {
            }
            if (singleLine4) {
            }
            ComposerKt.sourceInformationMarkerStart($composer3, -2015264431, "CC(remember):BasicTextField.kt#9igjgp");
            KeyboardOptions keyboardOptions522 = keyboardOptions4;
            invalid$iv2 = (($dirty & 112) == 32) | $composer3.changed(lastTextValue$delegate22);
            Object value$iv422 = $composer3.rememberedValue();
            if (invalid$iv2) {
            }
            value$iv422 = new Function1() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$$ExternalSyntheticLambda14
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return BasicTextFieldKt.BasicTextField$lambda$24$0(function1, textFieldValueState$delegate, lastTextValue$delegate22, (TextFieldValue) obj);
                }
            };
            $composer3.updateRememberedValue(value$iv422);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            TextStyle textStyle6222 = textStyle5;
            $composer2 = $composer3;
            boolean enabled6222 = enabled2;
            CoreTextFieldKt.CoreTextField(textFieldValue, (Function1) value$iv422, modifier5, textStyle6222, visualTransformation3, function17, interactionSource4, cursorBrush4, z22, i22, i21, imeOptions$foundation22, keyboardActions5, enabled6222, readOnly4, lambda$759698998$foundation, null, $composer2, ($dirty & 896) | (($dirty >> 6) & 7168) | (($dirty1 << 9) & 57344) | (($dirty1 << 9) & 458752) | (($dirty1 << 9) & 3670016) | (29360128 & ($dirty1 << 9)), (($dirty >> 15) & 896) | ($dirty & 7168) | (57344 & $dirty) | ($dirty1 & 458752), 65536);
            if (ComposerKt.isTraceInProgress()) {
            }
            modifier3 = modifier5;
            textStyle3 = textStyle6222;
            interactionSource2 = interactionSource4;
            cursorBrush2 = cursorBrush4;
            keyboardActions3 = keyboardActions5;
            enabled3 = enabled6222;
            readOnly3 = readOnly4;
            function32 = lambda$759698998$foundation;
            singleLine2 = singleLine5;
            keyboardOptions3 = keyboardOptions522;
            visualTransformation2 = visualTransformation3;
            function13 = function17;
            maxLines2 = maxLines4;
            minLines2 = minLines3;
        } else {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
            maxLines2 = maxLines;
            function32 = function3;
            keyboardActions3 = keyboardActions2;
            enabled3 = enabled2;
            keyboardOptions3 = keyboardOptions2;
            readOnly3 = readOnly2;
            textStyle3 = textStyle2;
            modifier3 = modifier2;
            singleLine2 = singleLine;
            minLines2 = minLines;
            visualTransformation2 = visualTransformation;
            function13 = function12;
            interactionSource2 = interactionSource;
            cursorBrush2 = cursorBrush;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$$ExternalSyntheticLambda15
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return BasicTextFieldKt.BasicTextField$lambda$25(value, function1, modifier3, enabled3, readOnly3, textStyle3, keyboardOptions3, keyboardActions3, singleLine2, maxLines2, minLines2, visualTransformation2, function13, interactionSource2, cursorBrush2, function32, $changed, $changed1, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    private static final TextFieldValue BasicTextField$lambda$18(MutableState<TextFieldValue> mutableState) {
        MutableState<TextFieldValue> $this$getValue$iv = mutableState;
        return $this$getValue$iv.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit BasicTextField$lambda$20$0(TextFieldValue $textFieldValue, MutableState $textFieldValueState$delegate) {
        if (!TextRange.m6921equalsimpl0($textFieldValue.getSelection(), BasicTextField$lambda$18($textFieldValueState$delegate).getSelection()) || !Intrinsics.areEqual($textFieldValue.getComposition(), BasicTextField$lambda$18($textFieldValueState$delegate).getComposition())) {
            $textFieldValueState$delegate.setValue($textFieldValue);
        }
        return Unit.INSTANCE;
    }

    private static final String BasicTextField$lambda$22(MutableState<String> mutableState) {
        MutableState<String> $this$getValue$iv = mutableState;
        return $this$getValue$iv.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit BasicTextField$lambda$24$0(Function1 $onValueChange, MutableState $textFieldValueState$delegate, MutableState $lastTextValue$delegate, TextFieldValue newTextFieldValueState) {
        $textFieldValueState$delegate.setValue(newTextFieldValueState);
        boolean stringChangedSinceLastInvocation = !Intrinsics.areEqual(BasicTextField$lambda$22($lastTextValue$delegate), newTextFieldValueState.getText());
        $lastTextValue$delegate.setValue(newTextFieldValueState.getText());
        if (stringChangedSinceLastInvocation) {
            $onValueChange.invoke(newTextFieldValueState.getText());
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit BasicTextField$lambda$26$0(TextLayoutResult it) {
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:263:0x0457  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void BasicTextField(final TextFieldValue value, final Function1<? super TextFieldValue, Unit> function1, Modifier modifier, boolean enabled, boolean readOnly, TextStyle textStyle, KeyboardOptions keyboardOptions, KeyboardActions keyboardActions, boolean singleLine, int maxLines, int minLines, VisualTransformation visualTransformation, Function1<? super TextLayoutResult, Unit> function12, MutableInteractionSource interactionSource, Brush cursorBrush, Function3<? super Function2<? super Composer, ? super Integer, Unit>, ? super Composer, ? super Integer, Unit> function3, Composer $composer, final int $changed, final int $changed1, final int i) {
        Modifier modifier2;
        boolean enabled2;
        boolean readOnly2;
        TextStyle textStyle2;
        KeyboardOptions keyboardOptions2;
        KeyboardActions keyboardActions2;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        Composer $composer2;
        final boolean singleLine2;
        final int minLines2;
        final Function3<? super Function2<? super Composer, ? super Integer, Unit>, ? super Composer, ? super Integer, Unit> function32;
        final KeyboardActions keyboardActions3;
        final Modifier modifier3;
        final boolean enabled3;
        final KeyboardOptions keyboardOptions3;
        final boolean readOnly3;
        final TextStyle textStyle3;
        final int maxLines2;
        final VisualTransformation visualTransformation2;
        final Function1<? super TextLayoutResult, Unit> function13;
        final MutableInteractionSource interactionSource2;
        final Brush cursorBrush2;
        int maxLines3;
        VisualTransformation visualTransformation3;
        Modifier modifier4;
        KeyboardActions keyboardActions4;
        Function1<? super TextLayoutResult, Unit> function14;
        Function1<? super TextLayoutResult, Unit> function15;
        MutableInteractionSource interactionSource3;
        boolean singleLine3;
        SolidColor cursorBrush3;
        boolean singleLine4;
        int maxLines4;
        int minLines3;
        KeyboardOptions keyboardOptions4;
        TextStyle textStyle4;
        MutableInteractionSource interactionSource4;
        Function3<? super Function2<? super Composer, ? super Integer, Unit>, ? super Composer, ? super Integer, Unit> lambda$486633673$foundation;
        Brush cursorBrush4;
        int $dirty;
        boolean enabled4;
        KeyboardActions keyboardActions5;
        Function1<? super TextLayoutResult, Unit> function16;
        TextStyle textStyle5;
        Function1<? super TextLayoutResult, Unit> function17;
        boolean singleLine5;
        Composer $composer3 = $composer.startRestartGroup(-971111025);
        ComposerKt.sourceInformation($composer3, "C(BasicTextField)N(value,onValueChange,modifier,enabled,readOnly,textStyle,keyboardOptions,keyboardActions,singleLine,maxLines,minLines,visualTransformation,onTextLayout,interactionSource,cursorBrush,decorationBox)909@47938L90,907@47876L741:BasicTextField.kt#423gt5");
        int $dirty2 = $changed;
        int $dirty1 = $changed1;
        if (($changed & 6) == 0) {
            $dirty2 |= $composer3.changed(value) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty2 |= $composer3.changedInstance(function1) ? 32 : 16;
        }
        int i8 = i & 4;
        if (i8 != 0) {
            $dirty2 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            modifier2 = modifier;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            modifier2 = modifier;
            $dirty2 |= $composer3.changed(modifier2) ? 256 : 128;
        } else {
            modifier2 = modifier;
        }
        int i9 = i & 8;
        if (i9 != 0) {
            $dirty2 |= 3072;
            enabled2 = enabled;
        } else if (($changed & 3072) == 0) {
            enabled2 = enabled;
            $dirty2 |= $composer3.changed(enabled2) ? 2048 : 1024;
        } else {
            enabled2 = enabled;
        }
        int i10 = i & 16;
        if (i10 != 0) {
            $dirty2 |= 24576;
            readOnly2 = readOnly;
        } else if (($changed & 24576) == 0) {
            readOnly2 = readOnly;
            $dirty2 |= $composer3.changed(readOnly2) ? 16384 : 8192;
        } else {
            readOnly2 = readOnly;
        }
        int i11 = i & 32;
        if (i11 != 0) {
            $dirty2 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            textStyle2 = textStyle;
        } else if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            textStyle2 = textStyle;
            $dirty2 |= $composer3.changed(textStyle2) ? 131072 : 65536;
        } else {
            textStyle2 = textStyle;
        }
        int i12 = i & 64;
        if (i12 != 0) {
            $dirty2 |= 1572864;
            keyboardOptions2 = keyboardOptions;
        } else if (($changed & 1572864) == 0) {
            keyboardOptions2 = keyboardOptions;
            $dirty2 |= $composer3.changed(keyboardOptions2) ? 1048576 : 524288;
        } else {
            keyboardOptions2 = keyboardOptions;
        }
        int i13 = i & 128;
        if (i13 != 0) {
            $dirty2 |= 12582912;
            keyboardActions2 = keyboardActions;
        } else if (($changed & 12582912) == 0) {
            keyboardActions2 = keyboardActions;
            $dirty2 |= $composer3.changed(keyboardActions2) ? 8388608 : 4194304;
        } else {
            keyboardActions2 = keyboardActions;
        }
        int i14 = i & 256;
        if (i14 != 0) {
            $dirty2 |= 100663296;
            i2 = i14;
        } else if (($changed & 100663296) == 0) {
            i2 = i14;
            $dirty2 |= $composer3.changed(singleLine) ? 67108864 : 33554432;
        } else {
            i2 = i14;
        }
        if (($changed & 805306368) == 0) {
            $dirty2 |= ((i & 512) == 0 && $composer3.changed(maxLines)) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
        }
        int i15 = i & 1024;
        if (i15 != 0) {
            $dirty1 |= 6;
            i3 = i15;
        } else if (($changed1 & 6) == 0) {
            i3 = i15;
            $dirty1 |= $composer3.changed(minLines) ? 4 : 2;
        } else {
            i3 = i15;
        }
        int i16 = i & 2048;
        if (i16 != 0) {
            $dirty1 |= 48;
            i4 = i16;
        } else if (($changed1 & 48) == 0) {
            i4 = i16;
            $dirty1 |= $composer3.changed(visualTransformation) ? 32 : 16;
        } else {
            i4 = i16;
        }
        int i17 = i & 4096;
        if (i17 != 0) {
            $dirty1 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            i5 = i17;
        } else {
            i5 = i17;
            if (($changed1 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                $dirty1 |= $composer3.changedInstance(function12) ? 256 : 128;
            }
        }
        int i18 = i & 8192;
        if (i18 != 0) {
            $dirty1 |= 3072;
            i6 = i18;
        } else {
            i6 = i18;
            if (($changed1 & 3072) == 0) {
                $dirty1 |= $composer3.changed(interactionSource) ? 2048 : 1024;
            }
        }
        int i19 = i & 16384;
        if (i19 != 0) {
            $dirty1 |= 24576;
            i7 = i19;
        } else {
            i7 = i19;
            if (($changed1 & 24576) == 0) {
                $dirty1 |= $composer3.changed(cursorBrush) ? 16384 : 8192;
            }
        }
        int i20 = i & 32768;
        if (i20 != 0) {
            $dirty1 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if (($changed1 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            $dirty1 |= $composer3.changedInstance(function3) ? 131072 : 65536;
        }
        if ($composer3.shouldExecute((($dirty2 & 306783379) == 306783378 && (74899 & $dirty1) == 74898) ? false : true, $dirty2 & 1)) {
            $composer3.startDefaults();
            ComposerKt.sourceInformation($composer3, "901@47615L2");
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                Modifier.Companion modifier5 = i8 != 0 ? Modifier.INSTANCE : modifier2;
                if (i9 != 0) {
                    enabled2 = true;
                }
                if (i10 != 0) {
                    readOnly2 = false;
                }
                if (i11 != 0) {
                    textStyle2 = TextStyle.INSTANCE.getDefault();
                }
                if (i12 != 0) {
                    keyboardOptions2 = KeyboardOptions.INSTANCE.getDefault();
                }
                KeyboardActions keyboardActions6 = i13 != 0 ? KeyboardActions.INSTANCE.getDefault() : keyboardActions2;
                boolean singleLine6 = i2 != 0 ? false : singleLine;
                if ((i & 512) != 0) {
                    maxLines3 = singleLine6 ? 1 : Integer.MAX_VALUE;
                    $dirty2 &= -1879048193;
                } else {
                    maxLines3 = maxLines;
                }
                int minLines4 = i3 != 0 ? 1 : minLines;
                visualTransformation3 = i4 != 0 ? VisualTransformation.INSTANCE.getNone() : visualTransformation;
                if (i5 != 0) {
                    modifier4 = modifier5;
                    keyboardActions4 = keyboardActions6;
                    ComposerKt.sourceInformationMarkerStart($composer3, -1229772655, "CC(remember):BasicTextField.kt#9igjgp");
                    Object it$iv = $composer3.rememberedValue();
                    if (it$iv == Composer.INSTANCE.getEmpty()) {
                        Object value$iv = new Function1() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$$ExternalSyntheticLambda1
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                return BasicTextFieldKt.BasicTextField$lambda$26$0((TextLayoutResult) obj);
                            }
                        };
                        $composer3.updateRememberedValue(value$iv);
                        it$iv = value$iv;
                    }
                    function14 = (Function1) it$iv;
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                } else {
                    modifier4 = modifier5;
                    keyboardActions4 = keyboardActions6;
                    function14 = function12;
                }
                MutableInteractionSource interactionSource5 = i6 != 0 ? null : interactionSource;
                if (i7 != 0) {
                    function15 = function14;
                    interactionSource3 = interactionSource5;
                    singleLine3 = singleLine6;
                    cursorBrush3 = new SolidColor(Color.INSTANCE.m4723getBlack0d7_KjU(), null);
                } else {
                    function15 = function14;
                    interactionSource3 = interactionSource5;
                    singleLine3 = singleLine6;
                    cursorBrush3 = cursorBrush;
                }
                if (i20 != 0) {
                    TextStyle textStyle6 = textStyle2;
                    lambda$486633673$foundation = ComposableSingletons$BasicTextFieldKt.INSTANCE.getLambda$486633673$foundation();
                    textStyle4 = textStyle6;
                    singleLine4 = singleLine3;
                    maxLines4 = maxLines3;
                    minLines3 = minLines4;
                    keyboardOptions4 = keyboardOptions2;
                    interactionSource4 = interactionSource3;
                    cursorBrush4 = cursorBrush3;
                    $dirty = $dirty2;
                    enabled4 = enabled2;
                    keyboardActions5 = keyboardActions4;
                    function16 = function15;
                } else {
                    singleLine4 = singleLine3;
                    maxLines4 = maxLines3;
                    minLines3 = minLines4;
                    keyboardOptions4 = keyboardOptions2;
                    textStyle4 = textStyle2;
                    interactionSource4 = interactionSource3;
                    lambda$486633673$foundation = function3;
                    cursorBrush4 = cursorBrush3;
                    $dirty = $dirty2;
                    enabled4 = enabled2;
                    keyboardActions5 = keyboardActions4;
                    function16 = function15;
                }
            } else {
                $composer3.skipToGroupEnd();
                if ((i & 512) != 0) {
                    $dirty2 &= -1879048193;
                }
                maxLines4 = maxLines;
                minLines3 = minLines;
                visualTransformation3 = visualTransformation;
                interactionSource4 = interactionSource;
                $dirty = $dirty2;
                modifier4 = modifier2;
                keyboardOptions4 = keyboardOptions2;
                textStyle4 = textStyle2;
                function16 = function12;
                cursorBrush4 = cursorBrush;
                lambda$486633673$foundation = function3;
                enabled4 = enabled2;
                keyboardActions5 = keyboardActions2;
                singleLine4 = singleLine;
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                textStyle5 = textStyle4;
                function17 = function16;
                ComposerKt.traceEventStart(-971111025, $dirty, $dirty1, "androidx.compose.foundation.text.BasicTextField (BasicTextField.kt:906)");
            } else {
                textStyle5 = textStyle4;
                function17 = function16;
            }
            VisualTransformation visualTransformation4 = visualTransformation3;
            ImeOptions imeOptions$foundation = keyboardOptions4.toImeOptions$foundation(singleLine4);
            int $dirty12 = $dirty1;
            boolean z = !singleLine4;
            Brush cursorBrush5 = cursorBrush4;
            int i21 = singleLine4 ? 1 : minLines3;
            MutableInteractionSource interactionSource6 = interactionSource4;
            int i22 = singleLine4 ? 1 : maxLines4;
            KeyboardOptions keyboardOptions5 = keyboardOptions4;
            ComposerKt.sourceInformationMarkerStart($composer3, -1229762231, "CC(remember):BasicTextField.kt#9igjgp");
            boolean invalid$iv = (($dirty & 14) == 4) | (($dirty & 112) == 32);
            Object value$iv2 = $composer3.rememberedValue();
            if (invalid$iv) {
                singleLine5 = singleLine4;
            } else {
                singleLine5 = singleLine4;
                if (value$iv2 == Composer.INSTANCE.getEmpty()) {
                }
                Function1 function18 = (Function1) value$iv2;
                ComposerKt.sourceInformationMarkerEnd($composer3);
                int i23 = ($dirty & 14) | ($dirty & 896) | (($dirty >> 6) & 7168) | (($dirty12 << 9) & 57344) | (($dirty12 << 9) & 458752) | (($dirty12 << 9) & 3670016) | (($dirty12 << 9) & 29360128);
                int i24 = ($dirty & 7168) | (($dirty >> 15) & 896) | (57344 & $dirty) | ($dirty12 & 458752);
                Function1<? super TextLayoutResult, Unit> function19 = function17;
                boolean singleLine7 = singleLine5;
                TextStyle textStyle7 = textStyle5;
                Modifier modifier6 = modifier4;
                CoreTextFieldKt.CoreTextField(value, function18, modifier6, textStyle7, visualTransformation4, function19, interactionSource6, cursorBrush5, z, i22, i21, imeOptions$foundation, keyboardActions5, enabled4, readOnly2, lambda$486633673$foundation, null, $composer3, i23, i24, 65536);
                $composer2 = $composer3;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                textStyle3 = textStyle7;
                keyboardActions3 = keyboardActions5;
                function32 = lambda$486633673$foundation;
                maxLines2 = maxLines4;
                minLines2 = minLines3;
                singleLine2 = singleLine7;
                modifier3 = modifier6;
                visualTransformation2 = visualTransformation4;
                cursorBrush2 = cursorBrush5;
                enabled3 = enabled4;
                keyboardOptions3 = keyboardOptions5;
                function13 = function19;
                readOnly3 = readOnly2;
                interactionSource2 = interactionSource6;
            }
            value$iv2 = new Function1() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return BasicTextFieldKt.BasicTextField$lambda$27$0(value, function1, (TextFieldValue) obj);
                }
            };
            $composer3.updateRememberedValue(value$iv2);
            Function1 function182 = (Function1) value$iv2;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            int i232 = ($dirty & 14) | ($dirty & 896) | (($dirty >> 6) & 7168) | (($dirty12 << 9) & 57344) | (($dirty12 << 9) & 458752) | (($dirty12 << 9) & 3670016) | (($dirty12 << 9) & 29360128);
            int i242 = ($dirty & 7168) | (($dirty >> 15) & 896) | (57344 & $dirty) | ($dirty12 & 458752);
            Function1<? super TextLayoutResult, Unit> function192 = function17;
            boolean singleLine72 = singleLine5;
            TextStyle textStyle72 = textStyle5;
            Modifier modifier62 = modifier4;
            CoreTextFieldKt.CoreTextField(value, function182, modifier62, textStyle72, visualTransformation4, function192, interactionSource6, cursorBrush5, z, i22, i21, imeOptions$foundation, keyboardActions5, enabled4, readOnly2, lambda$486633673$foundation, null, $composer3, i232, i242, 65536);
            $composer2 = $composer3;
            if (ComposerKt.isTraceInProgress()) {
            }
            textStyle3 = textStyle72;
            keyboardActions3 = keyboardActions5;
            function32 = lambda$486633673$foundation;
            maxLines2 = maxLines4;
            minLines2 = minLines3;
            singleLine2 = singleLine72;
            modifier3 = modifier62;
            visualTransformation2 = visualTransformation4;
            cursorBrush2 = cursorBrush5;
            enabled3 = enabled4;
            keyboardOptions3 = keyboardOptions5;
            function13 = function192;
            readOnly3 = readOnly2;
            interactionSource2 = interactionSource6;
        } else {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
            singleLine2 = singleLine;
            minLines2 = minLines;
            function32 = function3;
            keyboardActions3 = keyboardActions2;
            modifier3 = modifier2;
            enabled3 = enabled2;
            keyboardOptions3 = keyboardOptions2;
            readOnly3 = readOnly2;
            textStyle3 = textStyle2;
            maxLines2 = maxLines;
            visualTransformation2 = visualTransformation;
            function13 = function12;
            interactionSource2 = interactionSource;
            cursorBrush2 = cursorBrush;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return BasicTextFieldKt.BasicTextField$lambda$28(value, function1, modifier3, enabled3, readOnly3, textStyle3, keyboardOptions3, keyboardActions3, singleLine2, maxLines2, minLines2, visualTransformation2, function13, interactionSource2, cursorBrush2, function32, $changed, $changed1, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit BasicTextField$lambda$27$0(TextFieldValue $value, Function1 $onValueChange, TextFieldValue it) {
        if (!Intrinsics.areEqual($value, it)) {
            $onValueChange.invoke(it);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit BasicTextField$lambda$29$0(TextLayoutResult it) {
        return Unit.INSTANCE;
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Maintained for binary compatibility")
    public static final /* synthetic */ void BasicTextField(final String value, final Function1 onValueChange, Modifier modifier, boolean enabled, boolean readOnly, TextStyle textStyle, KeyboardOptions keyboardOptions, KeyboardActions keyboardActions, boolean singleLine, int maxLines, VisualTransformation visualTransformation, Function1 onTextLayout, MutableInteractionSource interactionSource, Brush cursorBrush, Function3 decorationBox, Composer $composer, final int $changed, final int $changed1, final int i) {
        Modifier modifier2;
        boolean z;
        boolean z2;
        TextStyle textStyle2;
        KeyboardOptions keyboardOptions2;
        KeyboardActions keyboardActions2;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        Composer $composer2;
        final KeyboardActions keyboardActions3;
        final Modifier modifier3;
        final int maxLines2;
        final MutableInteractionSource interactionSource2;
        final Function3 decorationBox2;
        final boolean enabled2;
        final boolean readOnly2;
        final TextStyle textStyle3;
        final KeyboardOptions keyboardOptions3;
        final boolean singleLine2;
        final VisualTransformation visualTransformation2;
        final Function1 onTextLayout2;
        final Brush cursorBrush2;
        Modifier modifier4;
        Function1 onTextLayout3;
        int i9;
        MutableInteractionSource interactionSource3;
        Composer $composer3 = $composer.startRestartGroup(74291967);
        ComposerKt.sourceInformation($composer3, "C(BasicTextField)N(value,onValueChange,modifier,enabled,readOnly,textStyle,keyboardOptions,keyboardActions,singleLine,maxLines,visualTransformation,onTextLayout,interactionSource,cursorBrush,decorationBox)945@49253L2,946@49307L39,951@49548L580:BasicTextField.kt#423gt5");
        int $dirty = $changed;
        int $dirty1 = $changed1;
        if (($changed & 6) == 0) {
            $dirty |= $composer3.changed(value) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer3.changedInstance(onValueChange) ? 32 : 16;
        }
        int i10 = i & 4;
        if (i10 != 0) {
            $dirty |= RendererCapabilities.DECODER_SUPPORT_MASK;
            modifier2 = modifier;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            modifier2 = modifier;
            $dirty |= $composer3.changed(modifier2) ? 256 : 128;
        } else {
            modifier2 = modifier;
        }
        int i11 = i & 8;
        if (i11 != 0) {
            $dirty |= 3072;
            z = enabled;
        } else if (($changed & 3072) == 0) {
            z = enabled;
            $dirty |= $composer3.changed(z) ? 2048 : 1024;
        } else {
            z = enabled;
        }
        int i12 = i & 16;
        if (i12 != 0) {
            $dirty |= 24576;
            z2 = readOnly;
        } else if (($changed & 24576) == 0) {
            z2 = readOnly;
            $dirty |= $composer3.changed(z2) ? 16384 : 8192;
        } else {
            z2 = readOnly;
        }
        int i13 = i & 32;
        if (i13 != 0) {
            $dirty |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            textStyle2 = textStyle;
        } else if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            textStyle2 = textStyle;
            $dirty |= $composer3.changed(textStyle2) ? 131072 : 65536;
        } else {
            textStyle2 = textStyle;
        }
        int i14 = i & 64;
        if (i14 != 0) {
            $dirty |= 1572864;
            keyboardOptions2 = keyboardOptions;
        } else if (($changed & 1572864) == 0) {
            keyboardOptions2 = keyboardOptions;
            $dirty |= $composer3.changed(keyboardOptions2) ? 1048576 : 524288;
        } else {
            keyboardOptions2 = keyboardOptions;
        }
        int i15 = i & 128;
        if (i15 != 0) {
            $dirty |= 12582912;
            keyboardActions2 = keyboardActions;
        } else if (($changed & 12582912) == 0) {
            keyboardActions2 = keyboardActions;
            $dirty |= $composer3.changed(keyboardActions2) ? 8388608 : 4194304;
        } else {
            keyboardActions2 = keyboardActions;
        }
        int i16 = i & 256;
        if (i16 != 0) {
            $dirty |= 100663296;
            i2 = i16;
        } else if (($changed & 100663296) == 0) {
            i2 = i16;
            $dirty |= $composer3.changed(singleLine) ? 67108864 : 33554432;
        } else {
            i2 = i16;
        }
        int i17 = i & 512;
        if (i17 != 0) {
            $dirty |= 805306368;
            i3 = i17;
        } else if (($changed & 805306368) == 0) {
            i3 = i17;
            $dirty |= $composer3.changed(maxLines) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
        } else {
            i3 = i17;
        }
        int i18 = i & 1024;
        if (i18 != 0) {
            $dirty1 |= 6;
            i4 = i18;
        } else if (($changed1 & 6) == 0) {
            i4 = i18;
            $dirty1 |= $composer3.changed(visualTransformation) ? 4 : 2;
        } else {
            i4 = i18;
        }
        int i19 = i & 2048;
        if (i19 != 0) {
            $dirty1 |= 48;
            i5 = i19;
        } else if (($changed1 & 48) == 0) {
            i5 = i19;
            $dirty1 |= $composer3.changedInstance(onTextLayout) ? 32 : 16;
        } else {
            i5 = i19;
        }
        int i20 = i & 4096;
        if (i20 != 0) {
            $dirty1 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            i6 = i20;
        } else {
            i6 = i20;
            if (($changed1 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                $dirty1 |= $composer3.changed(interactionSource) ? 256 : 128;
            }
        }
        int i21 = i & 8192;
        if (i21 != 0) {
            $dirty1 |= 3072;
            i7 = i21;
        } else {
            i7 = i21;
            if (($changed1 & 3072) == 0) {
                $dirty1 |= $composer3.changed(cursorBrush) ? 2048 : 1024;
            }
        }
        int i22 = i & 16384;
        if (i22 != 0) {
            $dirty1 |= 24576;
            i8 = i22;
        } else {
            i8 = i22;
            if (($changed1 & 24576) == 0) {
                $dirty1 |= $composer3.changedInstance(decorationBox) ? 16384 : 8192;
            }
        }
        if ($composer3.shouldExecute((($dirty & 306783379) == 306783378 && ($dirty1 & 9363) == 9362) ? false : true, $dirty & 1)) {
            Modifier.Companion modifier5 = i10 != 0 ? Modifier.INSTANCE : modifier2;
            boolean enabled3 = i11 != 0 ? true : z;
            boolean readOnly3 = i12 != 0 ? false : z2;
            TextStyle textStyle4 = i13 != 0 ? TextStyle.INSTANCE.getDefault() : textStyle2;
            KeyboardOptions keyboardOptions4 = i14 != 0 ? KeyboardOptions.INSTANCE.getDefault() : keyboardOptions2;
            KeyboardActions keyboardActions4 = i15 != 0 ? KeyboardActions.INSTANCE.getDefault() : keyboardActions2;
            boolean singleLine3 = i2 != 0 ? false : singleLine;
            int maxLines3 = i3 != 0 ? Integer.MAX_VALUE : maxLines;
            VisualTransformation visualTransformation3 = i4 != 0 ? VisualTransformation.INSTANCE.getNone() : visualTransformation;
            if (i5 != 0) {
                ComposerKt.sourceInformationMarkerStart($composer3, -1619846591, "CC(remember):BasicTextField.kt#9igjgp");
                modifier4 = modifier5;
                Object it$iv = $composer3.rememberedValue();
                if (it$iv == Composer.INSTANCE.getEmpty()) {
                    Object value$iv = new Function1() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$$ExternalSyntheticLambda4
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return BasicTextFieldKt.BasicTextField$lambda$29$0((TextLayoutResult) obj);
                        }
                    };
                    $composer3.updateRememberedValue(value$iv);
                    it$iv = value$iv;
                }
                ComposerKt.sourceInformationMarkerEnd($composer3);
                onTextLayout3 = (Function1) it$iv;
            } else {
                modifier4 = modifier5;
                onTextLayout3 = onTextLayout;
            }
            if (i6 != 0) {
                ComposerKt.sourceInformationMarkerStart($composer3, -1619844826, "CC(remember):BasicTextField.kt#9igjgp");
                Object it$iv2 = $composer3.rememberedValue();
                if (it$iv2 == Composer.INSTANCE.getEmpty()) {
                    Object value$iv2 = InteractionSourceKt.MutableInteractionSource();
                    $composer3.updateRememberedValue(value$iv2);
                    it$iv2 = value$iv2;
                }
                ComposerKt.sourceInformationMarkerEnd($composer3);
                int i23 = i8;
                interactionSource3 = (MutableInteractionSource) it$iv2;
                i9 = i23;
            } else {
                i9 = i8;
                interactionSource3 = interactionSource;
            }
            Brush cursorBrush3 = i7 != 0 ? new SolidColor(Color.INSTANCE.m4723getBlack0d7_KjU(), null) : cursorBrush;
            Function3 decorationBox3 = i9 != 0 ? ComposableSingletons$BasicTextFieldKt.INSTANCE.getLambda$444370233$foundation() : decorationBox;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(74291967, $dirty, $dirty1, "androidx.compose.foundation.text.BasicTextField (BasicTextField.kt:950)");
            }
            int i24 = (($dirty1 << 3) & 112) | 6 | (($dirty1 << 3) & 896) | (($dirty1 << 3) & 7168) | (($dirty1 << 3) & 57344) | (458752 & ($dirty1 << 3));
            $composer2 = $composer3;
            Modifier modifier6 = modifier4;
            BasicTextField(value, (Function1<? super String, Unit>) onValueChange, modifier6, enabled3, readOnly3, textStyle4, keyboardOptions4, keyboardActions4, singleLine3, maxLines3, 1, visualTransformation3, (Function1<? super TextLayoutResult, Unit>) onTextLayout3, interactionSource3, cursorBrush3, (Function3<? super Function2<? super Composer, ? super Integer, Unit>, ? super Composer, ? super Integer, Unit>) decorationBox3, $composer2, ($dirty & 14) | ($dirty & 112) | ($dirty & 896) | ($dirty & 7168) | (57344 & $dirty) | (458752 & $dirty) | (3670016 & $dirty) | (29360128 & $dirty) | (234881024 & $dirty) | (1879048192 & $dirty), i24, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier6;
            enabled2 = enabled3;
            readOnly2 = readOnly3;
            textStyle3 = textStyle4;
            keyboardOptions3 = keyboardOptions4;
            keyboardActions3 = keyboardActions4;
            singleLine2 = singleLine3;
            maxLines2 = maxLines3;
            visualTransformation2 = visualTransformation3;
            onTextLayout2 = onTextLayout3;
            interactionSource2 = interactionSource3;
            cursorBrush2 = cursorBrush3;
            decorationBox2 = decorationBox3;
        } else {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
            Modifier modifier7 = modifier2;
            keyboardActions3 = keyboardActions2;
            modifier3 = modifier7;
            maxLines2 = maxLines;
            interactionSource2 = interactionSource;
            decorationBox2 = decorationBox;
            enabled2 = z;
            readOnly2 = z2;
            textStyle3 = textStyle2;
            keyboardOptions3 = keyboardOptions2;
            singleLine2 = singleLine;
            visualTransformation2 = visualTransformation;
            onTextLayout2 = onTextLayout;
            cursorBrush2 = cursorBrush;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return BasicTextFieldKt.BasicTextField$lambda$31(value, onValueChange, modifier3, enabled2, readOnly2, textStyle3, keyboardOptions3, keyboardActions3, singleLine2, maxLines2, visualTransformation2, onTextLayout2, interactionSource2, cursorBrush2, decorationBox2, $changed, $changed1, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit BasicTextField$lambda$32$0(TextLayoutResult it) {
        return Unit.INSTANCE;
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Maintained for binary compatibility")
    public static final /* synthetic */ void BasicTextField(final TextFieldValue value, final Function1 onValueChange, Modifier modifier, boolean enabled, boolean readOnly, TextStyle textStyle, KeyboardOptions keyboardOptions, KeyboardActions keyboardActions, boolean singleLine, int maxLines, VisualTransformation visualTransformation, Function1 onTextLayout, MutableInteractionSource interactionSource, Brush cursorBrush, Function3 decorationBox, Composer $composer, final int $changed, final int $changed1, final int i) {
        Modifier modifier2;
        boolean z;
        boolean z2;
        TextStyle textStyle2;
        KeyboardOptions keyboardOptions2;
        KeyboardActions keyboardActions2;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        Composer $composer2;
        final KeyboardActions keyboardActions3;
        final Modifier modifier3;
        final int maxLines2;
        final MutableInteractionSource interactionSource2;
        final Function3 decorationBox2;
        final boolean enabled2;
        final boolean readOnly2;
        final TextStyle textStyle3;
        final KeyboardOptions keyboardOptions3;
        final boolean singleLine2;
        final VisualTransformation visualTransformation2;
        final Function1 onTextLayout2;
        final Brush cursorBrush2;
        Modifier modifier4;
        Function1 onTextLayout3;
        int i9;
        MutableInteractionSource interactionSource3;
        Composer $composer3 = $composer.startRestartGroup(1742344466);
        ComposerKt.sourceInformation($composer3, "C(BasicTextField)N(value,onValueChange,modifier,enabled,readOnly,textStyle,keyboardOptions,keyboardActions,singleLine,maxLines,visualTransformation,onTextLayout,interactionSource,cursorBrush,decorationBox)985@50780L2,986@50834L39,991@51075L580:BasicTextField.kt#423gt5");
        int $dirty = $changed;
        int $dirty1 = $changed1;
        if (($changed & 6) == 0) {
            $dirty |= $composer3.changed(value) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer3.changedInstance(onValueChange) ? 32 : 16;
        }
        int i10 = i & 4;
        if (i10 != 0) {
            $dirty |= RendererCapabilities.DECODER_SUPPORT_MASK;
            modifier2 = modifier;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            modifier2 = modifier;
            $dirty |= $composer3.changed(modifier2) ? 256 : 128;
        } else {
            modifier2 = modifier;
        }
        int i11 = i & 8;
        if (i11 != 0) {
            $dirty |= 3072;
            z = enabled;
        } else if (($changed & 3072) == 0) {
            z = enabled;
            $dirty |= $composer3.changed(z) ? 2048 : 1024;
        } else {
            z = enabled;
        }
        int i12 = i & 16;
        if (i12 != 0) {
            $dirty |= 24576;
            z2 = readOnly;
        } else if (($changed & 24576) == 0) {
            z2 = readOnly;
            $dirty |= $composer3.changed(z2) ? 16384 : 8192;
        } else {
            z2 = readOnly;
        }
        int i13 = i & 32;
        if (i13 != 0) {
            $dirty |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            textStyle2 = textStyle;
        } else if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            textStyle2 = textStyle;
            $dirty |= $composer3.changed(textStyle2) ? 131072 : 65536;
        } else {
            textStyle2 = textStyle;
        }
        int i14 = i & 64;
        if (i14 != 0) {
            $dirty |= 1572864;
            keyboardOptions2 = keyboardOptions;
        } else if (($changed & 1572864) == 0) {
            keyboardOptions2 = keyboardOptions;
            $dirty |= $composer3.changed(keyboardOptions2) ? 1048576 : 524288;
        } else {
            keyboardOptions2 = keyboardOptions;
        }
        int i15 = i & 128;
        if (i15 != 0) {
            $dirty |= 12582912;
            keyboardActions2 = keyboardActions;
        } else if (($changed & 12582912) == 0) {
            keyboardActions2 = keyboardActions;
            $dirty |= $composer3.changed(keyboardActions2) ? 8388608 : 4194304;
        } else {
            keyboardActions2 = keyboardActions;
        }
        int i16 = i & 256;
        if (i16 != 0) {
            $dirty |= 100663296;
            i2 = i16;
        } else if (($changed & 100663296) == 0) {
            i2 = i16;
            $dirty |= $composer3.changed(singleLine) ? 67108864 : 33554432;
        } else {
            i2 = i16;
        }
        int i17 = i & 512;
        if (i17 != 0) {
            $dirty |= 805306368;
            i3 = i17;
        } else if (($changed & 805306368) == 0) {
            i3 = i17;
            $dirty |= $composer3.changed(maxLines) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
        } else {
            i3 = i17;
        }
        int i18 = i & 1024;
        if (i18 != 0) {
            $dirty1 |= 6;
            i4 = i18;
        } else if (($changed1 & 6) == 0) {
            i4 = i18;
            $dirty1 |= $composer3.changed(visualTransformation) ? 4 : 2;
        } else {
            i4 = i18;
        }
        int i19 = i & 2048;
        if (i19 != 0) {
            $dirty1 |= 48;
            i5 = i19;
        } else if (($changed1 & 48) == 0) {
            i5 = i19;
            $dirty1 |= $composer3.changedInstance(onTextLayout) ? 32 : 16;
        } else {
            i5 = i19;
        }
        int i20 = i & 4096;
        if (i20 != 0) {
            $dirty1 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            i6 = i20;
        } else {
            i6 = i20;
            if (($changed1 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                $dirty1 |= $composer3.changed(interactionSource) ? 256 : 128;
            }
        }
        int i21 = i & 8192;
        if (i21 != 0) {
            $dirty1 |= 3072;
            i7 = i21;
        } else {
            i7 = i21;
            if (($changed1 & 3072) == 0) {
                $dirty1 |= $composer3.changed(cursorBrush) ? 2048 : 1024;
            }
        }
        int i22 = i & 16384;
        if (i22 != 0) {
            $dirty1 |= 24576;
            i8 = i22;
        } else {
            i8 = i22;
            if (($changed1 & 24576) == 0) {
                $dirty1 |= $composer3.changedInstance(decorationBox) ? 16384 : 8192;
            }
        }
        if ($composer3.shouldExecute((($dirty & 306783379) == 306783378 && ($dirty1 & 9363) == 9362) ? false : true, $dirty & 1)) {
            Modifier.Companion modifier5 = i10 != 0 ? Modifier.INSTANCE : modifier2;
            boolean enabled3 = i11 != 0 ? true : z;
            boolean readOnly3 = i12 != 0 ? false : z2;
            TextStyle textStyle4 = i13 != 0 ? TextStyle.INSTANCE.getDefault() : textStyle2;
            KeyboardOptions keyboardOptions4 = i14 != 0 ? KeyboardOptions.INSTANCE.getDefault() : keyboardOptions2;
            KeyboardActions keyboardActions4 = i15 != 0 ? KeyboardActions.INSTANCE.getDefault() : keyboardActions2;
            boolean singleLine3 = i2 != 0 ? false : singleLine;
            int maxLines3 = i3 != 0 ? Integer.MAX_VALUE : maxLines;
            VisualTransformation visualTransformation3 = i4 != 0 ? VisualTransformation.INSTANCE.getNone() : visualTransformation;
            if (i5 != 0) {
                ComposerKt.sourceInformationMarkerStart($composer3, -644195948, "CC(remember):BasicTextField.kt#9igjgp");
                modifier4 = modifier5;
                Object it$iv = $composer3.rememberedValue();
                if (it$iv == Composer.INSTANCE.getEmpty()) {
                    Object value$iv = new Function1() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$$ExternalSyntheticLambda9
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return BasicTextFieldKt.BasicTextField$lambda$32$0((TextLayoutResult) obj);
                        }
                    };
                    $composer3.updateRememberedValue(value$iv);
                    it$iv = value$iv;
                }
                ComposerKt.sourceInformationMarkerEnd($composer3);
                onTextLayout3 = (Function1) it$iv;
            } else {
                modifier4 = modifier5;
                onTextLayout3 = onTextLayout;
            }
            if (i6 != 0) {
                ComposerKt.sourceInformationMarkerStart($composer3, -644194183, "CC(remember):BasicTextField.kt#9igjgp");
                Object it$iv2 = $composer3.rememberedValue();
                if (it$iv2 == Composer.INSTANCE.getEmpty()) {
                    Object value$iv2 = InteractionSourceKt.MutableInteractionSource();
                    $composer3.updateRememberedValue(value$iv2);
                    it$iv2 = value$iv2;
                }
                ComposerKt.sourceInformationMarkerEnd($composer3);
                int i23 = i8;
                interactionSource3 = (MutableInteractionSource) it$iv2;
                i9 = i23;
            } else {
                i9 = i8;
                interactionSource3 = interactionSource;
            }
            Brush cursorBrush3 = i7 != 0 ? new SolidColor(Color.INSTANCE.m4723getBlack0d7_KjU(), null) : cursorBrush;
            Function3 decorationBox3 = i9 != 0 ? ComposableSingletons$BasicTextFieldKt.INSTANCE.m1166getLambda$665310900$foundation() : decorationBox;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1742344466, $dirty, $dirty1, "androidx.compose.foundation.text.BasicTextField (BasicTextField.kt:990)");
            }
            int i24 = (($dirty1 << 3) & 112) | 6 | (($dirty1 << 3) & 896) | (($dirty1 << 3) & 7168) | (($dirty1 << 3) & 57344) | (458752 & ($dirty1 << 3));
            $composer2 = $composer3;
            Modifier modifier6 = modifier4;
            BasicTextField(value, (Function1<? super TextFieldValue, Unit>) onValueChange, modifier6, enabled3, readOnly3, textStyle4, keyboardOptions4, keyboardActions4, singleLine3, maxLines3, 1, visualTransformation3, (Function1<? super TextLayoutResult, Unit>) onTextLayout3, interactionSource3, cursorBrush3, (Function3<? super Function2<? super Composer, ? super Integer, Unit>, ? super Composer, ? super Integer, Unit>) decorationBox3, $composer2, ($dirty & 14) | ($dirty & 112) | ($dirty & 896) | ($dirty & 7168) | (57344 & $dirty) | (458752 & $dirty) | (3670016 & $dirty) | (29360128 & $dirty) | (234881024 & $dirty) | (1879048192 & $dirty), i24, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier6;
            enabled2 = enabled3;
            readOnly2 = readOnly3;
            textStyle3 = textStyle4;
            keyboardOptions3 = keyboardOptions4;
            keyboardActions3 = keyboardActions4;
            singleLine2 = singleLine3;
            maxLines2 = maxLines3;
            visualTransformation2 = visualTransformation3;
            onTextLayout2 = onTextLayout3;
            interactionSource2 = interactionSource3;
            cursorBrush2 = cursorBrush3;
            decorationBox2 = decorationBox3;
        } else {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
            Modifier modifier7 = modifier2;
            keyboardActions3 = keyboardActions2;
            modifier3 = modifier7;
            maxLines2 = maxLines;
            interactionSource2 = interactionSource;
            decorationBox2 = decorationBox;
            enabled2 = z;
            readOnly2 = z2;
            textStyle3 = textStyle2;
            keyboardOptions3 = keyboardOptions2;
            singleLine2 = singleLine;
            visualTransformation2 = visualTransformation;
            onTextLayout2 = onTextLayout;
            cursorBrush2 = cursorBrush;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: androidx.compose.foundation.text.BasicTextFieldKt$$ExternalSyntheticLambda10
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return BasicTextFieldKt.BasicTextField$lambda$34(value, onValueChange, modifier3, enabled2, readOnly2, textStyle3, keyboardOptions3, keyboardActions3, singleLine2, maxLines2, visualTransformation2, onTextLayout2, interactionSource2, cursorBrush2, decorationBox2, $changed, $changed1, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }
}
