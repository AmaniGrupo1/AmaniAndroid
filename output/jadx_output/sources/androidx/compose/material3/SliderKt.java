package androidx.compose.material3;

import androidx.compose.foundation.FocusableKt;
import androidx.compose.foundation.ProgressSemanticsKt;
import androidx.compose.foundation.gestures.DragGestureDetectorKt;
import androidx.compose.foundation.gestures.DraggableKt;
import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.PressGestureScope;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.interaction.DragInteraction;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.internal.AccessibilityUtilKt;
import androidx.compose.material3.internal.DragGestureDetectorCopyKt;
import androidx.compose.material3.internal.Strings;
import androidx.compose.material3.internal.Strings_androidKt;
import androidx.compose.material3.tokens.SliderTokens;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendPointerInputElement;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt$sam$androidx_compose_ui_input_pointer_PointerInputEventHandler$0;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.OnRemeasuredModifierKt;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.util.MathHelpersKt;
import androidx.core.app.NotificationCompat;
import androidx.media3.common.C;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.media3.extractor.ts.TsExtractor;
import androidx.profileinstaller.ProfileVerifier;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.firebase.firestore.model.Values;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.math.MathKt;
import kotlin.ranges.ClosedFloatingPointRange;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: compiled from: Slider.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000\u0098\u0001\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0010\u0014\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u001a\u0098\u0001\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010\u001c\u001a\u00020\u00102\b\b\u0002\u0010\u001d\u001a\u00020\u001e2\b\b\u0002\u0010\u001f\u001a\u00020 2\b\b\u0002\u0010!\u001a\u00020 2\u0019\b\u0002\u0010\"\u001a\u0013\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00170#¢\u0006\u0002\b$2\u0019\b\u0002\u0010%\u001a\u0013\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00170#¢\u0006\u0002\b$2\u0019\b\u0002\u0010&\u001a\u0013\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00170#¢\u0006\u0002\b$H\u0007¢\u0006\u0002\u0010'\u001aä\u0001\u0010\u0016\u001a\u00020\u00172\f\u0010(\u001a\b\u0012\u0004\u0012\u00020*0)2\u0018\u0010+\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020*0)\u0012\u0004\u0012\u00020\u00170#2\b\b\u0002\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010\u001c\u001a\u00020\u00102\u000e\b\u0002\u0010,\u001a\b\u0012\u0004\u0012\u00020*0)2\u0010\b\u0002\u0010-\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010.2\b\b\u0002\u0010\u001d\u001a\u00020\u001e2\b\b\u0002\u0010\u001f\u001a\u00020 2\b\b\u0002\u0010!\u001a\u00020 2\u0019\b\u0002\u0010\"\u001a\u0013\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00170#¢\u0006\u0002\b$2\u0019\b\u0002\u0010%\u001a\u0013\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00170#¢\u0006\u0002\b$2\u0019\b\u0002\u0010&\u001a\u0013\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00170#¢\u0006\u0002\b$2\b\b\u0003\u0010/\u001a\u000200H\u0007¢\u0006\u0002\u00101\u001a\u007f\u0010\u0016\u001a\u00020\u00172\f\u0010(\u001a\b\u0012\u0004\u0012\u00020*0)2\u0018\u0010+\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020*0)\u0012\u0004\u0012\u00020\u00170#2\b\b\u0002\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010\u001c\u001a\u00020\u00102\u000e\b\u0002\u0010,\u001a\b\u0012\u0004\u0012\u00020*0)2\b\b\u0003\u0010/\u001a\u0002002\u0010\b\u0002\u0010-\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010.2\b\b\u0002\u0010\u001d\u001a\u00020\u001eH\u0007¢\u0006\u0002\u00102\u001a\u0080\u0001\u00103\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020 2\u0017\u0010\"\u001a\u0013\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00170#¢\u0006\u0002\b$2\u0017\u0010%\u001a\u0013\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00170#¢\u0006\u0002\b$2\u0017\u0010&\u001a\u0013\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00170#¢\u0006\u0002\b$H\u0003¢\u0006\u0002\u00104\u001as\u00105\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u0002062\b\b\u0002\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010\u001c\u001a\u00020\u00102\b\b\u0002\u0010\u001d\u001a\u00020\u001e2\b\b\u0002\u00107\u001a\u00020 2\u0019\b\u0002\u00108\u001a\u0013\u0012\u0004\u0012\u000206\u0012\u0004\u0012\u00020\u00170#¢\u0006\u0002\b$2\u0019\b\u0002\u0010&\u001a\u0013\u0012\u0004\u0012\u000206\u0012\u0004\u0012\u00020\u00170#¢\u0006\u0002\b$H\u0007¢\u0006\u0002\u00109\u001a³\u0001\u00105\u001a\u00020\u00172\u0006\u0010(\u001a\u00020*2\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020\u00170#2\b\b\u0002\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010\u001c\u001a\u00020\u00102\u0010\b\u0002\u0010-\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010.2\b\b\u0002\u0010\u001d\u001a\u00020\u001e2\b\b\u0002\u00107\u001a\u00020 2\b\b\u0003\u0010/\u001a\u0002002\u0019\b\u0002\u00108\u001a\u0013\u0012\u0004\u0012\u000206\u0012\u0004\u0012\u00020\u00170#¢\u0006\u0002\b$2\u0019\b\u0002\u0010&\u001a\u0013\u0012\u0004\u0012\u000206\u0012\u0004\u0012\u00020\u00170#¢\u0006\u0002\b$2\u000e\b\u0002\u0010,\u001a\b\u0012\u0004\u0012\u00020*0)H\u0007¢\u0006\u0002\u0010:\u001a}\u00105\u001a\u00020\u00172\u0006\u0010(\u001a\u00020*2\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020\u00170#2\b\b\u0002\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010\u001c\u001a\u00020\u00102\u000e\b\u0002\u0010,\u001a\b\u0012\u0004\u0012\u00020*0)2\b\b\u0003\u0010/\u001a\u0002002\u0010\b\u0002\u0010-\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010.2\b\b\u0002\u0010\u001d\u001a\u00020\u001e2\b\b\u0002\u00107\u001a\u00020 H\u0007¢\u0006\u0002\u0010;\u001a_\u0010<\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0018\u001a\u0002062\u0006\u0010\u001c\u001a\u00020\u00102\u0006\u00107\u001a\u00020 2\u0017\u00108\u001a\u0013\u0012\u0004\u0012\u000206\u0012\u0004\u0012\u00020\u00170#¢\u0006\u0002\b$2\u0017\u0010&\u001a\u0013\u0012\u0004\u0012\u000206\u0012\u0004\u0012\u00020\u00170#¢\u0006\u0002\b$H\u0003¢\u0006\u0002\u0010=\u001a\u001d\u0010>\u001a\u00020\u00112\u0006\u0010?\u001a\u00020*2\u0006\u0010@\u001a\u00020*H\u0001¢\u0006\u0002\u0010A\u001a\u001b\u0010>\u001a\u00020\u00112\f\u0010B\u001a\b\u0012\u0004\u0012\u00020*0)H\u0001¢\u0006\u0002\u0010C\u001a \u0010D\u001a\u00020*2\u0006\u0010E\u001a\u00020*2\u0006\u0010F\u001a\u00020*2\u0006\u0010G\u001a\u00020*H\u0002\u001a:\u0010H\u001a\u00020\u00112\u0006\u0010I\u001a\u00020*2\u0006\u0010J\u001a\u00020*2\u0006\u0010K\u001a\u00020\u00112\u0006\u0010L\u001a\u00020*2\u0006\u0010M\u001a\u00020*H\u0002ø\u0001\u0000¢\u0006\u0004\bN\u0010O\u001a0\u0010H\u001a\u00020*2\u0006\u0010I\u001a\u00020*2\u0006\u0010J\u001a\u00020*2\u0006\u0010P\u001a\u00020*2\u0006\u0010L\u001a\u00020*2\u0006\u0010M\u001a\u00020*H\u0002\u001a(\u0010Q\u001a\u00020*2\u0006\u0010R\u001a\u00020*2\u0006\u0010S\u001a\u00020T2\u0006\u0010U\u001a\u00020*2\u0006\u0010V\u001a\u00020*H\u0002\u001a\u0010\u0010W\u001a\u00020T2\u0006\u0010/\u001a\u000200H\u0002\u001a5\u0010X\u001a\u0010\u0012\u0004\u0012\u00020Z\u0012\u0004\u0012\u00020*\u0018\u00010Y*\u00020[2\u0006\u0010\\\u001a\u00020]2\u0006\u0010^\u001a\u00020_H\u0082@ø\u0001\u0000¢\u0006\u0004\b`\u0010a\u001a\u001c\u0010b\u001a\u00020\u001b*\u00020\u001b2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u0010H\u0002\u001a,\u0010c\u001a\u00020\u001b*\u00020\u001b2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020 2\u0006\u0010\u001c\u001a\u00020\u0010H\u0003\u001a\u001c\u0010d\u001a\u00020\u001b*\u00020\u001b2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u0010H\u0002\u001a\u001c\u0010e\u001a\u00020\u001b*\u00020\u001b2\u0006\u0010\u0018\u001a\u0002062\u0006\u0010\u001c\u001a\u00020\u0010H\u0002\u001a$\u0010f\u001a\u00020\u001b*\u00020\u001b2\u0006\u0010\u0018\u001a\u0002062\u0006\u00107\u001a\u00020 2\u0006\u0010\u001c\u001a\u00020\u0010H\u0003\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u0010\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0004\"\u0010\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0007\"\u0010\u0010\b\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0004\"\u0016\u0010\t\u001a\u00020\u0003X\u0080\u0004¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b\n\u0010\u000b\"\u0016\u0010\f\u001a\u00020\u0003X\u0080\u0004¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b\r\u0010\u000b\"\u0010\u0010\u000e\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0004\"\u001e\u0010\u000f\u001a\u00020\u0010*\u00020\u00118@X\u0081\u0004¢\u0006\f\u0012\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u0006g"}, d2 = {"SliderRangeTolerance", "", "ThumbHeight", "Landroidx/compose/ui/unit/Dp;", "F", "ThumbSize", "Landroidx/compose/ui/unit/DpSize;", "J", "ThumbTrackGapSize", "ThumbWidth", "getThumbWidth", "()F", "TrackHeight", "getTrackHeight", "TrackInsideCornerSize", "isSpecified", "", "Landroidx/compose/material3/SliderRange;", "isSpecified-If1S1O4$annotations", "(J)V", "isSpecified-If1S1O4", "(J)Z", "RangeSlider", "", "state", "Landroidx/compose/material3/RangeSliderState;", "modifier", "Landroidx/compose/ui/Modifier;", "enabled", "colors", "Landroidx/compose/material3/SliderColors;", "startInteractionSource", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "endInteractionSource", "startThumb", "Lkotlin/Function1;", "Landroidx/compose/runtime/Composable;", "endThumb", "track", "(Landroidx/compose/material3/RangeSliderState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", Values.VECTOR_MAP_VECTORS_KEY, "Lkotlin/ranges/ClosedFloatingPointRange;", "", "onValueChange", "valueRange", "onValueChangeFinished", "Lkotlin/Function0;", "steps", "", "(Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/SliderColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;ILandroidx/compose/runtime/Composer;III)V", "(Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/ranges/ClosedFloatingPointRange;ILkotlin/jvm/functions/Function0;Landroidx/compose/material3/SliderColors;Landroidx/compose/runtime/Composer;II)V", "RangeSliderImpl", "(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/RangeSliderState;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V", "Slider", "Landroidx/compose/material3/SliderState;", "interactionSource", "thumb", "(Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "(FLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;Landroidx/compose/material3/SliderColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;ILkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/ranges/ClosedFloatingPointRange;Landroidx/compose/runtime/Composer;III)V", "(FLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/ranges/ClosedFloatingPointRange;ILkotlin/jvm/functions/Function0;Landroidx/compose/material3/SliderColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V", "SliderImpl", "(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderState;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V", "SliderRange", TtmlNode.START, "endInclusive", "(FF)J", "range", "(Lkotlin/ranges/ClosedFloatingPointRange;)J", "calcFraction", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "b", "pos", "scale", "a1", "b1", "x", "a2", "b2", "scale-ziovWd0", "(FFJFF)J", "x1", "snapValueToTick", "current", "tickFractions", "", "minPx", "maxPx", "stepsToTickFractions", "awaitSlop", "Lkotlin/Pair;", "Landroidx/compose/ui/input/pointer/PointerInputChange;", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;", TtmlNode.ATTR_ID, "Landroidx/compose/ui/input/pointer/PointerId;", ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "Landroidx/compose/ui/input/pointer/PointerType;", "awaitSlop-8vUncbI", "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "rangeSliderEndThumbSemantics", "rangeSliderPressDragModifier", "rangeSliderStartThumbSemantics", "sliderSemantics", "sliderTapModifier", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class SliderKt {
    private static final double SliderRangeTolerance = 1.0E-4d;
    private static final float TrackHeight = SliderTokens.INSTANCE.m3779getInactiveTrackHeightD9Ej5fM();
    private static final float ThumbWidth = SliderTokens.INSTANCE.m3777getHandleWidthD9Ej5fM();
    private static final float ThumbHeight = SliderTokens.INSTANCE.m3776getHandleHeightD9Ej5fM();
    private static final long ThumbSize = DpKt.m7527DpSizeYgX7TsA(ThumbWidth, ThumbHeight);
    private static final float ThumbTrackGapSize = SliderTokens.INSTANCE.m3769getActiveHandleLeadingSpaceD9Ej5fM();
    private static final float TrackInsideCornerSize = Dp.m7505constructorimpl(2);

    /* JADX INFO: renamed from: isSpecified-If1S1O4$annotations, reason: not valid java name */
    public static /* synthetic */ void m2789isSpecifiedIf1S1O4$annotations(long j) {
    }

    public static final void Slider(final float value, final Function1<? super Float, Unit> function1, Modifier modifier, boolean enabled, ClosedFloatingPointRange<Float> closedFloatingPointRange, int steps, Function0<Unit> function0, SliderColors colors, MutableInteractionSource interactionSource, Composer $composer, final int $changed, final int i) {
        float f;
        Function1<? super Float, Unit> function12;
        Modifier modifier2;
        boolean enabled2;
        ClosedFloatingPointRange<Float> closedFloatingPointRangeRangeTo;
        int steps2;
        Function0<Unit> function02;
        int i2;
        int $dirty;
        final SliderColors colors2;
        final MutableInteractionSource interactionSource2;
        Modifier modifier3;
        ClosedFloatingPointRange<Float> closedFloatingPointRange2;
        int steps3;
        Function0<Unit> function03;
        int i3;
        final boolean enabled3;
        Object value$iv;
        Composer $composer2;
        final Modifier modifier4;
        final boolean enabled4;
        final Function0<Unit> function04;
        final SliderColors colors3;
        final MutableInteractionSource interactionSource3;
        final int steps4;
        final ClosedFloatingPointRange<Float> closedFloatingPointRange3;
        Composer $composer3 = $composer.startRestartGroup(-202044027);
        ComposerKt.sourceInformation($composer3, "C(Slider)P(7,4,3,1,8,6,5)167@8058L8,168@8118L39,179@8458L181,186@8657L122,170@8166L652:Slider.kt#uh7d8r");
        int $dirty2 = $changed;
        if ((i & 1) != 0) {
            $dirty2 |= 6;
            f = value;
        } else if (($changed & 6) == 0) {
            f = value;
            $dirty2 |= $composer3.changed(f) ? 4 : 2;
        } else {
            f = value;
        }
        if ((i & 2) != 0) {
            $dirty2 |= 48;
            function12 = function1;
        } else if (($changed & 48) == 0) {
            function12 = function1;
            $dirty2 |= $composer3.changedInstance(function12) ? 32 : 16;
        } else {
            function12 = function1;
        }
        int i4 = i & 4;
        if (i4 != 0) {
            $dirty2 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            modifier2 = modifier;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            modifier2 = modifier;
            $dirty2 |= $composer3.changed(modifier2) ? 256 : 128;
        } else {
            modifier2 = modifier;
        }
        int i5 = i & 8;
        if (i5 != 0) {
            $dirty2 |= 3072;
            enabled2 = enabled;
        } else if (($changed & 3072) == 0) {
            enabled2 = enabled;
            $dirty2 |= $composer3.changed(enabled2) ? 2048 : 1024;
        } else {
            enabled2 = enabled;
        }
        if (($changed & 24576) == 0) {
            if ((i & 16) == 0) {
                closedFloatingPointRangeRangeTo = closedFloatingPointRange;
                int i6 = $composer3.changed(closedFloatingPointRangeRangeTo) ? 16384 : 8192;
                $dirty2 |= i6;
            } else {
                closedFloatingPointRangeRangeTo = closedFloatingPointRange;
            }
            $dirty2 |= i6;
        } else {
            closedFloatingPointRangeRangeTo = closedFloatingPointRange;
        }
        int i7 = i & 32;
        if (i7 != 0) {
            $dirty2 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            steps2 = steps;
        } else if ((196608 & $changed) == 0) {
            steps2 = steps;
            $dirty2 |= $composer3.changed(steps2) ? 131072 : 65536;
        } else {
            steps2 = steps;
        }
        int i8 = i & 64;
        if (i8 != 0) {
            $dirty2 |= 1572864;
            function02 = function0;
        } else if ((1572864 & $changed) == 0) {
            function02 = function0;
            $dirty2 |= $composer3.changedInstance(function02) ? 1048576 : 524288;
        } else {
            function02 = function0;
        }
        if (($changed & 12582912) == 0) {
            $dirty2 |= ((i & 128) == 0 && $composer3.changed(colors)) ? 8388608 : 4194304;
        }
        int i9 = i & 256;
        if (i9 != 0) {
            $dirty2 |= 100663296;
            i2 = i9;
        } else if (($changed & 100663296) == 0) {
            i2 = i9;
            $dirty2 |= $composer3.changed(interactionSource) ? 67108864 : 33554432;
        } else {
            i2 = i9;
        }
        int $dirty3 = $dirty2;
        if (($dirty2 & 38347923) == 38347922 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            colors3 = colors;
            $composer2 = $composer3;
            modifier4 = modifier2;
            enabled4 = enabled2;
            closedFloatingPointRange3 = closedFloatingPointRangeRangeTo;
            steps4 = steps2;
            function04 = function02;
            interactionSource3 = interactionSource;
        } else {
            $composer3.startDefaults();
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                if (i4 != 0) {
                    modifier2 = Modifier.INSTANCE;
                }
                if (i5 != 0) {
                    enabled2 = true;
                }
                if ((i & 16) != 0) {
                    $dirty = $dirty3 & (-57345);
                    closedFloatingPointRangeRangeTo = RangesKt.rangeTo(0.0f, 1.0f);
                } else {
                    $dirty = $dirty3;
                }
                if (i7 != 0) {
                    steps2 = 0;
                }
                if (i8 != 0) {
                    function02 = null;
                }
                if ((i & 128) != 0) {
                    colors2 = SliderDefaults.INSTANCE.colors($composer3, 6);
                    $dirty &= -29360129;
                } else {
                    colors2 = colors;
                }
                if (i2 != 0) {
                    ComposerKt.sourceInformationMarkerStart($composer3, -403669397, "CC(remember):Slider.kt#9igjgp");
                    Object it$iv = $composer3.rememberedValue();
                    SliderColors colors4 = colors2;
                    if (it$iv == Composer.INSTANCE.getEmpty()) {
                        value$iv = InteractionSourceKt.MutableInteractionSource();
                        $composer3.updateRememberedValue(value$iv);
                    } else {
                        value$iv = it$iv;
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    interactionSource2 = (MutableInteractionSource) value$iv;
                    modifier3 = modifier2;
                    closedFloatingPointRange2 = closedFloatingPointRangeRangeTo;
                    steps3 = steps2;
                    function03 = function02;
                    i3 = -202044027;
                    colors2 = colors4;
                    enabled3 = enabled2;
                } else {
                    interactionSource2 = interactionSource;
                    modifier3 = modifier2;
                    closedFloatingPointRange2 = closedFloatingPointRangeRangeTo;
                    steps3 = steps2;
                    function03 = function02;
                    i3 = -202044027;
                    enabled3 = enabled2;
                }
            } else {
                $composer3.skipToGroupEnd();
                int $dirty4 = (i & 16) != 0 ? $dirty3 & (-57345) : $dirty3;
                if ((i & 128) != 0) {
                    interactionSource2 = interactionSource;
                    $dirty = $dirty4 & (-29360129);
                    modifier3 = modifier2;
                    closedFloatingPointRange2 = closedFloatingPointRangeRangeTo;
                    steps3 = steps2;
                    function03 = function02;
                    i3 = -202044027;
                    colors2 = colors;
                    enabled3 = enabled2;
                } else {
                    interactionSource2 = interactionSource;
                    $dirty = $dirty4;
                    modifier3 = modifier2;
                    closedFloatingPointRange2 = closedFloatingPointRangeRangeTo;
                    steps3 = steps2;
                    function03 = function02;
                    i3 = -202044027;
                    colors2 = colors;
                    enabled3 = enabled2;
                }
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(i3, $dirty, -1, "androidx.compose.material3.Slider (Slider.kt:169)");
            }
            SliderColors colors5 = colors2;
            $composer2 = $composer3;
            MutableInteractionSource interactionSource4 = interactionSource2;
            Slider(f, function12, modifier3, enabled3, function03, colors5, interactionSource4, steps3, ComposableLambdaKt.rememberComposableLambda(308249025, true, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt.Slider.2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(SliderState sliderState, Composer composer, Integer num) {
                    invoke(sliderState, composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(SliderState it, Composer $composer4, int $changed2) {
                    ComposerKt.sourceInformation($composer4, "C180@8487L142:Slider.kt#uh7d8r");
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(308249025, $changed2, -1, "androidx.compose.material3.Slider.<anonymous> (Slider.kt:180)");
                    }
                    SliderDefaults.INSTANCE.m2775Thumb9LiSoMs(interactionSource2, null, colors2, enabled3, 0L, $composer4, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 18);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, $composer3, 54), ComposableLambdaKt.rememberComposableLambda(-1843234110, true, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt.Slider.3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(SliderState sliderState, Composer composer, Integer num) {
                    invoke(sliderState, composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(SliderState sliderState, Composer $composer4, int $changed2) {
                    ComposerKt.sourceInformation($composer4, "C187@8701L68:Slider.kt#uh7d8r");
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1843234110, $changed2, -1, "androidx.compose.material3.Slider.<anonymous> (Slider.kt:187)");
                    }
                    SliderDefaults.INSTANCE.m2777Track4EFweAY(sliderState, (Modifier) null, enabled3, colors2, (Function2<? super DrawScope, ? super Offset, Unit>) null, (Function3<? super DrawScope, ? super Offset, ? super Color, Unit>) null, 0.0f, 0.0f, $composer4, ($changed2 & 14) | 100663296, 242);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, $composer3, 54), closedFloatingPointRange2, $composer2, ($dirty & 14) | 905969664 | ($dirty & 112) | ($dirty & 896) | ($dirty & 7168) | (($dirty >> 6) & 57344) | (($dirty >> 6) & 458752) | (($dirty >> 6) & 3670016) | (($dirty << 6) & 29360128), ($dirty >> 12) & 14, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier4 = modifier3;
            enabled4 = enabled3;
            function04 = function03;
            colors3 = colors5;
            interactionSource3 = interactionSource4;
            steps4 = steps3;
            closedFloatingPointRange3 = closedFloatingPointRange2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt.Slider.4
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i10) {
                    SliderKt.Slider(value, function1, modifier4, enabled4, closedFloatingPointRange3, steps4, function04, colors3, interactionSource3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:196:0x0334  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void Slider(final float value, final Function1<? super Float, Unit> function1, Modifier modifier, boolean enabled, Function0<Unit> function0, SliderColors colors, MutableInteractionSource interactionSource, int steps, Function3<? super SliderState, ? super Composer, ? super Integer, Unit> function3, Function3<? super SliderState, ? super Composer, ? super Integer, Unit> function32, ClosedFloatingPointRange<Float> closedFloatingPointRange, Composer $composer, final int $changed, final int $changed1, final int i) {
        Modifier modifier2;
        final boolean enabled2;
        Function0<Unit> function02;
        final SliderColors colors2;
        int i2;
        int i3;
        final MutableInteractionSource interactionSource2;
        int steps2;
        ComposableLambda composableLambdaRememberComposableLambda;
        MutableInteractionSource interactionSource3;
        ComposableLambda composableLambdaRememberComposableLambda2;
        ClosedFloatingPointRange<Float> closedFloatingPointRangeRangeTo;
        int $dirty1;
        int $dirty12;
        Object value$iv;
        Function3<? super SliderState, ? super Composer, ? super Integer, Unit> function33;
        Composer $composer2;
        Composer $composer3;
        final MutableInteractionSource interactionSource4;
        final Modifier modifier3;
        final Function3<? super SliderState, ? super Composer, ? super Integer, Unit> function34;
        final SliderColors colors3;
        final int steps3;
        final boolean enabled3;
        final ClosedFloatingPointRange<Float> closedFloatingPointRange2;
        final Function3<? super SliderState, ? super Composer, ? super Integer, Unit> function35;
        final Function0<Unit> function03;
        int $dirty13;
        Composer $composer4 = $composer.startRestartGroup(1191170377);
        ComposerKt.sourceInformation($composer4, "C(Slider)P(9,4,3,1,5)256@12184L8,257@12244L39,259@12372L157,266@12578L114,272@12779L92,278@12998L184:Slider.kt#uh7d8r");
        int $dirty = $changed;
        int $dirty14 = $changed1;
        if ((i & 1) != 0) {
            $dirty |= 6;
        } else if (($changed & 6) == 0) {
            $dirty |= $composer4.changed(value) ? 4 : 2;
        }
        if ((i & 2) != 0) {
            $dirty |= 48;
        } else if (($changed & 48) == 0) {
            $dirty |= $composer4.changedInstance(function1) ? 32 : 16;
        }
        int i4 = i & 4;
        if (i4 != 0) {
            $dirty |= RendererCapabilities.DECODER_SUPPORT_MASK;
            modifier2 = modifier;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            modifier2 = modifier;
            $dirty |= $composer4.changed(modifier2) ? 256 : 128;
        } else {
            modifier2 = modifier;
        }
        int i5 = i & 8;
        if (i5 != 0) {
            $dirty |= 3072;
            enabled2 = enabled;
        } else if (($changed & 3072) == 0) {
            enabled2 = enabled;
            $dirty |= $composer4.changed(enabled2) ? 2048 : 1024;
        } else {
            enabled2 = enabled;
        }
        int i6 = i & 16;
        if (i6 != 0) {
            $dirty |= 24576;
            function02 = function0;
        } else if (($changed & 24576) == 0) {
            function02 = function0;
            $dirty |= $composer4.changedInstance(function02) ? 16384 : 8192;
        } else {
            function02 = function0;
        }
        if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            if ((i & 32) == 0) {
                colors2 = colors;
                int i7 = $composer4.changed(colors2) ? 131072 : 65536;
                $dirty |= i7;
            } else {
                colors2 = colors;
            }
            $dirty |= i7;
        } else {
            colors2 = colors;
        }
        int i8 = i & 64;
        if (i8 != 0) {
            $dirty |= 1572864;
        } else if (($changed & 1572864) == 0) {
            $dirty |= $composer4.changed(interactionSource) ? 1048576 : 524288;
        }
        int i9 = i & 128;
        if (i9 != 0) {
            $dirty |= 12582912;
        } else if (($changed & 12582912) == 0) {
            $dirty |= $composer4.changed(steps) ? 8388608 : 4194304;
        }
        int i10 = i & 256;
        if (i10 != 0) {
            $dirty |= 100663296;
            i2 = i10;
        } else if (($changed & 100663296) == 0) {
            i2 = i10;
            $dirty |= $composer4.changedInstance(function3) ? 67108864 : 33554432;
        } else {
            i2 = i10;
        }
        int i11 = i & 512;
        if (i11 != 0) {
            $dirty |= 805306368;
            i3 = i11;
        } else if (($changed & 805306368) == 0) {
            i3 = i11;
            $dirty |= $composer4.changedInstance(function32) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
        } else {
            i3 = i11;
        }
        if (($changed1 & 6) == 0) {
            $dirty14 |= ((i & 1024) == 0 && $composer4.changed(closedFloatingPointRange)) ? 4 : 2;
        }
        int $dirty2 = $dirty;
        if (($dirty & 306783379) == 306783378 && ($dirty14 & 3) == 2 && $composer4.getSkipping()) {
            $composer4.skipToGroupEnd();
            Function0<Unit> function04 = function02;
            $dirty13 = $dirty14;
            function03 = function04;
            interactionSource4 = interactionSource;
            function35 = function32;
            $composer3 = $composer4;
            colors3 = colors2;
            modifier3 = modifier2;
            enabled3 = enabled2;
            steps3 = steps;
            function34 = function3;
            closedFloatingPointRange2 = closedFloatingPointRange;
        } else {
            $composer4.startDefaults();
            if (($changed & 1) == 0 || $composer4.getDefaultsInvalid()) {
                if (i4 != 0) {
                    modifier2 = Modifier.INSTANCE;
                }
                if (i5 != 0) {
                    enabled2 = true;
                }
                if (i6 != 0) {
                    function02 = null;
                }
                if ((i & 32) != 0) {
                    colors2 = SliderDefaults.INSTANCE.colors($composer4, 6);
                    $dirty2 &= -458753;
                }
                if (i8 != 0) {
                    ComposerKt.sourceInformationMarkerStart($composer4, -403537365, "CC(remember):Slider.kt#9igjgp");
                    Object it$iv = $composer4.rememberedValue();
                    if (it$iv == Composer.INSTANCE.getEmpty()) {
                        value$iv = InteractionSourceKt.MutableInteractionSource();
                        $composer4.updateRememberedValue(value$iv);
                    } else {
                        value$iv = it$iv;
                    }
                    interactionSource2 = (MutableInteractionSource) value$iv;
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                } else {
                    interactionSource2 = interactionSource;
                }
                steps2 = i9 != 0 ? 0 : steps;
                composableLambdaRememberComposableLambda = i2 != 0 ? ComposableLambdaKt.rememberComposableLambda(-1756326375, true, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt.Slider.6
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(3);
                    }

                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Unit invoke(SliderState sliderState, Composer composer, Integer num) {
                        invoke(sliderState, composer, num.intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(SliderState it, Composer $composer5, int $changed2) {
                        ComposerKt.sourceInformation($composer5, "C260@12397L126:Slider.kt#uh7d8r");
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1756326375, $changed2, -1, "androidx.compose.material3.Slider.<anonymous> (Slider.kt:260)");
                        }
                        SliderDefaults.INSTANCE.m2775Thumb9LiSoMs(interactionSource2, null, colors2, enabled2, 0L, $composer5, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 18);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }
                }, $composer4, 54) : function3;
                if (i3 != 0) {
                    interactionSource3 = interactionSource2;
                    composableLambdaRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(2083675534, true, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt.Slider.7
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(3);
                        }

                        @Override // kotlin.jvm.functions.Function3
                        public /* bridge */ /* synthetic */ Unit invoke(SliderState sliderState, Composer composer, Integer num) {
                            invoke(sliderState, composer, num.intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(SliderState sliderState, Composer $composer5, int $changed2) {
                            ComposerKt.sourceInformation($composer5, "C267@12618L68:Slider.kt#uh7d8r");
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(2083675534, $changed2, -1, "androidx.compose.material3.Slider.<anonymous> (Slider.kt:267)");
                            }
                            SliderDefaults.INSTANCE.m2777Track4EFweAY(sliderState, (Modifier) null, enabled2, colors2, (Function2<? super DrawScope, ? super Offset, Unit>) null, (Function3<? super DrawScope, ? super Offset, ? super Color, Unit>) null, 0.0f, 0.0f, $composer5, ($changed2 & 14) | 100663296, 242);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }
                    }, $composer4, 54);
                } else {
                    interactionSource3 = interactionSource2;
                    composableLambdaRememberComposableLambda2 = function32;
                }
                if ((i & 1024) != 0) {
                    closedFloatingPointRangeRangeTo = RangesKt.rangeTo(0.0f, 1.0f);
                    $dirty1 = $dirty14 & (-15);
                    $dirty12 = $dirty2;
                } else {
                    closedFloatingPointRangeRangeTo = closedFloatingPointRange;
                    $dirty1 = $dirty14;
                    $dirty12 = $dirty2;
                }
            } else {
                $composer4.skipToGroupEnd();
                if ((i & 32) != 0) {
                    $dirty2 &= -458753;
                }
                if ((i & 1024) != 0) {
                    $dirty14 &= -15;
                }
                interactionSource3 = interactionSource;
                steps2 = steps;
                composableLambdaRememberComposableLambda = function3;
                composableLambdaRememberComposableLambda2 = function32;
                closedFloatingPointRangeRangeTo = closedFloatingPointRange;
                $dirty1 = $dirty14;
                $dirty12 = $dirty2;
            }
            $composer4.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                function33 = composableLambdaRememberComposableLambda;
                ComposerKt.traceEventStart(1191170377, $dirty12, $dirty1, "androidx.compose.material3.Slider (Slider.kt:270)");
            } else {
                function33 = composableLambdaRememberComposableLambda;
            }
            ComposerKt.sourceInformationMarkerStart($composer4, -403520192, "CC(remember):Slider.kt#9igjgp");
            boolean invalid$iv = ((29360128 & $dirty12) == 8388608) | (((($dirty1 & 14) ^ 6) > 4 && $composer4.changed(closedFloatingPointRangeRangeTo)) || ($dirty1 & 6) == 4);
            Object value$iv2 = $composer4.rememberedValue();
            if (invalid$iv) {
                $composer2 = $composer4;
            } else {
                $composer2 = $composer4;
                if (value$iv2 == Composer.INSTANCE.getEmpty()) {
                }
                SliderState state = (SliderState) value$iv2;
                ComposerKt.sourceInformationMarkerEnd($composer2);
                state.setOnValueChangeFinished(function02);
                state.setOnValueChange$material3_release(function1);
                state.setValue(value);
                Composer $composer5 = $composer2;
                MutableInteractionSource interactionSource5 = interactionSource3;
                Slider(state, modifier2, enabled2, null, interactionSource5, function33, composableLambdaRememberComposableLambda2, $composer5, (($dirty12 >> 3) & 112) | (($dirty12 >> 3) & 896) | (($dirty12 >> 6) & 57344) | (($dirty12 >> 9) & 458752) | (($dirty12 >> 9) & 3670016), 8);
                Function3<? super SliderState, ? super Composer, ? super Integer, Unit> function36 = function33;
                $composer3 = $composer5;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                Function3<? super SliderState, ? super Composer, ? super Integer, Unit> function37 = composableLambdaRememberComposableLambda2;
                interactionSource4 = interactionSource5;
                modifier3 = modifier2;
                function34 = function36;
                colors3 = colors2;
                steps3 = steps2;
                enabled3 = enabled2;
                closedFloatingPointRange2 = closedFloatingPointRangeRangeTo;
                function35 = function37;
                function03 = function02;
                $dirty13 = $dirty1;
            }
            value$iv2 = new SliderState(value, steps2, function02, closedFloatingPointRangeRangeTo);
            $composer4.updateRememberedValue(value$iv2);
            SliderState state2 = (SliderState) value$iv2;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            state2.setOnValueChangeFinished(function02);
            state2.setOnValueChange$material3_release(function1);
            state2.setValue(value);
            Composer $composer52 = $composer2;
            MutableInteractionSource interactionSource52 = interactionSource3;
            Slider(state2, modifier2, enabled2, null, interactionSource52, function33, composableLambdaRememberComposableLambda2, $composer52, (($dirty12 >> 3) & 112) | (($dirty12 >> 3) & 896) | (($dirty12 >> 6) & 57344) | (($dirty12 >> 9) & 458752) | (($dirty12 >> 9) & 3670016), 8);
            Function3<? super SliderState, ? super Composer, ? super Integer, Unit> function362 = function33;
            $composer3 = $composer52;
            if (ComposerKt.isTraceInProgress()) {
            }
            Function3<? super SliderState, ? super Composer, ? super Integer, Unit> function372 = composableLambdaRememberComposableLambda2;
            interactionSource4 = interactionSource52;
            modifier3 = modifier2;
            function34 = function362;
            colors3 = colors2;
            steps3 = steps2;
            enabled3 = enabled2;
            closedFloatingPointRange2 = closedFloatingPointRangeRangeTo;
            function35 = function372;
            function03 = function02;
            $dirty13 = $dirty1;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer3.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt.Slider.8
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i12) {
                    SliderKt.Slider(value, function1, modifier3, enabled3, function03, colors3, interactionSource4, steps3, function34, function35, closedFloatingPointRange2, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), RecomposeScopeImplKt.updateChangedFlags($changed1), i);
                }
            });
        }
    }

    public static final void Slider(final SliderState state, Modifier modifier, boolean enabled, SliderColors colors, MutableInteractionSource interactionSource, Function3<? super SliderState, ? super Composer, ? super Integer, Unit> function3, Function3<? super SliderState, ? super Composer, ? super Integer, Unit> function32, Composer $composer, final int $changed, final int i) {
        SliderState sliderState;
        Modifier modifier2;
        boolean z;
        final SliderColors colors2;
        final MutableInteractionSource interactionSource2;
        Function3<? super SliderState, ? super Composer, ? super Integer, Unit> function3RememberComposableLambda;
        Function3<? super SliderState, ? super Composer, ? super Integer, Unit> function3RememberComposableLambda2;
        Modifier modifier3;
        boolean z2;
        boolean enabled2;
        Function3<? super SliderState, ? super Composer, ? super Integer, Unit> function33;
        MutableInteractionSource interactionSource3;
        Modifier modifier4;
        Object value$iv;
        final SliderColors colors3;
        final Modifier modifier5;
        final boolean enabled3;
        final MutableInteractionSource interactionSource4;
        final Function3<? super SliderState, ? super Composer, ? super Integer, Unit> function34;
        final Function3<? super SliderState, ? super Composer, ? super Integer, Unit> function35;
        Composer $composer2 = $composer.startRestartGroup(-1303883986);
        ComposerKt.sourceInformation($composer2, "C(Slider)P(4,3,1)339@15682L8,340@15742L39,341@15830L157,348@16036L114,354@16217L188:Slider.kt#uh7d8r");
        int $dirty = $changed;
        if ((i & 1) != 0) {
            $dirty |= 6;
            sliderState = state;
        } else if (($changed & 6) == 0) {
            sliderState = state;
            $dirty |= $composer2.changedInstance(sliderState) ? 4 : 2;
        } else {
            sliderState = state;
        }
        int i2 = i & 2;
        if (i2 != 0) {
            $dirty |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty |= $composer2.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        int i3 = i & 4;
        if (i3 != 0) {
            $dirty |= RendererCapabilities.DECODER_SUPPORT_MASK;
            z = enabled;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            z = enabled;
            $dirty |= $composer2.changed(z) ? 256 : 128;
        } else {
            z = enabled;
        }
        if (($changed & 3072) == 0) {
            if ((i & 8) == 0) {
                colors2 = colors;
                int i4 = $composer2.changed(colors2) ? 2048 : 1024;
                $dirty |= i4;
            } else {
                colors2 = colors;
            }
            $dirty |= i4;
        } else {
            colors2 = colors;
        }
        int i5 = i & 16;
        if (i5 != 0) {
            $dirty |= 24576;
            interactionSource2 = interactionSource;
        } else if (($changed & 24576) == 0) {
            interactionSource2 = interactionSource;
            $dirty |= $composer2.changed(interactionSource2) ? 16384 : 8192;
        } else {
            interactionSource2 = interactionSource;
        }
        int i6 = i & 32;
        if (i6 != 0) {
            $dirty |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            function3RememberComposableLambda = function3;
        } else if ((196608 & $changed) == 0) {
            function3RememberComposableLambda = function3;
            $dirty |= $composer2.changedInstance(function3RememberComposableLambda) ? 131072 : 65536;
        } else {
            function3RememberComposableLambda = function3;
        }
        int i7 = i & 64;
        if (i7 != 0) {
            $dirty |= 1572864;
            function3RememberComposableLambda2 = function32;
        } else if ((1572864 & $changed) == 0) {
            function3RememberComposableLambda2 = function32;
            $dirty |= $composer2.changedInstance(function3RememberComposableLambda2) ? 1048576 : 524288;
        } else {
            function3RememberComposableLambda2 = function32;
        }
        if (($dirty & 599187) == 599186 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
            modifier5 = modifier2;
            enabled3 = z;
            colors3 = colors2;
            interactionSource4 = interactionSource2;
            function34 = function3RememberComposableLambda;
            function35 = function3RememberComposableLambda2;
        } else {
            $composer2.startDefaults();
            if (($changed & 1) == 0 || $composer2.getDefaultsInvalid()) {
                Modifier.Companion modifier6 = i2 != 0 ? Modifier.INSTANCE : modifier2;
                final boolean enabled4 = i3 != 0 ? true : z;
                if ((i & 8) != 0) {
                    $dirty &= -7169;
                    colors2 = SliderDefaults.INSTANCE.colors($composer2, 6);
                }
                if (i5 != 0) {
                    ComposerKt.sourceInformationMarkerStart($composer2, -403425429, "CC(remember):Slider.kt#9igjgp");
                    Object it$iv = $composer2.rememberedValue();
                    modifier3 = modifier6;
                    if (it$iv == Composer.INSTANCE.getEmpty()) {
                        value$iv = InteractionSourceKt.MutableInteractionSource();
                        $composer2.updateRememberedValue(value$iv);
                    } else {
                        value$iv = it$iv;
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    interactionSource2 = (MutableInteractionSource) value$iv;
                } else {
                    modifier3 = modifier6;
                }
                if (i6 != 0) {
                    z2 = true;
                    function3RememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1426271326, true, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt.Slider.10
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(3);
                        }

                        @Override // kotlin.jvm.functions.Function3
                        public /* bridge */ /* synthetic */ Unit invoke(SliderState sliderState2, Composer composer, Integer num) {
                            invoke(sliderState2, composer, num.intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(SliderState it, Composer $composer3, int $changed2) {
                            ComposerKt.sourceInformation($composer3, "C342@15855L126:Slider.kt#uh7d8r");
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1426271326, $changed2, -1, "androidx.compose.material3.Slider.<anonymous> (Slider.kt:342)");
                            }
                            SliderDefaults.INSTANCE.m2775Thumb9LiSoMs(interactionSource2, null, colors2, enabled4, 0L, $composer3, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 18);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }
                    }, $composer2, 54);
                } else {
                    z2 = true;
                }
                if (i7 != 0) {
                    function3RememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(577038345, z2, new Function3<SliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt.Slider.11
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(3);
                        }

                        @Override // kotlin.jvm.functions.Function3
                        public /* bridge */ /* synthetic */ Unit invoke(SliderState sliderState2, Composer composer, Integer num) {
                            invoke(sliderState2, composer, num.intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(SliderState sliderState2, Composer $composer3, int $changed2) {
                            ComposerKt.sourceInformation($composer3, "C349@16076L68:Slider.kt#uh7d8r");
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(577038345, $changed2, -1, "androidx.compose.material3.Slider.<anonymous> (Slider.kt:349)");
                            }
                            SliderDefaults.INSTANCE.m2777Track4EFweAY(sliderState2, (Modifier) null, enabled4, colors2, (Function2<? super DrawScope, ? super Offset, Unit>) null, (Function3<? super DrawScope, ? super Offset, ? super Color, Unit>) null, 0.0f, 0.0f, $composer3, ($changed2 & 14) | 100663296, 242);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }
                    }, $composer2, 54);
                    enabled2 = enabled4;
                    function33 = function3RememberComposableLambda;
                    interactionSource3 = interactionSource2;
                    modifier4 = modifier3;
                } else {
                    enabled2 = enabled4;
                    function33 = function3RememberComposableLambda;
                    interactionSource3 = interactionSource2;
                    modifier4 = modifier3;
                }
            } else {
                $composer2.skipToGroupEnd();
                if ((i & 8) != 0) {
                    $dirty &= -7169;
                }
                enabled2 = z;
                function33 = function3RememberComposableLambda;
                z2 = true;
                interactionSource3 = interactionSource2;
                modifier4 = modifier2;
            }
            $composer2.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1303883986, $dirty, -1, "androidx.compose.material3.Slider (Slider.kt:351)");
            }
            if (!(sliderState.getSteps() >= 0 ? z2 : false)) {
                throw new IllegalArgumentException("steps should be >= 0".toString());
            }
            SliderImpl(modifier4, sliderState, enabled2, interactionSource3, function33, function3RememberComposableLambda2, $composer2, (($dirty >> 3) & 14) | (($dirty << 3) & 112) | ($dirty & 896) | (($dirty >> 3) & 7168) | (($dirty >> 3) & 57344) | (458752 & ($dirty >> 3)));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            colors3 = colors2;
            modifier5 = modifier4;
            enabled3 = enabled2;
            interactionSource4 = interactionSource3;
            function34 = function33;
            function35 = function3RememberComposableLambda2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt.Slider.13
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i8) {
                    SliderKt.Slider(state, modifier5, enabled3, colors3, interactionSource4, function34, function35, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    public static final void RangeSlider(final ClosedFloatingPointRange<Float> closedFloatingPointRange, final Function1<? super ClosedFloatingPointRange<Float>, Unit> function1, Modifier modifier, boolean enabled, ClosedFloatingPointRange<Float> closedFloatingPointRange2, int steps, Function0<Unit> function0, SliderColors colors, Composer $composer, final int $changed, final int i) {
        ClosedFloatingPointRange<Float> closedFloatingPointRange3;
        Function1<? super ClosedFloatingPointRange<Float>, Unit> function12;
        Modifier modifier2;
        boolean enabled2;
        ClosedFloatingPointRange<Float> closedFloatingPointRangeRangeTo;
        int steps2;
        Function0<Unit> function02;
        int $dirty;
        final SliderColors colors2;
        int $dirty2;
        final boolean enabled3;
        int steps3;
        Function0<Unit> function03;
        Modifier modifier3;
        ClosedFloatingPointRange<Float> closedFloatingPointRange4;
        int $dirty3;
        Object value$iv;
        Object value$iv2;
        Composer $composer2;
        final SliderColors colors3;
        final Modifier modifier4;
        final boolean enabled4;
        final ClosedFloatingPointRange<Float> closedFloatingPointRange5;
        final Function0<Unit> function04;
        final int steps4;
        Composer $composer3 = $composer.startRestartGroup(-743091416);
        ComposerKt.sourceInformation($composer3, "C(RangeSlider)P(6,3,2,1,7,5,4)408@18812L8,410@18884L39,411@18981L39,423@19399L186,430@19606L184,437@19808L199,413@19026L987:Slider.kt#uh7d8r");
        int $dirty4 = $changed;
        if ((i & 1) != 0) {
            $dirty4 |= 6;
            closedFloatingPointRange3 = closedFloatingPointRange;
        } else if (($changed & 6) == 0) {
            closedFloatingPointRange3 = closedFloatingPointRange;
            $dirty4 |= $composer3.changed(closedFloatingPointRange3) ? 4 : 2;
        } else {
            closedFloatingPointRange3 = closedFloatingPointRange;
        }
        if ((i & 2) != 0) {
            $dirty4 |= 48;
            function12 = function1;
        } else if (($changed & 48) == 0) {
            function12 = function1;
            $dirty4 |= $composer3.changedInstance(function12) ? 32 : 16;
        } else {
            function12 = function1;
        }
        int i2 = i & 4;
        if (i2 != 0) {
            $dirty4 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            modifier2 = modifier;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            modifier2 = modifier;
            $dirty4 |= $composer3.changed(modifier2) ? 256 : 128;
        } else {
            modifier2 = modifier;
        }
        int i3 = i & 8;
        if (i3 != 0) {
            $dirty4 |= 3072;
            enabled2 = enabled;
        } else if (($changed & 3072) == 0) {
            enabled2 = enabled;
            $dirty4 |= $composer3.changed(enabled2) ? 2048 : 1024;
        } else {
            enabled2 = enabled;
        }
        if (($changed & 24576) == 0) {
            if ((i & 16) == 0) {
                closedFloatingPointRangeRangeTo = closedFloatingPointRange2;
                int i4 = $composer3.changed(closedFloatingPointRangeRangeTo) ? 16384 : 8192;
                $dirty4 |= i4;
            } else {
                closedFloatingPointRangeRangeTo = closedFloatingPointRange2;
            }
            $dirty4 |= i4;
        } else {
            closedFloatingPointRangeRangeTo = closedFloatingPointRange2;
        }
        int i5 = i & 32;
        if (i5 != 0) {
            $dirty4 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            steps2 = steps;
        } else if ((196608 & $changed) == 0) {
            steps2 = steps;
            $dirty4 |= $composer3.changed(steps2) ? 131072 : 65536;
        } else {
            steps2 = steps;
        }
        int i6 = i & 64;
        if (i6 != 0) {
            $dirty4 |= 1572864;
            function02 = function0;
        } else if ((1572864 & $changed) == 0) {
            function02 = function0;
            $dirty4 |= $composer3.changedInstance(function02) ? 1048576 : 524288;
        } else {
            function02 = function0;
        }
        if (($changed & 12582912) == 0) {
            $dirty4 |= ((i & 128) == 0 && $composer3.changed(colors)) ? 8388608 : 4194304;
        }
        int $dirty5 = $dirty4;
        if (($dirty4 & 4793491) == 4793490 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            colors3 = colors;
            $composer2 = $composer3;
            modifier4 = modifier2;
            enabled4 = enabled2;
            closedFloatingPointRange5 = closedFloatingPointRangeRangeTo;
            steps4 = steps2;
            function04 = function02;
        } else {
            $composer3.startDefaults();
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                Modifier.Companion modifier5 = i2 != 0 ? Modifier.INSTANCE : modifier2;
                if (i3 != 0) {
                    enabled2 = true;
                }
                if ((i & 16) != 0) {
                    $dirty = $dirty5 & (-57345);
                    closedFloatingPointRangeRangeTo = RangesKt.rangeTo(0.0f, 1.0f);
                } else {
                    $dirty = $dirty5;
                }
                if (i5 != 0) {
                    steps2 = 0;
                }
                if (i6 != 0) {
                    function02 = null;
                }
                if ((i & 128) != 0) {
                    colors2 = SliderDefaults.INSTANCE.colors($composer3, 6);
                    $dirty2 = (-29360129) & $dirty;
                    enabled3 = enabled2;
                    steps3 = steps2;
                    function03 = function02;
                    modifier3 = modifier5;
                    closedFloatingPointRange4 = closedFloatingPointRangeRangeTo;
                    $dirty3 = -743091416;
                } else {
                    colors2 = colors;
                    $dirty2 = $dirty;
                    enabled3 = enabled2;
                    steps3 = steps2;
                    function03 = function02;
                    modifier3 = modifier5;
                    closedFloatingPointRange4 = closedFloatingPointRangeRangeTo;
                    $dirty3 = -743091416;
                }
            } else {
                $composer3.skipToGroupEnd();
                int $dirty6 = (i & 16) != 0 ? $dirty5 & (-57345) : $dirty5;
                if ((i & 128) != 0) {
                    $dirty6 &= -29360129;
                }
                colors2 = colors;
                $dirty2 = $dirty6;
                enabled3 = enabled2;
                steps3 = steps2;
                function03 = function02;
                $dirty3 = -743091416;
                modifier3 = modifier2;
                closedFloatingPointRange4 = closedFloatingPointRangeRangeTo;
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart($dirty3, $dirty2, -1, "androidx.compose.material3.RangeSlider (Slider.kt:409)");
            }
            ComposerKt.sourceInformationMarkerStart($composer3, 1661051042, "CC(remember):Slider.kt#9igjgp");
            Object it$iv = $composer3.rememberedValue();
            if (it$iv == Composer.INSTANCE.getEmpty()) {
                value$iv = InteractionSourceKt.MutableInteractionSource();
                $composer3.updateRememberedValue(value$iv);
            } else {
                value$iv = it$iv;
            }
            final MutableInteractionSource startInteractionSource = (MutableInteractionSource) value$iv;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerStart($composer3, 1661054146, "CC(remember):Slider.kt#9igjgp");
            Object it$iv2 = $composer3.rememberedValue();
            if (it$iv2 == Composer.INSTANCE.getEmpty()) {
                value$iv2 = InteractionSourceKt.MutableInteractionSource();
                $composer3.updateRememberedValue(value$iv2);
            } else {
                value$iv2 = it$iv2;
            }
            final MutableInteractionSource endInteractionSource = (MutableInteractionSource) value$iv2;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            $composer2 = $composer3;
            RangeSlider(closedFloatingPointRange3, function12, modifier3, enabled3, closedFloatingPointRange4, function03, null, startInteractionSource, endInteractionSource, ComposableLambdaKt.rememberComposableLambda(-811582901, true, new Function3<RangeSliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt.RangeSlider.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(RangeSliderState rangeSliderState, Composer composer, Integer num) {
                    invoke(rangeSliderState, composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(RangeSliderState it, Composer $composer4, int $changed2) {
                    ComposerKt.sourceInformation($composer4, "C424@19428L147:Slider.kt#uh7d8r");
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-811582901, $changed2, -1, "androidx.compose.material3.RangeSlider.<anonymous> (Slider.kt:424)");
                    }
                    SliderDefaults.INSTANCE.m2775Thumb9LiSoMs(startInteractionSource, null, colors2, enabled3, 0L, $composer4, 196614, 18);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, $composer3, 54), ComposableLambdaKt.rememberComposableLambda(-1832060001, true, new Function3<RangeSliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt.RangeSlider.2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(RangeSliderState rangeSliderState, Composer composer, Integer num) {
                    invoke(rangeSliderState, composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(RangeSliderState it, Composer $composer4, int $changed2) {
                    ComposerKt.sourceInformation($composer4, "C431@19635L145:Slider.kt#uh7d8r");
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1832060001, $changed2, -1, "androidx.compose.material3.RangeSlider.<anonymous> (Slider.kt:431)");
                    }
                    SliderDefaults.INSTANCE.m2775Thumb9LiSoMs(endInteractionSource, null, colors2, enabled3, 0L, $composer4, 196614, 18);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, $composer3, 54), ComposableLambdaKt.rememberComposableLambda(377064480, true, new Function3<RangeSliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt.RangeSlider.3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(RangeSliderState rangeSliderState, Composer composer, Integer num) {
                    invoke(rangeSliderState, composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(RangeSliderState rangeSliderState, Composer $composer4, int $changed2) {
                    ComposerKt.sourceInformation($composer4, "C438@19857L140:Slider.kt#uh7d8r");
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(377064480, $changed2, -1, "androidx.compose.material3.RangeSlider.<anonymous> (Slider.kt:438)");
                    }
                    SliderDefaults.INSTANCE.m2776Track4EFweAY(rangeSliderState, (Modifier) null, enabled3, colors2, (Function2<? super DrawScope, ? super Offset, Unit>) null, (Function3<? super DrawScope, ? super Offset, ? super Color, Unit>) null, 0.0f, 0.0f, $composer4, ($changed2 & 14) | 100663296, 242);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, $composer3, 54), steps3, $composer2, ($dirty2 & 14) | 918552576 | ($dirty2 & 112) | ($dirty2 & 896) | ($dirty2 & 7168) | (57344 & $dirty2) | (($dirty2 >> 3) & 458752), (($dirty2 >> 9) & 896) | 54, 64);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            colors3 = colors2;
            modifier4 = modifier3;
            enabled4 = enabled3;
            closedFloatingPointRange5 = closedFloatingPointRange4;
            function04 = function03;
            steps4 = steps3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt.RangeSlider.4
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i7) {
                    SliderKt.RangeSlider(closedFloatingPointRange, function1, modifier4, enabled4, closedFloatingPointRange5, steps4, function04, colors3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:244:0x046f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void RangeSlider(final ClosedFloatingPointRange<Float> closedFloatingPointRange, final Function1<? super ClosedFloatingPointRange<Float>, Unit> function1, Modifier modifier, boolean enabled, ClosedFloatingPointRange<Float> closedFloatingPointRange2, Function0<Unit> function0, SliderColors colors, MutableInteractionSource startInteractionSource, MutableInteractionSource endInteractionSource, Function3<? super RangeSliderState, ? super Composer, ? super Integer, Unit> function3, Function3<? super RangeSliderState, ? super Composer, ? super Integer, Unit> function32, Function3<? super RangeSliderState, ? super Composer, ? super Integer, Unit> function33, int steps, Composer $composer, final int $changed, final int $changed1, final int $dirty1) {
        Modifier.Companion modifier2;
        final boolean enabled2;
        ClosedFloatingPointRange<Float> closedFloatingPointRange3;
        Function0<Unit> function02;
        SliderColors sliderColors;
        int i;
        int i2;
        int i3;
        int i4;
        ClosedFloatingPointRange<Float> closedFloatingPointRangeRangeTo;
        Function0<Unit> function03;
        final SliderColors colors2;
        ClosedFloatingPointRange<Float> closedFloatingPointRange4;
        int $dirty;
        final MutableInteractionSource startInteractionSource2;
        final MutableInteractionSource endInteractionSource2;
        MutableInteractionSource startInteractionSource3;
        boolean z;
        ComposableLambda composableLambdaRememberComposableLambda;
        MutableInteractionSource endInteractionSource3;
        ComposableLambda composableLambdaRememberComposableLambda2;
        Function3<? super RangeSliderState, ? super Composer, ? super Integer, Unit> function34;
        ComposableLambda composableLambdaRememberComposableLambda3;
        int $dirty2;
        int steps2;
        Function3<? super RangeSliderState, ? super Composer, ? super Integer, Unit> function35;
        Function3<? super RangeSliderState, ? super Composer, ? super Integer, Unit> function36;
        Object value$iv;
        Object value$iv2;
        Function3<? super RangeSliderState, ? super Composer, ? super Integer, Unit> function37;
        Object value$iv3;
        Composer $composer2;
        Composer $composer3;
        final Function3<? super RangeSliderState, ? super Composer, ? super Integer, Unit> function38;
        int $dirty12;
        final ClosedFloatingPointRange<Float> closedFloatingPointRange5;
        final Modifier modifier3;
        final boolean enabled3;
        final Function0<Unit> function04;
        final SliderColors colors3;
        final Function3<? super RangeSliderState, ? super Composer, ? super Integer, Unit> function39;
        final MutableInteractionSource startInteractionSource4;
        final int steps3;
        final MutableInteractionSource endInteractionSource4;
        final Function3<? super RangeSliderState, ? super Composer, ? super Integer, Unit> function310;
        Composer $composer4 = $composer.startRestartGroup(-1048796133);
        ComposerKt.sourceInformation($composer4, "C(RangeSlider)P(11,5,4,1,12,6!1,7!1,8!1,10)511@23750L8,512@23815L39,513@23909L39,514@24007L162,521@24226L160,528@24440L175,538@24684L237,549@25005L44,553@25142L291:Slider.kt#uh7d8r");
        int $dirty3 = $changed;
        int $dirty13 = $changed1;
        if (($dirty1 & 1) != 0) {
            $dirty3 |= 6;
        } else if (($changed & 6) == 0) {
            $dirty3 |= $composer4.changed(closedFloatingPointRange) ? 4 : 2;
        }
        if (($dirty1 & 2) != 0) {
            $dirty3 |= 48;
        } else if (($changed & 48) == 0) {
            $dirty3 |= $composer4.changedInstance(function1) ? 32 : 16;
        }
        int i5 = $dirty1 & 4;
        if (i5 != 0) {
            $dirty3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            modifier2 = modifier;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            modifier2 = modifier;
            $dirty3 |= $composer4.changed(modifier2) ? 256 : 128;
        } else {
            modifier2 = modifier;
        }
        int i6 = $dirty1 & 8;
        if (i6 != 0) {
            $dirty3 |= 3072;
            enabled2 = enabled;
        } else if (($changed & 3072) == 0) {
            enabled2 = enabled;
            $dirty3 |= $composer4.changed(enabled2) ? 2048 : 1024;
        } else {
            enabled2 = enabled;
        }
        if (($changed & 24576) == 0) {
            if (($dirty1 & 16) == 0) {
                closedFloatingPointRange3 = closedFloatingPointRange2;
                int i7 = $composer4.changed(closedFloatingPointRange3) ? 16384 : 8192;
                $dirty3 |= i7;
            } else {
                closedFloatingPointRange3 = closedFloatingPointRange2;
            }
            $dirty3 |= i7;
        } else {
            closedFloatingPointRange3 = closedFloatingPointRange2;
        }
        int i8 = $dirty1 & 32;
        if (i8 != 0) {
            $dirty3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            function02 = function0;
        } else if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            function02 = function0;
            $dirty3 |= $composer4.changedInstance(function02) ? 131072 : 65536;
        } else {
            function02 = function0;
        }
        if (($changed & 1572864) == 0) {
            if (($dirty1 & 64) == 0) {
                sliderColors = colors;
                int i9 = $composer4.changed(sliderColors) ? 1048576 : 524288;
                $dirty3 |= i9;
            } else {
                sliderColors = colors;
            }
            $dirty3 |= i9;
        } else {
            sliderColors = colors;
        }
        int i10 = $dirty1 & 128;
        if (i10 != 0) {
            $dirty3 |= 12582912;
        } else if (($changed & 12582912) == 0) {
            $dirty3 |= $composer4.changed(startInteractionSource) ? 8388608 : 4194304;
        }
        int i11 = $dirty1 & 256;
        if (i11 != 0) {
            $dirty3 |= 100663296;
            i = i11;
        } else if (($changed & 100663296) == 0) {
            i = i11;
            $dirty3 |= $composer4.changed(endInteractionSource) ? 67108864 : 33554432;
        } else {
            i = i11;
        }
        int i12 = $dirty1 & 512;
        if (i12 != 0) {
            $dirty3 |= 805306368;
            i2 = i12;
        } else if (($changed & 805306368) == 0) {
            i2 = i12;
            $dirty3 |= $composer4.changedInstance(function3) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
        } else {
            i2 = i12;
        }
        int i13 = $dirty1 & 1024;
        if (i13 != 0) {
            $dirty13 |= 6;
            i3 = i13;
        } else if (($changed1 & 6) == 0) {
            i3 = i13;
            $dirty13 |= $composer4.changedInstance(function32) ? 4 : 2;
        } else {
            i3 = i13;
        }
        int i14 = $dirty1 & 2048;
        if (i14 != 0) {
            $dirty13 |= 48;
            i4 = i14;
        } else if (($changed1 & 48) == 0) {
            i4 = i14;
            $dirty13 |= $composer4.changedInstance(function33) ? 32 : 16;
        } else {
            i4 = i14;
        }
        int i15 = $dirty1 & 4096;
        if (i15 != 0) {
            $dirty13 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        } else if (($changed1 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty13 |= $composer4.changed(steps) ? 256 : 128;
        }
        if (($dirty3 & 306783379) == 306783378 && ($dirty13 & 147) == 146 && $composer4.getSkipping()) {
            $composer4.skipToGroupEnd();
            endInteractionSource4 = endInteractionSource;
            steps3 = steps;
            $composer3 = $composer4;
            $dirty12 = $dirty13;
            modifier3 = modifier2;
            enabled3 = enabled2;
            function04 = function02;
            closedFloatingPointRange5 = closedFloatingPointRange3;
            colors3 = sliderColors;
            startInteractionSource4 = startInteractionSource;
            function39 = function3;
            function38 = function32;
            function310 = function33;
        } else {
            $composer4.startDefaults();
            if (($changed & 1) == 0 || $composer4.getDefaultsInvalid()) {
                if (i5 != 0) {
                    modifier2 = Modifier.INSTANCE;
                }
                if (i6 != 0) {
                    enabled2 = true;
                }
                if (($dirty1 & 16) != 0) {
                    closedFloatingPointRangeRangeTo = RangesKt.rangeTo(0.0f, 1.0f);
                    $dirty3 &= -57345;
                } else {
                    closedFloatingPointRangeRangeTo = closedFloatingPointRange3;
                }
                function03 = i8 != 0 ? null : function02;
                if (($dirty1 & 64) != 0) {
                    colors2 = SliderDefaults.INSTANCE.colors($composer4, 6);
                    $dirty3 &= -3670017;
                } else {
                    colors2 = sliderColors;
                }
                if (i10 != 0) {
                    ComposerKt.sourceInformationMarkerStart($composer4, 1661208834, "CC(remember):Slider.kt#9igjgp");
                    closedFloatingPointRange4 = closedFloatingPointRangeRangeTo;
                    Object it$iv = $composer4.rememberedValue();
                    $dirty = $dirty3;
                    if (it$iv == Composer.INSTANCE.getEmpty()) {
                        value$iv2 = InteractionSourceKt.MutableInteractionSource();
                        $composer4.updateRememberedValue(value$iv2);
                    } else {
                        value$iv2 = it$iv;
                    }
                    startInteractionSource2 = (MutableInteractionSource) value$iv2;
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                } else {
                    closedFloatingPointRange4 = closedFloatingPointRangeRangeTo;
                    $dirty = $dirty3;
                    startInteractionSource2 = startInteractionSource;
                }
                if (i != 0) {
                    ComposerKt.sourceInformationMarkerStart($composer4, 1661211842, "CC(remember):Slider.kt#9igjgp");
                    Object it$iv2 = $composer4.rememberedValue();
                    if (it$iv2 == Composer.INSTANCE.getEmpty()) {
                        value$iv = InteractionSourceKt.MutableInteractionSource();
                        $composer4.updateRememberedValue(value$iv);
                    } else {
                        value$iv = it$iv2;
                    }
                    endInteractionSource2 = (MutableInteractionSource) value$iv;
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                } else {
                    endInteractionSource2 = endInteractionSource;
                }
                if (i2 != 0) {
                    Function3<RangeSliderState, Composer, Integer, Unit> function311 = new Function3<RangeSliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt.RangeSlider.7
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(3);
                        }

                        @Override // kotlin.jvm.functions.Function3
                        public /* bridge */ /* synthetic */ Unit invoke(RangeSliderState rangeSliderState, Composer composer, Integer num) {
                            invoke(rangeSliderState, composer, num.intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(RangeSliderState it, Composer $composer5, int $changed2) {
                            ComposerKt.sourceInformation($composer5, "C515@24032L131:Slider.kt#uh7d8r");
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1963073082, $changed2, -1, "androidx.compose.material3.RangeSlider.<anonymous> (Slider.kt:515)");
                            }
                            SliderDefaults.INSTANCE.m2775Thumb9LiSoMs(startInteractionSource2, null, colors2, enabled2, 0L, $composer5, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 18);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }
                    };
                    startInteractionSource3 = startInteractionSource2;
                    z = true;
                    composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1963073082, true, function311, $composer4, 54);
                } else {
                    startInteractionSource3 = startInteractionSource2;
                    z = true;
                    composableLambdaRememberComposableLambda = function3;
                }
                if (i3 != 0) {
                    endInteractionSource3 = endInteractionSource2;
                    composableLambdaRememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(1908709951, z, new Function3<RangeSliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt.RangeSlider.8
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(3);
                        }

                        @Override // kotlin.jvm.functions.Function3
                        public /* bridge */ /* synthetic */ Unit invoke(RangeSliderState rangeSliderState, Composer composer, Integer num) {
                            invoke(rangeSliderState, composer, num.intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(RangeSliderState it, Composer $composer5, int $changed2) {
                            ComposerKt.sourceInformation($composer5, "C522@24251L129:Slider.kt#uh7d8r");
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1908709951, $changed2, -1, "androidx.compose.material3.RangeSlider.<anonymous> (Slider.kt:522)");
                            }
                            SliderDefaults.INSTANCE.m2775Thumb9LiSoMs(endInteractionSource2, null, colors2, enabled2, 0L, $composer5, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 18);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }
                    }, $composer4, 54);
                } else {
                    endInteractionSource3 = endInteractionSource2;
                    composableLambdaRememberComposableLambda2 = function32;
                }
                if (i4 != 0) {
                    function34 = composableLambdaRememberComposableLambda2;
                    composableLambdaRememberComposableLambda3 = ComposableLambdaKt.rememberComposableLambda(-429193201, z, new Function3<RangeSliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt.RangeSlider.9
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(3);
                        }

                        @Override // kotlin.jvm.functions.Function3
                        public /* bridge */ /* synthetic */ Unit invoke(RangeSliderState rangeSliderState, Composer composer, Integer num) {
                            invoke(rangeSliderState, composer, num.intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(RangeSliderState rangeSliderState, Composer $composer5, int $changed2) {
                            ComposerKt.sourceInformation($composer5, "C529@24485L124:Slider.kt#uh7d8r");
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-429193201, $changed2, -1, "androidx.compose.material3.RangeSlider.<anonymous> (Slider.kt:529)");
                            }
                            SliderDefaults.INSTANCE.m2776Track4EFweAY(rangeSliderState, (Modifier) null, enabled2, colors2, (Function2<? super DrawScope, ? super Offset, Unit>) null, (Function3<? super DrawScope, ? super Offset, ? super Color, Unit>) null, 0.0f, 0.0f, $composer5, ($changed2 & 14) | 100663296, 242);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }
                    }, $composer4, 54);
                } else {
                    function34 = composableLambdaRememberComposableLambda2;
                    composableLambdaRememberComposableLambda3 = function33;
                }
                if (i15 != 0) {
                    $dirty2 = $dirty;
                    function35 = composableLambdaRememberComposableLambda3;
                    steps2 = 0;
                    closedFloatingPointRange3 = closedFloatingPointRange4;
                    function36 = function34;
                } else {
                    closedFloatingPointRange3 = closedFloatingPointRange4;
                    $dirty2 = $dirty;
                    steps2 = steps;
                    function35 = composableLambdaRememberComposableLambda3;
                    function36 = function34;
                }
            } else {
                $composer4.skipToGroupEnd();
                if (($dirty1 & 16) != 0) {
                    $dirty3 &= -57345;
                }
                if (($dirty1 & 64) != 0) {
                    $dirty3 &= -3670017;
                }
                startInteractionSource3 = startInteractionSource;
                endInteractionSource3 = endInteractionSource;
                function35 = function33;
                steps2 = steps;
                $dirty2 = $dirty3;
                function03 = function02;
                colors2 = sliderColors;
                composableLambdaRememberComposableLambda = function3;
                function36 = function32;
            }
            $composer4.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                function37 = function36;
                ComposerKt.traceEventStart(-1048796133, $dirty2, $dirty13, "androidx.compose.material3.RangeSlider (Slider.kt:536)");
            } else {
                function37 = function36;
            }
            ComposerKt.sourceInformationMarkerStart($composer4, 1661236840, "CC(remember):Slider.kt#9igjgp");
            boolean invalid$iv = (($dirty13 & 896) == 256) | ((((57344 & $dirty2) ^ 24576) > 16384 && $composer4.changed(closedFloatingPointRange3)) || ($dirty2 & 24576) == 16384);
            int $dirty4 = $dirty2;
            Object it$iv3 = $composer4.rememberedValue();
            if (invalid$iv || it$iv3 == Composer.INSTANCE.getEmpty()) {
                value$iv3 = new RangeSliderState(closedFloatingPointRange.getStart().floatValue(), closedFloatingPointRange.getEndInclusive().floatValue(), steps2, function03, closedFloatingPointRange3);
                $composer4.updateRememberedValue(value$iv3);
            } else {
                value$iv3 = it$iv3;
            }
            RangeSliderState state = (RangeSliderState) value$iv3;
            ComposerKt.sourceInformationMarkerEnd($composer4);
            state.setOnValueChangeFinished(function03);
            ComposerKt.sourceInformationMarkerStart($composer4, 1661246919, "CC(remember):Slider.kt#9igjgp");
            boolean invalid$iv2 = ($dirty4 & 112) == 32;
            boolean invalid$iv3 = invalid$iv2;
            Object value$iv4 = $composer4.rememberedValue();
            if (invalid$iv3) {
                $composer2 = $composer4;
            } else {
                $composer2 = $composer4;
                if (value$iv4 == Composer.INSTANCE.getEmpty()) {
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                state.setOnValueChange$material3_release((Function1) value$iv4);
                state.setActiveRangeStart(closedFloatingPointRange.getStart().floatValue());
                state.setActiveRangeEnd(closedFloatingPointRange.getEndInclusive().floatValue());
                Composer $composer5 = $composer2;
                Function3<? super RangeSliderState, ? super Composer, ? super Integer, Unit> function312 = function35;
                RangeSlider(state, modifier2, enabled2, null, startInteractionSource3, endInteractionSource3, composableLambdaRememberComposableLambda, function37, function312, $composer5, (($dirty4 >> 3) & 112) | (($dirty4 >> 3) & 896) | (($dirty4 >> 9) & 57344) | (($dirty4 >> 9) & 458752) | (3670016 & ($dirty4 >> 9)) | (($dirty13 << 21) & 29360128) | (($dirty13 << 21) & 234881024), 8);
                Function3<? super RangeSliderState, ? super Composer, ? super Integer, Unit> function313 = function37;
                $composer3 = $composer5;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                ClosedFloatingPointRange<Float> closedFloatingPointRange6 = closedFloatingPointRange3;
                function38 = function313;
                $dirty12 = $dirty13;
                closedFloatingPointRange5 = closedFloatingPointRange6;
                modifier3 = modifier2;
                enabled3 = enabled2;
                function04 = function03;
                colors3 = colors2;
                function39 = composableLambdaRememberComposableLambda;
                startInteractionSource4 = startInteractionSource3;
                steps3 = steps2;
                endInteractionSource4 = endInteractionSource3;
                function310 = function312;
            }
            value$iv4 = (Function1) new Function1<SliderRange, Unit>() { // from class: androidx.compose.material3.SliderKt$RangeSlider$10$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(SliderRange sliderRange) {
                    m2791invokeIf1S1O4(sliderRange.m2805unboximpl());
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke-If1S1O4, reason: not valid java name */
                public final void m2791invokeIf1S1O4(long it) {
                    function1.invoke(RangesKt.rangeTo(SliderRange.m2802getStartimpl(it), SliderRange.m2801getEndInclusiveimpl(it)));
                }
            };
            $composer4.updateRememberedValue(value$iv4);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            state.setOnValueChange$material3_release((Function1) value$iv4);
            state.setActiveRangeStart(closedFloatingPointRange.getStart().floatValue());
            state.setActiveRangeEnd(closedFloatingPointRange.getEndInclusive().floatValue());
            Composer $composer52 = $composer2;
            Function3<? super RangeSliderState, ? super Composer, ? super Integer, Unit> function3122 = function35;
            RangeSlider(state, modifier2, enabled2, null, startInteractionSource3, endInteractionSource3, composableLambdaRememberComposableLambda, function37, function3122, $composer52, (($dirty4 >> 3) & 112) | (($dirty4 >> 3) & 896) | (($dirty4 >> 9) & 57344) | (($dirty4 >> 9) & 458752) | (3670016 & ($dirty4 >> 9)) | (($dirty13 << 21) & 29360128) | (($dirty13 << 21) & 234881024), 8);
            Function3<? super RangeSliderState, ? super Composer, ? super Integer, Unit> function3132 = function37;
            $composer3 = $composer52;
            if (ComposerKt.isTraceInProgress()) {
            }
            ClosedFloatingPointRange<Float> closedFloatingPointRange62 = closedFloatingPointRange3;
            function38 = function3132;
            $dirty12 = $dirty13;
            closedFloatingPointRange5 = closedFloatingPointRange62;
            modifier3 = modifier2;
            enabled3 = enabled2;
            function04 = function03;
            colors3 = colors2;
            function39 = composableLambdaRememberComposableLambda;
            startInteractionSource4 = startInteractionSource3;
            steps3 = steps2;
            endInteractionSource4 = endInteractionSource3;
            function310 = function3122;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer3.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt.RangeSlider.11
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i16) {
                    SliderKt.RangeSlider(closedFloatingPointRange, function1, modifier3, enabled3, closedFloatingPointRange5, function04, colors3, startInteractionSource4, endInteractionSource4, function39, function38, function310, steps3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), RecomposeScopeImplKt.updateChangedFlags($changed1), $dirty1);
                }
            });
        }
    }

    public static final void RangeSlider(final RangeSliderState state, Modifier modifier, boolean enabled, SliderColors colors, MutableInteractionSource startInteractionSource, MutableInteractionSource endInteractionSource, Function3<? super RangeSliderState, ? super Composer, ? super Integer, Unit> function3, Function3<? super RangeSliderState, ? super Composer, ? super Integer, Unit> function32, Function3<? super RangeSliderState, ? super Composer, ? super Integer, Unit> function33, Composer $composer, final int $changed, final int i) {
        RangeSliderState rangeSliderState;
        Modifier modifier2;
        final boolean enabled2;
        final SliderColors colors2;
        final MutableInteractionSource startInteractionSource2;
        final MutableInteractionSource endInteractionSource2;
        int i2;
        int i3;
        int $dirty;
        boolean z;
        ComposableLambda composableLambdaRememberComposableLambda;
        Function3<? super RangeSliderState, ? super Composer, ? super Integer, Unit> function3RememberComposableLambda;
        Function3<? super RangeSliderState, ? super Composer, ? super Integer, Unit> function34;
        Function3<? super RangeSliderState, ? super Composer, ? super Integer, Unit> function35;
        Modifier modifier3;
        MutableInteractionSource startInteractionSource3;
        MutableInteractionSource endInteractionSource3;
        int i4;
        boolean enabled3;
        Object value$iv;
        Object value$iv2;
        Composer $composer2;
        final Modifier modifier4;
        final SliderColors colors3;
        final boolean enabled4;
        final MutableInteractionSource startInteractionSource4;
        final MutableInteractionSource endInteractionSource4;
        final Function3<? super RangeSliderState, ? super Composer, ? super Integer, Unit> function36;
        final Function3<? super RangeSliderState, ? super Composer, ? super Integer, Unit> function37;
        final Function3<? super RangeSliderState, ? super Composer, ? super Integer, Unit> function38;
        Composer $composer3 = $composer.startRestartGroup(511405654);
        ComposerKt.sourceInformation($composer3, "C(RangeSlider)P(7,4,1!1,5!1,6)616@28157L8,617@28222L39,618@28316L39,619@28414L162,626@28633L160,633@28847L175,643@29089L295:Slider.kt#uh7d8r");
        int $dirty2 = $changed;
        if ((i & 1) != 0) {
            $dirty2 |= 6;
            rangeSliderState = state;
        } else if (($changed & 6) == 0) {
            rangeSliderState = state;
            $dirty2 |= $composer3.changedInstance(rangeSliderState) ? 4 : 2;
        } else {
            rangeSliderState = state;
        }
        int i5 = i & 2;
        if (i5 != 0) {
            $dirty2 |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty2 |= $composer3.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        int i6 = i & 4;
        if (i6 != 0) {
            $dirty2 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            enabled2 = enabled;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            enabled2 = enabled;
            $dirty2 |= $composer3.changed(enabled2) ? 256 : 128;
        } else {
            enabled2 = enabled;
        }
        if (($changed & 3072) == 0) {
            if ((i & 8) == 0) {
                colors2 = colors;
                int i7 = $composer3.changed(colors2) ? 2048 : 1024;
                $dirty2 |= i7;
            } else {
                colors2 = colors;
            }
            $dirty2 |= i7;
        } else {
            colors2 = colors;
        }
        int i8 = i & 16;
        if (i8 != 0) {
            $dirty2 |= 24576;
            startInteractionSource2 = startInteractionSource;
        } else if (($changed & 24576) == 0) {
            startInteractionSource2 = startInteractionSource;
            $dirty2 |= $composer3.changed(startInteractionSource2) ? 16384 : 8192;
        } else {
            startInteractionSource2 = startInteractionSource;
        }
        int i9 = i & 32;
        if (i9 != 0) {
            $dirty2 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            endInteractionSource2 = endInteractionSource;
        } else if ((196608 & $changed) == 0) {
            endInteractionSource2 = endInteractionSource;
            $dirty2 |= $composer3.changed(endInteractionSource2) ? 131072 : 65536;
        } else {
            endInteractionSource2 = endInteractionSource;
        }
        int i10 = i & 64;
        if (i10 != 0) {
            $dirty2 |= 1572864;
        } else if (($changed & 1572864) == 0) {
            $dirty2 |= $composer3.changedInstance(function3) ? 1048576 : 524288;
        }
        int i11 = i & 128;
        if (i11 != 0) {
            $dirty2 |= 12582912;
            i2 = i11;
        } else if (($changed & 12582912) == 0) {
            i2 = i11;
            $dirty2 |= $composer3.changedInstance(function32) ? 8388608 : 4194304;
        } else {
            i2 = i11;
        }
        int i12 = i & 256;
        if (i12 != 0) {
            $dirty2 |= 100663296;
            i3 = i12;
        } else if (($changed & 100663296) == 0) {
            i3 = i12;
            $dirty2 |= $composer3.changedInstance(function33) ? 67108864 : 33554432;
        } else {
            i3 = i12;
        }
        if (($dirty2 & 38347923) == 38347922 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            function37 = function32;
            $composer2 = $composer3;
            modifier4 = modifier2;
            enabled4 = enabled2;
            colors3 = colors2;
            startInteractionSource4 = startInteractionSource2;
            endInteractionSource4 = endInteractionSource2;
            function36 = function3;
            function38 = function33;
        } else {
            $composer3.startDefaults();
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                if (i5 != 0) {
                    modifier2 = Modifier.INSTANCE;
                }
                if (i6 != 0) {
                    enabled2 = true;
                }
                if ((i & 8) != 0) {
                    $dirty2 &= -7169;
                    colors2 = SliderDefaults.INSTANCE.colors($composer3, 6);
                }
                if (i8 != 0) {
                    ComposerKt.sourceInformationMarkerStart($composer3, 1661349858, "CC(remember):Slider.kt#9igjgp");
                    Object it$iv = $composer3.rememberedValue();
                    $dirty = $dirty2;
                    if (it$iv == Composer.INSTANCE.getEmpty()) {
                        value$iv2 = InteractionSourceKt.MutableInteractionSource();
                        $composer3.updateRememberedValue(value$iv2);
                    } else {
                        value$iv2 = it$iv;
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    startInteractionSource2 = (MutableInteractionSource) value$iv2;
                } else {
                    $dirty = $dirty2;
                }
                if (i9 != 0) {
                    ComposerKt.sourceInformationMarkerStart($composer3, 1661352866, "CC(remember):Slider.kt#9igjgp");
                    Object it$iv2 = $composer3.rememberedValue();
                    if (it$iv2 == Composer.INSTANCE.getEmpty()) {
                        value$iv = InteractionSourceKt.MutableInteractionSource();
                        $composer3.updateRememberedValue(value$iv);
                    } else {
                        value$iv = it$iv2;
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    endInteractionSource2 = (MutableInteractionSource) value$iv;
                }
                if (i10 != 0) {
                    z = true;
                    composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(1884205643, true, new Function3<RangeSliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt.RangeSlider.14
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(3);
                        }

                        @Override // kotlin.jvm.functions.Function3
                        public /* bridge */ /* synthetic */ Unit invoke(RangeSliderState rangeSliderState2, Composer composer, Integer num) {
                            invoke(rangeSliderState2, composer, num.intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(RangeSliderState it, Composer $composer4, int $changed2) {
                            ComposerKt.sourceInformation($composer4, "C620@28439L131:Slider.kt#uh7d8r");
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1884205643, $changed2, -1, "androidx.compose.material3.RangeSlider.<anonymous> (Slider.kt:620)");
                            }
                            SliderDefaults.INSTANCE.m2775Thumb9LiSoMs(startInteractionSource2, null, colors2, enabled2, 0L, $composer4, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 18);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }
                    }, $composer3, 54);
                } else {
                    z = true;
                    composableLambdaRememberComposableLambda = function3;
                }
                ComposableLambda composableLambdaRememberComposableLambda2 = i2 != 0 ? ComposableLambdaKt.rememberComposableLambda(1016457138, z, new Function3<RangeSliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt.RangeSlider.15
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(3);
                    }

                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Unit invoke(RangeSliderState rangeSliderState2, Composer composer, Integer num) {
                        invoke(rangeSliderState2, composer, num.intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(RangeSliderState it, Composer $composer4, int $changed2) {
                        ComposerKt.sourceInformation($composer4, "C627@28658L129:Slider.kt#uh7d8r");
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1016457138, $changed2, -1, "androidx.compose.material3.RangeSlider.<anonymous> (Slider.kt:627)");
                        }
                        SliderDefaults.INSTANCE.m2775Thumb9LiSoMs(endInteractionSource2, null, colors2, enabled2, 0L, $composer4, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 18);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }
                }, $composer3, 54) : function32;
                if (i3 != 0) {
                    function3RememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1617375262, z, new Function3<RangeSliderState, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt.RangeSlider.16
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(3);
                        }

                        @Override // kotlin.jvm.functions.Function3
                        public /* bridge */ /* synthetic */ Unit invoke(RangeSliderState rangeSliderState2, Composer composer, Integer num) {
                            invoke(rangeSliderState2, composer, num.intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(RangeSliderState rangeSliderState2, Composer $composer4, int $changed2) {
                            ComposerKt.sourceInformation($composer4, "C634@28892L124:Slider.kt#uh7d8r");
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1617375262, $changed2, -1, "androidx.compose.material3.RangeSlider.<anonymous> (Slider.kt:634)");
                            }
                            SliderDefaults.INSTANCE.m2776Track4EFweAY(rangeSliderState2, (Modifier) null, enabled2, colors2, (Function2<? super DrawScope, ? super Offset, Unit>) null, (Function3<? super DrawScope, ? super Offset, ? super Color, Unit>) null, 0.0f, 0.0f, $composer4, ($changed2 & 14) | 100663296, 242);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }
                    }, $composer3, 54);
                    function34 = composableLambdaRememberComposableLambda;
                    function35 = composableLambdaRememberComposableLambda2;
                    modifier3 = modifier2;
                    startInteractionSource3 = startInteractionSource2;
                    endInteractionSource3 = endInteractionSource2;
                    i4 = 511405654;
                    $dirty2 = $dirty;
                    enabled3 = enabled2;
                } else {
                    function3RememberComposableLambda = function33;
                    function34 = composableLambdaRememberComposableLambda;
                    function35 = composableLambdaRememberComposableLambda2;
                    modifier3 = modifier2;
                    startInteractionSource3 = startInteractionSource2;
                    endInteractionSource3 = endInteractionSource2;
                    i4 = 511405654;
                    $dirty2 = $dirty;
                    enabled3 = enabled2;
                }
            } else {
                $composer3.skipToGroupEnd();
                if ((i & 8) != 0) {
                    function34 = function3;
                    function35 = function32;
                    function3RememberComposableLambda = function33;
                    $dirty2 &= -7169;
                    modifier3 = modifier2;
                    startInteractionSource3 = startInteractionSource2;
                    endInteractionSource3 = endInteractionSource2;
                    i4 = 511405654;
                    z = true;
                    enabled3 = enabled2;
                } else {
                    function34 = function3;
                    function35 = function32;
                    function3RememberComposableLambda = function33;
                    modifier3 = modifier2;
                    startInteractionSource3 = startInteractionSource2;
                    endInteractionSource3 = endInteractionSource2;
                    i4 = 511405654;
                    z = true;
                    enabled3 = enabled2;
                }
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(i4, $dirty2, -1, "androidx.compose.material3.RangeSlider (Slider.kt:640)");
            }
            if (!(rangeSliderState.getSteps() >= 0 ? z : false)) {
                throw new IllegalArgumentException("steps should be >= 0".toString());
            }
            $composer2 = $composer3;
            RangeSliderImpl(modifier3, rangeSliderState, enabled3, startInteractionSource3, endInteractionSource3, function34, function35, function3RememberComposableLambda, $composer2, (($dirty2 >> 3) & 14) | (($dirty2 << 3) & 112) | ($dirty2 & 896) | (($dirty2 >> 3) & 7168) | (($dirty2 >> 3) & 57344) | (($dirty2 >> 3) & 458752) | (($dirty2 >> 3) & 3670016) | (29360128 & ($dirty2 >> 3)));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier4 = modifier3;
            colors3 = colors2;
            enabled4 = enabled3;
            startInteractionSource4 = startInteractionSource3;
            endInteractionSource4 = endInteractionSource3;
            function36 = function34;
            function37 = function35;
            function38 = function3RememberComposableLambda;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt.RangeSlider.18
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i13) {
                    SliderKt.RangeSlider(state, modifier4, enabled4, colors3, startInteractionSource4, endInteractionSource4, function36, function37, function38, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:127:0x051c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void SliderImpl(final Modifier modifier, final SliderState state, final boolean enabled, final MutableInteractionSource interactionSource, final Function3<? super SliderState, ? super Composer, ? super Integer, Unit> function3, Function3<? super SliderState, ? super Composer, ? super Integer, Unit> function32, Composer $composer, final int $changed) {
        SliderState sliderState;
        SliderKt$SliderImpl$drag$1$1 value$iv;
        MeasurePolicy value$iv2;
        Function0<ComposeUiNode> function0;
        Object value$iv3;
        Function0<ComposeUiNode> function02;
        Function0<ComposeUiNode> function03;
        Composer $composer2;
        Function3<? super SliderState, ? super Composer, ? super Integer, Unit> function33 = function32;
        Composer $composer3 = $composer.startRestartGroup(1390990089);
        ComposerKt.sourceInformation($composer3, "C(SliderImpl)P(2,3)665@29717L7,673@30073L28,698@30935L1093,678@30197L1831:Slider.kt#uh7d8r");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer3.changed(modifier) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer3.changedInstance(state) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty |= $composer3.changed(enabled) ? 256 : 128;
        }
        if (($changed & 3072) == 0) {
            $dirty |= $composer3.changed(interactionSource) ? 2048 : 1024;
        }
        if (($changed & 24576) == 0) {
            $dirty |= $composer3.changedInstance(function3) ? 16384 : 8192;
        }
        if ((196608 & $changed) == 0) {
            $dirty |= $composer3.changedInstance(function33) ? 131072 : 65536;
        }
        if ((74899 & $dirty) == 74898 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1390990089, $dirty, -1, "androidx.compose.material3.SliderImpl (Slider.kt:664)");
            }
            ProvidableCompositionLocal<LayoutDirection> localLayoutDirection = CompositionLocalsKt.getLocalLayoutDirection();
            ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object objConsume = $composer3.consume(localLayoutDirection);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            state.setRtl$material3_release(objConsume == LayoutDirection.Rtl);
            Modifier press = sliderTapModifier(Modifier.INSTANCE, state, interactionSource, enabled);
            Modifier.Companion companion = Modifier.INSTANCE;
            Orientation orientation = Orientation.Horizontal;
            boolean zIsRtl$material3_release = state.getIsRtl();
            boolean zIsDragging$material3_release = state.isDragging$material3_release();
            Modifier.Companion companion2 = companion;
            SliderState sliderState2 = state;
            ComposerKt.sourceInformationMarkerStart($composer3, 174725888, "CC(remember):Slider.kt#9igjgp");
            boolean invalid$iv = $composer3.changedInstance(state);
            Object it$iv = $composer3.rememberedValue();
            if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                sliderState = sliderState2;
                value$iv = new SliderKt$SliderImpl$drag$1$1(state, null);
                $composer3.updateRememberedValue(value$iv);
            } else {
                sliderState = sliderState2;
                value$iv = it$iv;
            }
            ComposerKt.sourceInformationMarkerEnd($composer3);
            int $dirty2 = $dirty;
            Modifier drag = DraggableKt.draggable(companion2, sliderState, orientation, (TsExtractor.TS_PACKET_SIZE & 4) != 0 ? true : enabled, (TsExtractor.TS_PACKET_SIZE & 8) != 0 ? null : interactionSource, (TsExtractor.TS_PACKET_SIZE & 16) != 0 ? false : zIsDragging$material3_release, (TsExtractor.TS_PACKET_SIZE & 32) != 0 ? DraggableKt.NoOpOnDragStarted : null, (TsExtractor.TS_PACKET_SIZE & 64) != 0 ? DraggableKt.NoOpOnDragStopped : (Function3) value$iv, (TsExtractor.TS_PACKET_SIZE & 128) != 0 ? false : zIsRtl$material3_release);
            Modifier modifier$iv = FocusableKt.focusable(sliderSemantics(SizeKt.m860requiredSizeInqDBjuR0$default(InteractiveComponentSizeKt.minimumInteractiveComponentSize(modifier), ThumbWidth, TrackHeight, 0.0f, 0.0f, 12, null), state, enabled), enabled, interactionSource).then(press).then(drag);
            ComposerKt.sourceInformationMarkerStart($composer3, 174754537, "CC(remember):Slider.kt#9igjgp");
            boolean invalid$iv2 = $composer3.changedInstance(state);
            Object it$iv2 = $composer3.rememberedValue();
            if (invalid$iv2 || it$iv2 == Composer.INSTANCE.getEmpty()) {
                value$iv2 = new MeasurePolicy() { // from class: androidx.compose.material3.SliderKt$SliderImpl$2$1
                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    /* JADX INFO: renamed from: measure-3p2s80s */
                    public final MeasureResult mo41measure3p2s80s(MeasureScope $this$Layout, List<? extends Measurable> list, long constraints) {
                        int size = list.size();
                        for (int index$iv$iv = 0; index$iv$iv < size; index$iv$iv++) {
                            Object item$iv$iv = list.get(index$iv$iv);
                            Measurable it = (Measurable) item$iv$iv;
                            if (LayoutIdKt.getLayoutId(it) == SliderComponents.THUMB) {
                                Measurable measurable = (Measurable) item$iv$iv;
                                long j = constraints;
                                Placeable thumbPlaceable = measurable.mo6141measureBRTryo0(j);
                                int index$iv$iv2 = 0;
                                int size2 = list.size();
                                while (index$iv$iv2 < size2) {
                                    Object item$iv$iv2 = list.get(index$iv$iv2);
                                    Measurable it2 = (Measurable) item$iv$iv2;
                                    final Placeable thumbPlaceable2 = thumbPlaceable;
                                    if (LayoutIdKt.getLayoutId(it2) == SliderComponents.TRACK) {
                                        long jM7478offsetNN6EwU$default = ConstraintsKt.m7478offsetNN6EwU$default(j, -thumbPlaceable2.getWidth(), 0, 2, null);
                                        final Placeable trackPlaceable = ((Measurable) item$iv$iv2).mo6141measureBRTryo0(Constraints.m7447copyZbe2FdA(jM7478offsetNN6EwU$default, (11 & 1) != 0 ? Constraints.m7460getMinWidthimpl(jM7478offsetNN6EwU$default) : 0, (11 & 2) != 0 ? Constraints.m7458getMaxWidthimpl(jM7478offsetNN6EwU$default) : 0, (11 & 4) != 0 ? Constraints.m7459getMinHeightimpl(jM7478offsetNN6EwU$default) : 0, (11 & 8) != 0 ? Constraints.m7457getMaxHeightimpl(jM7478offsetNN6EwU$default) : 0));
                                        int sliderWidth = thumbPlaceable2.getWidth() + trackPlaceable.getWidth();
                                        int sliderHeight = Math.max(trackPlaceable.getHeight(), thumbPlaceable2.getHeight());
                                        state.updateDimensions$material3_release(trackPlaceable.getHeight(), sliderWidth);
                                        final int trackOffsetX = thumbPlaceable2.getWidth() / 2;
                                        final int thumbOffsetX = MathKt.roundToInt(trackPlaceable.getWidth() * state.getCoercedValueAsFraction$material3_release());
                                        final int trackOffsetY = (sliderHeight - trackPlaceable.getHeight()) / 2;
                                        final int thumbOffsetY = (sliderHeight - thumbPlaceable2.getHeight()) / 2;
                                        return MeasureScope.layout$default($this$Layout, sliderWidth, sliderHeight, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material3.SliderKt$SliderImpl$2$1.1
                                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                            {
                                                super(1);
                                            }

                                            @Override // kotlin.jvm.functions.Function1
                                            public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                                                invoke2(placementScope);
                                                return Unit.INSTANCE;
                                            }

                                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                                            public final void invoke2(Placeable.PlacementScope $this$layout) {
                                                Placeable.PlacementScope.placeRelative$default($this$layout, trackPlaceable, trackOffsetX, trackOffsetY, 0.0f, 4, null);
                                                Placeable.PlacementScope.placeRelative$default($this$layout, thumbPlaceable2, thumbOffsetX, thumbOffsetY, 0.0f, 4, null);
                                            }
                                        }, 4, null);
                                    }
                                    index$iv$iv2++;
                                    j = constraints;
                                    thumbPlaceable = thumbPlaceable2;
                                }
                                throw new NoSuchElementException("Collection contains no element matching the predicate.");
                            }
                        }
                        throw new NoSuchElementException("Collection contains no element matching the predicate.");
                    }
                };
                $composer3.updateRememberedValue(value$iv2);
            } else {
                value$iv2 = it$iv2;
            }
            MeasurePolicy measurePolicy$iv = (MeasurePolicy) value$iv2;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerStart($composer3, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
            int compositeKeyHash$iv = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
            CompositionLocalMap localMap$iv = $composer3.getCurrentCompositionLocalMap();
            Modifier materialized$iv = ComposedModifierKt.materializeModifier($composer3, modifier$iv);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int $changed$iv$iv = ((0 << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
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
            Composer $this$Layout_u24lambda_u240$iv = Updater.m3967constructorimpl($composer3);
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv, localMap$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if ($this$Layout_u24lambda_u240$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv))) {
                $this$Layout_u24lambda_u240$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv));
                $this$Layout_u24lambda_u240$iv.apply(Integer.valueOf(compositeKeyHash$iv), setCompositeKeyHash);
            }
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv, materialized$iv, ComposeUiNode.INSTANCE.getSetModifier());
            int i = ($changed$iv$iv >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer3, -610171494, "C682@30354L85,680@30227L271,688@30511L74:Slider.kt#uh7d8r");
            Modifier modifierWrapContentWidth$default = SizeKt.wrapContentWidth$default(LayoutIdKt.layoutId(Modifier.INSTANCE, SliderComponents.THUMB), null, false, 3, null);
            ComposerKt.sourceInformationMarkerStart($composer3, 534510168, "CC(remember):Slider.kt#9igjgp");
            boolean invalid$iv3 = $composer3.changedInstance(state);
            Object it$iv3 = $composer3.rememberedValue();
            if (invalid$iv3 || it$iv3 == Composer.INSTANCE.getEmpty()) {
                value$iv3 = (Function1) new Function1<IntSize, Unit>() { // from class: androidx.compose.material3.SliderKt$SliderImpl$1$1$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(IntSize intSize) {
                        m2794invokeozmzZPI(intSize.m7680unboximpl());
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke-ozmzZPI, reason: not valid java name */
                    public final void m2794invokeozmzZPI(long it) {
                        state.setThumbWidth$material3_release(IntSize.m7676getWidthimpl(it));
                    }
                };
                $composer3.updateRememberedValue(value$iv3);
            } else {
                value$iv3 = it$iv3;
            }
            ComposerKt.sourceInformationMarkerEnd($composer3);
            Modifier modifier$iv2 = OnRemeasuredModifierKt.onSizeChanged(modifierWrapContentWidth$default, (Function1) value$iv3);
            ComposerKt.sourceInformationMarkerStart($composer3, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
            Alignment contentAlignment$iv = Alignment.INSTANCE.getTopStart();
            MeasurePolicy measurePolicy$iv2 = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv, false);
            int $changed$iv$iv2 = (0 << 3) & 112;
            ComposerKt.sourceInformationMarkerStart($composer3, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
            int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
            CompositionLocalMap localMap$iv$iv = $composer3.getCurrentCompositionLocalMap();
            Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer3, modifier$iv2);
            Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
            int $changed$iv$iv$iv = (($changed$iv$iv2 << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
            if (!($composer3.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer3.startReusableNode();
            if ($composer3.getInserting()) {
                function02 = constructor2;
                $composer3.createNode(function02);
            } else {
                function02 = constructor2;
                $composer3.useNode();
            }
            Composer $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer3);
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash2 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if ($this$Layout_u24lambda_u240$iv$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), setCompositeKeyHash2);
            }
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = ($changed$iv$iv$iv >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer3, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            int i3 = ((0 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, -469300363, "C686@30472L12:Slider.kt#uh7d8r");
            function3.invoke(state, $composer3, Integer.valueOf((($dirty2 >> 3) & 14) | (($dirty2 >> 9) & 112)));
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            $composer3.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            Modifier modifier$iv3 = LayoutIdKt.layoutId(Modifier.INSTANCE, SliderComponents.TRACK);
            ComposerKt.sourceInformationMarkerStart($composer3, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
            Alignment contentAlignment$iv2 = Alignment.INSTANCE.getTopStart();
            MeasurePolicy measurePolicy$iv3 = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv2, false);
            int $changed$iv$iv3 = (6 << 3) & 112;
            ComposerKt.sourceInformationMarkerStart($composer3, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
            int compositeKeyHash$iv$iv2 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
            CompositionLocalMap localMap$iv$iv2 = $composer3.getCurrentCompositionLocalMap();
            Modifier materialized$iv$iv2 = ComposedModifierKt.materializeModifier($composer3, modifier$iv3);
            Function0<ComposeUiNode> constructor3 = ComposeUiNode.INSTANCE.getConstructor();
            int $changed$iv$iv$iv2 = (($changed$iv$iv3 << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
            if (!($composer3.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer3.startReusableNode();
            if ($composer3.getInserting()) {
                function03 = constructor3;
                $composer3.createNode(function03);
            } else {
                function03 = constructor3;
                $composer3.useNode();
            }
            Composer $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3967constructorimpl($composer3);
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash3 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if ($this$Layout_u24lambda_u240$iv$iv2.getInserting()) {
                $composer2 = $composer3;
            } else {
                $composer2 = $composer3;
                if (!Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv2.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv2))) {
                }
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, materialized$iv$iv2, ComposeUiNode.INSTANCE.getSetModifier());
                int i4 = ($changed$iv$iv$iv2 >> 6) & 14;
                Composer $composer$iv = $composer2;
                ComposerKt.sourceInformationMarkerStart($composer$iv, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                int i5 = ((6 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer$iv, -469202155, "C688@30571L12:Slider.kt#uh7d8r");
                function33 = function32;
                function33.invoke(state, $composer$iv, Integer.valueOf((($dirty2 >> 3) & 14) | (($dirty2 >> 12) & 112)));
                ComposerKt.sourceInformationMarkerEnd($composer$iv);
                ComposerKt.sourceInformationMarkerEnd($composer$iv);
                $composer2.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                $composer3.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
            $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv2));
            $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv2), setCompositeKeyHash3);
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, materialized$iv$iv2, ComposeUiNode.INSTANCE.getSetModifier());
            int i42 = ($changed$iv$iv$iv2 >> 6) & 14;
            Composer $composer$iv2 = $composer2;
            ComposerKt.sourceInformationMarkerStart($composer$iv2, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
            BoxScopeInstance boxScopeInstance22 = BoxScopeInstance.INSTANCE;
            int i52 = ((6 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer$iv2, -469202155, "C688@30571L12:Slider.kt#uh7d8r");
            function33 = function32;
            function33.invoke(state, $composer$iv2, Integer.valueOf((($dirty2 >> 3) & 14) | (($dirty2 >> 12) & 112)));
            ComposerKt.sourceInformationMarkerEnd($composer$iv2);
            ComposerKt.sourceInformationMarkerEnd($composer$iv2);
            $composer2.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            $composer3.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            if (ComposerKt.isTraceInProgress()) {
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer3.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Function3<? super SliderState, ? super Composer, ? super Integer, Unit> function34 = function33;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt.SliderImpl.3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i6) {
                    SliderKt.SliderImpl(modifier, state, enabled, interactionSource, function3, function34, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0483  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x04f5  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0501  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0507  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x061e  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x062a  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0630  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0661  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0677  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0701  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void RangeSliderImpl(final Modifier modifier, final RangeSliderState state, final boolean enabled, final MutableInteractionSource startInteractionSource, final MutableInteractionSource endInteractionSource, final Function3<? super RangeSliderState, ? super Composer, ? super Integer, Unit> function3, final Function3<? super RangeSliderState, ? super Composer, ? super Integer, Unit> function32, Function3<? super RangeSliderState, ? super Composer, ? super Integer, Unit> function33, Composer $composer, final int $changed) {
        Modifier modifier2;
        Function0<ComposeUiNode> function0;
        Function0<ComposeUiNode> function02;
        Composer $composer2;
        boolean invalid$iv;
        Object value$iv;
        int compositeKeyHash$iv$iv;
        Function0<ComposeUiNode> function03;
        Composer $this$Layout_u24lambda_u240$iv$iv;
        Function0<ComposeUiNode> function04;
        Composer $this$Layout_u24lambda_u240$iv$iv2;
        int $changed$iv;
        Function3<? super RangeSliderState, ? super Composer, ? super Integer, Unit> function34;
        Composer $composer3 = $composer.startRestartGroup(-1411725677);
        ComposerKt.sourceInformation($composer3, "C(RangeSliderImpl)P(3,6!1,4!1,5)736@32503L7,746@32756L35,747@32824L33,784@34404L2230,749@32863L3771:Slider.kt#uh7d8r");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            modifier2 = modifier;
            $dirty |= $composer3.changed(modifier2) ? 4 : 2;
        } else {
            modifier2 = modifier;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer3.changedInstance(state) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty |= $composer3.changed(enabled) ? 256 : 128;
        }
        if (($changed & 3072) == 0) {
            $dirty |= $composer3.changed(startInteractionSource) ? 2048 : 1024;
        }
        if (($changed & 24576) == 0) {
            $dirty |= $composer3.changed(endInteractionSource) ? 16384 : 8192;
        }
        if ((196608 & $changed) == 0) {
            $dirty |= $composer3.changedInstance(function3) ? 131072 : 65536;
        }
        if ((1572864 & $changed) == 0) {
            $dirty |= $composer3.changedInstance(function32) ? 1048576 : 524288;
        }
        if ((12582912 & $changed) == 0) {
            $dirty |= $composer3.changedInstance(function33) ? 8388608 : 4194304;
        }
        int $dirty2 = $dirty;
        if ((4793491 & $dirty2) != 4793490 || !$composer3.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1411725677, $dirty2, -1, "androidx.compose.material3.RangeSliderImpl (Slider.kt:735)");
            }
            ProvidableCompositionLocal<LayoutDirection> localLayoutDirection = CompositionLocalsKt.getLocalLayoutDirection();
            ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object objConsume = $composer3.consume(localLayoutDirection);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            state.setRtl$material3_release(objConsume == LayoutDirection.Rtl);
            Modifier pressDrag = rangeSliderPressDragModifier(Modifier.INSTANCE, state, startInteractionSource, endInteractionSource, enabled);
            Strings.Companion companion = Strings.INSTANCE;
            final String startContentDescription = Strings_androidKt.m3257getString2EP1pXo(Strings.m3187constructorimpl(androidx.compose.ui.R.string.range_start), $composer3, 0);
            Strings.Companion companion2 = Strings.INSTANCE;
            final String endContentDescription = Strings_androidKt.m3257getString2EP1pXo(Strings.m3187constructorimpl(androidx.compose.ui.R.string.range_end), $composer3, 0);
            Modifier modifier$iv = SizeKt.m860requiredSizeInqDBjuR0$default(InteractiveComponentSizeKt.minimumInteractiveComponentSize(modifier2), ThumbWidth, TrackHeight, 0.0f, 0.0f, 12, null).then(pressDrag);
            ComposerKt.sourceInformationMarkerStart($composer3, 1662324209, "CC(remember):Slider.kt#9igjgp");
            boolean invalid$iv2 = $composer3.changedInstance(state);
            MeasurePolicy value$iv2 = $composer3.rememberedValue();
            if (invalid$iv2 || value$iv2 == Composer.INSTANCE.getEmpty()) {
                value$iv2 = new MeasurePolicy() { // from class: androidx.compose.material3.SliderKt$RangeSliderImpl$2$1
                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    /* JADX INFO: renamed from: measure-3p2s80s */
                    public final MeasureResult mo41measure3p2s80s(MeasureScope $this$Layout, List<? extends Measurable> list, long constraints) {
                        long j = constraints;
                        List<? extends Measurable> list2 = list;
                        int index$iv$iv = 0;
                        int size = list2.size();
                        while (index$iv$iv < size) {
                            Object item$iv$iv = list2.get(index$iv$iv);
                            Measurable it = (Measurable) item$iv$iv;
                            List<? extends Measurable> list3 = list2;
                            if (LayoutIdKt.getLayoutId(it) == RangeSliderComponents.STARTTHUMB) {
                                final Placeable startThumbPlaceable = ((Measurable) item$iv$iv).mo6141measureBRTryo0(j);
                                List<? extends Measurable> list4 = list;
                                int index$iv$iv2 = 0;
                                int size2 = list4.size();
                                while (index$iv$iv2 < size2) {
                                    Object item$iv$iv2 = list4.get(index$iv$iv2);
                                    Measurable it2 = (Measurable) item$iv$iv2;
                                    List<? extends Measurable> list5 = list4;
                                    if (LayoutIdKt.getLayoutId(it2) == RangeSliderComponents.ENDTHUMB) {
                                        final Placeable endThumbPlaceable = ((Measurable) item$iv$iv2).mo6141measureBRTryo0(j);
                                        int size3 = list.size();
                                        for (int index$iv$iv3 = 0; index$iv$iv3 < size3; index$iv$iv3++) {
                                            Object item$iv$iv3 = list.get(index$iv$iv3);
                                            Measurable it3 = (Measurable) item$iv$iv3;
                                            if (LayoutIdKt.getLayoutId(it3) == RangeSliderComponents.TRACK) {
                                                long jM7478offsetNN6EwU$default = ConstraintsKt.m7478offsetNN6EwU$default(constraints, (-(startThumbPlaceable.getWidth() + endThumbPlaceable.getWidth())) / 2, 0, 2, null);
                                                final Placeable trackPlaceable = ((Measurable) item$iv$iv3).mo6141measureBRTryo0(Constraints.m7447copyZbe2FdA(jM7478offsetNN6EwU$default, (11 & 1) != 0 ? Constraints.m7460getMinWidthimpl(jM7478offsetNN6EwU$default) : 0, (11 & 2) != 0 ? Constraints.m7458getMaxWidthimpl(jM7478offsetNN6EwU$default) : 0, (11 & 4) != 0 ? Constraints.m7459getMinHeightimpl(jM7478offsetNN6EwU$default) : 0, (11 & 8) != 0 ? Constraints.m7457getMaxHeightimpl(jM7478offsetNN6EwU$default) : 0));
                                                int sliderWidth = trackPlaceable.getWidth() + ((startThumbPlaceable.getWidth() + endThumbPlaceable.getWidth()) / 2);
                                                int sliderHeight = Math.max(trackPlaceable.getHeight(), Math.max(startThumbPlaceable.getHeight(), endThumbPlaceable.getHeight()));
                                                state.setTrackHeight$material3_release(trackPlaceable.getHeight());
                                                state.setTotalWidth$material3_release(sliderWidth);
                                                state.updateMinMaxPx$material3_release();
                                                final int trackOffsetX = startThumbPlaceable.getWidth() / 2;
                                                final int startThumbOffsetX = MathKt.roundToInt(trackPlaceable.getWidth() * state.getCoercedActiveRangeStartAsFraction$material3_release());
                                                int endCorrection = (startThumbPlaceable.getWidth() - endThumbPlaceable.getWidth()) / 2;
                                                final int endThumbOffsetX = MathKt.roundToInt((trackPlaceable.getWidth() * state.getCoercedActiveRangeEndAsFraction$material3_release()) + endCorrection);
                                                final int trackOffsetY = (sliderHeight - trackPlaceable.getHeight()) / 2;
                                                final int startThumbOffsetY = (sliderHeight - startThumbPlaceable.getHeight()) / 2;
                                                final int endThumbOffsetY = (sliderHeight - endThumbPlaceable.getHeight()) / 2;
                                                return MeasureScope.layout$default($this$Layout, sliderWidth, sliderHeight, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material3.SliderKt$RangeSliderImpl$2$1.1
                                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                    {
                                                        super(1);
                                                    }

                                                    @Override // kotlin.jvm.functions.Function1
                                                    public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                                                        invoke2(placementScope);
                                                        return Unit.INSTANCE;
                                                    }

                                                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                                                    public final void invoke2(Placeable.PlacementScope $this$layout) {
                                                        Placeable.PlacementScope.placeRelative$default($this$layout, trackPlaceable, trackOffsetX, trackOffsetY, 0.0f, 4, null);
                                                        Placeable.PlacementScope.placeRelative$default($this$layout, startThumbPlaceable, startThumbOffsetX, startThumbOffsetY, 0.0f, 4, null);
                                                        Placeable.PlacementScope.placeRelative$default($this$layout, endThumbPlaceable, endThumbOffsetX, endThumbOffsetY, 0.0f, 4, null);
                                                    }
                                                }, 4, null);
                                            }
                                        }
                                        throw new NoSuchElementException("Collection contains no element matching the predicate.");
                                    }
                                    index$iv$iv2++;
                                    j = constraints;
                                    list4 = list5;
                                }
                                throw new NoSuchElementException("Collection contains no element matching the predicate.");
                            }
                            index$iv$iv++;
                            j = constraints;
                            list2 = list3;
                        }
                        throw new NoSuchElementException("Collection contains no element matching the predicate.");
                    }
                };
                $composer3.updateRememberedValue(value$iv2);
            }
            MeasurePolicy measurePolicy$iv = (MeasurePolicy) value$iv2;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerStart($composer3, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
            int compositeKeyHash$iv = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
            CompositionLocalMap localMap$iv = $composer3.getCurrentCompositionLocalMap();
            Modifier materialized$iv = ComposedModifierKt.materializeModifier($composer3, modifier$iv);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int $changed$iv$iv = ((0 << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
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
            Composer $this$Layout_u24lambda_u240$iv = Updater.m3967constructorimpl($composer3);
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv, localMap$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if ($this$Layout_u24lambda_u240$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv))) {
                $this$Layout_u24lambda_u240$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv));
                $this$Layout_u24lambda_u240$iv.apply(Integer.valueOf(compositeKeyHash$iv), setCompositeKeyHash);
            }
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv, materialized$iv, ComposeUiNode.INSTANCE.getSetModifier());
            int i = ($changed$iv$iv >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer3, 2110426496, "C755@33080L46,757@33259L100,751@32893L598,768@33689L44,770@33864L98,764@33504L586,777@34103L79:Slider.kt#uh7d8r");
            Modifier modifierWrapContentWidth$default = SizeKt.wrapContentWidth$default(LayoutIdKt.layoutId(Modifier.INSTANCE, RangeSliderComponents.STARTTHUMB), null, false, 3, null);
            ComposerKt.sourceInformationMarkerStart($composer3, 1176461672, "CC(remember):Slider.kt#9igjgp");
            boolean invalid$iv3 = $composer3.changedInstance(state);
            Object value$iv3 = $composer3.rememberedValue();
            if (invalid$iv3 || value$iv3 == Composer.INSTANCE.getEmpty()) {
                value$iv3 = (Function1) new Function1<IntSize, Unit>() { // from class: androidx.compose.material3.SliderKt$RangeSliderImpl$1$1$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(IntSize intSize) {
                        m2792invokeozmzZPI(intSize.m7680unboximpl());
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke-ozmzZPI, reason: not valid java name */
                    public final void m2792invokeozmzZPI(long it) {
                        state.setStartThumbWidth$material3_release(IntSize.m7676getWidthimpl(it));
                    }
                };
                $composer3.updateRememberedValue(value$iv3);
            }
            ComposerKt.sourceInformationMarkerEnd($composer3);
            Modifier modifierRangeSliderStartThumbSemantics = rangeSliderStartThumbSemantics(OnRemeasuredModifierKt.onSizeChanged(modifierWrapContentWidth$default, (Function1) value$iv3), state, enabled);
            ComposerKt.sourceInformationMarkerStart($composer3, 1176467454, "CC(remember):Slider.kt#9igjgp");
            boolean invalid$iv4 = $composer3.changed(startContentDescription);
            Object value$iv4 = $composer3.rememberedValue();
            if (invalid$iv4 || value$iv4 == Composer.INSTANCE.getEmpty()) {
                value$iv4 = (Function1) new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.SliderKt$RangeSliderImpl$1$2$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                        invoke2(semanticsPropertyReceiver);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(SemanticsPropertyReceiver $this$semantics) {
                        SemanticsPropertiesKt.setContentDescription($this$semantics, startContentDescription);
                    }
                };
                $composer3.updateRememberedValue(value$iv4);
            }
            ComposerKt.sourceInformationMarkerEnd($composer3);
            Modifier modifier$iv2 = FocusableKt.focusable(SemanticsModifierKt.semantics(modifierRangeSliderStartThumbSemantics, true, (Function1) value$iv4), enabled, startInteractionSource);
            ComposerKt.sourceInformationMarkerStart($composer3, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
            Alignment contentAlignment$iv = Alignment.INSTANCE.getTopStart();
            MeasurePolicy measurePolicy$iv2 = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv, false);
            int $changed$iv$iv2 = (0 << 3) & 112;
            ComposerKt.sourceInformationMarkerStart($composer3, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
            int compositeKeyHash$iv$iv2 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
            CompositionLocalMap localMap$iv$iv = $composer3.getCurrentCompositionLocalMap();
            Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer3, modifier$iv2);
            Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
            int $changed$iv$iv$iv = (($changed$iv$iv2 << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
            if (!($composer3.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer3.startReusableNode();
            if ($composer3.getInserting()) {
                function02 = constructor2;
                $composer3.createNode(function02);
            } else {
                function02 = constructor2;
                $composer3.useNode();
            }
            Composer $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3967constructorimpl($composer3);
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash2 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if ($this$Layout_u24lambda_u240$iv$iv3.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv3.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv2))) {
                $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv2));
                $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv2), setCompositeKeyHash2);
            }
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = ($changed$iv$iv$iv >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer3, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            int i3 = ((0 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, 259534201, "C762@33460L17:Slider.kt#uh7d8r");
            function3.invoke(state, $composer3, Integer.valueOf((($dirty2 >> 3) & 14) | (($dirty2 >> 12) & 112)));
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            $composer3.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            Modifier modifierWrapContentWidth$default2 = SizeKt.wrapContentWidth$default(LayoutIdKt.layoutId(Modifier.INSTANCE, RangeSliderComponents.ENDTHUMB), null, false, 3, null);
            ComposerKt.sourceInformationMarkerStart($composer3, 1176481158, "CC(remember):Slider.kt#9igjgp");
            boolean invalid$iv5 = $composer3.changedInstance(state);
            Object value$iv5 = $composer3.rememberedValue();
            if (!invalid$iv5) {
                $composer2 = $composer3;
                if (value$iv5 == Composer.INSTANCE.getEmpty()) {
                }
                ComposerKt.sourceInformationMarkerEnd($composer3);
                Modifier modifierRangeSliderEndThumbSemantics = rangeSliderEndThumbSemantics(OnRemeasuredModifierKt.onSizeChanged(modifierWrapContentWidth$default2, (Function1) value$iv5), state, enabled);
                ComposerKt.sourceInformationMarkerStart($composer3, 1176486812, "CC(remember):Slider.kt#9igjgp");
                invalid$iv = $composer3.changed(endContentDescription);
                Object it$iv = $composer3.rememberedValue();
                if (!invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                    value$iv = (Function1) new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.SliderKt$RangeSliderImpl$1$5$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                            invoke2(semanticsPropertyReceiver);
                            return Unit.INSTANCE;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(SemanticsPropertyReceiver $this$semantics) {
                            SemanticsPropertiesKt.setContentDescription($this$semantics, endContentDescription);
                        }
                    };
                    $composer3.updateRememberedValue(value$iv);
                } else {
                    value$iv = it$iv;
                }
                ComposerKt.sourceInformationMarkerEnd($composer3);
                Modifier modifier$iv3 = FocusableKt.focusable(SemanticsModifierKt.semantics(modifierRangeSliderEndThumbSemantics, true, (Function1) value$iv), enabled, endInteractionSource);
                ComposerKt.sourceInformationMarkerStart($composer3, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                Alignment contentAlignment$iv2 = Alignment.INSTANCE.getTopStart();
                MeasurePolicy measurePolicy$iv3 = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv2, false);
                int $changed$iv$iv3 = (0 << 3) & 112;
                ComposerKt.sourceInformationMarkerStart($composer3, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                CompositionLocalMap localMap$iv$iv2 = $composer3.getCurrentCompositionLocalMap();
                Modifier materialized$iv$iv2 = ComposedModifierKt.materializeModifier($composer3, modifier$iv3);
                Function0<ComposeUiNode> constructor3 = ComposeUiNode.INSTANCE.getConstructor();
                int $changed$iv$iv$iv2 = (($changed$iv$iv3 << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart($composer3, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!($composer3.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                $composer3.startReusableNode();
                if (!$composer3.getInserting()) {
                    function03 = constructor3;
                    $composer3.createNode(function03);
                } else {
                    function03 = constructor3;
                    $composer3.useNode();
                }
                $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer3);
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash3 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if (!$this$Layout_u24lambda_u240$iv$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                    $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                    $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), setCompositeKeyHash3);
                }
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv2, ComposeUiNode.INSTANCE.getSetModifier());
                int i4 = ($changed$iv$iv$iv2 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer3, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                int i5 = ((0 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer3, 260130331, "C775@34061L15:Slider.kt#uh7d8r");
                function32.invoke(state, $composer3, Integer.valueOf((($dirty2 >> 3) & 14) | (($dirty2 >> 15) & 112)));
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer3.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                Modifier modifier$iv4 = LayoutIdKt.layoutId(Modifier.INSTANCE, RangeSliderComponents.TRACK);
                ComposerKt.sourceInformationMarkerStart($composer3, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                Alignment contentAlignment$iv3 = Alignment.INSTANCE.getTopStart();
                MeasurePolicy measurePolicy$iv4 = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv3, false);
                int $changed$iv$iv4 = (6 << 3) & 112;
                ComposerKt.sourceInformationMarkerStart($composer3, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                int compositeKeyHash$iv$iv3 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                CompositionLocalMap localMap$iv$iv3 = $composer3.getCurrentCompositionLocalMap();
                Modifier materialized$iv$iv3 = ComposedModifierKt.materializeModifier($composer3, modifier$iv4);
                Function0<ComposeUiNode> constructor4 = ComposeUiNode.INSTANCE.getConstructor();
                int $changed$iv$iv$iv3 = (($changed$iv$iv4 << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart($composer3, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!($composer3.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                $composer3.startReusableNode();
                if (!$composer3.getInserting()) {
                    function04 = constructor4;
                    $composer3.createNode(function04);
                } else {
                    function04 = constructor4;
                    $composer3.useNode();
                }
                $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3967constructorimpl($composer3);
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv4, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash4 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if ($this$Layout_u24lambda_u240$iv$iv2.getInserting()) {
                    $changed$iv = 6;
                    if (!Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv2.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv3))) {
                    }
                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, materialized$iv$iv3, ComposeUiNode.INSTANCE.getSetModifier());
                    int i6 = ($changed$iv$iv$iv3 >> 6) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer3, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                    BoxScopeInstance boxScopeInstance3 = BoxScopeInstance.INSTANCE;
                    int i7 = (($changed$iv >> 6) & 112) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer3, 260236382, "C777@34168L12:Slider.kt#uh7d8r");
                    function34 = function33;
                    function34.invoke(state, $composer3, Integer.valueOf((($dirty2 >> 3) & 14) | (($dirty2 >> 18) & 112)));
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    $composer3.endNode();
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    $composer2.endNode();
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                } else {
                    $changed$iv = 6;
                }
                $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv3));
                $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv3), setCompositeKeyHash4);
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, materialized$iv$iv3, ComposeUiNode.INSTANCE.getSetModifier());
                int i62 = ($changed$iv$iv$iv3 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer3, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                BoxScopeInstance boxScopeInstance32 = BoxScopeInstance.INSTANCE;
                int i72 = (($changed$iv >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer3, 260236382, "C777@34168L12:Slider.kt#uh7d8r");
                function34 = function33;
                function34.invoke(state, $composer3, Integer.valueOf((($dirty2 >> 3) & 14) | (($dirty2 >> 18) & 112)));
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer3.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer2.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                if (ComposerKt.isTraceInProgress()) {
                }
            } else {
                $composer2 = $composer3;
            }
            value$iv5 = (Function1) new Function1<IntSize, Unit>() { // from class: androidx.compose.material3.SliderKt$RangeSliderImpl$1$4$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(IntSize intSize) {
                    m2793invokeozmzZPI(intSize.m7680unboximpl());
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke-ozmzZPI, reason: not valid java name */
                public final void m2793invokeozmzZPI(long it) {
                    state.setEndThumbWidth$material3_release(IntSize.m7676getWidthimpl(it));
                }
            };
            $composer3.updateRememberedValue(value$iv5);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            Modifier modifierRangeSliderEndThumbSemantics2 = rangeSliderEndThumbSemantics(OnRemeasuredModifierKt.onSizeChanged(modifierWrapContentWidth$default2, (Function1) value$iv5), state, enabled);
            ComposerKt.sourceInformationMarkerStart($composer3, 1176486812, "CC(remember):Slider.kt#9igjgp");
            invalid$iv = $composer3.changed(endContentDescription);
            Object it$iv2 = $composer3.rememberedValue();
            if (invalid$iv) {
                value$iv = (Function1) new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.SliderKt$RangeSliderImpl$1$5$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                        invoke2(semanticsPropertyReceiver);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(SemanticsPropertyReceiver $this$semantics) {
                        SemanticsPropertiesKt.setContentDescription($this$semantics, endContentDescription);
                    }
                };
                $composer3.updateRememberedValue(value$iv);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                Modifier modifier$iv32 = FocusableKt.focusable(SemanticsModifierKt.semantics(modifierRangeSliderEndThumbSemantics2, true, (Function1) value$iv), enabled, endInteractionSource);
                ComposerKt.sourceInformationMarkerStart($composer3, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                Alignment contentAlignment$iv22 = Alignment.INSTANCE.getTopStart();
                MeasurePolicy measurePolicy$iv32 = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv22, false);
                int $changed$iv$iv32 = (0 << 3) & 112;
                ComposerKt.sourceInformationMarkerStart($composer3, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                CompositionLocalMap localMap$iv$iv22 = $composer3.getCurrentCompositionLocalMap();
                Modifier materialized$iv$iv22 = ComposedModifierKt.materializeModifier($composer3, modifier$iv32);
                Function0<ComposeUiNode> constructor32 = ComposeUiNode.INSTANCE.getConstructor();
                int $changed$iv$iv$iv22 = (($changed$iv$iv32 << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart($composer3, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!($composer3.getApplier() instanceof Applier)) {
                }
                $composer3.startReusableNode();
                if (!$composer3.getInserting()) {
                }
                $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer3);
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv32, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv22, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash32 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if (!$this$Layout_u24lambda_u240$iv$iv.getInserting()) {
                }
                $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), setCompositeKeyHash32);
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv22, ComposeUiNode.INSTANCE.getSetModifier());
                int i42 = ($changed$iv$iv$iv22 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer3, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                BoxScopeInstance boxScopeInstance22 = BoxScopeInstance.INSTANCE;
                int i52 = ((0 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer3, 260130331, "C775@34061L15:Slider.kt#uh7d8r");
                function32.invoke(state, $composer3, Integer.valueOf((($dirty2 >> 3) & 14) | (($dirty2 >> 15) & 112)));
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer3.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                Modifier modifier$iv42 = LayoutIdKt.layoutId(Modifier.INSTANCE, RangeSliderComponents.TRACK);
                ComposerKt.sourceInformationMarkerStart($composer3, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                Alignment contentAlignment$iv32 = Alignment.INSTANCE.getTopStart();
                MeasurePolicy measurePolicy$iv42 = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv32, false);
                int $changed$iv$iv42 = (6 << 3) & 112;
                ComposerKt.sourceInformationMarkerStart($composer3, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                int compositeKeyHash$iv$iv32 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                CompositionLocalMap localMap$iv$iv32 = $composer3.getCurrentCompositionLocalMap();
                Modifier materialized$iv$iv32 = ComposedModifierKt.materializeModifier($composer3, modifier$iv42);
                Function0<ComposeUiNode> constructor42 = ComposeUiNode.INSTANCE.getConstructor();
                int $changed$iv$iv$iv32 = (($changed$iv$iv42 << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart($composer3, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!($composer3.getApplier() instanceof Applier)) {
                }
                $composer3.startReusableNode();
                if (!$composer3.getInserting()) {
                }
                $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3967constructorimpl($composer3);
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv42, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv32, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash42 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if ($this$Layout_u24lambda_u240$iv$iv2.getInserting()) {
                }
                $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv32));
                $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv32), setCompositeKeyHash42);
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, materialized$iv$iv32, ComposeUiNode.INSTANCE.getSetModifier());
                int i622 = ($changed$iv$iv$iv32 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer3, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                BoxScopeInstance boxScopeInstance322 = BoxScopeInstance.INSTANCE;
                int i722 = (($changed$iv >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer3, 260236382, "C777@34168L12:Slider.kt#uh7d8r");
                function34 = function33;
                function34.invoke(state, $composer3, Integer.valueOf((($dirty2 >> 3) & 14) | (($dirty2 >> 18) & 112)));
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer3.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer2.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                if (ComposerKt.isTraceInProgress()) {
                }
            }
        } else {
            $composer3.skipToGroupEnd();
            function34 = function33;
            $composer2 = $composer3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Function3<? super RangeSliderState, ? super Composer, ? super Integer, Unit> function35 = function34;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.SliderKt.RangeSliderImpl.3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i8) {
                    SliderKt.RangeSliderImpl(modifier, state, enabled, startInteractionSource, endInteractionSource, function3, function32, function35, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r3v1, types: [kotlin.collections.IntIterator] */
    public static final float snapValueToTick(float current, float[] tickFractions, float minPx, float maxPx) {
        Float fValueOf;
        if (tickFractions.length == 0) {
            fValueOf = null;
        } else {
            float minElem$iv = tickFractions[0];
            int lastIndex$iv = ArraysKt.getLastIndex(tickFractions);
            if (lastIndex$iv == 0) {
                fValueOf = Float.valueOf(minElem$iv);
            } else {
                float minValue$iv = Math.abs(MathHelpersKt.lerp(minPx, maxPx, minElem$iv) - current);
                ?? it = new IntRange(1, lastIndex$iv).iterator();
                while (it.hasNext()) {
                    int i$iv = it.nextInt();
                    float e$iv = tickFractions[i$iv];
                    float v$iv = Math.abs(MathHelpersKt.lerp(minPx, maxPx, e$iv) - current);
                    if (Float.compare(minValue$iv, v$iv) > 0) {
                        minElem$iv = e$iv;
                        minValue$iv = v$iv;
                    }
                }
                fValueOf = Float.valueOf(minElem$iv);
            }
        }
        if (fValueOf == null) {
            return current;
        }
        float $this$snapValueToTick_u24lambda_u2430 = fValueOf.floatValue();
        return MathHelpersKt.lerp(minPx, maxPx, $this$snapValueToTick_u24lambda_u2430);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: awaitSlop-8vUncbI, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object m2787awaitSlop8vUncbI(AwaitPointerEventScope $this$awaitSlop_u2d8vUncbI, long id, int type, Continuation<? super Pair<PointerInputChange, Float>> continuation) {
        SliderKt$awaitSlop$1 sliderKt$awaitSlop$1;
        final Ref.FloatRef initialDelta;
        Object objM3175awaitHorizontalPointerSlopOrCancellationgDDlDlE;
        if (continuation instanceof SliderKt$awaitSlop$1) {
            sliderKt$awaitSlop$1 = (SliderKt$awaitSlop$1) continuation;
            if ((sliderKt$awaitSlop$1.label & Integer.MIN_VALUE) != 0) {
                sliderKt$awaitSlop$1.label -= Integer.MIN_VALUE;
            } else {
                sliderKt$awaitSlop$1 = new SliderKt$awaitSlop$1(continuation);
            }
        }
        SliderKt$awaitSlop$1 sliderKt$awaitSlop$12 = sliderKt$awaitSlop$1;
        Object $result = sliderKt$awaitSlop$12.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (sliderKt$awaitSlop$12.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                initialDelta = new Ref.FloatRef();
                Function2<PointerInputChange, Float, Unit> function2 = new Function2<PointerInputChange, Float, Unit>() { // from class: androidx.compose.material3.SliderKt$awaitSlop$postPointerSlop$1
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(PointerInputChange pointerInputChange, Float f) {
                        invoke(pointerInputChange, f.floatValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(PointerInputChange pointerInput, float offset) {
                        pointerInput.consume();
                        initialDelta.element = offset;
                    }
                };
                sliderKt$awaitSlop$12.L$0 = initialDelta;
                sliderKt$awaitSlop$12.label = 1;
                objM3175awaitHorizontalPointerSlopOrCancellationgDDlDlE = DragGestureDetectorCopyKt.m3175awaitHorizontalPointerSlopOrCancellationgDDlDlE($this$awaitSlop_u2d8vUncbI, id, type, function2, sliderKt$awaitSlop$12);
                if (objM3175awaitHorizontalPointerSlopOrCancellationgDDlDlE == coroutine_suspended) {
                    return coroutine_suspended;
                }
                break;
            case 1:
                initialDelta = (Ref.FloatRef) sliderKt$awaitSlop$12.L$0;
                ResultKt.throwOnFailure($result);
                objM3175awaitHorizontalPointerSlopOrCancellationgDDlDlE = $result;
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        PointerInputChange afterSlopResult = (PointerInputChange) objM3175awaitHorizontalPointerSlopOrCancellationgDDlDlE;
        if (afterSlopResult != null) {
            return TuplesKt.to(afterSlopResult, Boxing.boxFloat(initialDelta.element));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float[] stepsToTickFractions(int steps) {
        if (steps == 0) {
            return new float[0];
        }
        int i = steps + 2;
        float[] fArr = new float[i];
        for (int i2 = 0; i2 < i; i2++) {
            fArr[i2] = i2 / (steps + 1);
        }
        return fArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float scale(float a1, float b1, float x1, float a2, float b2) {
        return MathHelpersKt.lerp(a2, b2, calcFraction(a1, b1, x1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: scale-ziovWd0, reason: not valid java name */
    public static final long m2790scaleziovWd0(float a1, float b1, long x, float a2, float b2) {
        return SliderRange(scale(a1, b1, SliderRange.m2802getStartimpl(x), a2, b2), scale(a1, b1, SliderRange.m2801getEndInclusiveimpl(x), a2, b2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float calcFraction(float a, float b, float pos) {
        return RangesKt.coerceIn(((b - a) > 0.0f ? 1 : ((b - a) == 0.0f ? 0 : -1)) == 0 ? 0.0f : (pos - a) / (b - a), 0.0f, 1.0f);
    }

    private static final Modifier sliderSemantics(Modifier $this$sliderSemantics, final SliderState state, final boolean enabled) {
        return ProgressSemanticsKt.progressSemantics(SemanticsModifierKt.semantics$default($this$sliderSemantics, false, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.SliderKt.sliderSemantics.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                invoke2(semanticsPropertyReceiver);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(SemanticsPropertyReceiver $this$semantics) {
                if (!enabled) {
                    SemanticsPropertiesKt.disabled($this$semantics);
                }
                final SliderState sliderState = state;
                SemanticsPropertiesKt.setProgress$default($this$semantics, null, new Function1<Float, Boolean>() { // from class: androidx.compose.material3.SliderKt.sliderSemantics.1.1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Boolean invoke(Float f) {
                        return invoke(f.floatValue());
                    }

                    public final Boolean invoke(float targetValue) {
                        float newValue = RangesKt.coerceIn(targetValue, sliderState.getValueRange().getStart().floatValue(), sliderState.getValueRange().getEndInclusive().floatValue());
                        boolean z = true;
                        if (sliderState.getSteps() > 0) {
                            float distance = newValue;
                            int i = 0;
                            int steps = sliderState.getSteps() + 1;
                            if (0 <= steps) {
                                while (true) {
                                    float stepValue = MathHelpersKt.lerp(sliderState.getValueRange().getStart().floatValue(), sliderState.getValueRange().getEndInclusive().floatValue(), i / (sliderState.getSteps() + 1));
                                    if (Math.abs(stepValue - newValue) <= distance) {
                                        distance = Math.abs(stepValue - newValue);
                                        newValue = stepValue;
                                    }
                                    if (i == steps) {
                                        break;
                                    }
                                    i++;
                                }
                            }
                        }
                        float resolvedValue = newValue;
                        if (resolvedValue == sliderState.getValue()) {
                            z = false;
                        } else {
                            if (!(resolvedValue == sliderState.getValue())) {
                                Function1<Float, Unit> onValueChange$material3_release = sliderState.getOnValueChange$material3_release();
                                SliderState sliderState2 = sliderState;
                                if (onValueChange$material3_release != null) {
                                    Function1<Float, Unit> onValueChange$material3_release2 = sliderState2.getOnValueChange$material3_release();
                                    if (onValueChange$material3_release2 != null) {
                                        onValueChange$material3_release2.invoke(Float.valueOf(resolvedValue));
                                    }
                                } else {
                                    sliderState2.setValue(resolvedValue);
                                }
                            }
                            Function0<Unit> onValueChangeFinished = sliderState.getOnValueChangeFinished();
                            if (onValueChangeFinished != null) {
                                onValueChangeFinished.invoke();
                            }
                        }
                        return Boolean.valueOf(z);
                    }
                }, 1, null);
            }
        }, 1, null).then(AccessibilityUtilKt.getIncreaseHorizontalSemanticsBounds()), state.getValue(), RangesKt.rangeTo(state.getValueRange().getStart().floatValue(), state.getValueRange().getEndInclusive().floatValue()), state.getSteps());
    }

    private static final Modifier rangeSliderStartThumbSemantics(Modifier $this$rangeSliderStartThumbSemantics, final RangeSliderState state, final boolean enabled) {
        final ClosedFloatingPointRange<Float> closedFloatingPointRangeRangeTo = RangesKt.rangeTo(state.getValueRange().getStart().floatValue(), state.getActiveRangeEnd());
        return ProgressSemanticsKt.progressSemantics(SemanticsModifierKt.semantics$default($this$rangeSliderStartThumbSemantics, false, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.SliderKt.rangeSliderStartThumbSemantics.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                invoke2(semanticsPropertyReceiver);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(SemanticsPropertyReceiver $this$semantics) {
                if (!enabled) {
                    SemanticsPropertiesKt.disabled($this$semantics);
                }
                final ClosedFloatingPointRange<Float> closedFloatingPointRange = closedFloatingPointRangeRangeTo;
                final RangeSliderState rangeSliderState = state;
                SemanticsPropertiesKt.setProgress$default($this$semantics, null, new Function1<Float, Boolean>() { // from class: androidx.compose.material3.SliderKt.rangeSliderStartThumbSemantics.1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Boolean invoke(Float f) {
                        return invoke(f.floatValue());
                    }

                    public final Boolean invoke(float targetValue) {
                        float newValue = RangesKt.coerceIn(targetValue, closedFloatingPointRange.getStart().floatValue(), closedFloatingPointRange.getEndInclusive().floatValue());
                        boolean z = true;
                        if (rangeSliderState.getStartSteps$material3_release() > 0) {
                            float distance = newValue;
                            int i = 0;
                            int startSteps$material3_release = rangeSliderState.getStartSteps$material3_release() + 1;
                            if (0 <= startSteps$material3_release) {
                                while (true) {
                                    float stepValue = MathHelpersKt.lerp(closedFloatingPointRange.getStart().floatValue(), closedFloatingPointRange.getEndInclusive().floatValue(), i / (rangeSliderState.getStartSteps$material3_release() + 1));
                                    if (Math.abs(stepValue - newValue) <= distance) {
                                        distance = Math.abs(stepValue - newValue);
                                        newValue = stepValue;
                                    }
                                    if (i == startSteps$material3_release) {
                                        break;
                                    }
                                    i++;
                                }
                            }
                        }
                        float resolvedValue = newValue;
                        if (resolvedValue == rangeSliderState.getActiveRangeStart()) {
                            z = false;
                        } else {
                            long resolvedRange = SliderKt.SliderRange(resolvedValue, rangeSliderState.getActiveRangeEnd());
                            long activeRange = SliderKt.SliderRange(rangeSliderState.getActiveRangeStart(), rangeSliderState.getActiveRangeEnd());
                            if (!SliderRange.m2800equalsimpl0(resolvedRange, activeRange)) {
                                Function1<SliderRange, Unit> onValueChange$material3_release = rangeSliderState.getOnValueChange$material3_release();
                                RangeSliderState rangeSliderState2 = rangeSliderState;
                                if (onValueChange$material3_release != null) {
                                    Function1<SliderRange, Unit> onValueChange$material3_release2 = rangeSliderState2.getOnValueChange$material3_release();
                                    if (onValueChange$material3_release2 != null) {
                                        onValueChange$material3_release2.invoke(SliderRange.m2797boximpl(resolvedRange));
                                    }
                                } else {
                                    rangeSliderState2.setActiveRangeStart(SliderRange.m2802getStartimpl(resolvedRange));
                                    rangeSliderState.setActiveRangeEnd(SliderRange.m2801getEndInclusiveimpl(resolvedRange));
                                }
                            }
                            Function0<Unit> onValueChangeFinished = rangeSliderState.getOnValueChangeFinished();
                            if (onValueChangeFinished != null) {
                                onValueChangeFinished.invoke();
                            }
                        }
                        return Boolean.valueOf(z);
                    }
                }, 1, null);
            }
        }, 1, null).then(AccessibilityUtilKt.getIncreaseHorizontalSemanticsBounds()), state.getActiveRangeStart(), closedFloatingPointRangeRangeTo, state.getStartSteps$material3_release());
    }

    private static final Modifier rangeSliderEndThumbSemantics(Modifier $this$rangeSliderEndThumbSemantics, final RangeSliderState state, final boolean enabled) {
        final ClosedFloatingPointRange<Float> closedFloatingPointRangeRangeTo = RangesKt.rangeTo(state.getActiveRangeStart(), state.getValueRange().getEndInclusive().floatValue());
        return ProgressSemanticsKt.progressSemantics(SemanticsModifierKt.semantics$default($this$rangeSliderEndThumbSemantics, false, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.SliderKt.rangeSliderEndThumbSemantics.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                invoke2(semanticsPropertyReceiver);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(SemanticsPropertyReceiver $this$semantics) {
                if (!enabled) {
                    SemanticsPropertiesKt.disabled($this$semantics);
                }
                final ClosedFloatingPointRange<Float> closedFloatingPointRange = closedFloatingPointRangeRangeTo;
                final RangeSliderState rangeSliderState = state;
                SemanticsPropertiesKt.setProgress$default($this$semantics, null, new Function1<Float, Boolean>() { // from class: androidx.compose.material3.SliderKt.rangeSliderEndThumbSemantics.1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Boolean invoke(Float f) {
                        return invoke(f.floatValue());
                    }

                    public final Boolean invoke(float targetValue) {
                        float newValue = RangesKt.coerceIn(targetValue, closedFloatingPointRange.getStart().floatValue(), closedFloatingPointRange.getEndInclusive().floatValue());
                        boolean z = true;
                        if (rangeSliderState.getEndSteps$material3_release() > 0) {
                            float distance = newValue;
                            int i = 0;
                            int endSteps$material3_release = rangeSliderState.getEndSteps$material3_release() + 1;
                            if (0 <= endSteps$material3_release) {
                                while (true) {
                                    float stepValue = MathHelpersKt.lerp(closedFloatingPointRange.getStart().floatValue(), closedFloatingPointRange.getEndInclusive().floatValue(), i / (rangeSliderState.getEndSteps$material3_release() + 1));
                                    if (Math.abs(stepValue - newValue) <= distance) {
                                        distance = Math.abs(stepValue - newValue);
                                        newValue = stepValue;
                                    }
                                    if (i == endSteps$material3_release) {
                                        break;
                                    }
                                    i++;
                                }
                            }
                        }
                        float resolvedValue = newValue;
                        if (resolvedValue == rangeSliderState.getActiveRangeEnd()) {
                            z = false;
                        } else {
                            long resolvedRange = SliderKt.SliderRange(rangeSliderState.getActiveRangeStart(), resolvedValue);
                            long activeRange = SliderKt.SliderRange(rangeSliderState.getActiveRangeStart(), rangeSliderState.getActiveRangeEnd());
                            if (!SliderRange.m2800equalsimpl0(resolvedRange, activeRange)) {
                                Function1<SliderRange, Unit> onValueChange$material3_release = rangeSliderState.getOnValueChange$material3_release();
                                RangeSliderState rangeSliderState2 = rangeSliderState;
                                if (onValueChange$material3_release != null) {
                                    Function1<SliderRange, Unit> onValueChange$material3_release2 = rangeSliderState2.getOnValueChange$material3_release();
                                    if (onValueChange$material3_release2 != null) {
                                        onValueChange$material3_release2.invoke(SliderRange.m2797boximpl(resolvedRange));
                                    }
                                } else {
                                    rangeSliderState2.setActiveRangeStart(SliderRange.m2802getStartimpl(resolvedRange));
                                    rangeSliderState.setActiveRangeEnd(SliderRange.m2801getEndInclusiveimpl(resolvedRange));
                                }
                            }
                            Function0<Unit> onValueChangeFinished = rangeSliderState.getOnValueChangeFinished();
                            if (onValueChangeFinished != null) {
                                onValueChangeFinished.invoke();
                            }
                        }
                        return Boolean.valueOf(z);
                    }
                }, 1, null);
            }
        }, 1, null).then(AccessibilityUtilKt.getIncreaseHorizontalSemanticsBounds()), state.getActiveRangeEnd(), closedFloatingPointRangeRangeTo, state.getEndSteps$material3_release());
    }

    /* JADX INFO: renamed from: androidx.compose.material3.SliderKt$sliderTapModifier$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Slider.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/PointerInputScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.material3.SliderKt$sliderTapModifier$1", f = "Slider.kt", i = {}, l = {1627}, m = "invokeSuspend", n = {}, s = {})
    static final class C04971 extends SuspendLambda implements Function2<PointerInputScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ SliderState $state;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C04971(SliderState sliderState, Continuation<? super C04971> continuation) {
            super(2, continuation);
            this.$state = sliderState;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C04971 c04971 = new C04971(this.$state, continuation);
            c04971.L$0 = obj;
            return c04971;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(PointerInputScope pointerInputScope, Continuation<? super Unit> continuation) {
            return ((C04971) create(pointerInputScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    PointerInputScope $this$pointerInput = (PointerInputScope) this.L$0;
                    C00981 c00981 = new C00981(this.$state, null);
                    final SliderState sliderState = this.$state;
                    this.label = 1;
                    if (TapGestureDetectorKt.detectTapGestures$default($this$pointerInput, null, null, c00981, new Function1<Offset, Unit>() { // from class: androidx.compose.material3.SliderKt.sliderTapModifier.1.2
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(Offset offset) {
                            m2796invokek4lQ0M(offset.m4462unboximpl());
                            return Unit.INSTANCE;
                        }

                        /* JADX INFO: renamed from: invoke-k-4lQ0M, reason: not valid java name */
                        public final void m2796invokek4lQ0M(long it) {
                            sliderState.dispatchRawDelta(0.0f);
                            sliderState.getGestureEndAction$material3_release().invoke();
                        }
                    }, this, 3, null) == coroutine_suspended) {
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

        /* JADX INFO: renamed from: androidx.compose.material3.SliderKt$sliderTapModifier$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: Slider.kt */
        @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u008a@"}, d2 = {"<anonymous>", "", "Landroidx/compose/foundation/gestures/PressGestureScope;", "it", "Landroidx/compose/ui/geometry/Offset;"}, k = 3, mv = {1, 8, 0}, xi = 48)
        @DebugMetadata(c = "androidx.compose.material3.SliderKt$sliderTapModifier$1$1", f = "Slider.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class C00981 extends SuspendLambda implements Function3<PressGestureScope, Offset, Continuation<? super Unit>, Object> {
            final /* synthetic */ SliderState $state;
            /* synthetic */ long J$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00981(SliderState sliderState, Continuation<? super C00981> continuation) {
                super(3, continuation);
                this.$state = sliderState;
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Object invoke(PressGestureScope pressGestureScope, Offset offset, Continuation<? super Unit> continuation) {
                return m2795invoked4ec7I(pressGestureScope, offset.m4462unboximpl(), continuation);
            }

            /* JADX INFO: renamed from: invoke-d-4ec7I, reason: not valid java name */
            public final Object m2795invoked4ec7I(PressGestureScope pressGestureScope, long j, Continuation<? super Unit> continuation) {
                C00981 c00981 = new C00981(this.$state, continuation);
                c00981.J$0 = j;
                return c00981.invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                switch (this.label) {
                    case 0:
                        ResultKt.throwOnFailure(obj);
                        long it = this.J$0;
                        this.$state.m2808onPressk4lQ0M$material3_release(it);
                        return Unit.INSTANCE;
                    default:
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }
        }
    }

    private static final Modifier sliderTapModifier(Modifier $this$sliderTapModifier, SliderState state, MutableInteractionSource interactionSource, boolean enabled) {
        if (enabled) {
            return $this$sliderTapModifier.then(new SuspendPointerInputElement(state, interactionSource, null, new SuspendingPointerInputFilterKt$sam$androidx_compose_ui_input_pointer_PointerInputEventHandler$0(new C04971(state, null)), 4, null));
        }
        return $this$sliderTapModifier;
    }

    /* JADX INFO: renamed from: androidx.compose.material3.SliderKt$rangeSliderPressDragModifier$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: Slider.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/PointerInputScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.material3.SliderKt$rangeSliderPressDragModifier$1", f = "Slider.kt", i = {}, l = {1651}, m = "invokeSuspend", n = {}, s = {})
    static final class C04941 extends SuspendLambda implements Function2<PointerInputScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ MutableInteractionSource $endInteractionSource;
        final /* synthetic */ MutableInteractionSource $startInteractionSource;
        final /* synthetic */ RangeSliderState $state;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C04941(RangeSliderState rangeSliderState, MutableInteractionSource mutableInteractionSource, MutableInteractionSource mutableInteractionSource2, Continuation<? super C04941> continuation) {
            super(2, continuation);
            this.$state = rangeSliderState;
            this.$startInteractionSource = mutableInteractionSource;
            this.$endInteractionSource = mutableInteractionSource2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C04941 c04941 = new C04941(this.$state, this.$startInteractionSource, this.$endInteractionSource, continuation);
            c04941.L$0 = obj;
            return c04941;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(PointerInputScope pointerInputScope, Continuation<? super Unit> continuation) {
            return ((C04941) create(pointerInputScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    PointerInputScope $this$pointerInput = (PointerInputScope) this.L$0;
                    RangeSliderLogic rangeSliderLogic = new RangeSliderLogic(this.$state, this.$startInteractionSource, this.$endInteractionSource);
                    this.label = 1;
                    if (CoroutineScopeKt.coroutineScope(new C00941($this$pointerInput, this.$state, rangeSliderLogic, null), this) == coroutine_suspended) {
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

        /* JADX INFO: renamed from: androidx.compose.material3.SliderKt$rangeSliderPressDragModifier$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: Slider.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
        @DebugMetadata(c = "androidx.compose.material3.SliderKt$rangeSliderPressDragModifier$1$1", f = "Slider.kt", i = {}, l = {1652}, m = "invokeSuspend", n = {}, s = {})
        static final class C00941 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ PointerInputScope $$this$pointerInput;
            final /* synthetic */ RangeSliderLogic $rangeSliderLogic;
            final /* synthetic */ RangeSliderState $state;
            private /* synthetic */ Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00941(PointerInputScope pointerInputScope, RangeSliderState rangeSliderState, RangeSliderLogic rangeSliderLogic, Continuation<? super C00941> continuation) {
                super(2, continuation);
                this.$$this$pointerInput = pointerInputScope;
                this.$state = rangeSliderState;
                this.$rangeSliderLogic = rangeSliderLogic;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                C00941 c00941 = new C00941(this.$$this$pointerInput, this.$state, this.$rangeSliderLogic, continuation);
                c00941.L$0 = obj;
                return c00941;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((C00941) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            /* JADX INFO: renamed from: androidx.compose.material3.SliderKt$rangeSliderPressDragModifier$1$1$1, reason: invalid class name and collision with other inner class name */
            /* JADX INFO: compiled from: Slider.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
            @DebugMetadata(c = "androidx.compose.material3.SliderKt$rangeSliderPressDragModifier$1$1$1", f = "Slider.kt", i = {0, 1, 1, 1, 1, 1, 2, 2}, l = {1653, 1665, 1687}, m = "invokeSuspend", n = {"$this$awaitEachGesture", "$this$awaitEachGesture", NotificationCompat.CATEGORY_EVENT, "interaction", "posX", "draggingStart", "interaction", "draggingStart"}, s = {"L$0", "L$0", "L$1", "L$2", "L$3", "L$4", "L$0", "L$1"})
            static final class C00951 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
                final /* synthetic */ CoroutineScope $$this$coroutineScope;
                final /* synthetic */ RangeSliderLogic $rangeSliderLogic;
                final /* synthetic */ RangeSliderState $state;
                private /* synthetic */ Object L$0;
                Object L$1;
                Object L$2;
                Object L$3;
                Object L$4;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C00951(RangeSliderState rangeSliderState, RangeSliderLogic rangeSliderLogic, CoroutineScope coroutineScope, Continuation<? super C00951> continuation) {
                    super(2, continuation);
                    this.$state = rangeSliderState;
                    this.$rangeSliderLogic = rangeSliderLogic;
                    this.$$this$coroutineScope = coroutineScope;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    C00951 c00951 = new C00951(this.$state, this.$rangeSliderLogic, this.$$this$coroutineScope, continuation);
                    c00951.L$0 = obj;
                    return c00951;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, Continuation<? super Unit> continuation) {
                    return ((C00951) create(awaitPointerEventScope, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                /* JADX WARN: Removed duplicated region for block: B:19:0x0090  */
                /* JADX WARN: Removed duplicated region for block: B:20:0x00a1  */
                /* JADX WARN: Removed duplicated region for block: B:23:0x00ba  */
                /* JADX WARN: Removed duplicated region for block: B:26:0x00c0  */
                /* JADX WARN: Removed duplicated region for block: B:32:0x00ef A[RETURN] */
                /* JADX WARN: Removed duplicated region for block: B:33:0x00f0  */
                /* JADX WARN: Removed duplicated region for block: B:36:0x00f8  */
                /* JADX WARN: Removed duplicated region for block: B:58:0x0191 A[RETURN] */
                /* JADX WARN: Removed duplicated region for block: B:59:0x0192  */
                /* JADX WARN: Removed duplicated region for block: B:62:0x01a0 A[Catch: CancellationException -> 0x01b1, TryCatch #0 {CancellationException -> 0x01b1, blocks: (B:60:0x0196, B:62:0x01a0, B:63:0x01a8), top: B:73:0x0196 }] */
                /* JADX WARN: Removed duplicated region for block: B:63:0x01a8 A[Catch: CancellationException -> 0x01b1, TRY_LEAVE, TryCatch #0 {CancellationException -> 0x01b1, blocks: (B:60:0x0196, B:62:0x01a0, B:63:0x01a8), top: B:73:0x0196 }] */
                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final Object invokeSuspend(Object $result) {
                    C00951 c00951;
                    Object $result2;
                    Object $result3;
                    AwaitPointerEventScope $this$awaitEachGesture;
                    PointerInputChange event;
                    Ref.FloatRef posX;
                    Object objM2787awaitSlop8vUncbI;
                    DragInteraction.Start interaction;
                    Object $result4;
                    Object $result5;
                    final Ref.BooleanRef draggingStart;
                    Pair it;
                    Ref.BooleanRef draggingStart2;
                    DragInteraction.Start interaction2;
                    Object objM474horizontalDragjO51t88;
                    Object $result6;
                    DragInteraction.Cancel finishInteraction;
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    switch (this.label) {
                        case 0:
                            ResultKt.throwOnFailure($result);
                            c00951 = this;
                            AwaitPointerEventScope $this$awaitEachGesture2 = (AwaitPointerEventScope) c00951.L$0;
                            c00951.L$0 = $this$awaitEachGesture2;
                            c00951.label = 1;
                            Object objAwaitFirstDown$default = TapGestureDetectorKt.awaitFirstDown$default($this$awaitEachGesture2, false, null, c00951, 2, null);
                            if (objAwaitFirstDown$default == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            $result2 = $result;
                            $result3 = objAwaitFirstDown$default;
                            $this$awaitEachGesture = $this$awaitEachGesture2;
                            event = (PointerInputChange) $result3;
                            DragInteraction.Start interaction3 = new DragInteraction.Start();
                            posX = new Ref.FloatRef();
                            posX.element = !c00951.$state.isRtl$material3_release() ? c00951.$state.getTotalWidth$material3_release() - Offset.m4452getXimpl(event.getPosition()) : Offset.m4452getXimpl(event.getPosition());
                            int compare = c00951.$rangeSliderLogic.compareOffsets(posX.element);
                            Ref.BooleanRef draggingStart3 = new Ref.BooleanRef();
                            draggingStart3.element = compare == 0 ? compare < 0 : c00951.$state.getRawOffsetStart$material3_release() > posX.element;
                            c00951.L$0 = $this$awaitEachGesture;
                            c00951.L$1 = event;
                            c00951.L$2 = interaction3;
                            c00951.L$3 = posX;
                            c00951.L$4 = draggingStart3;
                            c00951.label = 2;
                            objM2787awaitSlop8vUncbI = SliderKt.m2787awaitSlop8vUncbI($this$awaitEachGesture, event.getId(), event.getType(), c00951);
                            if (objM2787awaitSlop8vUncbI != coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            interaction = interaction3;
                            $result4 = objM2787awaitSlop8vUncbI;
                            $result5 = $result2;
                            draggingStart = draggingStart3;
                            it = (Pair) $result4;
                            if (it != null) {
                                RangeSliderState rangeSliderState = c00951.$state;
                                float slop = DragGestureDetectorCopyKt.m3178pointerSlopE8SPZFQ($this$awaitEachGesture.getViewConfiguration(), event.getType());
                                boolean shouldUpdateCapturedThumb = Math.abs(rangeSliderState.getRawOffsetEnd$material3_release() - posX.element) < slop && Math.abs(rangeSliderState.getRawOffsetStart$material3_release() - posX.element) < slop;
                                if (shouldUpdateCapturedThumb) {
                                    float dir = ((Number) it.getSecond()).floatValue();
                                    draggingStart.element = !rangeSliderState.isRtl$material3_release() ? dir >= 0.0f : dir < 0.0f;
                                    posX.element += Offset.m4452getXimpl(PointerEventKt.positionChange((PointerInputChange) it.getFirst()));
                                }
                            }
                            c00951.$rangeSliderLogic.captureThumb(draggingStart.element, posX.element, interaction, c00951.$$this$coroutineScope);
                            try {
                                long id = event.getId();
                                final RangeSliderState rangeSliderState2 = c00951.$state;
                                c00951.L$0 = interaction;
                                c00951.L$1 = draggingStart;
                                c00951.L$2 = null;
                                c00951.L$3 = null;
                                c00951.L$4 = null;
                                c00951.label = 3;
                                objM474horizontalDragjO51t88 = DragGestureDetectorKt.m474horizontalDragjO51t88($this$awaitEachGesture, id, new Function1<PointerInputChange, Unit>() { // from class: androidx.compose.material3.SliderKt$rangeSliderPressDragModifier$1$1$1$finishInteraction$success$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Unit invoke(PointerInputChange pointerInputChange) {
                                        invoke2(pointerInputChange);
                                        return Unit.INSTANCE;
                                    }

                                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                                    public final void invoke2(PointerInputChange it2) {
                                        float deltaX = Offset.m4452getXimpl(PointerEventKt.positionChange(it2));
                                        rangeSliderState2.onDrag$material3_release(draggingStart.element, rangeSliderState2.isRtl$material3_release() ? -deltaX : deltaX);
                                    }
                                }, c00951);
                                break;
                            } catch (CancellationException e) {
                                draggingStart2 = draggingStart;
                                interaction2 = interaction;
                                finishInteraction = new DragInteraction.Cancel(interaction2);
                                draggingStart = draggingStart2;
                                c00951.$state.getGestureEndAction$material3_release().invoke(Boxing.boxBoolean(draggingStart.element));
                                BuildersKt__Builders_commonKt.launch$default(c00951.$$this$coroutineScope, null, null, new AnonymousClass2(c00951.$rangeSliderLogic, draggingStart, finishInteraction, null), 3, null);
                                return Unit.INSTANCE;
                            }
                            if (objM474horizontalDragjO51t88 != coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            $result6 = $result5;
                            $result5 = objM474horizontalDragjO51t88;
                            interaction2 = interaction;
                            try {
                                boolean success = ((Boolean) $result5).booleanValue();
                                finishInteraction = !success ? new DragInteraction.Stop(interaction2) : new DragInteraction.Cancel(interaction2);
                                break;
                            } catch (CancellationException e2) {
                                $result5 = $result6;
                                draggingStart2 = draggingStart;
                                finishInteraction = new DragInteraction.Cancel(interaction2);
                                draggingStart = draggingStart2;
                            }
                            c00951.$state.getGestureEndAction$material3_release().invoke(Boxing.boxBoolean(draggingStart.element));
                            BuildersKt__Builders_commonKt.launch$default(c00951.$$this$coroutineScope, null, null, new AnonymousClass2(c00951.$rangeSliderLogic, draggingStart, finishInteraction, null), 3, null);
                            return Unit.INSTANCE;
                        case 1:
                            c00951 = this;
                            $result3 = $result;
                            AwaitPointerEventScope $this$awaitEachGesture3 = (AwaitPointerEventScope) c00951.L$0;
                            ResultKt.throwOnFailure($result3);
                            $this$awaitEachGesture = $this$awaitEachGesture3;
                            $result2 = $result3;
                            event = (PointerInputChange) $result3;
                            DragInteraction.Start interaction32 = new DragInteraction.Start();
                            posX = new Ref.FloatRef();
                            posX.element = !c00951.$state.isRtl$material3_release() ? c00951.$state.getTotalWidth$material3_release() - Offset.m4452getXimpl(event.getPosition()) : Offset.m4452getXimpl(event.getPosition());
                            int compare2 = c00951.$rangeSliderLogic.compareOffsets(posX.element);
                            Ref.BooleanRef draggingStart32 = new Ref.BooleanRef();
                            draggingStart32.element = compare2 == 0 ? compare2 < 0 : c00951.$state.getRawOffsetStart$material3_release() > posX.element;
                            c00951.L$0 = $this$awaitEachGesture;
                            c00951.L$1 = event;
                            c00951.L$2 = interaction32;
                            c00951.L$3 = posX;
                            c00951.L$4 = draggingStart32;
                            c00951.label = 2;
                            objM2787awaitSlop8vUncbI = SliderKt.m2787awaitSlop8vUncbI($this$awaitEachGesture, event.getId(), event.getType(), c00951);
                            if (objM2787awaitSlop8vUncbI != coroutine_suspended) {
                            }
                            break;
                        case 2:
                            c00951 = this;
                            $result4 = $result;
                            draggingStart = (Ref.BooleanRef) c00951.L$4;
                            posX = (Ref.FloatRef) c00951.L$3;
                            interaction = (DragInteraction.Start) c00951.L$2;
                            event = (PointerInputChange) c00951.L$1;
                            $this$awaitEachGesture = (AwaitPointerEventScope) c00951.L$0;
                            ResultKt.throwOnFailure($result4);
                            $result5 = $result4;
                            it = (Pair) $result4;
                            if (it != null) {
                            }
                            c00951.$rangeSliderLogic.captureThumb(draggingStart.element, posX.element, interaction, c00951.$$this$coroutineScope);
                            long id2 = event.getId();
                            final RangeSliderState rangeSliderState22 = c00951.$state;
                            c00951.L$0 = interaction;
                            c00951.L$1 = draggingStart;
                            c00951.L$2 = null;
                            c00951.L$3 = null;
                            c00951.L$4 = null;
                            c00951.label = 3;
                            objM474horizontalDragjO51t88 = DragGestureDetectorKt.m474horizontalDragjO51t88($this$awaitEachGesture, id2, new Function1<PointerInputChange, Unit>() { // from class: androidx.compose.material3.SliderKt$rangeSliderPressDragModifier$1$1$1$finishInteraction$success$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(PointerInputChange pointerInputChange) {
                                    invoke2(pointerInputChange);
                                    return Unit.INSTANCE;
                                }

                                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                                public final void invoke2(PointerInputChange it2) {
                                    float deltaX = Offset.m4452getXimpl(PointerEventKt.positionChange(it2));
                                    rangeSliderState22.onDrag$material3_release(draggingStart.element, rangeSliderState22.isRtl$material3_release() ? -deltaX : deltaX);
                                }
                            }, c00951);
                            if (objM474horizontalDragjO51t88 != coroutine_suspended) {
                            }
                            break;
                        case 3:
                            c00951 = this;
                            $result5 = $result;
                            draggingStart2 = (Ref.BooleanRef) c00951.L$1;
                            interaction2 = (DragInteraction.Start) c00951.L$0;
                            try {
                                ResultKt.throwOnFailure($result5);
                                draggingStart = draggingStart2;
                                $result6 = $result5;
                                boolean success2 = ((Boolean) $result5).booleanValue();
                                if (!success2) {
                                }
                                break;
                            } catch (CancellationException e3) {
                                finishInteraction = new DragInteraction.Cancel(interaction2);
                                draggingStart = draggingStart2;
                                c00951.$state.getGestureEndAction$material3_release().invoke(Boxing.boxBoolean(draggingStart.element));
                                BuildersKt__Builders_commonKt.launch$default(c00951.$$this$coroutineScope, null, null, new AnonymousClass2(c00951.$rangeSliderLogic, draggingStart, finishInteraction, null), 3, null);
                                return Unit.INSTANCE;
                            }
                            c00951.$state.getGestureEndAction$material3_release().invoke(Boxing.boxBoolean(draggingStart.element));
                            BuildersKt__Builders_commonKt.launch$default(c00951.$$this$coroutineScope, null, null, new AnonymousClass2(c00951.$rangeSliderLogic, draggingStart, finishInteraction, null), 3, null);
                            return Unit.INSTANCE;
                        default:
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                }

                /* JADX INFO: renamed from: androidx.compose.material3.SliderKt$rangeSliderPressDragModifier$1$1$1$2, reason: invalid class name */
                /* JADX INFO: compiled from: Slider.kt */
                @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
                @DebugMetadata(c = "androidx.compose.material3.SliderKt$rangeSliderPressDragModifier$1$1$1$2", f = "Slider.kt", i = {}, l = {1705}, m = "invokeSuspend", n = {}, s = {})
                static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                    final /* synthetic */ Ref.BooleanRef $draggingStart;
                    final /* synthetic */ DragInteraction $finishInteraction;
                    final /* synthetic */ RangeSliderLogic $rangeSliderLogic;
                    int label;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    AnonymousClass2(RangeSliderLogic rangeSliderLogic, Ref.BooleanRef booleanRef, DragInteraction dragInteraction, Continuation<? super AnonymousClass2> continuation) {
                        super(2, continuation);
                        this.$rangeSliderLogic = rangeSliderLogic;
                        this.$draggingStart = booleanRef;
                        this.$finishInteraction = dragInteraction;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                        return new AnonymousClass2(this.$rangeSliderLogic, this.$draggingStart, this.$finishInteraction, continuation);
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
                                this.label = 1;
                                if (this.$rangeSliderLogic.activeInteraction(this.$draggingStart.element).emit(this.$finishInteraction, this) == coroutine_suspended) {
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
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object $result) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                switch (this.label) {
                    case 0:
                        ResultKt.throwOnFailure($result);
                        CoroutineScope $this$coroutineScope = (CoroutineScope) this.L$0;
                        this.label = 1;
                        if (ForEachGestureKt.awaitEachGesture(this.$$this$pointerInput, new C00951(this.$state, this.$rangeSliderLogic, $this$coroutineScope, null), this) == coroutine_suspended) {
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
    }

    private static final Modifier rangeSliderPressDragModifier(Modifier $this$rangeSliderPressDragModifier, RangeSliderState state, MutableInteractionSource startInteractionSource, MutableInteractionSource endInteractionSource, boolean enabled) {
        if (enabled) {
            return $this$rangeSliderPressDragModifier.then(new SuspendPointerInputElement(null, null, new Object[]{startInteractionSource, endInteractionSource, state}, new SuspendingPointerInputFilterKt$sam$androidx_compose_ui_input_pointer_PointerInputEventHandler$0(new C04941(state, startInteractionSource, endInteractionSource, null)), 3, null));
        }
        return $this$rangeSliderPressDragModifier;
    }

    public static final float getTrackHeight() {
        return TrackHeight;
    }

    public static final float getThumbWidth() {
        return ThumbWidth;
    }

    public static final long SliderRange(float start, float endInclusive) {
        boolean z = true;
        boolean isUnspecified = Float.isNaN(start) && Float.isNaN(endInclusive);
        if (!isUnspecified && start > ((double) endInclusive) + SliderRangeTolerance) {
            z = false;
        }
        if (!z) {
            throw new IllegalArgumentException(("start(" + start + ") must be <= endInclusive(" + endInclusive + ')').toString());
        }
        long v1$iv = Float.floatToRawIntBits(start);
        long v2$iv = Float.floatToRawIntBits(endInclusive);
        return SliderRange.m2798constructorimpl((v1$iv << 32) | (4294967295L & v2$iv));
    }

    public static final long SliderRange(ClosedFloatingPointRange<Float> closedFloatingPointRange) {
        float start = closedFloatingPointRange.getStart().floatValue();
        float endInclusive = closedFloatingPointRange.getEndInclusive().floatValue();
        boolean z = true;
        boolean isUnspecified = Float.isNaN(start) && Float.isNaN(endInclusive);
        if (!isUnspecified && start > ((double) endInclusive) + SliderRangeTolerance) {
            z = false;
        }
        if (!z) {
            throw new IllegalArgumentException(("ClosedFloatingPointRange<Float>.start(" + start + ") must be <= ClosedFloatingPoint.endInclusive(" + endInclusive + ')').toString());
        }
        long v1$iv = Float.floatToRawIntBits(start);
        long v2$iv = Float.floatToRawIntBits(endInclusive);
        return SliderRange.m2798constructorimpl((v1$iv << 32) | (4294967295L & v2$iv));
    }

    /* JADX INFO: renamed from: isSpecified-If1S1O4, reason: not valid java name */
    public static final boolean m2788isSpecifiedIf1S1O4(long $this$isSpecified) {
        return $this$isSpecified != SliderRange.INSTANCE.m2807getUnspecifiedFYbKRX4();
    }
}
