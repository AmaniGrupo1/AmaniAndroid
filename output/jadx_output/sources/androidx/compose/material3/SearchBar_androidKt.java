package androidx.compose.material3;

import android.content.res.Configuration;
import androidx.activity.BackEventCompat;
import androidx.activity.compose.BackHandlerKt;
import androidx.activity.compose.PredictiveBackHandlerKt;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.ExitTransition;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.foundation.MutatorMutex;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsetsPaddingKt;
import androidx.compose.foundation.shape.GenericShape;
import androidx.compose.foundation.text.selection.SelectionColors;
import androidx.compose.material3.internal.MutableWindowInsets;
import androidx.compose.material3.tokens.MotionTokens;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.ZIndexModifierKt;
import androidx.compose.ui.geometry.CornerRadiusKt;
import androidx.compose.ui.geometry.RoundRectKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.util.MathHelpersKt;
import androidx.core.app.NotificationCompat;
import androidx.media3.common.C;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.extractor.ts.PsExtractor;
import androidx.profileinstaller.ProfileVerifier;
import com.google.android.gms.actions.SearchIntents;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: SearchBar.android.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000¾\u0001\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\u001a\u0091\u0001\u0010,\u001a\u00020-2\u0011\u0010.\u001a\r\u0012\u0004\u0012\u00020-0/¢\u0006\u0002\b02\u0006\u00101\u001a\u0002022\u0012\u00103\u001a\u000e\u0012\u0004\u0012\u000202\u0012\u0004\u0012\u00020-042\b\b\u0002\u00105\u001a\u0002062\b\b\u0002\u00107\u001a\u0002082\b\b\u0002\u00109\u001a\u00020:2\b\b\u0002\u0010;\u001a\u00020\u00152\b\b\u0002\u0010<\u001a\u00020\u00152\u001c\u0010=\u001a\u0018\u0012\u0004\u0012\u00020>\u0012\u0004\u0012\u00020-04¢\u0006\u0002\b0¢\u0006\u0002\b?H\u0007ø\u0001\u0000¢\u0006\u0004\b@\u0010A\u001a\u0089\u0002\u0010,\u001a\u00020-2\u0006\u0010B\u001a\u00020\u001a2\u0012\u0010C\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020-042\u0012\u0010D\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020-042\u0006\u0010E\u001a\u0002022\u0012\u0010F\u001a\u000e\u0012\u0004\u0012\u000202\u0012\u0004\u0012\u00020-042\b\b\u0002\u00105\u001a\u0002062\b\b\u0002\u0010G\u001a\u0002022\u0015\b\u0002\u0010H\u001a\u000f\u0012\u0004\u0012\u00020-\u0018\u00010/¢\u0006\u0002\b02\u0015\b\u0002\u0010I\u001a\u000f\u0012\u0004\u0012\u00020-\u0018\u00010/¢\u0006\u0002\b02\u0015\b\u0002\u0010J\u001a\u000f\u0012\u0004\u0012\u00020-\u0018\u00010/¢\u0006\u0002\b02\b\b\u0002\u00107\u001a\u0002082\b\b\u0002\u00109\u001a\u00020:2\b\b\u0002\u0010;\u001a\u00020\u00152\b\b\u0002\u0010<\u001a\u00020\u00152\n\b\u0002\u0010K\u001a\u0004\u0018\u00010L2\u001c\u0010=\u001a\u0018\u0012\u0004\u0012\u00020>\u0012\u0004\u0012\u00020-04¢\u0006\u0002\b0¢\u0006\u0002\b?H\u0007ø\u0001\u0000¢\u0006\u0004\bM\u0010N\u001a\u009b\u0001\u0010O\u001a\u00020-2\u0011\u0010.\u001a\r\u0012\u0004\u0012\u00020-0/¢\u0006\u0002\b02\u0006\u00101\u001a\u0002022\u0012\u00103\u001a\u000e\u0012\u0004\u0012\u000202\u0012\u0004\u0012\u00020-042\b\b\u0002\u00105\u001a\u0002062\b\b\u0002\u00107\u001a\u0002082\b\b\u0002\u00109\u001a\u00020:2\b\b\u0002\u0010;\u001a\u00020\u00152\b\b\u0002\u0010<\u001a\u00020\u00152\b\b\u0002\u0010P\u001a\u00020Q2\u001c\u0010=\u001a\u0018\u0012\u0004\u0012\u00020>\u0012\u0004\u0012\u00020-04¢\u0006\u0002\b0¢\u0006\u0002\b?H\u0007ø\u0001\u0000¢\u0006\u0004\bR\u0010S\u001a\u0093\u0002\u0010O\u001a\u00020-2\u0006\u0010B\u001a\u00020\u001a2\u0012\u0010C\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020-042\u0012\u0010D\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020-042\u0006\u0010E\u001a\u0002022\u0012\u0010F\u001a\u000e\u0012\u0004\u0012\u000202\u0012\u0004\u0012\u00020-042\b\b\u0002\u00105\u001a\u0002062\b\b\u0002\u0010G\u001a\u0002022\u0015\b\u0002\u0010H\u001a\u000f\u0012\u0004\u0012\u00020-\u0018\u00010/¢\u0006\u0002\b02\u0015\b\u0002\u0010I\u001a\u000f\u0012\u0004\u0012\u00020-\u0018\u00010/¢\u0006\u0002\b02\u0015\b\u0002\u0010J\u001a\u000f\u0012\u0004\u0012\u00020-\u0018\u00010/¢\u0006\u0002\b02\b\b\u0002\u00107\u001a\u0002082\b\b\u0002\u00109\u001a\u00020:2\b\b\u0002\u0010;\u001a\u00020\u00152\b\b\u0002\u0010<\u001a\u00020\u00152\b\b\u0002\u0010P\u001a\u00020Q2\n\b\u0002\u0010K\u001a\u0004\u0018\u00010L2\u001c\u0010=\u001a\u0018\u0012\u0004\u0012\u00020>\u0012\u0004\u0012\u00020-04¢\u0006\u0002\b0¢\u0006\u0002\b?H\u0007ø\u0001\u0000¢\u0006\u0004\bT\u0010U\u001a»\u0001\u0010V\u001a\u00020-2\u0012\u0010W\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020Y0X2\u0006\u0010Z\u001a\u00020[2\u000e\u0010\\\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010^0]2\u000e\u0010_\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010^0]2\b\b\u0002\u00105\u001a\u0002062\u0011\u0010.\u001a\r\u0012\u0004\u0012\u00020-0/¢\u0006\u0002\b02\b\b\u0002\u00107\u001a\u0002082\b\b\u0002\u00109\u001a\u00020:2\b\b\u0002\u0010;\u001a\u00020\u00152\b\b\u0002\u0010<\u001a\u00020\u00152\b\b\u0002\u0010P\u001a\u00020Q2\u001c\u0010=\u001a\u0018\u0012\u0004\u0012\u00020>\u0012\u0004\u0012\u00020-04¢\u0006\u0002\b0¢\u0006\u0002\b?H\u0001ø\u0001\u0000¢\u0006\u0004\b`\u0010a\u001a\u0094\u0001\u0010b\u001a\u00020-2\u0012\u0010W\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020Y0X2\u0006\u0010Z\u001a\u00020[2\u000e\u0010\\\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010^0]2\u000e\u0010_\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010^0]2\u0006\u00105\u001a\u0002062\u0006\u0010P\u001a\u00020Q2\u0011\u0010.\u001a\r\u0012\u0004\u0012\u00020-0/¢\u0006\u0002\b02\u0011\u0010c\u001a\r\u0012\u0004\u0012\u00020-0/¢\u0006\u0002\b02\u0013\u0010=\u001a\u000f\u0012\u0004\u0012\u00020-\u0018\u00010/¢\u0006\u0002\b0H\u0003¢\u0006\u0002\u0010d\u001a\"\u0010e\u001a\u00020\u00072\b\u0010_\u001a\u0004\u0018\u00010^2\u0006\u0010f\u001a\u00020\u00072\u0006\u0010Z\u001a\u00020\u0007H\u0002\u001aD\u0010g\u001a\u00020\u00012\u0006\u0010h\u001a\u00020i2\u0006\u0010j\u001a\u00020\u00012\b\u0010_\u001a\u0004\u0018\u00010^2\u0006\u0010k\u001a\u00020l2\u0006\u0010f\u001a\u00020\u00072\u0006\u0010m\u001a\u00020\u0007H\u0002ø\u0001\u0000¢\u0006\u0004\bn\u0010o\u001aN\u0010p\u001a\u00020\u00012\u0006\u0010h\u001a\u00020i2\u0006\u0010j\u001a\u00020\u00012\b\u0010_\u001a\u0004\u0018\u00010^2\b\u0010\\\u001a\u0004\u0018\u00010^2\u0006\u0010q\u001a\u00020\u00012\u0006\u0010r\u001a\u00020\u00012\u0006\u0010m\u001a\u00020\u0007H\u0002ø\u0001\u0000¢\u0006\u0004\bs\u0010t\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000\"\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000\"\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000\"\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000\"\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\t0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000\"\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u0013\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\"\u0016\u0010\u0014\u001a\u00020\u0015X\u0080\u0004¢\u0006\n\n\u0002\u0010\u0018\u001a\u0004\b\u0016\u0010\u0017\"\u000e\u0010\u0019\u001a\u00020\u001aX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001b\u001a\u00020\u001aX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001c\u001a\u00020\u001aX\u0082T¢\u0006\u0002\n\u0000\"\u0016\u0010\u001d\u001a\u00020\u0015X\u0082\u0004¢\u0006\n\n\u0002\u0010\u0018\u0012\u0004\b\u001e\u0010\u001f\"\u0010\u0010 \u001a\u00020\u0015X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0018\"\u0010\u0010!\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0018\"\u0016\u0010\"\u001a\u00020\u0015X\u0080\u0004¢\u0006\n\n\u0002\u0010\u0018\u001a\u0004\b#\u0010\u0017\"\u000e\u0010$\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\"\u0010\u0010%\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0018\"\u0010\u0010&\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0018\"\u000e\u0010'\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\"\u0016\u0010(\u001a\u00020\u0015X\u0080\u0004¢\u0006\n\n\u0002\u0010\u0018\u001a\u0004\b)\u0010\u0017\"\u000e\u0010*\u001a\u00020+X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u0006u²\u0006\n\u0010v\u001a\u000202X\u008a\u0084\u0002²\u0006\n\u0010w\u001a\u000202X\u008a\u0084\u0002"}, d2 = {"AnimationDelayMillis", "", "AnimationEnterDurationMillis", "AnimationEnterEasing", "Landroidx/compose/animation/core/CubicBezierEasing;", "AnimationEnterFloatSpec", "Landroidx/compose/animation/core/FiniteAnimationSpec;", "", "AnimationEnterSizeSpec", "Landroidx/compose/ui/unit/IntSize;", "AnimationExitDurationMillis", "AnimationExitEasing", "AnimationExitFloatSpec", "AnimationExitSizeSpec", "AnimationPredictiveBackExitFloatSpec", "DockedEnterTransition", "Landroidx/compose/animation/EnterTransition;", "DockedExitTransition", "Landroidx/compose/animation/ExitTransition;", "DockedExpandedTableMaxHeightScreenRatio", "DockedExpandedTableMinHeight", "Landroidx/compose/ui/unit/Dp;", "getDockedExpandedTableMinHeight", "()F", "F", "LayoutIdInputField", "", "LayoutIdSearchContent", "LayoutIdSurface", "SearchBarCornerRadius", "getSearchBarCornerRadius$annotations", "()V", "SearchBarIconOffsetX", "SearchBarMaxWidth", "SearchBarMinWidth", "getSearchBarMinWidth", "SearchBarPredictiveBackMaxOffsetXRatio", "SearchBarPredictiveBackMaxOffsetY", "SearchBarPredictiveBackMinMargin", "SearchBarPredictiveBackMinScale", "SearchBarVerticalPadding", "getSearchBarVerticalPadding", "UnspecifiedTextFieldColors", "Landroidx/compose/material3/TextFieldColors;", "DockedSearchBar", "", "inputField", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "expanded", "", "onExpandedChange", "Lkotlin/Function1;", "modifier", "Landroidx/compose/ui/Modifier;", "shape", "Landroidx/compose/ui/graphics/Shape;", "colors", "Landroidx/compose/material3/SearchBarColors;", "tonalElevation", "shadowElevation", "content", "Landroidx/compose/foundation/layout/ColumnScope;", "Lkotlin/ExtensionFunctionType;", "DockedSearchBar-EQC0FA8", "(Lkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", SearchIntents.EXTRA_QUERY, "onQueryChange", "onSearch", "active", "onActiveChange", "enabled", "placeholder", "leadingIcon", "trailingIcon", "interactionSource", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "DockedSearchBar-eWTbjVg", "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V", "SearchBar", "windowInsets", "Landroidx/compose/foundation/layout/WindowInsets;", "SearchBar-Y92LkZI", "(Lkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "SearchBar-WuY5d9Q", "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V", "SearchBarImpl", "animationProgress", "Landroidx/compose/animation/core/Animatable;", "Landroidx/compose/animation/core/AnimationVector1D;", "finalBackProgress", "Landroidx/compose/runtime/MutableFloatState;", "firstBackEvent", "Landroidx/compose/runtime/MutableState;", "Landroidx/activity/BackEventCompat;", "currentBackEvent", "SearchBarImpl-j1jLAyQ", "(Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V", "SearchBarLayout", "surface", "(Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "calculatePredictiveBackMultiplier", NotificationCompat.CATEGORY_PROGRESS, "calculatePredictiveBackOffsetX", "constraints", "Landroidx/compose/ui/unit/Constraints;", "minMargin", "layoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "predictiveBackMultiplier", "calculatePredictiveBackOffsetX-rOvwMX4", "(JILandroidx/activity/BackEventCompat;Landroidx/compose/ui/unit/LayoutDirection;FF)I", "calculatePredictiveBackOffsetY", "height", "maxOffsetY", "calculatePredictiveBackOffsetY-dzo92Q0", "(JILandroidx/activity/BackEventCompat;Landroidx/activity/BackEventCompat;IIF)I", "material3_release", "useFullScreenShape", "showContent"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class SearchBar_androidKt {
    private static final int AnimationDelayMillis = 100;
    private static final int AnimationEnterDurationMillis = 600;
    private static final CubicBezierEasing AnimationEnterEasing;
    private static final FiniteAnimationSpec<Float> AnimationEnterFloatSpec;
    private static final FiniteAnimationSpec<IntSize> AnimationEnterSizeSpec;
    private static final int AnimationExitDurationMillis = 350;
    private static final CubicBezierEasing AnimationExitEasing;
    private static final FiniteAnimationSpec<Float> AnimationExitFloatSpec;
    private static final FiniteAnimationSpec<IntSize> AnimationExitSizeSpec;
    private static final FiniteAnimationSpec<Float> AnimationPredictiveBackExitFloatSpec;
    private static final EnterTransition DockedEnterTransition;
    private static final ExitTransition DockedExitTransition;
    private static final float DockedExpandedTableMaxHeightScreenRatio = 0.6666667f;
    private static final float DockedExpandedTableMinHeight;
    private static final String LayoutIdInputField = "InputField";
    private static final String LayoutIdSearchContent = "Content";
    private static final String LayoutIdSurface = "Surface";
    private static final float SearchBarCornerRadius;
    private static final float SearchBarIconOffsetX;
    private static final float SearchBarMaxWidth;
    private static final float SearchBarMinWidth;
    private static final float SearchBarPredictiveBackMaxOffsetXRatio = 0.05f;
    private static final float SearchBarPredictiveBackMaxOffsetY;
    private static final float SearchBarPredictiveBackMinMargin;
    private static final float SearchBarPredictiveBackMinScale = 0.9f;
    private static final float SearchBarVerticalPadding;
    private static final TextFieldColors UnspecifiedTextFieldColors = new TextFieldColors(Color.INSTANCE.m4733getUnspecified0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU(), new SelectionColors(Color.INSTANCE.m4733getUnspecified0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU(), null), Color.INSTANCE.m4733getUnspecified0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU(), Color.INSTANCE.m4733getUnspecified0d7_KjU(), null);

    private static /* synthetic */ void getSearchBarCornerRadius$annotations() {
    }

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
    /* JADX INFO: renamed from: SearchBar-Y92LkZI, reason: not valid java name */
    public static final void m2709SearchBarY92LkZI(final Function2<? super Composer, ? super Integer, Unit> function2, boolean expanded, final Function1<? super Boolean, Unit> function1, Modifier modifier, Shape shape, SearchBarColors colors, float tonalElevation, float shadowElevation, WindowInsets windowInsets, final Function3<? super ColumnScope, ? super Composer, ? super Integer, Unit> function3, Composer $composer, final int $changed, final int i) {
        Function2<? super Composer, ? super Integer, Unit> function22;
        Modifier modifier2;
        Shape shape2;
        SearchBarColors searchBarColors;
        float f;
        float f2;
        WindowInsets windowInsets2;
        int $dirty;
        Shape shape3;
        int i2;
        SearchBarColors colors2;
        WindowInsets windowInsets3;
        Modifier modifier3;
        SearchBarColors colors3;
        float tonalElevation2;
        float shadowElevation2;
        Shape shape4;
        int $dirty2;
        Object value$iv;
        Object value$iv2;
        Object value$iv3;
        MutableState firstBackEvent;
        Object value$iv4;
        Modifier modifier4;
        SearchBarColors colors4;
        int $dirty3;
        String str;
        MutableFloatState finalBackProgress;
        Shape shape5;
        Object value$iv5;
        Object value$iv6;
        Composer $composer2;
        final Shape shape6;
        final SearchBarColors colors5;
        final float shadowElevation3;
        final WindowInsets windowInsets4;
        final float tonalElevation3;
        final Modifier modifier5;
        final boolean z = expanded;
        Composer $composer3 = $composer.startRestartGroup(1444649673);
        ComposerKt.sourceInformation($composer3, "C(SearchBar)P(3,2,5,4,7!1,8:c#ui.unit.Dp,6:c#ui.unit.Dp,9)171@8255L15,172@8320L8,175@8501L12,178@8596L64,179@8689L43,180@8758L51,181@8837L51,183@8919L638,183@8894L663,199@9582L27,200@9656L1062,200@9614L1104,226@10724L458:SearchBar.android.kt#uh7d8r");
        int $dirty4 = $changed;
        if ((i & 1) != 0) {
            $dirty4 |= 6;
            function22 = function2;
        } else if (($changed & 6) == 0) {
            function22 = function2;
            $dirty4 |= $composer3.changedInstance(function22) ? 4 : 2;
        } else {
            function22 = function2;
        }
        if ((i & 2) != 0) {
            $dirty4 |= 48;
        } else if (($changed & 48) == 0) {
            $dirty4 |= $composer3.changed(z) ? 32 : 16;
        }
        if ((i & 4) != 0) {
            $dirty4 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty4 |= $composer3.changedInstance(function1) ? 256 : 128;
        }
        int i3 = i & 8;
        if (i3 != 0) {
            $dirty4 |= 3072;
            modifier2 = modifier;
        } else if (($changed & 3072) == 0) {
            modifier2 = modifier;
            $dirty4 |= $composer3.changed(modifier2) ? 2048 : 1024;
        } else {
            modifier2 = modifier;
        }
        if (($changed & 24576) == 0) {
            if ((i & 16) == 0) {
                shape2 = shape;
                int i4 = $composer3.changed(shape2) ? 16384 : 8192;
                $dirty4 |= i4;
            } else {
                shape2 = shape;
            }
            $dirty4 |= i4;
        } else {
            shape2 = shape;
        }
        if ((196608 & $changed) == 0) {
            if ((i & 32) == 0) {
                searchBarColors = colors;
                int i5 = $composer3.changed(searchBarColors) ? 131072 : 65536;
                $dirty4 |= i5;
            } else {
                searchBarColors = colors;
            }
            $dirty4 |= i5;
        } else {
            searchBarColors = colors;
        }
        int i6 = i & 64;
        if (i6 != 0) {
            $dirty4 |= 1572864;
            f = tonalElevation;
        } else if ((1572864 & $changed) == 0) {
            f = tonalElevation;
            $dirty4 |= $composer3.changed(f) ? 1048576 : 524288;
        } else {
            f = tonalElevation;
        }
        int i7 = i & 128;
        if (i7 != 0) {
            $dirty4 |= 12582912;
            f2 = shadowElevation;
        } else if (($changed & 12582912) == 0) {
            f2 = shadowElevation;
            $dirty4 |= $composer3.changed(f2) ? 8388608 : 4194304;
        } else {
            f2 = shadowElevation;
        }
        if (($changed & 100663296) == 0) {
            if ((i & 256) == 0) {
                windowInsets2 = windowInsets;
                int i8 = $composer3.changed(windowInsets2) ? 67108864 : 33554432;
                $dirty4 |= i8;
            } else {
                windowInsets2 = windowInsets;
            }
            $dirty4 |= i8;
        } else {
            windowInsets2 = windowInsets;
        }
        if ((i & 512) != 0) {
            $dirty4 |= 805306368;
        } else if (($changed & 805306368) == 0) {
            $dirty4 |= $composer3.changedInstance(function3) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
        }
        int $dirty5 = $dirty4;
        if (($dirty4 & 306783379) == 306783378 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            SearchBarColors searchBarColors2 = searchBarColors;
            windowInsets4 = windowInsets2;
            modifier5 = modifier2;
            colors5 = searchBarColors2;
            shape6 = shape2;
            $composer2 = $composer3;
            tonalElevation3 = f;
            shadowElevation3 = f2;
        } else {
            $composer3.startDefaults();
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                Modifier.Companion modifier6 = i3 != 0 ? Modifier.INSTANCE : modifier2;
                if ((i & 16) != 0) {
                    int i9 = $dirty5 & (-57345);
                    shape3 = SearchBarDefaults.INSTANCE.getInputFieldShape($composer3, 6);
                    $dirty = i9;
                } else {
                    $dirty = $dirty5;
                    shape3 = shape2;
                }
                if ((i & 32) != 0) {
                    i2 = 6;
                    colors2 = SearchBarDefaults.INSTANCE.m2699colorsdgg9oW8(0L, 0L, $composer3, RendererCapabilities.DECODER_SUPPORT_MASK, 3);
                    $dirty &= -458753;
                } else {
                    i2 = 6;
                    colors2 = colors;
                }
                float tonalElevation4 = i6 != 0 ? SearchBarDefaults.INSTANCE.m2703getTonalElevationD9Ej5fM() : tonalElevation;
                float shadowElevation4 = i7 != 0 ? SearchBarDefaults.INSTANCE.m2702getShadowElevationD9Ej5fM() : f2;
                if ((i & 256) != 0) {
                    modifier3 = modifier6;
                    windowInsets3 = SearchBarDefaults.INSTANCE.getWindowInsets($composer3, i2);
                    colors3 = colors2;
                    tonalElevation2 = tonalElevation4;
                    shadowElevation2 = shadowElevation4;
                    $dirty2 = $dirty & (-234881025);
                    shape4 = shape3;
                } else {
                    windowInsets3 = windowInsets;
                    modifier3 = modifier6;
                    colors3 = colors2;
                    tonalElevation2 = tonalElevation4;
                    shadowElevation2 = shadowElevation4;
                    shape4 = shape3;
                    $dirty2 = $dirty;
                }
            } else {
                $composer3.skipToGroupEnd();
                if ((i & 16) != 0) {
                    $dirty5 &= -57345;
                }
                if ((i & 32) != 0) {
                    $dirty5 &= -458753;
                }
                if ((i & 256) != 0) {
                    $dirty2 = $dirty5 & (-234881025);
                    windowInsets3 = windowInsets2;
                    shadowElevation2 = f2;
                    tonalElevation2 = f;
                    colors3 = searchBarColors;
                    shape4 = shape2;
                    modifier3 = modifier2;
                } else {
                    windowInsets3 = windowInsets2;
                    shadowElevation2 = f2;
                    $dirty2 = $dirty5;
                    tonalElevation2 = f;
                    colors3 = searchBarColors;
                    shape4 = shape2;
                    modifier3 = modifier2;
                }
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1444649673, $dirty2, -1, "androidx.compose.material3.SearchBar (SearchBar.android.kt:177)");
            }
            ComposerKt.sourceInformationMarkerStart($composer3, 626005896, "CC(remember):SearchBar.android.kt#9igjgp");
            Object it$iv = $composer3.rememberedValue();
            int $dirty6 = $dirty2;
            if (it$iv == Composer.INSTANCE.getEmpty()) {
                value$iv = AnimatableKt.Animatable$default(z ? 1.0f : 0.0f, 0.0f, 2, null);
                $composer3.updateRememberedValue(value$iv);
            } else {
                value$iv = it$iv;
            }
            Animatable animationProgress = (Animatable) value$iv;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerStart($composer3, 626008851, "CC(remember):SearchBar.android.kt#9igjgp");
            Object it$iv2 = $composer3.rememberedValue();
            if (it$iv2 == Composer.INSTANCE.getEmpty()) {
                value$iv2 = PrimitiveSnapshotStateKt.mutableFloatStateOf(Float.NaN);
                $composer3.updateRememberedValue(value$iv2);
            } else {
                value$iv2 = it$iv2;
            }
            MutableFloatState finalBackProgress2 = (MutableFloatState) value$iv2;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerStart($composer3, 626011067, "CC(remember):SearchBar.android.kt#9igjgp");
            Object it$iv3 = $composer3.rememberedValue();
            if (it$iv3 == Composer.INSTANCE.getEmpty()) {
                value$iv3 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
                $composer3.updateRememberedValue(value$iv3);
            } else {
                value$iv3 = it$iv3;
            }
            MutableState firstBackEvent2 = (MutableState) value$iv3;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerStart($composer3, 626013595, "CC(remember):SearchBar.android.kt#9igjgp");
            Object it$iv4 = $composer3.rememberedValue();
            if (it$iv4 == Composer.INSTANCE.getEmpty()) {
                firstBackEvent = firstBackEvent2;
                value$iv4 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
                $composer3.updateRememberedValue(value$iv4);
            } else {
                firstBackEvent = firstBackEvent2;
                value$iv4 = it$iv4;
            }
            MutableState currentBackEvent = (MutableState) value$iv4;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            Boolean boolValueOf = Boolean.valueOf(expanded);
            ComposerKt.sourceInformationMarkerStart($composer3, 626016806, "CC(remember):SearchBar.android.kt#9igjgp");
            boolean invalid$iv = $composer3.changedInstance(animationProgress) | (($dirty6 & 112) == 32);
            SearchBar_androidKt$SearchBar$1$1 value$iv7 = $composer3.rememberedValue();
            if (invalid$iv || value$iv7 == Composer.INSTANCE.getEmpty()) {
                modifier4 = modifier3;
                colors4 = colors3;
                $dirty3 = $dirty6;
                str = "CC(remember):SearchBar.android.kt#9igjgp";
                finalBackProgress = finalBackProgress2;
                shape5 = shape4;
                z = expanded;
                value$iv7 = new SearchBar_androidKt$SearchBar$1$1(animationProgress, z, finalBackProgress, firstBackEvent, currentBackEvent, null);
                $composer3.updateRememberedValue(value$iv7);
            } else {
                modifier4 = modifier3;
                colors4 = colors3;
                $dirty3 = $dirty6;
                str = "CC(remember):SearchBar.android.kt#9igjgp";
                finalBackProgress = finalBackProgress2;
                shape5 = shape4;
                z = expanded;
            }
            ComposerKt.sourceInformationMarkerEnd($composer3);
            EffectsKt.LaunchedEffect(boolValueOf, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) value$iv7, $composer3, ($dirty3 >> 3) & 14);
            ComposerKt.sourceInformationMarkerStart($composer3, 626037411, str);
            Object it$iv5 = $composer3.rememberedValue();
            if (it$iv5 == Composer.INSTANCE.getEmpty()) {
                value$iv5 = new MutatorMutex();
                $composer3.updateRememberedValue(value$iv5);
            } else {
                value$iv5 = it$iv5;
            }
            MutatorMutex mutatorMutex = (MutatorMutex) value$iv5;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerStart($composer3, 626040814, str);
            boolean invalid$iv2 = $composer3.changedInstance(animationProgress) | (($dirty3 & 896) == 256);
            Object it$iv6 = $composer3.rememberedValue();
            if (invalid$iv2 || it$iv6 == Composer.INSTANCE.getEmpty()) {
                value$iv6 = new SearchBar_androidKt$SearchBar$2$1(mutatorMutex, finalBackProgress, animationProgress, function1, firstBackEvent, currentBackEvent, null);
                $composer3.updateRememberedValue(value$iv6);
            } else {
                value$iv6 = it$iv6;
            }
            ComposerKt.sourceInformationMarkerEnd($composer3);
            PredictiveBackHandlerKt.PredictiveBackHandler(z, (Function2) value$iv6, $composer3, ($dirty3 >> 3) & 14, 0);
            Modifier modifier7 = modifier4;
            Shape shape7 = shape5;
            SearchBarColors colors6 = colors4;
            $composer2 = $composer3;
            float shadowElevation5 = shadowElevation2;
            MutableState firstBackEvent3 = firstBackEvent;
            WindowInsets windowInsets5 = windowInsets3;
            float tonalElevation5 = tonalElevation2;
            m2710SearchBarImplj1jLAyQ(animationProgress, finalBackProgress, firstBackEvent3, currentBackEvent, modifier7, function22, shape7, colors6, tonalElevation5, shadowElevation5, windowInsets5, function3, $composer2, Animatable.$stable | 3504 | (57344 & ($dirty3 << 3)) | (($dirty3 << 15) & 458752) | (($dirty3 << 6) & 3670016) | (($dirty3 << 6) & 29360128) | (($dirty3 << 6) & 234881024) | (($dirty3 << 6) & C.ENCODING_PCM_DOUBLE), (($dirty3 >> 24) & 14) | (($dirty3 >> 24) & 112), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            shape6 = shape7;
            colors5 = colors6;
            shadowElevation3 = shadowElevation5;
            windowInsets4 = windowInsets5;
            tonalElevation3 = tonalElevation5;
            modifier5 = modifier7;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.SearchBar_androidKt$SearchBar$3
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
                    SearchBar_androidKt.m2709SearchBarY92LkZI(function2, z, function1, modifier5, shape6, colors5, tonalElevation3, shadowElevation3, windowInsets4, function3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    /* JADX INFO: renamed from: DockedSearchBar-EQC0FA8, reason: not valid java name */
    public static final void m2706DockedSearchBarEQC0FA8(final Function2<? super Composer, ? super Integer, Unit> function2, final boolean expanded, final Function1<? super Boolean, Unit> function1, Modifier modifier, Shape shape, SearchBarColors colors, float tonalElevation, float shadowElevation, final Function3<? super ColumnScope, ? super Composer, ? super Integer, Unit> function3, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        Shape shape2;
        SearchBarColors searchBarColors;
        float f;
        float f2;
        Shape shape3;
        int $dirty;
        Composer $composer2;
        int i2;
        SearchBarColors colors2;
        final SearchBarColors colors3;
        float tonalElevation2;
        int $dirty2;
        float shadowElevation2;
        Composer $composer3;
        Object value$iv;
        final SearchBarColors colors4;
        final Modifier modifier3;
        final float tonalElevation3;
        final float shadowElevation3;
        final Shape shape4;
        Composer $composer4 = $composer.startRestartGroup(1209217899);
        ComposerKt.sourceInformation($composer4, "C(DockedSearchBar)P(3,2,5,4,7!1,8:c#ui.unit.Dp,6:c#ui.unit.Dp)287@13410L11,288@13471L8,296@13752L38,300@13946L831,293@13658L1119,325@14815L27,325@14783L59:SearchBar.android.kt#uh7d8r");
        int $dirty3 = $changed;
        if ((i & 1) != 0) {
            $dirty3 |= 6;
        } else if (($changed & 6) == 0) {
            $dirty3 |= $composer4.changedInstance(function2) ? 4 : 2;
        }
        if ((i & 2) != 0) {
            $dirty3 |= 48;
        } else if (($changed & 48) == 0) {
            $dirty3 |= $composer4.changed(expanded) ? 32 : 16;
        }
        if ((i & 4) != 0) {
            $dirty3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty3 |= $composer4.changedInstance(function1) ? 256 : 128;
        }
        int i3 = i & 8;
        if (i3 != 0) {
            $dirty3 |= 3072;
            modifier2 = modifier;
        } else if (($changed & 3072) == 0) {
            modifier2 = modifier;
            $dirty3 |= $composer4.changed(modifier2) ? 2048 : 1024;
        } else {
            modifier2 = modifier;
        }
        if (($changed & 24576) == 0) {
            if ((i & 16) == 0) {
                shape2 = shape;
                int i4 = $composer4.changed(shape2) ? 16384 : 8192;
                $dirty3 |= i4;
            } else {
                shape2 = shape;
            }
            $dirty3 |= i4;
        } else {
            shape2 = shape;
        }
        if ((196608 & $changed) == 0) {
            if ((i & 32) == 0) {
                searchBarColors = colors;
                int i5 = $composer4.changed(searchBarColors) ? 131072 : 65536;
                $dirty3 |= i5;
            } else {
                searchBarColors = colors;
            }
            $dirty3 |= i5;
        } else {
            searchBarColors = colors;
        }
        int i6 = i & 64;
        if (i6 != 0) {
            $dirty3 |= 1572864;
            f = tonalElevation;
        } else if ((1572864 & $changed) == 0) {
            f = tonalElevation;
            $dirty3 |= $composer4.changed(f) ? 1048576 : 524288;
        } else {
            f = tonalElevation;
        }
        int i7 = i & 128;
        if (i7 != 0) {
            $dirty3 |= 12582912;
            f2 = shadowElevation;
        } else if (($changed & 12582912) == 0) {
            f2 = shadowElevation;
            $dirty3 |= $composer4.changed(f2) ? 8388608 : 4194304;
        } else {
            f2 = shadowElevation;
        }
        if ((i & 256) != 0) {
            $dirty3 |= 100663296;
        } else if (($changed & 100663296) == 0) {
            $dirty3 |= $composer4.changedInstance(function3) ? 67108864 : 33554432;
        }
        int $dirty4 = $dirty3;
        if ((38347923 & $dirty3) == 38347922 && $composer4.getSkipping()) {
            $composer4.skipToGroupEnd();
            colors4 = searchBarColors;
            $composer3 = $composer4;
            modifier3 = modifier2;
            shadowElevation3 = f2;
            tonalElevation3 = f;
            shape4 = shape2;
        } else {
            $composer4.startDefaults();
            if (($changed & 1) == 0 || $composer4.getDefaultsInvalid()) {
                if (i3 != 0) {
                    modifier2 = Modifier.INSTANCE;
                }
                if ((i & 16) != 0) {
                    shape3 = SearchBarDefaults.INSTANCE.getDockedShape($composer4, 6);
                    $dirty = $dirty4 & (-57345);
                } else {
                    shape3 = shape2;
                    $dirty = $dirty4;
                }
                if ((i & 32) != 0) {
                    i2 = i7;
                    colors2 = SearchBarDefaults.INSTANCE.m2699colorsdgg9oW8(0L, 0L, $composer4, RendererCapabilities.DECODER_SUPPORT_MASK, 3);
                    $composer2 = $composer4;
                    $dirty &= -458753;
                } else {
                    $composer2 = $composer4;
                    i2 = i7;
                    colors2 = colors;
                }
                float tonalElevation4 = i6 != 0 ? SearchBarDefaults.INSTANCE.m2703getTonalElevationD9Ej5fM() : tonalElevation;
                if (i2 != 0) {
                    SearchBarColors searchBarColors2 = colors2;
                    shape2 = shape3;
                    colors3 = searchBarColors2;
                    shadowElevation2 = SearchBarDefaults.INSTANCE.m2702getShadowElevationD9Ej5fM();
                    tonalElevation2 = tonalElevation4;
                    $dirty2 = $dirty;
                } else {
                    SearchBarColors searchBarColors3 = colors2;
                    shape2 = shape3;
                    colors3 = searchBarColors3;
                    tonalElevation2 = tonalElevation4;
                    $dirty2 = $dirty;
                    shadowElevation2 = f2;
                }
            } else {
                $composer4.skipToGroupEnd();
                if ((i & 16) != 0) {
                    $dirty4 &= -57345;
                }
                if ((i & 32) != 0) {
                    $dirty2 = $dirty4 & (-458753);
                    shadowElevation2 = f2;
                    colors3 = searchBarColors;
                    tonalElevation2 = f;
                    $composer2 = $composer4;
                } else {
                    shadowElevation2 = f2;
                    colors3 = searchBarColors;
                    tonalElevation2 = f;
                    $dirty2 = $dirty4;
                    $composer2 = $composer4;
                }
            }
            $composer2.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1209217899, $dirty2, -1, "androidx.compose.material3.DockedSearchBar (SearchBar.android.kt:292)");
            }
            long jM2695getContainerColor0d7_KjU = colors3.m2695getContainerColor0d7_KjU();
            long jM2213contentColorForek8zF_U = ColorSchemeKt.m2213contentColorForek8zF_U(colors3.m2695getContainerColor0d7_KjU(), $composer2, 0);
            SearchBarColors colors5 = colors3;
            Composer $composer5 = $composer2;
            Shape shape5 = shape2;
            SurfaceKt.m2826SurfaceT9BRK9s(SizeKt.m869width3ABfNKs(ZIndexModifierKt.zIndex(modifier2, 1.0f), SearchBarMinWidth), shape5, jM2695getContainerColor0d7_KjU, jM2213contentColorForek8zF_U, tonalElevation2, shadowElevation2, null, ComposableLambdaKt.rememberComposableLambda(878471280, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.SearchBar_androidKt$DockedSearchBar$1
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

                /* JADX WARN: Removed duplicated region for block: B:28:0x01a2  */
                /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final void invoke(Composer $composer6, int $changed2) {
                    boolean z;
                    ComposerKt.sourceInformation($composer6, "C301@13956L815:SearchBar.android.kt#uh7d8r");
                    if (($changed2 & 3) != 2 || !$composer6.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(878471280, $changed2, -1, "androidx.compose.material3.DockedSearchBar.<anonymous> (SearchBar.android.kt:301)");
                        }
                        Function2<Composer, Integer, Unit> function22 = function2;
                        boolean z2 = expanded;
                        final SearchBarColors searchBarColors4 = colors3;
                        final Function3<ColumnScope, Composer, Integer, Unit> function32 = function3;
                        ComposerKt.sourceInformationMarkerStart($composer6, -483455358, "CC(Column)P(2,3,1)85@4251L61,86@4317L133:Column.kt#2w3rfo");
                        Modifier modifier$iv = Modifier.INSTANCE;
                        Arrangement.Vertical verticalArrangement$iv = Arrangement.INSTANCE.getTop();
                        Alignment.Horizontal horizontalAlignment$iv = Alignment.INSTANCE.getStart();
                        MeasurePolicy measurePolicy$iv = ColumnKt.columnMeasurePolicy(verticalArrangement$iv, horizontalAlignment$iv, $composer6, ((0 >> 3) & 14) | ((0 >> 3) & 112));
                        int $changed$iv$iv = (0 << 3) & 112;
                        ComposerKt.sourceInformationMarkerStart($composer6, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer6, 0);
                        CompositionLocalMap localMap$iv$iv = $composer6.getCurrentCompositionLocalMap();
                        Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer6, modifier$iv);
                        Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
                        int $changed$iv$iv$iv = (($changed$iv$iv << 6) & 896) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer6, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                        if (!($composer6.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        $composer6.startReusableNode();
                        if ($composer6.getInserting()) {
                            $composer6.createNode(constructor);
                        } else {
                            $composer6.useNode();
                        }
                        Composer $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer6);
                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if (!$this$Layout_u24lambda_u240$iv$iv.getInserting()) {
                            z = z2;
                            if (!Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                            }
                            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
                            int i8 = ($changed$iv$iv$iv >> 6) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer6, -384862393, "C87@4365L9:Column.kt#2w3rfo");
                            ColumnScope $this$invoke_u24lambda_u240 = ColumnScopeInstance.INSTANCE;
                            ComposerKt.sourceInformationMarkerStart($composer6, 1812191551, "C302@13977L12,308@14165L596,304@14003L758:SearchBar.android.kt#uh7d8r");
                            function22.invoke($composer6, 0);
                            AnimatedVisibilityKt.AnimatedVisibility($this$invoke_u24lambda_u240, z, (Modifier) null, SearchBar_androidKt.DockedEnterTransition, SearchBar_androidKt.DockedExitTransition, (String) null, ComposableLambdaKt.rememberComposableLambda(-1743690306, true, new Function3<AnimatedVisibilityScope, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SearchBar_androidKt$DockedSearchBar$1$1$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                /* JADX WARN: Multi-variable type inference failed */
                                {
                                    super(3);
                                }

                                @Override // kotlin.jvm.functions.Function3
                                public /* bridge */ /* synthetic */ Unit invoke(AnimatedVisibilityScope animatedVisibilityScope, Composer composer, Integer num) {
                                    invoke(animatedVisibilityScope, composer, num.intValue());
                                    return Unit.INSTANCE;
                                }

                                public final void invoke(AnimatedVisibilityScope $this$AnimatedVisibility, Composer $composer7, int $changed3) {
                                    Object value$iv2;
                                    Object value$iv3;
                                    Function0<ComposeUiNode> function0;
                                    ComposerKt.sourceInformation($composer7, "C*309@14221L7,311@14299L125,315@14477L76,317@14571L176:SearchBar.android.kt#uh7d8r");
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-1743690306, $changed3, -1, "androidx.compose.material3.DockedSearchBar.<anonymous>.<anonymous>.<anonymous> (SearchBar.android.kt:309)");
                                    }
                                    ProvidableCompositionLocal<Configuration> localConfiguration = AndroidCompositionLocals_androidKt.getLocalConfiguration();
                                    ComposerKt.sourceInformationMarkerStart($composer7, 2023513938, "CC:CompositionLocal.kt#9igjgp");
                                    Object objConsume = $composer7.consume(localConfiguration);
                                    ComposerKt.sourceInformationMarkerEnd($composer7);
                                    int $this$dp$iv = ((Configuration) objConsume).screenHeightDp;
                                    float screenHeight = Dp.m7505constructorimpl($this$dp$iv);
                                    ComposerKt.sourceInformationMarkerStart($composer7, 1708554480, "CC(remember):SearchBar.android.kt#9igjgp");
                                    boolean invalid$iv = $composer7.changed(screenHeight);
                                    Object it$iv = $composer7.rememberedValue();
                                    if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                                        float other$iv = Dp.m7505constructorimpl(screenHeight * 0.6666667f);
                                        value$iv2 = Dp.m7503boximpl(other$iv);
                                        $composer7.updateRememberedValue(value$iv2);
                                    } else {
                                        value$iv2 = it$iv;
                                    }
                                    float maxHeight = ((Dp) value$iv2).m7519unboximpl();
                                    ComposerKt.sourceInformationMarkerEnd($composer7);
                                    ComposerKt.sourceInformationMarkerStart($composer7, 1708560127, "CC(remember):SearchBar.android.kt#9igjgp");
                                    boolean invalid$iv2 = $composer7.changed(maxHeight);
                                    Object it$iv2 = $composer7.rememberedValue();
                                    if (invalid$iv2 || it$iv2 == Composer.INSTANCE.getEmpty()) {
                                        value$iv3 = Dp.m7503boximpl(((Dp) RangesKt.coerceAtMost(Dp.m7503boximpl(SearchBar_androidKt.getDockedExpandedTableMinHeight()), Dp.m7503boximpl(maxHeight))).m7519unboximpl());
                                        $composer7.updateRememberedValue(value$iv3);
                                    } else {
                                        value$iv3 = it$iv2;
                                    }
                                    float minHeight = ((Dp) value$iv3).m7519unboximpl();
                                    ComposerKt.sourceInformationMarkerEnd($composer7);
                                    Modifier modifier$iv2 = SizeKt.m851heightInVpY3zN4(Modifier.INSTANCE, minHeight, maxHeight);
                                    SearchBarColors searchBarColors5 = searchBarColors4;
                                    Function3<ColumnScope, Composer, Integer, Unit> function33 = function32;
                                    ComposerKt.sourceInformationMarkerStart($composer7, -483455358, "CC(Column)P(2,3,1)85@4251L61,86@4317L133:Column.kt#2w3rfo");
                                    Arrangement.Vertical verticalArrangement$iv2 = Arrangement.INSTANCE.getTop();
                                    Alignment.Horizontal horizontalAlignment$iv2 = Alignment.INSTANCE.getStart();
                                    MeasurePolicy measurePolicy$iv2 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv2, horizontalAlignment$iv2, $composer7, ((0 >> 3) & 14) | ((0 >> 3) & 112));
                                    int $changed$iv$iv2 = (0 << 3) & 112;
                                    ComposerKt.sourceInformationMarkerStart($composer7, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                                    int compositeKeyHash$iv$iv2 = ComposablesKt.getCurrentCompositeKeyHash($composer7, 0);
                                    CompositionLocalMap localMap$iv$iv2 = $composer7.getCurrentCompositionLocalMap();
                                    Modifier materialized$iv$iv2 = ComposedModifierKt.materializeModifier($composer7, modifier$iv2);
                                    Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
                                    int $changed$iv$iv$iv2 = (($changed$iv$iv2 << 6) & 896) | 6;
                                    ComposerKt.sourceInformationMarkerStart($composer7, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                                    if (!($composer7.getApplier() instanceof Applier)) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    $composer7.startReusableNode();
                                    if ($composer7.getInserting()) {
                                        function0 = constructor2;
                                        $composer7.createNode(function0);
                                    } else {
                                        function0 = constructor2;
                                        $composer7.useNode();
                                    }
                                    Composer $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3967constructorimpl($composer7);
                                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                    Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash2 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                    if ($this$Layout_u24lambda_u240$iv$iv2.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv2.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv2))) {
                                        $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv2));
                                        $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv2), setCompositeKeyHash2);
                                    }
                                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, materialized$iv$iv2, ComposeUiNode.INSTANCE.getSetModifier());
                                    int i9 = ($changed$iv$iv$iv2 >> 6) & 14;
                                    ComposerKt.sourceInformationMarkerStart($composer7, -384862393, "C87@4365L9:Column.kt#2w3rfo");
                                    int $changed4 = ((0 >> 6) & 112) | 6;
                                    ColumnScope $this$invoke_u24lambda_u242 = ColumnScopeInstance.INSTANCE;
                                    ComposerKt.sourceInformationMarkerStart($composer7, 697724229, "C318@14653L46,319@14720L9:SearchBar.android.kt#uh7d8r");
                                    DividerKt.m2355HorizontalDivider9IZ8Weo(null, 0.0f, searchBarColors5.m2696getDividerColor0d7_KjU(), $composer7, 0, 3);
                                    function33.invoke($this$invoke_u24lambda_u242, $composer7, Integer.valueOf($changed4 & 14));
                                    ComposerKt.sourceInformationMarkerEnd($composer7);
                                    ComposerKt.sourceInformationMarkerEnd($composer7);
                                    $composer7.endNode();
                                    ComposerKt.sourceInformationMarkerEnd($composer7);
                                    ComposerKt.sourceInformationMarkerEnd($composer7);
                                    ComposerKt.sourceInformationMarkerEnd($composer7);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }
                            }, $composer6, 54), $composer6, ((((0 >> 6) & 112) | 6) & 14) | 1600512, 18);
                            ComposerKt.sourceInformationMarkerEnd($composer6);
                            ComposerKt.sourceInformationMarkerEnd($composer6);
                            $composer6.endNode();
                            ComposerKt.sourceInformationMarkerEnd($composer6);
                            ComposerKt.sourceInformationMarkerEnd($composer6);
                            ComposerKt.sourceInformationMarkerEnd($composer6);
                            if (!ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                                return;
                            }
                            return;
                        }
                        z = z2;
                        $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                        $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), setCompositeKeyHash);
                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
                        int i82 = ($changed$iv$iv$iv >> 6) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer6, -384862393, "C87@4365L9:Column.kt#2w3rfo");
                        ColumnScope $this$invoke_u24lambda_u2402 = ColumnScopeInstance.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart($composer6, 1812191551, "C302@13977L12,308@14165L596,304@14003L758:SearchBar.android.kt#uh7d8r");
                        function22.invoke($composer6, 0);
                        AnimatedVisibilityKt.AnimatedVisibility($this$invoke_u24lambda_u2402, z, (Modifier) null, SearchBar_androidKt.DockedEnterTransition, SearchBar_androidKt.DockedExitTransition, (String) null, ComposableLambdaKt.rememberComposableLambda(-1743690306, true, new Function3<AnimatedVisibilityScope, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SearchBar_androidKt$DockedSearchBar$1$1$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(3);
                            }

                            @Override // kotlin.jvm.functions.Function3
                            public /* bridge */ /* synthetic */ Unit invoke(AnimatedVisibilityScope animatedVisibilityScope, Composer composer, Integer num) {
                                invoke(animatedVisibilityScope, composer, num.intValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(AnimatedVisibilityScope $this$AnimatedVisibility, Composer $composer7, int $changed3) {
                                Object value$iv2;
                                Object value$iv3;
                                Function0<ComposeUiNode> function0;
                                ComposerKt.sourceInformation($composer7, "C*309@14221L7,311@14299L125,315@14477L76,317@14571L176:SearchBar.android.kt#uh7d8r");
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-1743690306, $changed3, -1, "androidx.compose.material3.DockedSearchBar.<anonymous>.<anonymous>.<anonymous> (SearchBar.android.kt:309)");
                                }
                                ProvidableCompositionLocal<Configuration> localConfiguration = AndroidCompositionLocals_androidKt.getLocalConfiguration();
                                ComposerKt.sourceInformationMarkerStart($composer7, 2023513938, "CC:CompositionLocal.kt#9igjgp");
                                Object objConsume = $composer7.consume(localConfiguration);
                                ComposerKt.sourceInformationMarkerEnd($composer7);
                                int $this$dp$iv = ((Configuration) objConsume).screenHeightDp;
                                float screenHeight = Dp.m7505constructorimpl($this$dp$iv);
                                ComposerKt.sourceInformationMarkerStart($composer7, 1708554480, "CC(remember):SearchBar.android.kt#9igjgp");
                                boolean invalid$iv = $composer7.changed(screenHeight);
                                Object it$iv = $composer7.rememberedValue();
                                if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                                    float other$iv = Dp.m7505constructorimpl(screenHeight * 0.6666667f);
                                    value$iv2 = Dp.m7503boximpl(other$iv);
                                    $composer7.updateRememberedValue(value$iv2);
                                } else {
                                    value$iv2 = it$iv;
                                }
                                float maxHeight = ((Dp) value$iv2).m7519unboximpl();
                                ComposerKt.sourceInformationMarkerEnd($composer7);
                                ComposerKt.sourceInformationMarkerStart($composer7, 1708560127, "CC(remember):SearchBar.android.kt#9igjgp");
                                boolean invalid$iv2 = $composer7.changed(maxHeight);
                                Object it$iv2 = $composer7.rememberedValue();
                                if (invalid$iv2 || it$iv2 == Composer.INSTANCE.getEmpty()) {
                                    value$iv3 = Dp.m7503boximpl(((Dp) RangesKt.coerceAtMost(Dp.m7503boximpl(SearchBar_androidKt.getDockedExpandedTableMinHeight()), Dp.m7503boximpl(maxHeight))).m7519unboximpl());
                                    $composer7.updateRememberedValue(value$iv3);
                                } else {
                                    value$iv3 = it$iv2;
                                }
                                float minHeight = ((Dp) value$iv3).m7519unboximpl();
                                ComposerKt.sourceInformationMarkerEnd($composer7);
                                Modifier modifier$iv2 = SizeKt.m851heightInVpY3zN4(Modifier.INSTANCE, minHeight, maxHeight);
                                SearchBarColors searchBarColors5 = searchBarColors4;
                                Function3<ColumnScope, Composer, Integer, Unit> function33 = function32;
                                ComposerKt.sourceInformationMarkerStart($composer7, -483455358, "CC(Column)P(2,3,1)85@4251L61,86@4317L133:Column.kt#2w3rfo");
                                Arrangement.Vertical verticalArrangement$iv2 = Arrangement.INSTANCE.getTop();
                                Alignment.Horizontal horizontalAlignment$iv2 = Alignment.INSTANCE.getStart();
                                MeasurePolicy measurePolicy$iv2 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv2, horizontalAlignment$iv2, $composer7, ((0 >> 3) & 14) | ((0 >> 3) & 112));
                                int $changed$iv$iv2 = (0 << 3) & 112;
                                ComposerKt.sourceInformationMarkerStart($composer7, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                                int compositeKeyHash$iv$iv2 = ComposablesKt.getCurrentCompositeKeyHash($composer7, 0);
                                CompositionLocalMap localMap$iv$iv2 = $composer7.getCurrentCompositionLocalMap();
                                Modifier materialized$iv$iv2 = ComposedModifierKt.materializeModifier($composer7, modifier$iv2);
                                Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
                                int $changed$iv$iv$iv2 = (($changed$iv$iv2 << 6) & 896) | 6;
                                ComposerKt.sourceInformationMarkerStart($composer7, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                                if (!($composer7.getApplier() instanceof Applier)) {
                                    ComposablesKt.invalidApplier();
                                }
                                $composer7.startReusableNode();
                                if ($composer7.getInserting()) {
                                    function0 = constructor2;
                                    $composer7.createNode(function0);
                                } else {
                                    function0 = constructor2;
                                    $composer7.useNode();
                                }
                                Composer $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3967constructorimpl($composer7);
                                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash2 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                if ($this$Layout_u24lambda_u240$iv$iv2.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv2.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv2))) {
                                    $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv2));
                                    $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv2), setCompositeKeyHash2);
                                }
                                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, materialized$iv$iv2, ComposeUiNode.INSTANCE.getSetModifier());
                                int i9 = ($changed$iv$iv$iv2 >> 6) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer7, -384862393, "C87@4365L9:Column.kt#2w3rfo");
                                int $changed4 = ((0 >> 6) & 112) | 6;
                                ColumnScope $this$invoke_u24lambda_u242 = ColumnScopeInstance.INSTANCE;
                                ComposerKt.sourceInformationMarkerStart($composer7, 697724229, "C318@14653L46,319@14720L9:SearchBar.android.kt#uh7d8r");
                                DividerKt.m2355HorizontalDivider9IZ8Weo(null, 0.0f, searchBarColors5.m2696getDividerColor0d7_KjU(), $composer7, 0, 3);
                                function33.invoke($this$invoke_u24lambda_u242, $composer7, Integer.valueOf($changed4 & 14));
                                ComposerKt.sourceInformationMarkerEnd($composer7);
                                ComposerKt.sourceInformationMarkerEnd($composer7);
                                $composer7.endNode();
                                ComposerKt.sourceInformationMarkerEnd($composer7);
                                ComposerKt.sourceInformationMarkerEnd($composer7);
                                ComposerKt.sourceInformationMarkerEnd($composer7);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }
                        }, $composer6, 54), $composer6, ((((0 >> 6) & 112) | 6) & 14) | 1600512, 18);
                        ComposerKt.sourceInformationMarkerEnd($composer6);
                        ComposerKt.sourceInformationMarkerEnd($composer6);
                        $composer6.endNode();
                        ComposerKt.sourceInformationMarkerEnd($composer6);
                        ComposerKt.sourceInformationMarkerEnd($composer6);
                        ComposerKt.sourceInformationMarkerEnd($composer6);
                        if (!ComposerKt.isTraceInProgress()) {
                        }
                    } else {
                        $composer6.skipToGroupEnd();
                    }
                }
            }, $composer2, 54), $composer5, (($dirty2 >> 9) & 112) | 12582912 | (($dirty2 >> 6) & 57344) | (($dirty2 >> 6) & 458752), 64);
            $composer3 = $composer5;
            ComposerKt.sourceInformationMarkerStart($composer3, -994322031, "CC(remember):SearchBar.android.kt#9igjgp");
            boolean invalid$iv = ($dirty2 & 896) == 256;
            Object it$iv = $composer3.rememberedValue();
            if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                value$iv = (Function0) new Function0<Unit>() { // from class: androidx.compose.material3.SearchBar_androidKt$DockedSearchBar$2$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        function1.invoke(false);
                    }
                };
                $composer3.updateRememberedValue(value$iv);
            } else {
                value$iv = it$iv;
            }
            ComposerKt.sourceInformationMarkerEnd($composer3);
            BackHandlerKt.BackHandler(expanded, (Function0) value$iv, $composer3, ($dirty2 >> 3) & 14, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            colors4 = colors5;
            modifier3 = modifier2;
            tonalElevation3 = tonalElevation2;
            shadowElevation3 = shadowElevation2;
            shape4 = shape5;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer3.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.SearchBar_androidKt$DockedSearchBar$3
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
                    SearchBar_androidKt.m2706DockedSearchBarEQC0FA8(function2, expanded, function1, modifier3, shape4, colors4, tonalElevation3, shadowElevation3, function3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    @Deprecated(message = "Use overload which takes inputField as a parameter", replaceWith = @ReplaceWith(expression = "SearchBar(\n    inputField = {\n        SearchBarDefaults.InputField(\n            query = query,\n            onQueryChange = onQueryChange,\n            onSearch = onSearch,\n            expanded = active,\n            onExpandedChange = onActiveChange,\n            enabled = enabled,\n            placeholder = placeholder,\n            leadingIcon = leadingIcon,\n            trailingIcon = trailingIcon,\n            colors = colors.inputFieldColors,\n            interactionSource = interactionSource,\n        )\n    },\n    expanded = active,\n    onExpandedChange = onActiveChange,\n    modifier = modifier,\n    shape = shape,\n    colors = colors,\n    tonalElevation = tonalElevation,\n    shadowElevation = shadowElevation,\n    windowInsets = windowInsets,\n    content = content,\n)", imports = {}))
    /* JADX INFO: renamed from: SearchBar-WuY5d9Q, reason: not valid java name */
    public static final void m2708SearchBarWuY5d9Q(final String query, final Function1<? super String, Unit> function1, final Function1<? super String, Unit> function12, final boolean active, final Function1<? super Boolean, Unit> function13, Modifier modifier, boolean enabled, Function2<? super Composer, ? super Integer, Unit> function2, Function2<? super Composer, ? super Integer, Unit> function22, Function2<? super Composer, ? super Integer, Unit> function23, Shape shape, SearchBarColors colors, float tonalElevation, float shadowElevation, WindowInsets windowInsets, MutableInteractionSource interactionSource, final Function3<? super ColumnScope, ? super Composer, ? super Integer, Unit> function3, Composer $composer, final int $changed, final int $changed1, final int i) {
        Function1<? super String, Unit> function14;
        Modifier modifier2;
        boolean z;
        Function2<? super Composer, ? super Integer, Unit> function24;
        int i2;
        int $dirty1;
        int $dirty12;
        Shape shape2;
        int i3;
        Composer $composer2;
        int $dirty;
        SearchBarColors colors2;
        WindowInsets windowInsets2;
        final MutableInteractionSource interactionSource2;
        final Function2<? super Composer, ? super Integer, Unit> function25;
        final SearchBarColors colors3;
        float tonalElevation2;
        float shadowElevation2;
        WindowInsets windowInsets3;
        final Function2<? super Composer, ? super Integer, Unit> function26;
        Shape shape3;
        final boolean enabled2;
        final Function2<? super Composer, ? super Integer, Unit> function27;
        Modifier modifier3;
        int $dirty13;
        Composer $composer3;
        final Modifier modifier4;
        final float tonalElevation3;
        final float shadowElevation3;
        final WindowInsets windowInsets4;
        final SearchBarColors colors4;
        final boolean enabled3;
        final Function2<? super Composer, ? super Integer, Unit> function28;
        final Function2<? super Composer, ? super Integer, Unit> function29;
        final MutableInteractionSource interactionSource3;
        final Shape shape4;
        final Function2<? super Composer, ? super Integer, Unit> function210;
        Composer $composer4 = $composer.startRestartGroup(1001512593);
        ComposerKt.sourceInformation($composer4, "C(SearchBar)P(11,8,9!1,7,6,3,10,5,15,13!1,14:c#ui.unit.Dp,12:c#ui.unit.Dp,16,4)737@34012L15,738@34077L8,741@34258L12,746@34418L591,745@34386L925:SearchBar.android.kt#uh7d8r");
        int $dirty2 = $changed;
        int $dirty14 = $changed1;
        if ((i & 1) != 0) {
            $dirty2 |= 6;
        } else if (($changed & 6) == 0) {
            $dirty2 |= $composer4.changed(query) ? 4 : 2;
        }
        if ((i & 2) != 0) {
            $dirty2 |= 48;
            function14 = function1;
        } else if (($changed & 48) == 0) {
            function14 = function1;
            $dirty2 |= $composer4.changedInstance(function14) ? 32 : 16;
        } else {
            function14 = function1;
        }
        if ((i & 4) != 0) {
            $dirty2 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty2 |= $composer4.changedInstance(function12) ? 256 : 128;
        }
        if ((i & 8) != 0) {
            $dirty2 |= 3072;
        } else if (($changed & 3072) == 0) {
            $dirty2 |= $composer4.changed(active) ? 2048 : 1024;
        }
        int i4 = 8192;
        if ((i & 16) != 0) {
            $dirty2 |= 24576;
        } else if (($changed & 24576) == 0) {
            $dirty2 |= $composer4.changedInstance(function13) ? 16384 : 8192;
        }
        int i5 = i & 32;
        if (i5 != 0) {
            $dirty2 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            modifier2 = modifier;
        } else if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            modifier2 = modifier;
            $dirty2 |= $composer4.changed(modifier2) ? 131072 : 65536;
        } else {
            modifier2 = modifier;
        }
        int i6 = i & 64;
        if (i6 != 0) {
            $dirty2 |= 1572864;
            z = enabled;
        } else if (($changed & 1572864) == 0) {
            z = enabled;
            $dirty2 |= $composer4.changed(z) ? 1048576 : 524288;
        } else {
            z = enabled;
        }
        int i7 = i & 128;
        if (i7 != 0) {
            $dirty2 |= 12582912;
            function24 = function2;
        } else if (($changed & 12582912) == 0) {
            function24 = function2;
            $dirty2 |= $composer4.changedInstance(function24) ? 8388608 : 4194304;
        } else {
            function24 = function2;
        }
        int i8 = i & 256;
        if (i8 != 0) {
            $dirty2 |= 100663296;
        } else if (($changed & 100663296) == 0) {
            $dirty2 |= $composer4.changedInstance(function22) ? 67108864 : 33554432;
        }
        int i9 = i & 512;
        if (i9 != 0) {
            $dirty2 |= 805306368;
            i2 = i9;
        } else if (($changed & 805306368) == 0) {
            i2 = i9;
            $dirty2 |= $composer4.changedInstance(function23) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
        } else {
            i2 = i9;
        }
        if (($changed1 & 6) == 0) {
            $dirty14 |= ((i & 1024) == 0 && $composer4.changed(shape)) ? 4 : 2;
        }
        if (($changed1 & 48) == 0) {
            $dirty14 |= ((i & 2048) == 0 && $composer4.changed(colors)) ? 32 : 16;
        }
        int i10 = i & 4096;
        if (i10 != 0) {
            $dirty14 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        } else if (($changed1 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty14 |= $composer4.changed(tonalElevation) ? 256 : 128;
        }
        int i11 = i & 8192;
        if (i11 != 0) {
            $dirty14 |= 3072;
        } else if (($changed1 & 3072) == 0) {
            $dirty14 |= $composer4.changed(shadowElevation) ? 2048 : 1024;
        }
        if (($changed1 & 24576) == 0) {
            if ((i & 16384) == 0 && $composer4.changed(windowInsets)) {
                i4 = 16384;
            }
            $dirty14 |= i4;
        }
        int i12 = i & 32768;
        if (i12 != 0) {
            $dirty1 = $dirty14 | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if (($changed1 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            $dirty1 = $dirty14 | ($composer4.changed(interactionSource) ? 131072 : 65536);
        } else {
            $dirty1 = $dirty14;
        }
        if ((i & 65536) != 0) {
            $dirty1 |= 1572864;
        } else if (($changed1 & 1572864) == 0) {
            $dirty1 |= $composer4.changedInstance(function3) ? 1048576 : 524288;
        }
        if (($dirty2 & 306783379) == 306783378 && ($dirty1 & 599187) == 599186 && $composer4.getSkipping()) {
            $composer4.skipToGroupEnd();
            shape4 = shape;
            colors4 = colors;
            tonalElevation3 = tonalElevation;
            interactionSource3 = interactionSource;
            modifier4 = modifier2;
            enabled3 = z;
            $composer3 = $composer4;
            function210 = function24;
            function28 = function22;
            function29 = function23;
            shadowElevation3 = shadowElevation;
            windowInsets4 = windowInsets;
        } else {
            $composer4.startDefaults();
            if (($changed & 1) == 0 || $composer4.getDefaultsInvalid()) {
                Modifier.Companion modifier5 = i5 != 0 ? Modifier.INSTANCE : modifier2;
                boolean enabled4 = i6 != 0 ? true : z;
                if (i7 != 0) {
                    function24 = null;
                }
                Function2<? super Composer, ? super Integer, Unit> function211 = i8 != 0 ? null : function22;
                Function2<? super Composer, ? super Integer, Unit> function212 = i2 != 0 ? null : function23;
                if ((i & 1024) != 0) {
                    $dirty12 = $dirty1 & (-15);
                    shape2 = SearchBarDefaults.INSTANCE.getInputFieldShape($composer4, 6);
                } else {
                    $dirty12 = $dirty1;
                    shape2 = shape;
                }
                if ((i & 2048) != 0) {
                    i3 = i11;
                    $dirty = $dirty2;
                    $composer2 = $composer4;
                    colors2 = SearchBarDefaults.INSTANCE.m2699colorsdgg9oW8(0L, 0L, $composer2, RendererCapabilities.DECODER_SUPPORT_MASK, 3);
                    $dirty12 &= -113;
                } else {
                    i3 = i11;
                    $composer2 = $composer4;
                    $dirty = $dirty2;
                    colors2 = colors;
                }
                float tonalElevation4 = i10 != 0 ? SearchBarDefaults.INSTANCE.m2703getTonalElevationD9Ej5fM() : tonalElevation;
                float shadowElevation4 = i3 != 0 ? SearchBarDefaults.INSTANCE.m2702getShadowElevationD9Ej5fM() : shadowElevation;
                if ((i & 16384) != 0) {
                    windowInsets2 = SearchBarDefaults.INSTANCE.getWindowInsets($composer2, 6);
                    $dirty12 &= -57345;
                } else {
                    windowInsets2 = windowInsets;
                }
                if (i12 != 0) {
                    function25 = function211;
                    colors3 = colors2;
                    tonalElevation2 = tonalElevation4;
                    shadowElevation2 = shadowElevation4;
                    windowInsets3 = windowInsets2;
                    interactionSource2 = null;
                    function26 = function24;
                    shape3 = shape2;
                    enabled2 = enabled4;
                    function27 = function212;
                    modifier3 = modifier5;
                    $dirty13 = $dirty12;
                } else {
                    interactionSource2 = interactionSource;
                    function25 = function211;
                    colors3 = colors2;
                    tonalElevation2 = tonalElevation4;
                    shadowElevation2 = shadowElevation4;
                    windowInsets3 = windowInsets2;
                    function26 = function24;
                    shape3 = shape2;
                    enabled2 = enabled4;
                    function27 = function212;
                    modifier3 = modifier5;
                    $dirty13 = $dirty12;
                }
            } else {
                $composer4.skipToGroupEnd();
                if ((i & 1024) != 0) {
                    $dirty1 &= -15;
                }
                if ((i & 2048) != 0) {
                    $dirty1 &= -113;
                }
                if ((i & 16384) != 0) {
                    $dirty13 = $dirty1 & (-57345);
                    function25 = function22;
                    function27 = function23;
                    shape3 = shape;
                    colors3 = colors;
                    shadowElevation2 = shadowElevation;
                    windowInsets3 = windowInsets;
                    interactionSource2 = interactionSource;
                    modifier3 = modifier2;
                    enabled2 = z;
                    $composer2 = $composer4;
                    function26 = function24;
                    tonalElevation2 = tonalElevation;
                    $dirty = $dirty2;
                } else {
                    function25 = function22;
                    function27 = function23;
                    shape3 = shape;
                    colors3 = colors;
                    shadowElevation2 = shadowElevation;
                    windowInsets3 = windowInsets;
                    interactionSource2 = interactionSource;
                    modifier3 = modifier2;
                    enabled2 = z;
                    $composer2 = $composer4;
                    function26 = function24;
                    $dirty13 = $dirty1;
                    tonalElevation2 = tonalElevation;
                    $dirty = $dirty2;
                }
            }
            $composer2.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1001512593, $dirty, $dirty13, "androidx.compose.material3.SearchBar (SearchBar.android.kt:745)");
            }
            final Function1<? super String, Unit> function15 = function14;
            ComposableLambda composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1158111311, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.SearchBar_androidKt$SearchBar$4
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

                public final void invoke(Composer $composer5, int $changed2) {
                    ComposerKt.sourceInformation($composer5, "C747@34450L549:SearchBar.android.kt#uh7d8r");
                    if (($changed2 & 3) == 2 && $composer5.getSkipping()) {
                        $composer5.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1158111311, $changed2, -1, "androidx.compose.material3.SearchBar.<anonymous> (SearchBar.android.kt:747)");
                    }
                    SearchBarDefaults.INSTANCE.InputField(query, function15, function12, active, function13, SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), enabled2, function26, function25, function27, colors3.getInputFieldColors(), interactionSource2, $composer5, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, RendererCapabilities.DECODER_SUPPORT_MASK, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, $composer2, 54);
            int i13 = 6 | (($dirty >> 6) & 112) | (($dirty >> 6) & 896) | (($dirty >> 6) & 7168) | (($dirty13 << 12) & 57344) | (($dirty13 << 12) & 458752) | (($dirty13 << 12) & 3670016) | (($dirty13 << 12) & 29360128) | (234881024 & ($dirty13 << 12)) | (($dirty13 << 9) & C.ENCODING_PCM_DOUBLE);
            Composer $composer5 = $composer2;
            SearchBarColors colors5 = colors3;
            m2709SearchBarY92LkZI(composableLambdaRememberComposableLambda, active, function13, modifier3, shape3, colors5, tonalElevation2, shadowElevation2, windowInsets3, function3, $composer5, i13, 0);
            $composer3 = $composer5;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier4 = modifier3;
            tonalElevation3 = tonalElevation2;
            shadowElevation3 = shadowElevation2;
            windowInsets4 = windowInsets3;
            colors4 = colors5;
            enabled3 = enabled2;
            function28 = function25;
            function29 = function27;
            interactionSource3 = interactionSource2;
            shape4 = shape3;
            function210 = function26;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer3.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.SearchBar_androidKt$SearchBar$5
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

                public final void invoke(Composer composer, int i14) {
                    SearchBar_androidKt.m2708SearchBarWuY5d9Q(query, function1, function12, active, function13, modifier4, enabled3, function210, function28, function29, shape4, colors4, tonalElevation3, shadowElevation3, windowInsets4, interactionSource3, function3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), RecomposeScopeImplKt.updateChangedFlags($changed1), i);
                }
            });
        }
    }

    @Deprecated(message = "Use overload which takes inputField as a parameter", replaceWith = @ReplaceWith(expression = "DockedSearchBar(\n    inputField = {\n        SearchBarDefaults.InputField(\n            query = query,\n            onQueryChange = onQueryChange,\n            onSearch = onSearch,\n            expanded = active,\n            onExpandedChange = onActiveChange,\n            enabled = enabled,\n            placeholder = placeholder,\n            leadingIcon = leadingIcon,\n            trailingIcon = trailingIcon,\n            colors = colors.inputFieldColors,\n            interactionSource = interactionSource,\n        )\n    },\n    expanded = active,\n    onExpandedChange = onActiveChange,\n    modifier = modifier,\n    shape = shape,\n    colors = colors,\n    tonalElevation = tonalElevation,\n    shadowElevation = shadowElevation,\n    content = content,\n)", imports = {}))
    /* JADX INFO: renamed from: DockedSearchBar-eWTbjVg, reason: not valid java name */
    public static final void m2707DockedSearchBareWTbjVg(final String query, final Function1<? super String, Unit> function1, final Function1<? super String, Unit> function12, final boolean active, final Function1<? super Boolean, Unit> function13, Modifier modifier, boolean enabled, Function2<? super Composer, ? super Integer, Unit> function2, Function2<? super Composer, ? super Integer, Unit> function22, Function2<? super Composer, ? super Integer, Unit> function23, Shape shape, SearchBarColors colors, float tonalElevation, float shadowElevation, MutableInteractionSource interactionSource, final Function3<? super ColumnScope, ? super Composer, ? super Integer, Unit> function3, Composer $composer, final int $changed, final int $changed1, final int i) {
        String str;
        Modifier modifier2;
        boolean z;
        Function2<? super Composer, ? super Integer, Unit> function24;
        int i2;
        int $dirty1;
        int $dirty12;
        Shape shape2;
        int i3;
        Composer $composer2;
        int $dirty;
        SearchBarColors colors2;
        final MutableInteractionSource interactionSource2;
        Modifier modifier3;
        final Function2<? super Composer, ? super Integer, Unit> function25;
        float tonalElevation2;
        float shadowElevation2;
        final Function2<? super Composer, ? super Integer, Unit> function26;
        Shape shape3;
        final Function2<? super Composer, ? super Integer, Unit> function27;
        int $dirty13;
        final SearchBarColors colors3;
        final boolean enabled2;
        Composer $composer3;
        final Modifier modifier4;
        final float tonalElevation3;
        final float shadowElevation3;
        final SearchBarColors colors4;
        final boolean enabled3;
        final Function2<? super Composer, ? super Integer, Unit> function28;
        final Function2<? super Composer, ? super Integer, Unit> function29;
        final MutableInteractionSource interactionSource3;
        final Shape shape4;
        final Function2<? super Composer, ? super Integer, Unit> function210;
        Composer $composer4 = $composer.startRestartGroup(1299054533);
        ComposerKt.sourceInformation($composer4, "C(DockedSearchBar)P(11,8,9!1,7,6,3,10,5,15,13!1,14:c#ui.unit.Dp,12:c#ui.unit.Dp,4)818@37222L11,819@37283L8,826@37565L591,825@37527L894:SearchBar.android.kt#uh7d8r");
        int $dirty2 = $changed;
        int $dirty14 = $changed1;
        if ((i & 1) != 0) {
            $dirty2 |= 6;
            str = query;
        } else if (($changed & 6) == 0) {
            str = query;
            $dirty2 |= $composer4.changed(str) ? 4 : 2;
        } else {
            str = query;
        }
        if ((i & 2) != 0) {
            $dirty2 |= 48;
        } else if (($changed & 48) == 0) {
            $dirty2 |= $composer4.changedInstance(function1) ? 32 : 16;
        }
        if ((i & 4) != 0) {
            $dirty2 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty2 |= $composer4.changedInstance(function12) ? 256 : 128;
        }
        if ((i & 8) != 0) {
            $dirty2 |= 3072;
        } else if (($changed & 3072) == 0) {
            $dirty2 |= $composer4.changed(active) ? 2048 : 1024;
        }
        if ((i & 16) != 0) {
            $dirty2 |= 24576;
        } else if (($changed & 24576) == 0) {
            $dirty2 |= $composer4.changedInstance(function13) ? 16384 : 8192;
        }
        int i4 = i & 32;
        if (i4 != 0) {
            $dirty2 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            modifier2 = modifier;
        } else if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            modifier2 = modifier;
            $dirty2 |= $composer4.changed(modifier2) ? 131072 : 65536;
        } else {
            modifier2 = modifier;
        }
        int i5 = i & 64;
        if (i5 != 0) {
            $dirty2 |= 1572864;
            z = enabled;
        } else if (($changed & 1572864) == 0) {
            z = enabled;
            $dirty2 |= $composer4.changed(z) ? 1048576 : 524288;
        } else {
            z = enabled;
        }
        int i6 = i & 128;
        if (i6 != 0) {
            $dirty2 |= 12582912;
            function24 = function2;
        } else if (($changed & 12582912) == 0) {
            function24 = function2;
            $dirty2 |= $composer4.changedInstance(function24) ? 8388608 : 4194304;
        } else {
            function24 = function2;
        }
        int i7 = i & 256;
        if (i7 != 0) {
            $dirty2 |= 100663296;
        } else if (($changed & 100663296) == 0) {
            $dirty2 |= $composer4.changedInstance(function22) ? 67108864 : 33554432;
        }
        int i8 = i & 512;
        if (i8 != 0) {
            $dirty2 |= 805306368;
            i2 = i8;
        } else if (($changed & 805306368) == 0) {
            i2 = i8;
            $dirty2 |= $composer4.changedInstance(function23) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
        } else {
            i2 = i8;
        }
        if (($changed1 & 6) == 0) {
            $dirty14 |= ((i & 1024) == 0 && $composer4.changed(shape)) ? 4 : 2;
        }
        if (($changed1 & 48) == 0) {
            $dirty14 |= ((i & 2048) == 0 && $composer4.changed(colors)) ? 32 : 16;
        }
        int i9 = i & 4096;
        if (i9 != 0) {
            $dirty14 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        } else if (($changed1 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty14 |= $composer4.changed(tonalElevation) ? 256 : 128;
        }
        int i10 = i & 8192;
        if (i10 != 0) {
            $dirty14 |= 3072;
        } else if (($changed1 & 3072) == 0) {
            $dirty14 |= $composer4.changed(shadowElevation) ? 2048 : 1024;
        }
        int i11 = i & 16384;
        if (i11 != 0) {
            $dirty14 |= 24576;
        } else if (($changed1 & 24576) == 0) {
            $dirty14 |= $composer4.changed(interactionSource) ? 16384 : 8192;
        }
        if ((i & 32768) != 0) {
            $dirty1 = $dirty14 | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if (($changed1 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            $dirty1 = $dirty14 | ($composer4.changedInstance(function3) ? 131072 : 65536);
        } else {
            $dirty1 = $dirty14;
        }
        if (($dirty2 & 306783379) == 306783378 && ($dirty1 & 74899) == 74898 && $composer4.getSkipping()) {
            $composer4.skipToGroupEnd();
            shape4 = shape;
            colors4 = colors;
            shadowElevation3 = shadowElevation;
            modifier4 = modifier2;
            enabled3 = z;
            $composer3 = $composer4;
            function210 = function24;
            function28 = function22;
            function29 = function23;
            tonalElevation3 = tonalElevation;
            interactionSource3 = interactionSource;
        } else {
            $composer4.startDefaults();
            if (($changed & 1) == 0 || $composer4.getDefaultsInvalid()) {
                Modifier.Companion modifier5 = i4 != 0 ? Modifier.INSTANCE : modifier2;
                boolean enabled4 = i5 != 0 ? true : z;
                if (i6 != 0) {
                    function24 = null;
                }
                Function2<? super Composer, ? super Integer, Unit> function211 = i7 != 0 ? null : function22;
                Function2<? super Composer, ? super Integer, Unit> function212 = i2 != 0 ? null : function23;
                if ((i & 1024) != 0) {
                    $dirty12 = $dirty1 & (-15);
                    shape2 = SearchBarDefaults.INSTANCE.getDockedShape($composer4, 6);
                } else {
                    $dirty12 = $dirty1;
                    shape2 = shape;
                }
                if ((i & 2048) != 0) {
                    i3 = i11;
                    $dirty = $dirty2;
                    $composer2 = $composer4;
                    colors2 = SearchBarDefaults.INSTANCE.m2699colorsdgg9oW8(0L, 0L, $composer2, RendererCapabilities.DECODER_SUPPORT_MASK, 3);
                    $dirty12 &= -113;
                } else {
                    i3 = i11;
                    $composer2 = $composer4;
                    $dirty = $dirty2;
                    colors2 = colors;
                }
                float tonalElevation4 = i9 != 0 ? SearchBarDefaults.INSTANCE.m2703getTonalElevationD9Ej5fM() : tonalElevation;
                float shadowElevation4 = i10 != 0 ? SearchBarDefaults.INSTANCE.m2702getShadowElevationD9Ej5fM() : shadowElevation;
                if (i3 != 0) {
                    function25 = function211;
                    tonalElevation2 = tonalElevation4;
                    shadowElevation2 = shadowElevation4;
                    interactionSource2 = null;
                    function26 = function24;
                    shape3 = shape2;
                    function27 = function212;
                    modifier3 = modifier5;
                    colors3 = colors2;
                    $dirty13 = $dirty12;
                    enabled2 = enabled4;
                } else {
                    interactionSource2 = interactionSource;
                    modifier3 = modifier5;
                    function25 = function211;
                    tonalElevation2 = tonalElevation4;
                    shadowElevation2 = shadowElevation4;
                    function26 = function24;
                    shape3 = shape2;
                    function27 = function212;
                    $dirty13 = $dirty12;
                    colors3 = colors2;
                    enabled2 = enabled4;
                }
            } else {
                $composer4.skipToGroupEnd();
                if ((i & 1024) != 0) {
                    $dirty1 &= -15;
                }
                if ((i & 2048) != 0) {
                    $dirty13 = $dirty1 & (-113);
                    function25 = function22;
                    function27 = function23;
                    shape3 = shape;
                    shadowElevation2 = shadowElevation;
                    interactionSource2 = interactionSource;
                    modifier3 = modifier2;
                    enabled2 = z;
                    $composer2 = $composer4;
                    function26 = function24;
                    colors3 = colors;
                    tonalElevation2 = tonalElevation;
                    $dirty = $dirty2;
                } else {
                    function25 = function22;
                    function27 = function23;
                    shape3 = shape;
                    shadowElevation2 = shadowElevation;
                    interactionSource2 = interactionSource;
                    modifier3 = modifier2;
                    enabled2 = z;
                    $composer2 = $composer4;
                    function26 = function24;
                    $dirty13 = $dirty1;
                    colors3 = colors;
                    tonalElevation2 = tonalElevation;
                    $dirty = $dirty2;
                }
            }
            $composer2.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1299054533, $dirty, $dirty13, "androidx.compose.material3.DockedSearchBar (SearchBar.android.kt:825)");
            }
            final String str2 = str;
            ComposableLambda composableLambdaRememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-303118761, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.SearchBar_androidKt$DockedSearchBar$4
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

                public final void invoke(Composer $composer5, int $changed2) {
                    ComposerKt.sourceInformation($composer5, "C827@37597L549:SearchBar.android.kt#uh7d8r");
                    if (($changed2 & 3) == 2 && $composer5.getSkipping()) {
                        $composer5.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-303118761, $changed2, -1, "androidx.compose.material3.DockedSearchBar.<anonymous> (SearchBar.android.kt:827)");
                    }
                    SearchBarDefaults.INSTANCE.InputField(str2, function1, function12, active, function13, SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), enabled2, function26, function25, function27, colors3.getInputFieldColors(), interactionSource2, $composer5, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, RendererCapabilities.DECODER_SUPPORT_MASK, 0);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, $composer2, 54);
            int i12 = 6 | (($dirty >> 6) & 112) | (($dirty >> 6) & 896) | (($dirty >> 6) & 7168) | (($dirty13 << 12) & 57344) | (($dirty13 << 12) & 458752) | (($dirty13 << 12) & 3670016) | (29360128 & ($dirty13 << 12)) | (($dirty13 << 9) & 234881024);
            Composer $composer5 = $composer2;
            SearchBarColors colors5 = colors3;
            m2706DockedSearchBarEQC0FA8(composableLambdaRememberComposableLambda, active, function13, modifier3, shape3, colors5, tonalElevation2, shadowElevation2, function3, $composer5, i12, 0);
            $composer3 = $composer5;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier4 = modifier3;
            tonalElevation3 = tonalElevation2;
            shadowElevation3 = shadowElevation2;
            colors4 = colors5;
            enabled3 = enabled2;
            function28 = function25;
            function29 = function27;
            interactionSource3 = interactionSource2;
            shape4 = shape3;
            function210 = function26;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer3.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.SearchBar_androidKt$DockedSearchBar$5
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
                    SearchBar_androidKt.m2707DockedSearchBareWTbjVg(query, function1, function12, active, function13, modifier4, enabled3, function210, function28, function29, shape4, colors4, tonalElevation3, shadowElevation3, interactionSource3, function3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), RecomposeScopeImplKt.updateChangedFlags($changed1), i);
                }
            });
        }
    }

    /* JADX INFO: renamed from: SearchBarImpl-j1jLAyQ, reason: not valid java name */
    public static final void m2710SearchBarImplj1jLAyQ(final Animatable<Float, AnimationVector1D> animatable, final MutableFloatState finalBackProgress, final MutableState<BackEventCompat> mutableState, final MutableState<BackEventCompat> mutableState2, Modifier modifier, final Function2<? super Composer, ? super Integer, Unit> function2, Shape shape, SearchBarColors colors, float tonalElevation, float shadowElevation, WindowInsets windowInsets, final Function3<? super ColumnScope, ? super Composer, ? super Integer, Unit> function3, Composer $composer, final int $changed, final int $changed1, final int i) {
        MutableState<BackEventCompat> mutableState3;
        final Modifier modifier2;
        SearchBarColors searchBarColors;
        int i2;
        int i3;
        float f;
        WindowInsets windowInsets2;
        Shape shape2;
        int $dirty;
        Modifier modifier3;
        int i4;
        SearchBarColors colors2;
        final float tonalElevation2;
        final float shadowElevation2;
        int $dirty1;
        int $dirty2;
        Modifier modifier4;
        final SearchBarColors colors3;
        Shape shape3;
        Modifier modifier5;
        WindowInsets windowInsets3;
        Shape shape4;
        Shape defaultInputFieldShape;
        GenericShape value$iv;
        Function2 surface;
        Object value$iv2;
        Composer $composer2;
        final WindowInsets windowInsets4;
        final SearchBarColors colors4;
        final float tonalElevation3;
        final Shape shape5;
        final float shadowElevation3;
        Composer $composer3 = $composer.startRestartGroup(-440333505);
        ComposerKt.sourceInformation($composer3, "C(SearchBarImpl)P(!1,4,5,3,7,6,9!1,10:c#ui.unit.Dp,8:c#ui.unit.Dp,11)861@38824L15,862@38889L8,865@39070L12,868@39168L7,870@39228L15,871@39295L15,872@39341L101,876@39475L666,892@40180L333,903@40538L99,916@40970L362:SearchBar.android.kt#uh7d8r");
        int $dirty3 = $changed;
        if ((i & 1) != 0) {
            $dirty3 |= 6;
        } else if (($changed & 6) == 0) {
            $dirty3 |= ($changed & 8) == 0 ? $composer3.changed(animatable) : $composer3.changedInstance(animatable) ? 4 : 2;
        }
        if ((i & 2) != 0) {
            $dirty3 |= 48;
        } else if (($changed & 48) == 0) {
            $dirty3 |= $composer3.changed(finalBackProgress) ? 32 : 16;
        }
        if ((i & 4) != 0) {
            $dirty3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty3 |= $composer3.changed(mutableState) ? 256 : 128;
        }
        if ((i & 8) != 0) {
            $dirty3 |= 3072;
            mutableState3 = mutableState2;
        } else if (($changed & 3072) == 0) {
            mutableState3 = mutableState2;
            $dirty3 |= $composer3.changed(mutableState3) ? 2048 : 1024;
        } else {
            mutableState3 = mutableState2;
        }
        int i5 = i & 16;
        if (i5 != 0) {
            $dirty3 |= 24576;
            modifier2 = modifier;
        } else if (($changed & 24576) == 0) {
            modifier2 = modifier;
            $dirty3 |= $composer3.changed(modifier2) ? 16384 : 8192;
        } else {
            modifier2 = modifier;
        }
        if ((i & 32) != 0) {
            $dirty3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            $dirty3 |= $composer3.changedInstance(function2) ? 131072 : 65536;
        }
        int $dirty12 = $changed1;
        if (($changed & 1572864) == 0) {
            $dirty3 |= ((i & 64) == 0 && $composer3.changed(shape)) ? 1048576 : 524288;
        }
        if (($changed & 12582912) == 0) {
            if ((i & 128) == 0) {
                searchBarColors = colors;
                int i6 = $composer3.changed(searchBarColors) ? 8388608 : 4194304;
                $dirty3 |= i6;
            } else {
                searchBarColors = colors;
            }
            $dirty3 |= i6;
        } else {
            searchBarColors = colors;
        }
        int i7 = i & 256;
        if (i7 != 0) {
            $dirty3 |= 100663296;
            i2 = i7;
        } else if (($changed & 100663296) == 0) {
            i2 = i7;
            $dirty3 |= $composer3.changed(tonalElevation) ? 67108864 : 33554432;
        } else {
            i2 = i7;
        }
        int i8 = i & 512;
        if (i8 != 0) {
            $dirty3 |= 805306368;
            i3 = i8;
            f = shadowElevation;
        } else if (($changed & 805306368) == 0) {
            i3 = i8;
            f = shadowElevation;
            $dirty3 |= $composer3.changed(f) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
        } else {
            i3 = i8;
            f = shadowElevation;
        }
        if (($changed1 & 6) == 0) {
            if ((i & 1024) == 0) {
                windowInsets2 = windowInsets;
                int i9 = $composer3.changed(windowInsets2) ? 4 : 2;
                $dirty12 |= i9;
            } else {
                windowInsets2 = windowInsets;
            }
            $dirty12 |= i9;
        } else {
            windowInsets2 = windowInsets;
        }
        if ((i & 2048) != 0) {
            $dirty12 |= 48;
        } else if (($changed1 & 48) == 0) {
            $dirty12 |= $composer3.changedInstance(function3) ? 32 : 16;
        }
        if ((306783379 & $dirty3) == 306783378 && ($dirty12 & 19) == 18 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            tonalElevation3 = tonalElevation;
            shadowElevation3 = f;
            $composer2 = $composer3;
            windowInsets4 = windowInsets2;
            shape5 = shape;
            colors4 = searchBarColors;
        } else {
            $composer3.startDefaults();
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                Modifier.Companion modifier6 = i5 != 0 ? Modifier.INSTANCE : modifier2;
                if ((i & 64) != 0) {
                    shape2 = SearchBarDefaults.INSTANCE.getInputFieldShape($composer3, 6);
                    $dirty = $dirty3 & (-3670017);
                } else {
                    shape2 = shape;
                    $dirty = $dirty3;
                }
                if ((i & 128) != 0) {
                    modifier3 = modifier6;
                    i4 = 6;
                    colors2 = SearchBarDefaults.INSTANCE.m2699colorsdgg9oW8(0L, 0L, $composer3, RendererCapabilities.DECODER_SUPPORT_MASK, 3);
                    $dirty &= -29360129;
                } else {
                    modifier3 = modifier6;
                    i4 = 6;
                    colors2 = colors;
                }
                float tonalElevation4 = i2 != 0 ? SearchBarDefaults.INSTANCE.m2703getTonalElevationD9Ej5fM() : tonalElevation;
                float shadowElevation4 = i3 != 0 ? SearchBarDefaults.INSTANCE.m2702getShadowElevationD9Ej5fM() : shadowElevation;
                if ((i & 1024) != 0) {
                    shadowElevation2 = shadowElevation4;
                    windowInsets2 = SearchBarDefaults.INSTANCE.getWindowInsets($composer3, i4);
                    $dirty1 = $dirty12 & (-15);
                    $dirty2 = $dirty;
                    modifier4 = modifier3;
                    tonalElevation2 = tonalElevation4;
                    colors3 = colors2;
                    shape3 = shape2;
                } else {
                    windowInsets2 = windowInsets;
                    tonalElevation2 = tonalElevation4;
                    shadowElevation2 = shadowElevation4;
                    $dirty1 = $dirty12;
                    $dirty2 = $dirty;
                    modifier4 = modifier3;
                    colors3 = colors2;
                    shape3 = shape2;
                }
            } else {
                $composer3.skipToGroupEnd();
                if ((i & 64) != 0) {
                    $dirty3 &= -3670017;
                }
                if ((i & 128) != 0) {
                    $dirty3 &= -29360129;
                }
                if ((i & 1024) != 0) {
                    $dirty12 &= -15;
                }
                SearchBarColors searchBarColors2 = searchBarColors;
                shadowElevation2 = f;
                colors3 = searchBarColors2;
                $dirty2 = $dirty3;
                modifier4 = modifier2;
                $dirty1 = $dirty12;
                shape3 = shape;
                tonalElevation2 = tonalElevation;
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                modifier5 = modifier4;
                windowInsets3 = windowInsets2;
                ComposerKt.traceEventStart(-440333505, $dirty2, $dirty1, "androidx.compose.material3.SearchBarImpl (SearchBar.android.kt:867)");
            } else {
                modifier5 = modifier4;
                windowInsets3 = windowInsets2;
            }
            ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
            int $dirty13 = $dirty1;
            ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object objConsume = $composer3.consume(localDensity);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            final Density density = (Density) objConsume;
            Shape defaultInputFieldShape2 = SearchBarDefaults.INSTANCE.getInputFieldShape($composer3, 6);
            Shape defaultFullScreenShape = SearchBarDefaults.INSTANCE.getFullScreenShape($composer3, 6);
            ComposerKt.sourceInformationMarkerStart($composer3, -1567245043, "CC(remember):SearchBar.android.kt#9igjgp");
            Object value$iv3 = $composer3.rememberedValue();
            if (value$iv3 == Composer.INSTANCE.getEmpty()) {
                value$iv3 = SnapshotStateKt.derivedStateOf(SnapshotStateKt.structuralEqualityPolicy(), new Function0<Boolean>() { // from class: androidx.compose.material3.SearchBar_androidKt$SearchBarImpl$useFullScreenShape$2$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // kotlin.jvm.functions.Function0
                    public final Boolean invoke() {
                        return Boolean.valueOf(animatable.getValue().floatValue() == 1.0f);
                    }
                });
                $composer3.updateRememberedValue(value$iv3);
            }
            State useFullScreenShape$delegate = (State) value$iv3;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            boolean zSearchBarImpl_j1jLAyQ$lambda$9 = SearchBarImpl_j1jLAyQ$lambda$9(useFullScreenShape$delegate);
            ComposerKt.sourceInformationMarkerStart($composer3, -1567240190, "CC(remember):SearchBar.android.kt#9igjgp");
            boolean invalid$iv = $composer3.changed(zSearchBarImpl_j1jLAyQ$lambda$9) | ((((3670016 & $dirty2) ^ 1572864) > 1048576 && $composer3.changed(shape3)) || ($dirty2 & 1572864) == 1048576);
            Object it$iv = $composer3.rememberedValue();
            if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                if (Intrinsics.areEqual(shape3, defaultInputFieldShape2)) {
                    shape4 = shape3;
                    defaultInputFieldShape = defaultInputFieldShape2;
                    value$iv = new GenericShape(new Function3<Path, Size, LayoutDirection, Unit>() { // from class: androidx.compose.material3.SearchBar_androidKt$SearchBarImpl$animatedShape$1$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(3);
                        }

                        @Override // kotlin.jvm.functions.Function3
                        public /* bridge */ /* synthetic */ Unit invoke(Path path, Size size, LayoutDirection layoutDirection) {
                            m2715invoke12SF9DM(path, size.m4526unboximpl(), layoutDirection);
                            return Unit.INSTANCE;
                        }

                        /* JADX INFO: renamed from: invoke-12SF9DM, reason: not valid java name */
                        public final void m2715invoke12SF9DM(Path $this$$receiver, long size, LayoutDirection layoutDirection) {
                            Density $this$invoke_12SF9DM_u24lambda_u240 = density;
                            Animatable<Float, AnimationVector1D> animatable2 = animatable;
                            float arg0$iv = SearchBar_androidKt.SearchBarCornerRadius;
                            float other$iv = 1 - animatable2.getValue().floatValue();
                            float radius = $this$invoke_12SF9DM_u24lambda_u240.mo405toPx0680j_4(Dp.m7505constructorimpl(arg0$iv * other$iv));
                            Path.addRoundRect$default($this$$receiver, RoundRectKt.m4507RoundRectsniSvfs(androidx.compose.ui.geometry.SizeKt.m4542toRectuvyYCjk(size), CornerRadiusKt.CornerRadius$default(radius, 0.0f, 2, null)), null, 2, null);
                        }
                    });
                } else {
                    shape4 = shape3;
                    defaultInputFieldShape = defaultInputFieldShape2;
                    value$iv = SearchBarImpl_j1jLAyQ$lambda$9(useFullScreenShape$delegate) ? defaultFullScreenShape : shape4;
                }
                $composer3.updateRememberedValue(value$iv);
            } else {
                shape4 = shape3;
                defaultInputFieldShape = defaultInputFieldShape2;
                value$iv = it$iv;
            }
            final Shape animatedShape = (Shape) value$iv;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            Function2 surface2 = ComposableLambdaKt.rememberComposableLambda(-170534294, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.SearchBar_androidKt$SearchBarImpl$surface$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer $composer4, int $changed2) {
                    ComposerKt.sourceInformation($composer4, "C896@40320L38,893@40194L309:SearchBar.android.kt#uh7d8r");
                    if (($changed2 & 3) != 2 || !$composer4.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-170534294, $changed2, -1, "androidx.compose.material3.SearchBarImpl.<anonymous> (SearchBar.android.kt:893)");
                        }
                        SurfaceKt.m2826SurfaceT9BRK9s(null, animatedShape, colors3.m2695getContainerColor0d7_KjU(), ColorSchemeKt.m2213contentColorForek8zF_U(colors3.m2695getContainerColor0d7_KjU(), $composer4, 0), tonalElevation2, shadowElevation2, null, ComposableSingletons$SearchBar_androidKt.INSTANCE.m2262getLambda2$material3_release(), $composer4, 12582912, 65);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer4.skipToGroupEnd();
                }
            }, $composer3, 54);
            ComposerKt.sourceInformationMarkerStart($composer3, -1567206741, "CC(remember):SearchBar.android.kt#9igjgp");
            Object it$iv2 = $composer3.rememberedValue();
            if (it$iv2 == Composer.INSTANCE.getEmpty()) {
                surface = surface2;
                value$iv2 = SnapshotStateKt.derivedStateOf(SnapshotStateKt.structuralEqualityPolicy(), new Function0<Boolean>() { // from class: androidx.compose.material3.SearchBar_androidKt$SearchBarImpl$showContent$2$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // kotlin.jvm.functions.Function0
                    public final Boolean invoke() {
                        return Boolean.valueOf(animatable.getValue().floatValue() > 0.0f);
                    }
                });
                $composer3.updateRememberedValue(value$iv2);
            } else {
                surface = surface2;
                value$iv2 = it$iv2;
            }
            State showContent$delegate = (State) value$iv2;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            $composer3.startReplaceGroup(-1567201454);
            ComposerKt.sourceInformation($composer3, "908@40729L215");
            Function2 wrappedContent = SearchBarImpl_j1jLAyQ$lambda$12(showContent$delegate) ? ComposableLambdaKt.rememberComposableLambda(147843820, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.SearchBar_androidKt$SearchBarImpl$wrappedContent$1
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

                public final void invoke(Composer $composer4, int $changed2) {
                    Object value$iv4;
                    Function0<ComposeUiNode> function0;
                    ComposerKt.sourceInformation($composer4, "C909@40777L35,909@40747L183:SearchBar.android.kt#uh7d8r");
                    if (($changed2 & 3) == 2 && $composer4.getSkipping()) {
                        $composer4.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(147843820, $changed2, -1, "androidx.compose.material3.SearchBarImpl.<anonymous> (SearchBar.android.kt:909)");
                    }
                    Modifier.Companion companion = Modifier.INSTANCE;
                    ComposerKt.sourceInformationMarkerStart($composer4, -502962614, "CC(remember):SearchBar.android.kt#9igjgp");
                    boolean invalid$iv2 = $composer4.changedInstance(animatable);
                    final Animatable<Float, AnimationVector1D> animatable2 = animatable;
                    Object it$iv3 = $composer4.rememberedValue();
                    if (invalid$iv2 || it$iv3 == Composer.INSTANCE.getEmpty()) {
                        value$iv4 = (Function1) new Function1<GraphicsLayerScope, Unit>() { // from class: androidx.compose.material3.SearchBar_androidKt$SearchBarImpl$wrappedContent$1$1$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(GraphicsLayerScope graphicsLayerScope) {
                                invoke2(graphicsLayerScope);
                                return Unit.INSTANCE;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(GraphicsLayerScope $this$graphicsLayer) {
                                $this$graphicsLayer.setAlpha(animatable2.getValue().floatValue());
                            }
                        };
                        $composer4.updateRememberedValue(value$iv4);
                    } else {
                        value$iv4 = it$iv3;
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    Modifier modifier$iv = GraphicsLayerModifierKt.graphicsLayer(companion, (Function1) value$iv4);
                    SearchBarColors searchBarColors3 = colors3;
                    Function3<ColumnScope, Composer, Integer, Unit> function32 = function3;
                    ComposerKt.sourceInformationMarkerStart($composer4, -483455358, "CC(Column)P(2,3,1)85@4251L61,86@4317L133:Column.kt#2w3rfo");
                    Arrangement.Vertical verticalArrangement$iv = Arrangement.INSTANCE.getTop();
                    Alignment.Horizontal horizontalAlignment$iv = Alignment.INSTANCE.getStart();
                    MeasurePolicy measurePolicy$iv = ColumnKt.columnMeasurePolicy(verticalArrangement$iv, horizontalAlignment$iv, $composer4, ((0 >> 3) & 14) | ((0 >> 3) & 112));
                    int $changed$iv$iv = (0 << 3) & 112;
                    ComposerKt.sourceInformationMarkerStart($composer4, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                    int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                    CompositionLocalMap localMap$iv$iv = $composer4.getCurrentCompositionLocalMap();
                    Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer4, modifier$iv);
                    Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
                    int $changed$iv$iv$iv = (($changed$iv$iv << 6) & 896) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer4, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                    if (!($composer4.getApplier() instanceof Applier)) {
                        ComposablesKt.invalidApplier();
                    }
                    $composer4.startReusableNode();
                    if ($composer4.getInserting()) {
                        function0 = constructor;
                        $composer4.createNode(function0);
                    } else {
                        function0 = constructor;
                        $composer4.useNode();
                    }
                    Composer $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer4);
                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                    if ($this$Layout_u24lambda_u240$iv$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                        $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                        $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), setCompositeKeyHash);
                    }
                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
                    int i10 = ($changed$iv$iv$iv >> 6) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer4, -384862393, "C87@4365L9:Column.kt#2w3rfo");
                    ColumnScope $this$invoke_u24lambda_u241 = ColumnScopeInstance.INSTANCE;
                    ComposerKt.sourceInformationMarkerStart($composer4, 1608207601, "C910@40836L46,911@40903L9:SearchBar.android.kt#uh7d8r");
                    DividerKt.m2355HorizontalDivider9IZ8Weo(null, 0.0f, searchBarColors3.m2696getDividerColor0d7_KjU(), $composer4, 0, 3);
                    function32.invoke($this$invoke_u24lambda_u241, $composer4, Integer.valueOf((((0 >> 6) & 112) | 6) & 14));
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    $composer4.endNode();
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, $composer3, 54) : null;
            $composer3.endReplaceGroup();
            Modifier modifier7 = modifier5;
            float tonalElevation5 = tonalElevation2;
            float shadowElevation5 = shadowElevation2;
            WindowInsets windowInsets5 = windowInsets3;
            Function2 surface3 = surface;
            SearchBarColors colors5 = colors3;
            SearchBarLayout(animatable, finalBackProgress, mutableState, mutableState3, modifier7, windowInsets5, function2, surface3, wrappedContent, $composer3, Animatable.$stable | 12582912 | ($dirty2 & 14) | ($dirty2 & 112) | ($dirty2 & 896) | ($dirty2 & 7168) | (57344 & $dirty2) | (($dirty13 << 15) & 458752) | (($dirty2 << 3) & 3670016));
            $composer2 = $composer3;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            windowInsets4 = windowInsets5;
            colors4 = colors5;
            tonalElevation3 = tonalElevation5;
            shape5 = shape4;
            shadowElevation3 = shadowElevation5;
            modifier2 = modifier7;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.SearchBar_androidKt$SearchBarImpl$1
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
                    SearchBar_androidKt.m2710SearchBarImplj1jLAyQ(animatable, finalBackProgress, mutableState, mutableState2, modifier2, function2, shape5, colors4, tonalElevation3, shadowElevation3, windowInsets4, function3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), RecomposeScopeImplKt.updateChangedFlags($changed1), i);
                }
            });
        }
    }

    private static final boolean SearchBarImpl_j1jLAyQ$lambda$9(State<Boolean> state) {
        Object thisObj$iv = state.getValue();
        return ((Boolean) thisObj$iv).booleanValue();
    }

    private static final boolean SearchBarImpl_j1jLAyQ$lambda$12(State<Boolean> state) {
        Object thisObj$iv = state.getValue();
        return ((Boolean) thisObj$iv).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:141:0x031b  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0327  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x032d  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0446  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0452  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0458  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x051c  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0520  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0666  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void SearchBarLayout(final Animatable<Float, AnimationVector1D> animatable, final MutableFloatState finalBackProgress, final MutableState<BackEventCompat> mutableState, final MutableState<BackEventCompat> mutableState2, final Modifier modifier, final WindowInsets windowInsets, final Function2<? super Composer, ? super Integer, Unit> function2, final Function2<? super Composer, ? super Integer, Unit> function22, final Function2<? super Composer, ? super Integer, Unit> function23, Composer $composer, final int $changed) {
        MutableState<BackEventCompat> mutableState3;
        MutableState<BackEventCompat> mutableState4;
        Object value$iv;
        Object value$iv2;
        final MutableWindowInsets unconsumedInsets;
        int $dirty;
        Function0<ComposeUiNode> function0;
        int $changed$iv$iv;
        int compositeKeyHash$iv$iv;
        Function0<ComposeUiNode> function02;
        Composer $this$Layout_u24lambda_u240$iv$iv;
        int compositeKeyHash$iv$iv2;
        Function0<ComposeUiNode> function03;
        Composer $this$Layout_u24lambda_u240$iv$iv2;
        Function0<ComposeUiNode> function04;
        Composer $composer2;
        Composer $composer3 = $composer.startRestartGroup(70029564);
        ComposerKt.sourceInformation($composer3, "C(SearchBarLayout)P(!1,3,4,2,6,8,5,7)945@42029L34,950@42191L120,965@42827L5009,946@42068L5768:SearchBar.android.kt#uh7d8r");
        int $dirty2 = $changed;
        if (($changed & 6) == 0) {
            $dirty2 |= ($changed & 8) == 0 ? $composer3.changed(animatable) : $composer3.changedInstance(animatable) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty2 |= $composer3.changed(finalBackProgress) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            mutableState3 = mutableState;
            $dirty2 |= $composer3.changed(mutableState3) ? 256 : 128;
        } else {
            mutableState3 = mutableState;
        }
        if (($changed & 3072) == 0) {
            mutableState4 = mutableState2;
            $dirty2 |= $composer3.changed(mutableState4) ? 2048 : 1024;
        } else {
            mutableState4 = mutableState2;
        }
        if (($changed & 24576) == 0) {
            $dirty2 |= $composer3.changed(modifier) ? 16384 : 8192;
        }
        if ((196608 & $changed) == 0) {
            $dirty2 |= $composer3.changed(windowInsets) ? 131072 : 65536;
        }
        if ((1572864 & $changed) == 0) {
            $dirty2 |= $composer3.changedInstance(function2) ? 1048576 : 524288;
        }
        if ((12582912 & $changed) == 0) {
            $dirty2 |= $composer3.changedInstance(function22) ? 8388608 : 4194304;
        }
        if ((100663296 & $changed) == 0) {
            $dirty2 |= $composer3.changedInstance(function23) ? 67108864 : 33554432;
        }
        if ((38347923 & $dirty2) != 38347922 || !$composer3.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(70029564, $dirty2, -1, "androidx.compose.material3.SearchBarLayout (SearchBar.android.kt:941)");
            }
            ComposerKt.sourceInformationMarkerStart($composer3, -660147884, "CC(remember):SearchBar.android.kt#9igjgp");
            Object it$iv = $composer3.rememberedValue();
            if (it$iv == Composer.INSTANCE.getEmpty()) {
                value$iv = new MutableWindowInsets(null, 1, null);
                $composer3.updateRememberedValue(value$iv);
            } else {
                value$iv = it$iv;
            }
            final MutableWindowInsets unconsumedInsets2 = (MutableWindowInsets) value$iv;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            Modifier modifierZIndex = ZIndexModifierKt.zIndex(modifier, 1.0f);
            ComposerKt.sourceInformationMarkerStart($composer3, -660142614, "CC(remember):SearchBar.android.kt#9igjgp");
            boolean invalid$iv = (458752 & $dirty2) == 131072;
            Object it$iv2 = $composer3.rememberedValue();
            if (invalid$iv || it$iv2 == Composer.INSTANCE.getEmpty()) {
                value$iv2 = (Function1) new Function1<WindowInsets, Unit>() { // from class: androidx.compose.material3.SearchBar_androidKt$SearchBarLayout$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(WindowInsets windowInsets2) {
                        invoke2(windowInsets2);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(WindowInsets consumedInsets) {
                        unconsumedInsets2.setInsets(WindowInsetsKt.exclude(windowInsets, consumedInsets));
                    }
                };
                $composer3.updateRememberedValue(value$iv2);
            } else {
                value$iv2 = it$iv2;
            }
            ComposerKt.sourceInformationMarkerEnd($composer3);
            Modifier modifierConsumeWindowInsets = WindowInsetsPaddingKt.consumeWindowInsets(WindowInsetsPaddingKt.onConsumedWindowInsetsChanged(modifierZIndex, (Function1) value$iv2), windowInsets);
            ComposerKt.sourceInformationMarkerStart($composer3, -660117373, "CC(remember):SearchBar.android.kt#9igjgp");
            boolean invalid$iv2 = (($dirty2 & 14) == 4 || (($dirty2 & 8) != 0 && $composer3.changedInstance(animatable))) | (($dirty2 & 7168) == 2048) | (($dirty2 & 112) == 32) | (($dirty2 & 896) == 256);
            Object value$iv3 = $composer3.rememberedValue();
            if (invalid$iv2 || value$iv3 == Composer.INSTANCE.getEmpty()) {
                int $dirty3 = $dirty2;
                unconsumedInsets = unconsumedInsets2;
                final MutableState<BackEventCompat> mutableState5 = mutableState4;
                final MutableState<BackEventCompat> mutableState6 = mutableState3;
                $dirty = $dirty3;
                value$iv3 = new MeasurePolicy() { // from class: androidx.compose.material3.SearchBar_androidKt$SearchBarLayout$2$1
                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    /* JADX INFO: renamed from: measure-3p2s80s */
                    public final MeasureResult mo41measure3p2s80s(final MeasureScope $this$Layout, List<? extends Measurable> list, final long constraints) {
                        Object it$iv3;
                        Placeable surfacePlaceable;
                        Placeable contentPlaceable;
                        int i;
                        int iM7457getMaxHeightimpl;
                        MeasureScope measureScope = $this$Layout;
                        long j = constraints;
                        final float animationProgress = animatable.getValue().floatValue();
                        List<? extends Measurable> list2 = list;
                        int $i$f$fastFirst = 0;
                        int index$iv$iv = 0;
                        int size = list2.size();
                        while (index$iv$iv < size) {
                            Object item$iv$iv = list2.get(index$iv$iv);
                            Measurable it = (Measurable) item$iv$iv;
                            List<? extends Measurable> list3 = list2;
                            int $i$f$fastFirst2 = $i$f$fastFirst;
                            if (Intrinsics.areEqual(LayoutIdKt.getLayoutId(it), "InputField")) {
                                Measurable inputFieldMeasurable = (Measurable) item$iv$iv;
                                List<? extends Measurable> list4 = list;
                                int $i$f$fastFirst3 = 0;
                                int index$iv$iv2 = 0;
                                int size2 = list4.size();
                                while (index$iv$iv2 < size2) {
                                    Object item$iv$iv2 = list4.get(index$iv$iv2);
                                    Measurable it2 = (Measurable) item$iv$iv2;
                                    List<? extends Measurable> list5 = list4;
                                    int $i$f$fastFirst4 = $i$f$fastFirst3;
                                    if (Intrinsics.areEqual(LayoutIdKt.getLayoutId(it2), "Surface")) {
                                        Measurable surfaceMeasurable = (Measurable) item$iv$iv2;
                                        List<? extends Measurable> list6 = list;
                                        int index$iv$iv3 = 0;
                                        int size3 = list6.size();
                                        while (true) {
                                            if (index$iv$iv3 >= size3) {
                                                it$iv3 = null;
                                                break;
                                            }
                                            it$iv3 = list6.get(index$iv$iv3);
                                            Measurable it3 = (Measurable) it$iv3;
                                            List<? extends Measurable> list7 = list6;
                                            if (Intrinsics.areEqual(LayoutIdKt.getLayoutId(it3), "Content")) {
                                                break;
                                            }
                                            index$iv$iv3++;
                                            list6 = list7;
                                        }
                                        Measurable contentMeasurable = (Measurable) it$iv3;
                                        final int topPadding = unconsumedInsets.getTop(measureScope) + measureScope.mo399roundToPx0680j_4(SearchBar_androidKt.getSearchBarVerticalPadding());
                                        int bottomPadding = measureScope.mo399roundToPx0680j_4(SearchBar_androidKt.getSearchBarVerticalPadding());
                                        int defaultStartWidth = ConstraintsKt.m7475constrainWidthK40F9xA(j, inputFieldMeasurable.maxIntrinsicWidth(Constraints.m7457getMaxHeightimpl(j)));
                                        int defaultStartHeight = ConstraintsKt.m7474constrainHeightK40F9xA(j, inputFieldMeasurable.minIntrinsicHeight(Constraints.m7458getMaxWidthimpl(j)));
                                        int predictiveBackStartWidth = MathKt.roundToInt(Constraints.m7458getMaxWidthimpl(j) * 0.9f);
                                        int predictiveBackStartHeight = MathKt.roundToInt(Constraints.m7457getMaxHeightimpl(j) * 0.9f);
                                        final float predictiveBackMultiplier = SearchBar_androidKt.calculatePredictiveBackMultiplier(mutableState5.getValue(), animationProgress, finalBackProgress.getFloatValue());
                                        int startWidth = MathHelpersKt.lerp(defaultStartWidth, predictiveBackStartWidth, predictiveBackMultiplier);
                                        int startHeight = MathHelpersKt.lerp(topPadding + defaultStartHeight, predictiveBackStartHeight, predictiveBackMultiplier);
                                        int maxWidth = Constraints.m7458getMaxWidthimpl(constraints);
                                        int maxHeight = Constraints.m7457getMaxHeightimpl(constraints);
                                        int minWidth = MathHelpersKt.lerp(startWidth, maxWidth, animationProgress);
                                        final int height = MathHelpersKt.lerp(startHeight, maxHeight, animationProgress);
                                        final int animatedTopPadding = MathHelpersKt.lerp(topPadding, 0, animationProgress);
                                        final int animatedBottomPadding = MathHelpersKt.lerp(0, bottomPadding, animationProgress);
                                        final Placeable inputFieldPlaceable = inputFieldMeasurable.mo6141measureBRTryo0(ConstraintsKt.Constraints(minWidth, maxWidth, defaultStartHeight, defaultStartHeight));
                                        int width = inputFieldPlaceable.getWidth();
                                        Placeable surfacePlaceable2 = surfaceMeasurable.mo6141measureBRTryo0(Constraints.INSTANCE.m7468fixedJhjzzOo(width, height - animatedTopPadding));
                                        if (contentMeasurable != null) {
                                            if (Constraints.m7453getHasBoundedHeightimpl(constraints)) {
                                                surfacePlaceable = surfacePlaceable2;
                                                i = 0;
                                                iM7457getMaxHeightimpl = RangesKt.coerceAtLeast(Constraints.m7457getMaxHeightimpl(constraints) - ((topPadding + defaultStartHeight) + bottomPadding), 0);
                                            } else {
                                                surfacePlaceable = surfacePlaceable2;
                                                i = 0;
                                                iM7457getMaxHeightimpl = Constraints.m7457getMaxHeightimpl(constraints);
                                            }
                                            contentPlaceable = contentMeasurable.mo6141measureBRTryo0(ConstraintsKt.Constraints(width, width, i, iM7457getMaxHeightimpl));
                                        } else {
                                            surfacePlaceable = surfacePlaceable2;
                                            contentPlaceable = null;
                                        }
                                        final Placeable contentPlaceable2 = contentPlaceable;
                                        final MutableState<BackEventCompat> mutableState7 = mutableState5;
                                        final MutableState<BackEventCompat> mutableState8 = mutableState6;
                                        final Placeable surfacePlaceable3 = surfacePlaceable;
                                        return MeasureScope.layout$default($this$Layout, width, height, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material3.SearchBar_androidKt$SearchBarLayout$2$1.1
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
                                                int minOffsetMargin = $this$Layout.mo399roundToPx0680j_4(SearchBar_androidKt.SearchBarPredictiveBackMinMargin);
                                                int predictiveBackOffsetX = SearchBar_androidKt.m2713calculatePredictiveBackOffsetXrOvwMX4(constraints, minOffsetMargin, mutableState7.getValue(), $this$Layout.getLayoutDirection(), animationProgress, predictiveBackMultiplier);
                                                int predictiveBackOffsetY = SearchBar_androidKt.m2714calculatePredictiveBackOffsetYdzo92Q0(constraints, minOffsetMargin, mutableState7.getValue(), mutableState8.getValue(), height, $this$Layout.mo399roundToPx0680j_4(SearchBar_androidKt.SearchBarPredictiveBackMaxOffsetY), predictiveBackMultiplier);
                                                Placeable.PlacementScope.placeRelative$default($this$layout, surfacePlaceable3, predictiveBackOffsetX, predictiveBackOffsetY + animatedTopPadding, 0.0f, 4, null);
                                                Placeable.PlacementScope.placeRelative$default($this$layout, inputFieldPlaceable, predictiveBackOffsetX, predictiveBackOffsetY + topPadding, 0.0f, 4, null);
                                                Placeable placeable = contentPlaceable2;
                                                if (placeable != null) {
                                                    Placeable.PlacementScope.placeRelative$default($this$layout, placeable, predictiveBackOffsetX, topPadding + predictiveBackOffsetY + inputFieldPlaceable.getHeight() + animatedBottomPadding, 0.0f, 4, null);
                                                }
                                            }
                                        }, 4, null);
                                    }
                                    index$iv$iv2++;
                                    measureScope = $this$Layout;
                                    j = constraints;
                                    list4 = list5;
                                    $i$f$fastFirst3 = $i$f$fastFirst4;
                                }
                                throw new NoSuchElementException("Collection contains no element matching the predicate.");
                            }
                            index$iv$iv++;
                            measureScope = $this$Layout;
                            j = constraints;
                            list2 = list3;
                            $i$f$fastFirst = $i$f$fastFirst2;
                        }
                        throw new NoSuchElementException("Collection contains no element matching the predicate.");
                    }
                };
                $composer3.updateRememberedValue(value$iv3);
            } else {
                $dirty = $dirty2;
                unconsumedInsets = unconsumedInsets2;
            }
            MeasurePolicy measurePolicy = (MeasurePolicy) value$iv3;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerStart($composer3, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
            int compositeKeyHash$iv = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
            CompositionLocalMap localMap$iv = $composer3.getCurrentCompositionLocalMap();
            Modifier materialized$iv = ComposedModifierKt.materializeModifier($composer3, modifierConsumeWindowInsets);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int $changed$iv$iv2 = ((0 << 6) & 896) | 6;
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
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv, measurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv, localMap$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if ($this$Layout_u24lambda_u240$iv.getInserting()) {
                $changed$iv$iv = $changed$iv$iv2;
            } else {
                $changed$iv$iv = $changed$iv$iv2;
                if (!Intrinsics.areEqual($this$Layout_u24lambda_u240$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv))) {
                }
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv, materialized$iv, ComposeUiNode.INSTANCE.getSetModifier());
                int i = ($changed$iv$iv >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer3, 36789781, "C955@42396L85,956@42494L119:SearchBar.android.kt#uh7d8r");
                Modifier modifier$iv = LayoutIdKt.layoutId(Modifier.INSTANCE, LayoutIdSurface);
                ComposerKt.sourceInformationMarkerStart($composer3, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                Alignment contentAlignment$iv = Alignment.INSTANCE.getTopStart();
                MeasurePolicy measurePolicy$iv = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv, true);
                ComposerKt.sourceInformationMarkerStart($composer3, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                CompositionLocalMap localMap$iv$iv = $composer3.getCurrentCompositionLocalMap();
                Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer3, modifier$iv);
                Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
                int $changed$iv$iv$iv = ((((390 << 3) & 112) << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart($composer3, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!($composer3.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                $composer3.startReusableNode();
                if (!$composer3.getInserting()) {
                    function02 = constructor2;
                    $composer3.createNode(function02);
                } else {
                    function02 = constructor2;
                    $composer3.useNode();
                }
                $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer3);
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash2 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if (!$this$Layout_u24lambda_u240$iv$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                    $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                    $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), setCompositeKeyHash2);
                }
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
                int i2 = ($changed$iv$iv$iv >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer3, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                int i3 = ((390 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer3, 1442016074, "C955@42470L9:SearchBar.android.kt#uh7d8r");
                function22.invoke($composer3, Integer.valueOf(($dirty >> 21) & 14));
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer3.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                Modifier modifier$iv2 = LayoutIdKt.layoutId(Modifier.INSTANCE, LayoutIdInputField);
                ComposerKt.sourceInformationMarkerStart($composer3, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                Alignment contentAlignment$iv2 = Alignment.INSTANCE.getTopStart();
                MeasurePolicy measurePolicy$iv2 = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv2, true);
                ComposerKt.sourceInformationMarkerStart($composer3, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                compositeKeyHash$iv$iv2 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                CompositionLocalMap localMap$iv$iv2 = $composer3.getCurrentCompositionLocalMap();
                Modifier materialized$iv$iv2 = ComposedModifierKt.materializeModifier($composer3, modifier$iv2);
                Function0<ComposeUiNode> constructor3 = ComposeUiNode.INSTANCE.getConstructor();
                int $changed$iv$iv$iv2 = ((((390 << 3) & 112) << 6) & 896) | 6;
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
                $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3967constructorimpl($composer3);
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash3 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if (!$this$Layout_u24lambda_u240$iv$iv2.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv2.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv2))) {
                    $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv2));
                    $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv2), setCompositeKeyHash3);
                }
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, materialized$iv$iv2, ComposeUiNode.INSTANCE.getSetModifier());
                int i4 = ($changed$iv$iv$iv2 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer3, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                int i5 = ((390 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer3, 1442132231, "C957@42587L12:SearchBar.android.kt#uh7d8r");
                function2.invoke($composer3, Integer.valueOf(($dirty >> 18) & 14));
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer3.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer3.startReplaceGroup(-1107184481);
                ComposerKt.sourceInformation($composer3, "*960@42668L127");
                if (function23 != null) {
                    $composer2 = $composer3;
                } else {
                    Modifier modifier$iv3 = LayoutIdKt.layoutId(Modifier.INSTANCE, LayoutIdSearchContent);
                    ComposerKt.sourceInformationMarkerStart($composer3, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                    Alignment contentAlignment$iv3 = Alignment.INSTANCE.getTopStart();
                    MeasurePolicy measurePolicy$iv3 = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv3, true);
                    ComposerKt.sourceInformationMarkerStart($composer3, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                    int compositeKeyHash$iv$iv3 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                    CompositionLocalMap localMap$iv$iv3 = $composer3.getCurrentCompositionLocalMap();
                    Modifier materialized$iv$iv3 = ComposedModifierKt.materializeModifier($composer3, modifier$iv3);
                    Function0<ComposeUiNode> constructor4 = ComposeUiNode.INSTANCE.getConstructor();
                    int $changed$iv$iv$iv3 = ((((390 << 3) & 112) << 6) & 896) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer3, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                    if (!($composer3.getApplier() instanceof Applier)) {
                        ComposablesKt.invalidApplier();
                    }
                    $composer3.startReusableNode();
                    if ($composer3.getInserting()) {
                        function04 = constructor4;
                        $composer3.createNode(function04);
                    } else {
                        function04 = constructor4;
                        $composer3.useNode();
                    }
                    Composer $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3967constructorimpl($composer3);
                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash4 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                    if ($this$Layout_u24lambda_u240$iv$iv3.getInserting()) {
                        $composer2 = $composer3;
                    } else {
                        $composer2 = $composer3;
                        if (!Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv3.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv3))) {
                        }
                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, materialized$iv$iv3, ComposeUiNode.INSTANCE.getSetModifier());
                        int i6 = ($changed$iv$iv$iv3 >> 6) & 14;
                        Composer $composer$iv = $composer2;
                        ComposerKt.sourceInformationMarkerStart($composer$iv, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                        BoxScopeInstance boxScopeInstance3 = BoxScopeInstance.INSTANCE;
                        int i7 = ((390 >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer$iv, 1302856683, "C961@42768L9:SearchBar.android.kt#uh7d8r");
                        function23.invoke($composer$iv, 0);
                        ComposerKt.sourceInformationMarkerEnd($composer$iv);
                        ComposerKt.sourceInformationMarkerEnd($composer$iv);
                        $composer2.endNode();
                        ComposerKt.sourceInformationMarkerEnd($composer2);
                        ComposerKt.sourceInformationMarkerEnd($composer2);
                        ComposerKt.sourceInformationMarkerEnd($composer2);
                        Unit unit = Unit.INSTANCE;
                        Unit unit2 = Unit.INSTANCE;
                    }
                    $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv3));
                    $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv3), setCompositeKeyHash4);
                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, materialized$iv$iv3, ComposeUiNode.INSTANCE.getSetModifier());
                    int i62 = ($changed$iv$iv$iv3 >> 6) & 14;
                    Composer $composer$iv2 = $composer2;
                    ComposerKt.sourceInformationMarkerStart($composer$iv2, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                    BoxScopeInstance boxScopeInstance32 = BoxScopeInstance.INSTANCE;
                    int i72 = ((390 >> 6) & 112) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer$iv2, 1302856683, "C961@42768L9:SearchBar.android.kt#uh7d8r");
                    function23.invoke($composer$iv2, 0);
                    ComposerKt.sourceInformationMarkerEnd($composer$iv2);
                    ComposerKt.sourceInformationMarkerEnd($composer$iv2);
                    $composer2.endNode();
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    Unit unit3 = Unit.INSTANCE;
                    Unit unit22 = Unit.INSTANCE;
                }
                $composer2.endReplaceGroup();
                ComposerKt.sourceInformationMarkerEnd($composer2);
                $composer3.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
            $this$Layout_u24lambda_u240$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv));
            $this$Layout_u24lambda_u240$iv.apply(Integer.valueOf(compositeKeyHash$iv), setCompositeKeyHash);
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv, materialized$iv, ComposeUiNode.INSTANCE.getSetModifier());
            int i8 = ($changed$iv$iv >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer3, 36789781, "C955@42396L85,956@42494L119:SearchBar.android.kt#uh7d8r");
            Modifier modifier$iv4 = LayoutIdKt.layoutId(Modifier.INSTANCE, LayoutIdSurface);
            ComposerKt.sourceInformationMarkerStart($composer3, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
            Alignment contentAlignment$iv4 = Alignment.INSTANCE.getTopStart();
            MeasurePolicy measurePolicy$iv4 = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv4, true);
            ComposerKt.sourceInformationMarkerStart($composer3, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
            compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
            CompositionLocalMap localMap$iv$iv4 = $composer3.getCurrentCompositionLocalMap();
            Modifier materialized$iv$iv4 = ComposedModifierKt.materializeModifier($composer3, modifier$iv4);
            Function0<ComposeUiNode> constructor22 = ComposeUiNode.INSTANCE.getConstructor();
            int $changed$iv$iv$iv4 = ((((390 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
            if (!($composer3.getApplier() instanceof Applier)) {
            }
            $composer3.startReusableNode();
            if (!$composer3.getInserting()) {
            }
            $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer3);
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv4, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv4, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash22 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if (!$this$Layout_u24lambda_u240$iv$iv.getInserting()) {
            }
            $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
            $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), setCompositeKeyHash22);
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv4, ComposeUiNode.INSTANCE.getSetModifier());
            int i22 = ($changed$iv$iv$iv4 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer3, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
            BoxScopeInstance boxScopeInstance4 = BoxScopeInstance.INSTANCE;
            int i32 = ((390 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, 1442016074, "C955@42470L9:SearchBar.android.kt#uh7d8r");
            function22.invoke($composer3, Integer.valueOf(($dirty >> 21) & 14));
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            $composer3.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            Modifier modifier$iv22 = LayoutIdKt.layoutId(Modifier.INSTANCE, LayoutIdInputField);
            ComposerKt.sourceInformationMarkerStart($composer3, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
            Alignment contentAlignment$iv22 = Alignment.INSTANCE.getTopStart();
            MeasurePolicy measurePolicy$iv22 = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv22, true);
            ComposerKt.sourceInformationMarkerStart($composer3, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
            compositeKeyHash$iv$iv2 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
            CompositionLocalMap localMap$iv$iv22 = $composer3.getCurrentCompositionLocalMap();
            Modifier materialized$iv$iv22 = ComposedModifierKt.materializeModifier($composer3, modifier$iv22);
            Function0<ComposeUiNode> constructor32 = ComposeUiNode.INSTANCE.getConstructor();
            int $changed$iv$iv$iv22 = ((((390 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
            if (!($composer3.getApplier() instanceof Applier)) {
            }
            $composer3.startReusableNode();
            if (!$composer3.getInserting()) {
            }
            $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3967constructorimpl($composer3);
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv22, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv22, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash32 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if (!$this$Layout_u24lambda_u240$iv$iv2.getInserting()) {
            }
            $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv2));
            $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv2), setCompositeKeyHash32);
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, materialized$iv$iv22, ComposeUiNode.INSTANCE.getSetModifier());
            int i42 = ($changed$iv$iv$iv22 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer3, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
            BoxScopeInstance boxScopeInstance22 = BoxScopeInstance.INSTANCE;
            int i52 = ((390 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, 1442132231, "C957@42587L12:SearchBar.android.kt#uh7d8r");
            function2.invoke($composer3, Integer.valueOf(($dirty >> 18) & 14));
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            $composer3.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            $composer3.startReplaceGroup(-1107184481);
            ComposerKt.sourceInformation($composer3, "*960@42668L127");
            if (function23 != null) {
            }
            $composer2.endReplaceGroup();
            ComposerKt.sourceInformationMarkerEnd($composer2);
            $composer3.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            if (ComposerKt.isTraceInProgress()) {
            }
        } else {
            $composer3.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer3.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.SearchBar_androidKt.SearchBarLayout.4
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

                public final void invoke(Composer composer, int i9) {
                    SearchBar_androidKt.SearchBarLayout(animatable, finalBackProgress, mutableState, mutableState2, modifier, windowInsets, function2, function22, function23, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float calculatePredictiveBackMultiplier(BackEventCompat currentBackEvent, float progress, float finalBackProgress) {
        if (currentBackEvent == null) {
            return 0.0f;
        }
        if (Float.isNaN(finalBackProgress)) {
            return 1.0f;
        }
        if (finalBackProgress <= 0.0f) {
            return 0.0f;
        }
        return progress / finalBackProgress;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: calculatePredictiveBackOffsetX-rOvwMX4, reason: not valid java name */
    public static final int m2713calculatePredictiveBackOffsetXrOvwMX4(long constraints, int minMargin, BackEventCompat currentBackEvent, LayoutDirection layoutDirection, float progress, float predictiveBackMultiplier) {
        if (currentBackEvent != null) {
            if (!(predictiveBackMultiplier == 0.0f)) {
                int directionMultiplier = currentBackEvent.getSwipeEdge() == 0 ? 1 : -1;
                int rtlMultiplier = layoutDirection == LayoutDirection.Ltr ? 1 : -1;
                float maxOffsetX = (Constraints.m7458getMaxWidthimpl(constraints) * SearchBarPredictiveBackMaxOffsetXRatio) - minMargin;
                float interpolatedOffsetX = (1 - progress) * maxOffsetX;
                return MathKt.roundToInt(interpolatedOffsetX * predictiveBackMultiplier * directionMultiplier * rtlMultiplier);
            }
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: calculatePredictiveBackOffsetY-dzo92Q0, reason: not valid java name */
    public static final int m2714calculatePredictiveBackOffsetYdzo92Q0(long constraints, int minMargin, BackEventCompat currentBackEvent, BackEventCompat firstBackEvent, int height, int maxOffsetY, float predictiveBackMultiplier) {
        if (firstBackEvent != null && currentBackEvent != null) {
            if (!(predictiveBackMultiplier == 0.0f)) {
                int availableVerticalSpace = Math.max(0, ((Constraints.m7457getMaxHeightimpl(constraints) - height) / 2) - minMargin);
                int adjustedMaxOffsetY = Math.min(availableVerticalSpace, maxOffsetY);
                float yDelta = currentBackEvent.getTouchY() - firstBackEvent.getTouchY();
                float yProgress = Math.abs(yDelta) / Constraints.m7457getMaxHeightimpl(constraints);
                float directionMultiplier = Math.signum(yDelta);
                int interpolatedOffsetY = MathHelpersKt.lerp(0, adjustedMaxOffsetY, yProgress);
                return MathKt.roundToInt(interpolatedOffsetY * predictiveBackMultiplier * directionMultiplier);
            }
        }
        return 0;
    }

    static {
        float arg0$iv = SearchBarDefaults.INSTANCE.m2701getInputFieldHeightD9Ej5fM();
        SearchBarCornerRadius = Dp.m7505constructorimpl(arg0$iv / 2);
        DockedExpandedTableMinHeight = Dp.m7505constructorimpl(PsExtractor.VIDEO_STREAM_MASK);
        SearchBarMinWidth = Dp.m7505constructorimpl(360);
        SearchBarMaxWidth = Dp.m7505constructorimpl(720);
        SearchBarVerticalPadding = Dp.m7505constructorimpl(8);
        SearchBarIconOffsetX = Dp.m7505constructorimpl(4);
        SearchBarPredictiveBackMinMargin = Dp.m7505constructorimpl(8);
        SearchBarPredictiveBackMaxOffsetY = Dp.m7505constructorimpl(24);
        AnimationEnterEasing = MotionTokens.INSTANCE.getEasingEmphasizedDecelerateCubicBezier();
        AnimationExitEasing = new CubicBezierEasing(0.0f, 1.0f, 0.0f, 1.0f);
        AnimationEnterFloatSpec = AnimationSpecKt.tween(600, 100, AnimationEnterEasing);
        AnimationExitFloatSpec = AnimationSpecKt.tween(AnimationExitDurationMillis, 100, AnimationExitEasing);
        AnimationPredictiveBackExitFloatSpec = AnimationSpecKt.tween$default(AnimationExitDurationMillis, 0, AnimationExitEasing, 2, null);
        AnimationEnterSizeSpec = AnimationSpecKt.tween(600, 100, AnimationEnterEasing);
        AnimationExitSizeSpec = AnimationSpecKt.tween(AnimationExitDurationMillis, 100, AnimationExitEasing);
        DockedEnterTransition = EnterExitTransitionKt.fadeIn$default(AnimationEnterFloatSpec, 0.0f, 2, null).plus(EnterExitTransitionKt.expandVertically$default(AnimationEnterSizeSpec, null, false, null, 14, null));
        DockedExitTransition = EnterExitTransitionKt.fadeOut$default(AnimationExitFloatSpec, 0.0f, 2, null).plus(EnterExitTransitionKt.shrinkVertically$default(AnimationExitSizeSpec, null, false, null, 14, null));
    }

    public static final float getDockedExpandedTableMinHeight() {
        return DockedExpandedTableMinHeight;
    }

    public static final float getSearchBarMinWidth() {
        return SearchBarMinWidth;
    }

    public static final float getSearchBarVerticalPadding() {
        return SearchBarVerticalPadding;
    }
}
