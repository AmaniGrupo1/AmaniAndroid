package androidx.compose.material3;

import androidx.autofill.HintConstants;
import androidx.compose.animation.AnimatedContentKt;
import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.animation.AnimatedContentTransitionScope;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.animation.ContentTransform;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.ExitTransition;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.BorderStrokeKt;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.foundation.lazy.grid.GridCells;
import androidx.compose.foundation.lazy.grid.LazyGridDslKt;
import androidx.compose.foundation.lazy.grid.LazyGridItemInfo;
import androidx.compose.foundation.lazy.grid.LazyGridItemScope;
import androidx.compose.foundation.lazy.grid.LazyGridScope;
import androidx.compose.foundation.lazy.grid.LazyGridState;
import androidx.compose.foundation.lazy.grid.LazyGridStateKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.ArrowDropDownKt;
import androidx.compose.material3.internal.CalendarDate;
import androidx.compose.material3.internal.CalendarModel;
import androidx.compose.material3.internal.CalendarModel_androidKt;
import androidx.compose.material3.internal.CalendarMonth;
import androidx.compose.material3.internal.ProvideContentColorTextStyleKt;
import androidx.compose.material3.internal.Strings;
import androidx.compose.material3.internal.Strings_androidKt;
import androidx.compose.material3.tokens.DatePickerModalTokens;
import androidx.compose.material3.tokens.MotionTokens;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.CompositionScopedCoroutineScopeCanceller;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.draw.RotateKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.CustomAccessibilityAction;
import androidx.compose.ui.semantics.LiveRegionMode;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.ScrollAxisRange;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntSize;
import androidx.media3.common.C;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.extractor.ts.TsExtractor;
import androidx.profileinstaller.ProfileVerifier;
import com.google.logging.type.LogSeverity;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: compiled from: DatePicker.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000Ì\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\u001a\u0084\u0001\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0013\u0010\u0017\u001a\u000f\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0018¢\u0006\u0002\b\u00192\u0013\u0010\u001a\u001a\u000f\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0018¢\u0006\u0002\b\u00192\u0013\u0010\u001b\u001a\u000f\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0018¢\u0006\u0002\b\u00192\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00032\u0011\u0010!\u001a\r\u0012\u0004\u0012\u00020\u00140\u0018¢\u0006\u0002\b\u0019H\u0001ø\u0001\u0000¢\u0006\u0004\b\"\u0010#\u001ak\u0010$\u001a\u00020\u00142\u0006\u0010%\u001a\u00020&2\b\b\u0002\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010'\u001a\u00020(2\u0015\b\u0002\u0010\u0017\u001a\u000f\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0018¢\u0006\u0002\b\u00192\u0015\b\u0002\u0010\u001a\u001a\u000f\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0018¢\u0006\u0002\b\u00192\b\b\u0002\u0010)\u001a\u00020*2\b\b\u0002\u0010\u001c\u001a\u00020\u001dH\u0007¢\u0006\u0002\u0010+\u001a\u008d\u0001\u0010,\u001a\u00020\u00142\b\u0010-\u001a\u0004\u0018\u00010.2\u0006\u0010/\u001a\u00020.2!\u00100\u001a\u001d\u0012\u0013\u0012\u00110.¢\u0006\f\b2\u0012\b\b3\u0012\u0004\b\b(4\u0012\u0004\u0012\u00020\u0014012!\u00105\u001a\u001d\u0012\u0013\u0012\u00110.¢\u0006\f\b2\u0012\b\b3\u0012\u0004\b\b(6\u0012\u0004\u0012\u00020\u0014012\u0006\u00107\u001a\u0002082\u0006\u00109\u001a\u00020:2\u0006\u0010'\u001a\u00020(2\u0006\u0010;\u001a\u00020<2\u0006\u0010\u001c\u001a\u00020\u001dH\u0003¢\u0006\u0002\u0010=\u001aZ\u0010>\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0013\u0010\u0017\u001a\u000f\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0018¢\u0006\u0002\b\u00192\u0006\u0010?\u001a\u00020@2\u0006\u0010A\u001a\u00020@2\u0006\u0010B\u001a\u00020\u00032\u0011\u0010!\u001a\r\u0012\u0004\u0012\u00020\u00140\u0018¢\u0006\u0002\b\u0019H\u0001ø\u0001\u0000¢\u0006\u0004\bC\u0010D\u001aT\u0010E\u001a\u00020&2\n\u0010F\u001a\u00060Gj\u0002`H2\n\b\u0002\u0010I\u001a\u0004\u0018\u00010.2\n\b\u0002\u0010J\u001a\u0004\u0018\u00010.2\b\b\u0002\u00109\u001a\u00020:2\b\b\u0002\u0010K\u001a\u00020L2\b\b\u0002\u0010;\u001a\u00020<H\u0007ø\u0001\u0000¢\u0006\u0004\bM\u0010N\u001an\u0010O\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010P\u001a\u00020*2\f\u0010Q\u001a\b\u0012\u0004\u0012\u00020\u00140\u00182\u0006\u0010R\u001a\u00020*2\u0006\u0010S\u001a\u00020*2\u0006\u0010T\u001a\u00020*2\u0006\u0010U\u001a\u00020*2\u0006\u0010V\u001a\u00020W2\u0006\u0010\u001c\u001a\u00020\u001d2\u0011\u0010!\u001a\r\u0012\u0004\u0012\u00020\u00140\u0018¢\u0006\u0002\b\u0019H\u0003¢\u0006\u0002\u0010X\u001a6\u0010Y\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010Z\u001a\u00020L2\u0012\u0010[\u001a\u000e\u0012\u0004\u0012\u00020L\u0012\u0004\u0012\u00020\u001401H\u0001ø\u0001\u0000¢\u0006\u0004\b\\\u0010]\u001a\u008d\u0001\u0010^\u001a\u00020\u00142\u0006\u0010_\u001a\u00020`2\b\u0010-\u001a\u0004\u0018\u00010.2!\u00100\u001a\u001d\u0012\u0013\u0012\u00110.¢\u0006\f\b2\u0012\b\b3\u0012\u0004\b\b(4\u0012\u0004\u0012\u00020\u0014012!\u00105\u001a\u001d\u0012\u0013\u0012\u00110.¢\u0006\f\b2\u0012\b\b3\u0012\u0004\b\b(6\u0012\u0004\u0012\u00020\u0014012\u0006\u00107\u001a\u0002082\u0006\u00109\u001a\u00020:2\u0006\u0010'\u001a\u00020(2\u0006\u0010;\u001a\u00020<2\u0006\u0010\u001c\u001a\u00020\u001dH\u0003¢\u0006\u0002\u0010a\u001av\u0010b\u001a\u00020\u00142\u0006\u0010c\u001a\u00020d2!\u00100\u001a\u001d\u0012\u0013\u0012\u00110.¢\u0006\f\b2\u0012\b\b3\u0012\u0004\b\b(4\u0012\u0004\u0012\u00020\u0014012\u0006\u0010e\u001a\u00020.2\b\u0010f\u001a\u0004\u0018\u00010.2\b\u0010g\u001a\u0004\u0018\u00010.2\b\u0010h\u001a\u0004\u0018\u00010i2\u0006\u0010'\u001a\u00020(2\u0006\u0010;\u001a\u00020<2\u0006\u0010\u001c\u001a\u00020\u001dH\u0001¢\u0006\u0002\u0010j\u001ag\u0010k\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010l\u001a\u00020*2\u0006\u0010m\u001a\u00020*2\u0006\u0010n\u001a\u00020*2\u0006\u0010o\u001a\u00020W2\f\u0010p\u001a\b\u0012\u0004\u0012\u00020\u00140\u00182\f\u0010q\u001a\b\u0012\u0004\u0012\u00020\u00140\u00182\f\u0010r\u001a\b\u0012\u0004\u0012\u00020\u00140\u00182\u0006\u0010\u001c\u001a\u00020\u001dH\u0003¢\u0006\u0002\u0010s\u001a\u009c\u0001\u0010t\u001a\u00020\u00142\b\u0010-\u001a\u0004\u0018\u00010.2\u0006\u0010/\u001a\u00020.2\u0006\u0010Z\u001a\u00020L2#\u00100\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010.¢\u0006\f\b2\u0012\b\b3\u0012\u0004\b\b(4\u0012\u0004\u0012\u00020\u0014012!\u00105\u001a\u001d\u0012\u0013\u0012\u00110.¢\u0006\f\b2\u0012\b\b3\u0012\u0004\b\b(6\u0012\u0004\u0012\u00020\u0014012\u0006\u00107\u001a\u0002082\u0006\u00109\u001a\u00020:2\u0006\u0010'\u001a\u00020(2\u0006\u0010;\u001a\u00020<2\u0006\u0010\u001c\u001a\u00020\u001dH\u0003ø\u0001\u0000¢\u0006\u0004\bu\u0010v\u001a\u001d\u0010w\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u00107\u001a\u000208H\u0001¢\u0006\u0002\u0010x\u001a^\u0010y\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010P\u001a\u00020*2\u0006\u0010z\u001a\u00020*2\f\u0010Q\u001a\b\u0012\u0004\u0012\u00020\u00140\u00182\u0006\u0010S\u001a\u00020*2\u0006\u0010V\u001a\u00020W2\u0006\u0010\u001c\u001a\u00020\u001d2\u0011\u0010!\u001a\r\u0012\u0004\u0012\u00020\u00140\u0018¢\u0006\u0002\b\u0019H\u0003¢\u0006\u0002\u0010{\u001a`\u0010|\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010/\u001a\u00020.2!\u0010}\u001a\u001d\u0012\u0013\u0012\u00110\f¢\u0006\f\b2\u0012\b\b3\u0012\u0004\b\b(~\u0012\u0004\u0012\u00020\u0014012\u0006\u0010;\u001a\u00020<2\u0006\u00107\u001a\u0002082\u0006\u00109\u001a\u00020:2\u0006\u0010\u001c\u001a\u00020\u001dH\u0003¢\u0006\u0002\u0010\u007f\u001aC\u0010\u0080\u0001\u001a\u00020\u00142\f\u0010Q\u001a\b\u0012\u0004\u0012\u00020\u00140\u00182\u0007\u0010\u0081\u0001\u001a\u00020*2\b\b\u0002\u0010\u0015\u001a\u00020\u00162\u0011\u0010!\u001a\r\u0012\u0004\u0012\u00020\u00140\u0018¢\u0006\u0002\b\u0019H\u0003¢\u0006\u0003\u0010\u0082\u0001\u001a6\u0010\u0083\u0001\u001a\n\u0012\u0005\u0012\u00030\u0085\u00010\u0084\u00012\u0007\u0010%\u001a\u00030\u0086\u00012\b\u0010\u0087\u0001\u001a\u00030\u0088\u00012\u0007\u0010\u0089\u0001\u001a\u00020W2\u0007\u0010\u008a\u0001\u001a\u00020WH\u0002\u001a>\u0010\u008b\u0001\u001a\u0004\u0018\u00010W2\u0007\u0010\u008c\u0001\u001a\u00020*2\u0007\u0010\u008d\u0001\u001a\u00020*2\u0007\u0010\u008e\u0001\u001a\u00020*2\u0007\u0010\u008f\u0001\u001a\u00020*2\u0007\u0010\u0090\u0001\u001a\u00020*H\u0003¢\u0006\u0003\u0010\u0091\u0001\u001a\u0011\u0010\u0092\u0001\u001a\u00020\f2\u0006\u00109\u001a\u00020:H\u0000\u001aK\u0010\u0093\u0001\u001a\u00020&2\n\b\u0002\u0010I\u001a\u0004\u0018\u00010.2\n\b\u0002\u0010J\u001a\u0004\u0018\u00010.2\b\b\u0002\u00109\u001a\u00020:2\b\b\u0002\u0010K\u001a\u00020L2\b\b\u0002\u0010;\u001a\u00020<H\u0007ø\u0001\u0000¢\u0006\u0006\b\u0094\u0001\u0010\u0095\u0001\u001aK\u0010\u0096\u0001\u001a\u00020\u00142\u0006\u0010_\u001a\u00020`2!\u00105\u001a\u001d\u0012\u0013\u0012\u00110.¢\u0006\f\b2\u0012\b\b3\u0012\u0004\b\b(6\u0012\u0004\u0012\u00020\u0014012\u0006\u00107\u001a\u0002082\u0006\u00109\u001a\u00020:H\u0080@¢\u0006\u0003\u0010\u0097\u0001\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u0016\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\n\n\u0002\u0010\u0006\u001a\u0004\b\u0004\u0010\u0005\"\u0014\u0010\u0007\u001a\u00020\u0001X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t\"\u000e\u0010\n\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\fX\u0082T¢\u0006\u0002\n\u0000\"\u0016\u0010\r\u001a\u00020\u0003X\u0080\u0004¢\u0006\n\n\u0002\u0010\u0006\u001a\u0004\b\u000e\u0010\u0005\"\u0016\u0010\u000f\u001a\u00020\u0003X\u0080\u0004¢\u0006\n\n\u0002\u0010\u0006\u001a\u0004\b\u0010\u0010\u0005\"\u000e\u0010\u0011\u001a\u00020\fX\u0082T¢\u0006\u0002\n\u0000\"\u0010\u0010\u0012\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0006\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u0006\u0098\u0001²\u0006\n\u0010n\u001a\u00020*X\u008a\u008e\u0002"}, d2 = {"DatePickerHeadlinePadding", "Landroidx/compose/foundation/layout/PaddingValues;", "DatePickerHorizontalPadding", "Landroidx/compose/ui/unit/Dp;", "getDatePickerHorizontalPadding", "()F", "F", "DatePickerModeTogglePadding", "getDatePickerModeTogglePadding", "()Landroidx/compose/foundation/layout/PaddingValues;", "DatePickerTitlePadding", "MaxCalendarRows", "", "MonthYearHeight", "getMonthYearHeight", "RecommendedSizeForAccessibility", "getRecommendedSizeForAccessibility", "YearsInRow", "YearsVerticalPadding", "DateEntryContainer", "", "modifier", "Landroidx/compose/ui/Modifier;", "title", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "headline", "modeToggleButton", "colors", "Landroidx/compose/material3/DatePickerColors;", "headlineTextStyle", "Landroidx/compose/ui/text/TextStyle;", "headerMinHeight", "content", "DateEntryContainer-au3_HiA", "(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/ui/text/TextStyle;FLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "DatePicker", "state", "Landroidx/compose/material3/DatePickerState;", "dateFormatter", "Landroidx/compose/material3/DatePickerFormatter;", "showModeToggle", "", "(Landroidx/compose/material3/DatePickerState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/DatePickerFormatter;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;II)V", "DatePickerContent", "selectedDateMillis", "", "displayedMonthMillis", "onDateSelectionChange", "Lkotlin/Function1;", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "dateInMillis", "onDisplayedMonthChange", "monthInMillis", "calendarModel", "Landroidx/compose/material3/internal/CalendarModel;", "yearRange", "Lkotlin/ranges/IntRange;", "selectableDates", "Landroidx/compose/material3/SelectableDates;", "(Ljava/lang/Long;JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/internal/CalendarModel;Lkotlin/ranges/IntRange;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;I)V", "DatePickerHeader", "titleContentColor", "Landroidx/compose/ui/graphics/Color;", "headlineContentColor", "minHeight", "DatePickerHeader-pc5RIQQ", "(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;JJFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "DatePickerState", "locale", "Ljava/util/Locale;", "Landroidx/compose/material3/CalendarLocale;", "initialSelectedDateMillis", "initialDisplayedMonthMillis", "initialDisplayMode", "Landroidx/compose/material3/DisplayMode;", "DatePickerState-sHin3Bw", "(Ljava/util/Locale;Ljava/lang/Long;Ljava/lang/Long;Lkotlin/ranges/IntRange;ILandroidx/compose/material3/SelectableDates;)Landroidx/compose/material3/DatePickerState;", "Day", "selected", "onClick", "animateChecked", "enabled", "today", "inRange", "description", "", "(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;ZZZZLjava/lang/String;Landroidx/compose/material3/DatePickerColors;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "DisplayModeToggleButton", "displayMode", "onDisplayModeChange", "DisplayModeToggleButton-tER2X8s", "(Landroidx/compose/ui/Modifier;ILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V", "HorizontalMonthsList", "lazyListState", "Landroidx/compose/foundation/lazy/LazyListState;", "(Landroidx/compose/foundation/lazy/LazyListState;Ljava/lang/Long;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/internal/CalendarModel;Lkotlin/ranges/IntRange;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;I)V", "Month", "month", "Landroidx/compose/material3/internal/CalendarMonth;", "todayMillis", "startDateMillis", "endDateMillis", "rangeSelectionInfo", "Landroidx/compose/material3/SelectedRangeInfo;", "(Landroidx/compose/material3/internal/CalendarMonth;Lkotlin/jvm/functions/Function1;JLjava/lang/Long;Ljava/lang/Long;Landroidx/compose/material3/SelectedRangeInfo;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;I)V", "MonthsNavigation", "nextAvailable", "previousAvailable", "yearPickerVisible", "yearPickerText", "onNextClicked", "onPreviousClicked", "onYearPickerButtonClicked", "(Landroidx/compose/ui/Modifier;ZZZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;I)V", "SwitchableDateEntryContent", "SwitchableDateEntryContent-d7iavvg", "(Ljava/lang/Long;JILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/internal/CalendarModel;Lkotlin/ranges/IntRange;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;I)V", "WeekDays", "(Landroidx/compose/material3/DatePickerColors;Landroidx/compose/material3/internal/CalendarModel;Landroidx/compose/runtime/Composer;I)V", "Year", "currentYear", "(Landroidx/compose/ui/Modifier;ZZLkotlin/jvm/functions/Function0;ZLjava/lang/String;Landroidx/compose/material3/DatePickerColors;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "YearPicker", "onYearSelected", "year", "(Landroidx/compose/ui/Modifier;JLkotlin/jvm/functions/Function1;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/internal/CalendarModel;Lkotlin/ranges/IntRange;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;I)V", "YearPickerMenuButton", "expanded", "(Lkotlin/jvm/functions/Function0;ZLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V", "customScrollActions", "", "Landroidx/compose/ui/semantics/CustomAccessibilityAction;", "Landroidx/compose/foundation/lazy/grid/LazyGridState;", "coroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "scrollUpLabel", "scrollDownLabel", "dayContentDescription", "rangeSelectionEnabled", "isToday", "isStartDate", "isEndDate", "isInRange", "(ZZZZZLandroidx/compose/runtime/Composer;I)Ljava/lang/String;", "numberOfMonthsInRange", "rememberDatePickerState", "rememberDatePickerState-EU0dCGE", "(Ljava/lang/Long;Ljava/lang/Long;Lkotlin/ranges/IntRange;ILandroidx/compose/material3/SelectableDates;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/DatePickerState;", "updateDisplayedMonth", "(Landroidx/compose/foundation/lazy/LazyListState;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/internal/CalendarModel;Lkotlin/ranges/IntRange;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class DatePickerKt {
    private static final int MaxCalendarRows = 6;
    private static final int YearsInRow = 3;
    private static final float RecommendedSizeForAccessibility = Dp.m7505constructorimpl(48);
    private static final float MonthYearHeight = Dp.m7505constructorimpl(56);
    private static final float DatePickerHorizontalPadding = Dp.m7505constructorimpl(12);
    private static final PaddingValues DatePickerModeTogglePadding = PaddingKt.m815PaddingValuesa9UjIt4$default(0.0f, 0.0f, Dp.m7505constructorimpl(12), Dp.m7505constructorimpl(12), 3, null);
    private static final PaddingValues DatePickerTitlePadding = PaddingKt.m815PaddingValuesa9UjIt4$default(Dp.m7505constructorimpl(24), Dp.m7505constructorimpl(16), Dp.m7505constructorimpl(12), 0.0f, 8, null);
    private static final PaddingValues DatePickerHeadlinePadding = PaddingKt.m815PaddingValuesa9UjIt4$default(Dp.m7505constructorimpl(24), 0.0f, Dp.m7505constructorimpl(12), Dp.m7505constructorimpl(12), 2, null);
    private static final float YearsVerticalPadding = Dp.m7505constructorimpl(16);

    /* JADX WARN: Removed duplicated region for block: B:131:0x0219  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x022c  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0282  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0063  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void DatePicker(final DatePickerState state, Modifier modifier, DatePickerFormatter dateFormatter, Function2<? super Composer, ? super Integer, Unit> function2, Function2<? super Composer, ? super Integer, Unit> function22, boolean showModeToggle, DatePickerColors colors, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        Function2<? super Composer, ? super Integer, Unit> function2RememberComposableLambda;
        Function2<? super Composer, ? super Integer, Unit> function2RememberComposableLambda2;
        boolean showModeToggle2;
        DatePickerColors datePickerColors;
        final DatePickerFormatter dateFormatter2;
        int $dirty;
        boolean z;
        int i2;
        Function2<? super Composer, ? super Integer, Unit> function23;
        boolean showModeToggle3;
        final DatePickerColors colors2;
        Modifier modifier3;
        Object value$iv;
        boolean showModeToggle4;
        Object value$iv2;
        Composer $composer2;
        final Function2<? super Composer, ? super Integer, Unit> function24;
        final boolean showModeToggle5;
        final Modifier modifier4;
        final DatePickerColors colors3;
        final DatePickerFormatter dateFormatter3;
        final Function2<? super Composer, ? super Integer, Unit> function25;
        int i3;
        Composer $composer3 = $composer.startRestartGroup(809701813);
        ComposerKt.sourceInformation($composer3, "C(DatePicker)P(5,3,1,6,2,4)171@8197L47,172@8285L170,178@8499L278,187@8865L8,189@8902L15,190@8942L62,207@9637L5,210@9746L655,191@9009L1392:DatePicker.kt#uh7d8r");
        int $dirty2 = $changed;
        if ((i & 1) != 0) {
            $dirty2 |= 6;
        } else if (($changed & 6) == 0) {
            $dirty2 |= $composer3.changed(state) ? 4 : 2;
        }
        int i4 = i & 2;
        if (i4 != 0) {
            $dirty2 |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty2 |= $composer3.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i & 4) != 0) {
                i3 = 128;
                $dirty2 |= i3;
            } else {
                if (($changed & 512) == 0 ? $composer3.changed(dateFormatter) : $composer3.changedInstance(dateFormatter)) {
                    i3 = 256;
                }
                $dirty2 |= i3;
            }
        }
        int i5 = i & 8;
        if (i5 != 0) {
            $dirty2 |= 3072;
            function2RememberComposableLambda = function2;
        } else if (($changed & 3072) == 0) {
            function2RememberComposableLambda = function2;
            $dirty2 |= $composer3.changedInstance(function2RememberComposableLambda) ? 2048 : 1024;
        } else {
            function2RememberComposableLambda = function2;
        }
        int i6 = i & 16;
        if (i6 != 0) {
            $dirty2 |= 24576;
            function2RememberComposableLambda2 = function22;
        } else if (($changed & 24576) == 0) {
            function2RememberComposableLambda2 = function22;
            $dirty2 |= $composer3.changedInstance(function2RememberComposableLambda2) ? 16384 : 8192;
        } else {
            function2RememberComposableLambda2 = function22;
        }
        int i7 = i & 32;
        if (i7 != 0) {
            $dirty2 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            showModeToggle2 = showModeToggle;
        } else if ((196608 & $changed) == 0) {
            showModeToggle2 = showModeToggle;
            $dirty2 |= $composer3.changed(showModeToggle2) ? 131072 : 65536;
        } else {
            showModeToggle2 = showModeToggle;
        }
        if ((1572864 & $changed) == 0) {
            if ((i & 64) == 0) {
                datePickerColors = colors;
                int i8 = $composer3.changed(datePickerColors) ? 1048576 : 524288;
                $dirty2 |= i8;
            } else {
                datePickerColors = colors;
            }
            $dirty2 |= i8;
        } else {
            datePickerColors = colors;
        }
        if ((599187 & $dirty2) == 599186 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            $composer2 = $composer3;
            modifier4 = modifier2;
            function24 = function2RememberComposableLambda;
            showModeToggle5 = showModeToggle2;
            colors3 = datePickerColors;
            dateFormatter3 = dateFormatter;
            function25 = function2RememberComposableLambda2;
        } else {
            $composer3.startDefaults();
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                if (i4 != 0) {
                    modifier2 = Modifier.INSTANCE;
                }
                if ((i & 4) != 0) {
                    ComposerKt.sourceInformationMarkerStart($composer3, 255556878, "CC(remember):DatePicker.kt#9igjgp");
                    Object it$iv = $composer3.rememberedValue();
                    if (it$iv == Composer.INSTANCE.getEmpty()) {
                        value$iv = DatePickerDefaults.dateFormatter$default(DatePickerDefaults.INSTANCE, null, null, null, 7, null);
                        $composer3.updateRememberedValue(value$iv);
                    } else {
                        value$iv = it$iv;
                    }
                    dateFormatter2 = (DatePickerFormatter) value$iv;
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    $dirty2 &= -897;
                } else {
                    dateFormatter2 = dateFormatter;
                }
                if (i5 != 0) {
                    $dirty = $dirty2;
                    z = true;
                    i2 = 54;
                    function2RememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1504998463, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.2
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                            invoke(composer, num.intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(Composer $composer4, int $changed2) {
                            ComposerKt.sourceInformation($composer4, "C173@8314L135:DatePicker.kt#uh7d8r");
                            if (($changed2 & 3) != 2 || !$composer4.getSkipping()) {
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-1504998463, $changed2, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:173)");
                                }
                                DatePickerDefaults.INSTANCE.m2305DatePickerTitlehOD91z4(state.mo2320getDisplayModejFl4v0(), PaddingKt.padding(Modifier.INSTANCE, DatePickerKt.DatePickerTitlePadding), $composer4, 432, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                    return;
                                }
                                return;
                            }
                            $composer4.skipToGroupEnd();
                        }
                    }, $composer3, 54);
                } else {
                    $dirty = $dirty2;
                    z = true;
                    i2 = 54;
                }
                if (i6 != 0) {
                    function2RememberComposableLambda2 = ComposableLambdaKt.rememberComposableLambda(-1780043561, z, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.3
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
                            ComposerKt.sourceInformation($composer4, "C179@8528L243:DatePicker.kt#uh7d8r");
                            if (($changed2 & 3) != 2 || !$composer4.getSkipping()) {
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-1780043561, $changed2, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:179)");
                                }
                                DatePickerDefaults.INSTANCE.m2304DatePickerHeadline3kbWawI(state.getSelectedDateMillis(), state.mo2320getDisplayModejFl4v0(), dateFormatter2, PaddingKt.padding(Modifier.INSTANCE, DatePickerKt.DatePickerHeadlinePadding), $composer4, 27648, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                    return;
                                }
                                return;
                            }
                            $composer4.skipToGroupEnd();
                        }
                    }, $composer3, i2);
                }
                if (i7 != 0) {
                    showModeToggle2 = true;
                }
                if ((i & 64) != 0) {
                    $dirty2 = $dirty & (-3670017);
                    boolean z2 = showModeToggle2;
                    colors2 = DatePickerDefaults.INSTANCE.colors($composer3, 6);
                    showModeToggle3 = z2;
                    function23 = function2RememberComposableLambda;
                    modifier3 = modifier2;
                } else {
                    $dirty2 = $dirty;
                    function23 = function2RememberComposableLambda;
                    showModeToggle3 = showModeToggle2;
                    colors2 = datePickerColors;
                    modifier3 = modifier2;
                }
            } else {
                $composer3.skipToGroupEnd();
                if ((i & 4) != 0) {
                    $dirty2 &= -897;
                }
                if ((i & 64) != 0) {
                    dateFormatter2 = dateFormatter;
                    $dirty2 &= -3670017;
                    function23 = function2RememberComposableLambda;
                    showModeToggle3 = showModeToggle2;
                    colors2 = datePickerColors;
                    modifier3 = modifier2;
                } else {
                    dateFormatter2 = dateFormatter;
                    function23 = function2RememberComposableLambda;
                    showModeToggle3 = showModeToggle2;
                    colors2 = datePickerColors;
                    modifier3 = modifier2;
                }
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(809701813, $dirty2, -1, "androidx.compose.material3.DatePicker (DatePicker.kt:188)");
            }
            Locale defaultLocale = CalendarLocale_androidKt.defaultLocale($composer3, 0);
            ComposerKt.sourceInformationMarkerStart($composer3, 255580733, "CC(remember):DatePicker.kt#9igjgp");
            boolean invalid$iv = $composer3.changed(defaultLocale);
            Object it$iv2 = $composer3.rememberedValue();
            if (invalid$iv) {
                showModeToggle4 = showModeToggle3;
            } else {
                showModeToggle4 = showModeToggle3;
                if (it$iv2 != Composer.INSTANCE.getEmpty()) {
                    value$iv2 = it$iv2;
                }
                final CalendarModel calendarModel = (CalendarModel) value$iv2;
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer3.startReplaceGroup(255587712);
                ComposerKt.sourceInformation($composer3, "197@9187L323");
                ComposableLambda composableLambdaRememberComposableLambda = !showModeToggle4 ? ComposableLambdaKt.rememberComposableLambda(1982226759, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.4
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                        invoke(composer, num.intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(Composer $composer4, int $changed2) {
                        Object value$iv3;
                        ComposerKt.sourceInformation($composer4, "C201@9419L50,198@9209L283:DatePicker.kt#uh7d8r");
                        if (($changed2 & 3) != 2 || !$composer4.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1982226759, $changed2, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:198)");
                            }
                            Modifier modifierPadding = PaddingKt.padding(Modifier.INSTANCE, DatePickerKt.getDatePickerModeTogglePadding());
                            int iMo2320getDisplayModejFl4v0 = state.mo2320getDisplayModejFl4v0();
                            ComposerKt.sourceInformationMarkerStart($composer4, -2079723184, "CC(remember):DatePicker.kt#9igjgp");
                            boolean invalid$iv2 = $composer4.changed(state);
                            final DatePickerState datePickerState = state;
                            Object it$iv3 = $composer4.rememberedValue();
                            if (invalid$iv2 || it$iv3 == Composer.INSTANCE.getEmpty()) {
                                value$iv3 = (Function1) new Function1<DisplayMode, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DatePicker$4$1$1
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Unit invoke(DisplayMode displayMode) {
                                        m2317invokevCnGnXg(displayMode.getValue());
                                        return Unit.INSTANCE;
                                    }

                                    /* JADX INFO: renamed from: invoke-vCnGnXg, reason: not valid java name */
                                    public final void m2317invokevCnGnXg(int displayMode) {
                                        datePickerState.mo2321setDisplayModevCnGnXg(displayMode);
                                    }
                                };
                                $composer4.updateRememberedValue(value$iv3);
                            } else {
                                value$iv3 = it$iv3;
                            }
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            DatePickerKt.m2313DisplayModeToggleButtontER2X8s(modifierPadding, iMo2320getDisplayModejFl4v0, (Function1) value$iv3, $composer4, 6);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                                return;
                            }
                            return;
                        }
                        $composer4.skipToGroupEnd();
                    }
                }, $composer3, 54) : null;
                $composer3.endReplaceGroup();
                DatePickerFormatter dateFormatter4 = dateFormatter2;
                $composer2 = $composer3;
                m2309DateEntryContainerau3_HiA(modifier3, function23, function2RememberComposableLambda2, composableLambdaRememberComposableLambda, colors2, TypographyKt.getValue(DatePickerModalTokens.INSTANCE.getHeaderHeadlineFont(), $composer3, 6), DatePickerModalTokens.INSTANCE.m3429getHeaderContainerHeightD9Ej5fM(), ComposableLambdaKt.rememberComposableLambda(-1840727866, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.5
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) throws Throwable {
                        invoke(composer, num.intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(Composer $composer4, int $changed2) throws Throwable {
                        Object value$iv3;
                        Object value$iv4;
                        ComposerKt.sourceInformation($composer4, "C215@9987L59,216@10085L91,211@9756L639:DatePicker.kt#uh7d8r");
                        if (($changed2 & 3) != 2 || !$composer4.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1840727866, $changed2, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:211)");
                            }
                            Long selectedDateMillis = state.getSelectedDateMillis();
                            long displayedMonthMillis = state.getDisplayedMonthMillis();
                            int iMo2320getDisplayModejFl4v0 = state.mo2320getDisplayModejFl4v0();
                            ComposerKt.sourceInformationMarkerStart($composer4, -2079704999, "CC(remember):DatePicker.kt#9igjgp");
                            boolean invalid$iv2 = $composer4.changed(state);
                            final DatePickerState datePickerState = state;
                            Object it$iv3 = $composer4.rememberedValue();
                            if (invalid$iv2 || it$iv3 == Composer.INSTANCE.getEmpty()) {
                                value$iv3 = (Function1) new Function1<Long, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DatePicker$5$1$1
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Unit invoke(Long l) {
                                        invoke2(l);
                                        return Unit.INSTANCE;
                                    }

                                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                                    public final void invoke2(Long dateInMillis) {
                                        datePickerState.setSelectedDateMillis(dateInMillis);
                                    }
                                };
                                $composer4.updateRememberedValue(value$iv3);
                            } else {
                                value$iv3 = it$iv3;
                            }
                            Function1 function1 = (Function1) value$iv3;
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            ComposerKt.sourceInformationMarkerStart($composer4, -2079701831, "CC(remember):DatePicker.kt#9igjgp");
                            boolean invalid$iv3 = $composer4.changed(state);
                            final DatePickerState datePickerState2 = state;
                            Object it$iv4 = $composer4.rememberedValue();
                            if (invalid$iv3 || it$iv4 == Composer.INSTANCE.getEmpty()) {
                                value$iv4 = (Function1) new Function1<Long, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DatePicker$5$2$1
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Unit invoke(Long l) {
                                        invoke(l.longValue());
                                        return Unit.INSTANCE;
                                    }

                                    public final void invoke(long monthInMillis) {
                                        datePickerState2.setDisplayedMonthMillis(monthInMillis);
                                    }
                                };
                                $composer4.updateRememberedValue(value$iv4);
                            } else {
                                value$iv4 = it$iv4;
                            }
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            DatePickerKt.m2314SwitchableDateEntryContentd7iavvg(selectedDateMillis, displayedMonthMillis, iMo2320getDisplayModejFl4v0, function1, (Function1) value$iv4, calendarModel, state.getYearRange(), dateFormatter2, state.getSelectableDates(), colors2, $composer4, 0);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                                return;
                            }
                            return;
                        }
                        $composer4.skipToGroupEnd();
                    }
                }, $composer3, 54), $composer2, (($dirty2 >> 3) & 14) | 14155776 | (($dirty2 >> 6) & 112) | (($dirty2 >> 6) & 896) | (($dirty2 >> 6) & 57344));
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                function24 = function23;
                showModeToggle5 = showModeToggle4;
                modifier4 = modifier3;
                colors3 = colors2;
                dateFormatter3 = dateFormatter4;
                function25 = function2RememberComposableLambda2;
            }
            value$iv2 = CalendarModel_androidKt.createCalendarModel(defaultLocale);
            $composer3.updateRememberedValue(value$iv2);
            final CalendarModel calendarModel2 = (CalendarModel) value$iv2;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            $composer3.startReplaceGroup(255587712);
            ComposerKt.sourceInformation($composer3, "197@9187L323");
            if (!showModeToggle4) {
            }
            $composer3.endReplaceGroup();
            DatePickerFormatter dateFormatter42 = dateFormatter2;
            $composer2 = $composer3;
            m2309DateEntryContainerau3_HiA(modifier3, function23, function2RememberComposableLambda2, composableLambdaRememberComposableLambda, colors2, TypographyKt.getValue(DatePickerModalTokens.INSTANCE.getHeaderHeadlineFont(), $composer3, 6), DatePickerModalTokens.INSTANCE.m3429getHeaderContainerHeightD9Ej5fM(), ComposableLambdaKt.rememberComposableLambda(-1840727866, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.5
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) throws Throwable {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer $composer4, int $changed2) throws Throwable {
                    Object value$iv3;
                    Object value$iv4;
                    ComposerKt.sourceInformation($composer4, "C215@9987L59,216@10085L91,211@9756L639:DatePicker.kt#uh7d8r");
                    if (($changed2 & 3) != 2 || !$composer4.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1840727866, $changed2, -1, "androidx.compose.material3.DatePicker.<anonymous> (DatePicker.kt:211)");
                        }
                        Long selectedDateMillis = state.getSelectedDateMillis();
                        long displayedMonthMillis = state.getDisplayedMonthMillis();
                        int iMo2320getDisplayModejFl4v0 = state.mo2320getDisplayModejFl4v0();
                        ComposerKt.sourceInformationMarkerStart($composer4, -2079704999, "CC(remember):DatePicker.kt#9igjgp");
                        boolean invalid$iv2 = $composer4.changed(state);
                        final DatePickerState datePickerState = state;
                        Object it$iv3 = $composer4.rememberedValue();
                        if (invalid$iv2 || it$iv3 == Composer.INSTANCE.getEmpty()) {
                            value$iv3 = (Function1) new Function1<Long, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DatePicker$5$1$1
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(Long l) {
                                    invoke2(l);
                                    return Unit.INSTANCE;
                                }

                                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                                public final void invoke2(Long dateInMillis) {
                                    datePickerState.setSelectedDateMillis(dateInMillis);
                                }
                            };
                            $composer4.updateRememberedValue(value$iv3);
                        } else {
                            value$iv3 = it$iv3;
                        }
                        Function1 function1 = (Function1) value$iv3;
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerStart($composer4, -2079701831, "CC(remember):DatePicker.kt#9igjgp");
                        boolean invalid$iv3 = $composer4.changed(state);
                        final DatePickerState datePickerState2 = state;
                        Object it$iv4 = $composer4.rememberedValue();
                        if (invalid$iv3 || it$iv4 == Composer.INSTANCE.getEmpty()) {
                            value$iv4 = (Function1) new Function1<Long, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DatePicker$5$2$1
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(Long l) {
                                    invoke(l.longValue());
                                    return Unit.INSTANCE;
                                }

                                public final void invoke(long monthInMillis) {
                                    datePickerState2.setDisplayedMonthMillis(monthInMillis);
                                }
                            };
                            $composer4.updateRememberedValue(value$iv4);
                        } else {
                            value$iv4 = it$iv4;
                        }
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        DatePickerKt.m2314SwitchableDateEntryContentd7iavvg(selectedDateMillis, displayedMonthMillis, iMo2320getDisplayModejFl4v0, function1, (Function1) value$iv4, calendarModel2, state.getYearRange(), dateFormatter2, state.getSelectableDates(), colors2, $composer4, 0);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer4.skipToGroupEnd();
                }
            }, $composer3, 54), $composer2, (($dirty2 >> 3) & 14) | 14155776 | (($dirty2 >> 6) & 112) | (($dirty2 >> 6) & 896) | (($dirty2 >> 6) & 57344));
            if (ComposerKt.isTraceInProgress()) {
            }
            function24 = function23;
            showModeToggle5 = showModeToggle4;
            modifier4 = modifier3;
            colors3 = colors2;
            dateFormatter3 = dateFormatter42;
            function25 = function2RememberComposableLambda2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt.DatePicker.6
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
                    DatePickerKt.DatePicker(state, modifier4, dateFormatter3, function24, function25, showModeToggle5, colors3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    /* JADX INFO: renamed from: rememberDatePickerState-EU0dCGE, reason: not valid java name */
    public static final DatePickerState m2316rememberDatePickerStateEU0dCGE(Long initialSelectedDateMillis, Long initialDisplayedMonthMillis, IntRange yearRange, int initialDisplayMode, SelectableDates selectableDates, Composer $composer, int $changed, int i) {
        Object value$iv;
        ComposerKt.sourceInformationMarkerStart($composer, 2065763010, "C(rememberDatePickerState)P(2,1,4,0:c#material3.DisplayMode)365@15667L15,366@15771L347,366@15694L424:DatePicker.kt#uh7d8r");
        final Long initialSelectedDateMillis2 = (i & 1) != 0 ? null : initialSelectedDateMillis;
        final Long initialDisplayedMonthMillis2 = (i & 2) != 0 ? initialSelectedDateMillis2 : initialDisplayedMonthMillis;
        final IntRange yearRange2 = (i & 4) != 0 ? DatePickerDefaults.INSTANCE.getYearRange() : yearRange;
        final int initialDisplayMode2 = (i & 8) != 0 ? DisplayMode.INSTANCE.m2352getPickerjFl4v0() : initialDisplayMode;
        final SelectableDates selectableDates2 = (i & 16) != 0 ? DatePickerDefaults.INSTANCE.getAllDates() : selectableDates;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(2065763010, $changed, -1, "androidx.compose.material3.rememberDatePickerState (DatePicker.kt:364)");
        }
        final Locale locale = CalendarLocale_androidKt.defaultLocale($composer, 0);
        boolean z = false;
        Object[] objArr = new Object[0];
        Saver<DatePickerStateImpl, Object> Saver = DatePickerStateImpl.INSTANCE.Saver(selectableDates2, locale);
        ComposerKt.sourceInformationMarkerStart($composer, -390857696, "CC(remember):DatePicker.kt#9igjgp");
        boolean zChangedInstance = (((($changed & 14) ^ 6) > 4 && $composer.changed(initialSelectedDateMillis2)) || ($changed & 6) == 4) | (((($changed & 112) ^ 48) > 32 && $composer.changed(initialDisplayedMonthMillis2)) || ($changed & 48) == 32) | $composer.changedInstance(yearRange2) | (((($changed & 7168) ^ 3072) > 2048 && $composer.changed(initialDisplayMode2)) || ($changed & 3072) == 2048);
        if ((((57344 & $changed) ^ 24576) > 16384 && $composer.changed(selectableDates2)) || ($changed & 24576) == 16384) {
            z = true;
        }
        boolean invalid$iv = z | zChangedInstance | $composer.changedInstance(locale);
        Object it$iv = $composer.rememberedValue();
        if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
            value$iv = (Function0) new Function0<DatePickerStateImpl>() { // from class: androidx.compose.material3.DatePickerKt$rememberDatePickerState$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final DatePickerStateImpl invoke() {
                    return new DatePickerStateImpl(initialSelectedDateMillis2, initialDisplayedMonthMillis2, yearRange2, initialDisplayMode2, selectableDates2, locale, null);
                }
            };
            $composer.updateRememberedValue(value$iv);
        } else {
            value$iv = it$iv;
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        DatePickerStateImpl datePickerStateImpl = (DatePickerStateImpl) RememberSaveableKt.m4137rememberSaveable(objArr, (Saver) Saver, (String) null, (Function0) value$iv, $composer, 0, 4);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        return datePickerStateImpl;
    }

    /* JADX INFO: renamed from: DatePickerState-sHin3Bw$default, reason: not valid java name */
    public static /* synthetic */ DatePickerState m2312DatePickerStatesHin3Bw$default(Locale locale, Long l, Long l2, IntRange intRange, int i, SelectableDates selectableDates, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            l = null;
        }
        if ((i2 & 4) != 0) {
            l2 = l;
        }
        if ((i2 & 8) != 0) {
            intRange = DatePickerDefaults.INSTANCE.getYearRange();
        }
        if ((i2 & 16) != 0) {
            i = DisplayMode.INSTANCE.m2352getPickerjFl4v0();
        }
        return m2311DatePickerStatesHin3Bw(locale, l, l2, intRange, i, (i2 & 32) != 0 ? DatePickerDefaults.INSTANCE.getAllDates() : selectableDates);
    }

    /* JADX INFO: renamed from: DatePickerState-sHin3Bw, reason: not valid java name */
    public static final DatePickerState m2311DatePickerStatesHin3Bw(Locale locale, Long initialSelectedDateMillis, Long initialDisplayedMonthMillis, IntRange yearRange, int initialDisplayMode, SelectableDates selectableDates) {
        return new DatePickerStateImpl(initialSelectedDateMillis, initialDisplayedMonthMillis, yearRange, initialDisplayMode, selectableDates, locale, null);
    }

    /* JADX INFO: renamed from: DateEntryContainer-au3_HiA, reason: not valid java name */
    public static final void m2309DateEntryContainerau3_HiA(final Modifier modifier, final Function2<? super Composer, ? super Integer, Unit> function2, final Function2<? super Composer, ? super Integer, Unit> function22, final Function2<? super Composer, ? super Integer, Unit> function23, final DatePickerColors colors, final TextStyle headlineTextStyle, final float headerMinHeight, final Function2<? super Composer, ? super Integer, Unit> function24, Composer $composer, final int $changed) {
        Modifier modifier2;
        Function2<? super Composer, ? super Integer, Unit> function25;
        DatePickerColors datePickerColors;
        TextStyle textStyle;
        float f;
        Function0<ComposeUiNode> function0;
        Composer $composer2 = $composer.startRestartGroup(1507356255);
        ComposerKt.sourceInformation($composer2, "C(DateEntryContainer)P(6,7,3,5!1,4,2:c#ui.unit.Dp)1303@60987L1775:DatePicker.kt#uh7d8r");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            modifier2 = modifier;
            $dirty |= $composer2.changed(modifier2) ? 4 : 2;
        } else {
            modifier2 = modifier;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer2.changedInstance(function2) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty |= $composer2.changedInstance(function22) ? 256 : 128;
        }
        if (($changed & 3072) == 0) {
            function25 = function23;
            $dirty |= $composer2.changedInstance(function25) ? 2048 : 1024;
        } else {
            function25 = function23;
        }
        if (($changed & 24576) == 0) {
            datePickerColors = colors;
            $dirty |= $composer2.changed(datePickerColors) ? 16384 : 8192;
        } else {
            datePickerColors = colors;
        }
        if ((196608 & $changed) == 0) {
            textStyle = headlineTextStyle;
            $dirty |= $composer2.changed(textStyle) ? 131072 : 65536;
        } else {
            textStyle = headlineTextStyle;
        }
        if ((1572864 & $changed) == 0) {
            f = headerMinHeight;
            $dirty |= $composer2.changed(f) ? 1048576 : 524288;
        } else {
            f = headerMinHeight;
        }
        if ((12582912 & $changed) == 0) {
            $dirty |= $composer2.changedInstance(function24) ? 8388608 : 4194304;
        }
        if ((4793491 & $dirty) != 4793490 || !$composer2.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1507356255, $dirty, -1, "androidx.compose.material3.DateEntryContainer (DatePicker.kt:1302)");
            }
            Modifier modifier$iv = BackgroundKt.m264backgroundbw27NRU$default(SemanticsModifierKt.semantics$default(SizeKt.m868sizeInqDBjuR0$default(modifier2, DatePickerModalTokens.INSTANCE.m3423getContainerWidthD9Ej5fM(), 0.0f, 0.0f, 0.0f, 14, null), false, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DateEntryContainer$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                    invoke2(semanticsPropertyReceiver);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(SemanticsPropertyReceiver $this$semantics) {
                    SemanticsPropertiesKt.setContainer($this$semantics, true);
                }
            }, 1, null), datePickerColors.getContainerColor(), null, 2, null);
            ComposerKt.sourceInformationMarkerStart($composer2, -483455358, "CC(Column)P(2,3,1)85@4251L61,86@4317L133:Column.kt#2w3rfo");
            Arrangement.Vertical verticalArrangement$iv = Arrangement.INSTANCE.getTop();
            Alignment.Horizontal horizontalAlignment$iv = Alignment.INSTANCE.getStart();
            MeasurePolicy measurePolicy$iv = ColumnKt.columnMeasurePolicy(verticalArrangement$iv, horizontalAlignment$iv, $composer2, ((0 >> 3) & 14) | ((0 >> 3) & 112));
            int $changed$iv$iv = (0 << 3) & 112;
            ComposerKt.sourceInformationMarkerStart($composer2, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
            int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer2, 0);
            CompositionLocalMap localMap$iv$iv = $composer2.getCurrentCompositionLocalMap();
            Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer2, modifier$iv);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int $changed$iv$iv$iv = (($changed$iv$iv << 6) & 896) | 6;
            int $dirty2 = $dirty;
            ComposerKt.sourceInformationMarkerStart($composer2, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
            if (!($composer2.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer2.startReusableNode();
            if ($composer2.getInserting()) {
                function0 = constructor;
                $composer2.createNode(function0);
            } else {
                function0 = constructor;
                $composer2.useNode();
            }
            Composer $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer2);
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if ($this$Layout_u24lambda_u240$iv$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), setCompositeKeyHash);
            }
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
            int i = ($changed$iv$iv$iv >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer2, -384862393, "C87@4365L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            int i2 = ((0 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer2, 133224346, "C1319@61556L1182,1313@61306L1432,1345@62747L9:DatePicker.kt#uh7d8r");
            final DatePickerColors datePickerColors2 = datePickerColors;
            final TextStyle textStyle2 = textStyle;
            final Function2<? super Composer, ? super Integer, Unit> function26 = function25;
            m2310DatePickerHeaderpc5RIQQ(Modifier.INSTANCE, function2, datePickerColors.getTitleContentColor(), datePickerColors.getHeadlineContentColor(), f, ComposableLambdaKt.rememberComposableLambda(-229007058, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DateEntryContainer$2$1
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

                public final void invoke(Composer $composer3, int $changed2) {
                    Function0<ComposeUiNode> function02;
                    Arrangement.HorizontalOrVertical horizontalArrangement;
                    Function0<ComposeUiNode> function03;
                    Composer $composer4;
                    ComposerKt.sourceInformation($composer3, "C1320@61570L1158:DatePicker.kt#uh7d8r");
                    if (($changed2 & 3) != 2 || !$composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-229007058, $changed2, -1, "androidx.compose.material3.DateEntryContainer.<anonymous>.<anonymous> (DatePicker.kt:1320)");
                        }
                        Modifier modifier$iv2 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                        final Function2<Composer, Integer, Unit> function27 = function22;
                        Function2<Composer, Integer, Unit> function28 = function26;
                        Function2<Composer, Integer, Unit> function29 = function2;
                        DatePickerColors datePickerColors3 = datePickerColors2;
                        TextStyle textStyle3 = textStyle2;
                        ComposerKt.sourceInformationMarkerStart($composer3, -483455358, "CC(Column)P(2,3,1)85@4251L61,86@4317L133:Column.kt#2w3rfo");
                        Arrangement.Vertical verticalArrangement$iv2 = Arrangement.INSTANCE.getTop();
                        Alignment.Horizontal horizontalAlignment$iv2 = Alignment.INSTANCE.getStart();
                        MeasurePolicy measurePolicy$iv2 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv2, horizontalAlignment$iv2, $composer3, ((6 >> 3) & 14) | ((6 >> 3) & 112));
                        int $changed$iv$iv2 = (6 << 3) & 112;
                        ComposerKt.sourceInformationMarkerStart($composer3, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv2 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                        CompositionLocalMap localMap$iv$iv2 = $composer3.getCurrentCompositionLocalMap();
                        Modifier materialized$iv$iv2 = ComposedModifierKt.materializeModifier($composer3, modifier$iv2);
                        Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
                        int $changed$iv$iv$iv2 = (($changed$iv$iv2 << 6) & 896) | 6;
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
                        Composer $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3967constructorimpl($composer3);
                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash2 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if ($this$Layout_u24lambda_u240$iv$iv2.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv2.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv2))) {
                            $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv2));
                            $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv2), setCompositeKeyHash2);
                        }
                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, materialized$iv$iv2, ComposeUiNode.INSTANCE.getSetModifier());
                        int i3 = ($changed$iv$iv$iv2 >> 6) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer3, -384862393, "C87@4365L9:Column.kt#2w3rfo");
                        ColumnScopeInstance columnScopeInstance2 = ColumnScopeInstance.INSTANCE;
                        int i4 = ((6 >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer3, 1718572491, "C1327@61931L520:DatePicker.kt#uh7d8r");
                        if (function27 == null || function28 == null) {
                            horizontalArrangement = function27 != null ? Arrangement.INSTANCE.getStart() : Arrangement.INSTANCE.getEnd();
                        } else {
                            horizontalArrangement = Arrangement.INSTANCE.getSpaceBetween();
                        }
                        Modifier modifier$iv3 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                        Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getCenterVertically();
                        ComposerKt.sourceInformationMarkerStart($composer3, 693286680, "CC(Row)P(2,1,3)98@4939L58,99@5002L130:Row.kt#2w3rfo");
                        MeasurePolicy measurePolicy$iv3 = RowKt.rowMeasurePolicy(horizontalArrangement, verticalAlignment$iv, $composer3, ((390 >> 3) & 14) | ((390 >> 3) & 112));
                        int $changed$iv$iv3 = (390 << 3) & 112;
                        ComposerKt.sourceInformationMarkerStart($composer3, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv3 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                        CompositionLocalMap localMap$iv$iv3 = $composer3.getCurrentCompositionLocalMap();
                        Modifier materialized$iv$iv3 = ComposedModifierKt.materializeModifier($composer3, modifier$iv3);
                        Function0<ComposeUiNode> constructor3 = ComposeUiNode.INSTANCE.getConstructor();
                        int $changed$iv$iv$iv3 = (($changed$iv$iv3 << 6) & 896) | 6;
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
                        Composer $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3967constructorimpl($composer3);
                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash3 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if ($this$Layout_u24lambda_u240$iv$iv3.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv3.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv3))) {
                            $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv3));
                            $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv3), setCompositeKeyHash3);
                        }
                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, materialized$iv$iv3, ComposeUiNode.INSTANCE.getSetModifier());
                        int i5 = ($changed$iv$iv$iv3 >> 6) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer3, -407918630, "C100@5047L9:Row.kt#2w3rfo");
                        int i6 = ((390 >> 6) & 112) | 6;
                        final RowScope $this$invoke_u24lambda_u241_u24lambda_u240 = RowScopeInstance.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart($composer3, -1253220996, "C:DatePicker.kt#uh7d8r");
                        $composer3.startReplaceGroup(-1287352520);
                        ComposerKt.sourceInformation($composer3, "1333@62258L106,1333@62214L150");
                        if (function27 != null) {
                            TextKt.ProvideTextStyle(textStyle3, ComposableLambdaKt.rememberComposableLambda(-962031352, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DateEntryContainer$2$1$1$1$1
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

                                public final void invoke(Composer $composer5, int $changed3) {
                                    Function0<ComposeUiNode> function04;
                                    ComposerKt.sourceInformation($composer5, "C1334@62288L50:DatePicker.kt#uh7d8r");
                                    if (($changed3 & 3) == 2 && $composer5.getSkipping()) {
                                        $composer5.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-962031352, $changed3, -1, "androidx.compose.material3.DateEntryContainer.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePicker.kt:1334)");
                                    }
                                    Modifier modifier$iv4 = RowScope.weight$default($this$invoke_u24lambda_u241_u24lambda_u240, Modifier.INSTANCE, 1.0f, false, 2, null);
                                    Function2<Composer, Integer, Unit> function210 = function27;
                                    ComposerKt.sourceInformationMarkerStart($composer5, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                                    Alignment contentAlignment$iv = Alignment.INSTANCE.getTopStart();
                                    MeasurePolicy measurePolicy$iv4 = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv, false);
                                    int $changed$iv$iv4 = (0 << 3) & 112;
                                    ComposerKt.sourceInformationMarkerStart($composer5, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                                    int compositeKeyHash$iv$iv4 = ComposablesKt.getCurrentCompositeKeyHash($composer5, 0);
                                    CompositionLocalMap localMap$iv$iv4 = $composer5.getCurrentCompositionLocalMap();
                                    Modifier materialized$iv$iv4 = ComposedModifierKt.materializeModifier($composer5, modifier$iv4);
                                    Function0<ComposeUiNode> constructor4 = ComposeUiNode.INSTANCE.getConstructor();
                                    int $changed$iv$iv$iv4 = (($changed$iv$iv4 << 6) & 896) | 6;
                                    ComposerKt.sourceInformationMarkerStart($composer5, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                                    if (!($composer5.getApplier() instanceof Applier)) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    $composer5.startReusableNode();
                                    if ($composer5.getInserting()) {
                                        function04 = constructor4;
                                        $composer5.createNode(function04);
                                    } else {
                                        function04 = constructor4;
                                        $composer5.useNode();
                                    }
                                    Composer $this$Layout_u24lambda_u240$iv$iv4 = Updater.m3967constructorimpl($composer5);
                                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv4, measurePolicy$iv4, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv4, localMap$iv$iv4, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                    Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash4 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                    if ($this$Layout_u24lambda_u240$iv$iv4.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv4.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv4))) {
                                        $this$Layout_u24lambda_u240$iv$iv4.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv4));
                                        $this$Layout_u24lambda_u240$iv$iv4.apply(Integer.valueOf(compositeKeyHash$iv$iv4), setCompositeKeyHash4);
                                    }
                                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv4, materialized$iv$iv4, ComposeUiNode.INSTANCE.getSetModifier());
                                    int i7 = ($changed$iv$iv$iv4 >> 6) & 14;
                                    ComposerKt.sourceInformationMarkerStart($composer5, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                    int i8 = ((0 >> 6) & 112) | 6;
                                    ComposerKt.sourceInformationMarkerStart($composer5, 1398435999, "C1334@62326L10:DatePicker.kt#uh7d8r");
                                    function210.invoke($composer5, 0);
                                    ComposerKt.sourceInformationMarkerEnd($composer5);
                                    ComposerKt.sourceInformationMarkerEnd($composer5);
                                    $composer5.endNode();
                                    ComposerKt.sourceInformationMarkerEnd($composer5);
                                    ComposerKt.sourceInformationMarkerEnd($composer5);
                                    ComposerKt.sourceInformationMarkerEnd($composer5);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }
                            }, $composer3, 54), $composer3, 48);
                        }
                        $composer3.endReplaceGroup();
                        $composer3.startReplaceGroup(-1287344444);
                        ComposerKt.sourceInformation($composer3, "1337@62425L8");
                        if (function28 != null) {
                            function28.invoke($composer3, 0);
                        }
                        $composer3.endReplaceGroup();
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        $composer3.endNode();
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        $composer3.startReplaceGroup(1995129302);
                        ComposerKt.sourceInformation($composer3, "1341@62650L46");
                        if (function29 == null && function27 == null && function28 == null) {
                            $composer4 = $composer3;
                        } else {
                            DividerKt.m2355HorizontalDivider9IZ8Weo(null, 0.0f, datePickerColors3.getDividerColor(), $composer3, 0, 3);
                            $composer4 = $composer3;
                        }
                        $composer4.endReplaceGroup();
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        $composer3.endNode();
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer3.skipToGroupEnd();
                }
            }, $composer2, 54), $composer2, ($dirty2 & 112) | 196614 | (($dirty2 >> 6) & 57344));
            function24.invoke($composer2, Integer.valueOf(($dirty2 >> 21) & 14));
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            $composer2.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DateEntryContainer$3
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

                public final void invoke(Composer composer, int i3) {
                    DatePickerKt.m2309DateEntryContainerau3_HiA(modifier, function2, function22, function23, colors, headlineTextStyle, headerMinHeight, function24, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }

    /* JADX INFO: renamed from: DisplayModeToggleButton-tER2X8s, reason: not valid java name */
    public static final void m2313DisplayModeToggleButtontER2X8s(Modifier modifier, final int displayMode, final Function1<? super DisplayMode, Unit> function1, Composer $composer, final int $changed) {
        boolean invalid$iv;
        Object value$iv;
        final Modifier modifier2;
        Object value$iv2;
        Composer $composer2 = $composer.startRestartGroup(1393846115);
        ComposerKt.sourceInformation($composer2, "C(DisplayModeToggleButton)P(1,0:c#material3.DisplayMode):DatePicker.kt#uh7d8r");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changed(modifier) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer2.changed(displayMode) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty |= $composer2.changedInstance(function1) ? 256 : 128;
        }
        if (($dirty & 147) != 146 || !$composer2.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1393846115, $dirty, -1, "androidx.compose.material3.DisplayModeToggleButton (DatePicker.kt:1355)");
            }
            if (DisplayMode.m2347equalsimpl0(displayMode, DisplayMode.INSTANCE.m2352getPickerjFl4v0())) {
                $composer2.startReplaceGroup(-411460444);
                ComposerKt.sourceInformation($composer2, "1357@63035L42,1357@63014L262");
                ComposerKt.sourceInformationMarkerStart($composer2, -428914158, "CC(remember):DatePicker.kt#9igjgp");
                invalid$iv = ($dirty & 896) == 256;
                Object it$iv = $composer2.rememberedValue();
                if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                    value$iv2 = (Function0) new Function0<Unit>() { // from class: androidx.compose.material3.DatePickerKt$DisplayModeToggleButton$1$1
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
                            function1.invoke(DisplayMode.m2344boximpl(DisplayMode.INSTANCE.m2351getInputjFl4v0()));
                        }
                    };
                    $composer2.updateRememberedValue(value$iv2);
                } else {
                    value$iv2 = it$iv;
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                modifier2 = modifier;
                IconButtonKt.IconButton((Function0) value$iv2, modifier2, false, null, null, ComposableSingletons$DatePickerKt.INSTANCE.m2244getLambda1$material3_release(), $composer2, (($dirty << 3) & 112) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 28);
                $composer2.endReplaceGroup();
            } else {
                $composer2.startReplaceGroup(-411178437);
                ComposerKt.sourceInformation($composer2, "1364@63319L43,1364@63298L271");
                ComposerKt.sourceInformationMarkerStart($composer2, -428905069, "CC(remember):DatePicker.kt#9igjgp");
                invalid$iv = ($dirty & 896) == 256;
                Object it$iv2 = $composer2.rememberedValue();
                if (invalid$iv || it$iv2 == Composer.INSTANCE.getEmpty()) {
                    value$iv = (Function0) new Function0<Unit>() { // from class: androidx.compose.material3.DatePickerKt$DisplayModeToggleButton$2$1
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
                            function1.invoke(DisplayMode.m2344boximpl(DisplayMode.INSTANCE.m2352getPickerjFl4v0()));
                        }
                    };
                    $composer2.updateRememberedValue(value$iv);
                } else {
                    value$iv = it$iv2;
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                modifier2 = modifier;
                IconButtonKt.IconButton((Function0) value$iv, modifier2, false, null, null, ComposableSingletons$DatePickerKt.INSTANCE.m2245getLambda2$material3_release(), $composer2, (($dirty << 3) & 112) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 28);
                $composer2.endReplaceGroup();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer2.skipToGroupEnd();
            modifier2 = modifier;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DisplayModeToggleButton$3
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

                public final void invoke(Composer composer, int i) {
                    DatePickerKt.m2313DisplayModeToggleButtontER2X8s(modifier2, displayMode, function1, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: SwitchableDateEntryContent-d7iavvg, reason: not valid java name */
    public static final void m2314SwitchableDateEntryContentd7iavvg(final Long selectedDateMillis, final long displayedMonthMillis, int displayMode, final Function1<? super Long, Unit> function1, final Function1<? super Long, Unit> function12, final CalendarModel calendarModel, final IntRange yearRange, final DatePickerFormatter dateFormatter, final SelectableDates selectableDates, final DatePickerColors colors, Composer $composer, final int $changed) throws Throwable {
        int i;
        Function1<? super Long, Unit> function13;
        Function1<? super Long, Unit> function14;
        CalendarModel calendarModel2;
        IntRange intRange;
        SelectableDates selectableDates2;
        DatePickerColors datePickerColors;
        Object value$iv;
        Composer $composer2;
        Composer $composer3 = $composer.startRestartGroup(-895379221);
        ComposerKt.sourceInformation($composer3, "C(SwitchableDateEntryContent)P(8,4,3:c#material3.DisplayMode,5,6!1,9,2,7)*1393@64365L7,1401@64621L2301,1445@66979L1081,1394@64401L3659:DatePicker.kt#uh7d8r");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer3.changed(selectedDateMillis) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer3.changed(displayedMonthMillis) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            i = displayMode;
            $dirty |= $composer3.changed(i) ? 256 : 128;
        } else {
            i = displayMode;
        }
        if (($changed & 3072) == 0) {
            function13 = function1;
            $dirty |= $composer3.changedInstance(function13) ? 2048 : 1024;
        } else {
            function13 = function1;
        }
        if (($changed & 24576) == 0) {
            function14 = function12;
            $dirty |= $composer3.changedInstance(function14) ? 16384 : 8192;
        } else {
            function14 = function12;
        }
        if ((196608 & $changed) == 0) {
            calendarModel2 = calendarModel;
            $dirty |= $composer3.changedInstance(calendarModel2) ? 131072 : 65536;
        } else {
            calendarModel2 = calendarModel;
        }
        if ((1572864 & $changed) == 0) {
            intRange = yearRange;
            $dirty |= $composer3.changedInstance(intRange) ? 1048576 : 524288;
        } else {
            intRange = yearRange;
        }
        if ((12582912 & $changed) == 0) {
            $dirty |= (16777216 & $changed) == 0 ? $composer3.changed(dateFormatter) : $composer3.changedInstance(dateFormatter) ? 8388608 : 4194304;
        }
        if ((100663296 & $changed) == 0) {
            selectableDates2 = selectableDates;
            $dirty |= $composer3.changed(selectableDates2) ? 67108864 : 33554432;
        } else {
            selectableDates2 = selectableDates;
        }
        if ((805306368 & $changed) == 0) {
            datePickerColors = colors;
            $dirty |= $composer3.changed(datePickerColors) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
        } else {
            datePickerColors = colors;
        }
        int $dirty2 = $dirty;
        if ((306783379 & $dirty2) == 306783378 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            $composer2 = $composer3;
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-895379221, $dirty2, -1, "androidx.compose.material3.SwitchableDateEntryContent (DatePicker.kt:1390)");
            }
            ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
            ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object objConsume = $composer3.consume(localDensity);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            Density $this$SwitchableDateEntryContent_d7iavvg_u24lambda_u246 = (Density) objConsume;
            final int parallaxTarget = -$this$SwitchableDateEntryContent_d7iavvg_u24lambda_u246.mo399roundToPx0680j_4(Dp.m7505constructorimpl(48));
            DisplayMode displayModeM2344boximpl = DisplayMode.m2344boximpl(i);
            Modifier modifierSemantics$default = SemanticsModifierKt.semantics$default(Modifier.INSTANCE, false, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DatePickerKt$SwitchableDateEntryContent$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                    invoke2(semanticsPropertyReceiver);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(SemanticsPropertyReceiver $this$semantics) {
                    SemanticsPropertiesKt.setContainer($this$semantics, true);
                }
            }, 1, null);
            ComposerKt.sourceInformationMarkerStart($composer3, -742574493, "CC(remember):DatePicker.kt#9igjgp");
            boolean invalid$iv = $composer3.changed(parallaxTarget);
            Object it$iv = $composer3.rememberedValue();
            if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                value$iv = (Function1) new Function1<AnimatedContentTransitionScope<DisplayMode>, ContentTransform>() { // from class: androidx.compose.material3.DatePickerKt$SwitchableDateEntryContent$2$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final ContentTransform invoke(AnimatedContentTransitionScope<DisplayMode> animatedContentTransitionScope) {
                        ContentTransform contentTransform;
                        if (DisplayMode.m2347equalsimpl0(animatedContentTransitionScope.getTargetState().getValue(), DisplayMode.INSTANCE.m2351getInputjFl4v0())) {
                            EnterTransition enterTransitionPlus = EnterExitTransitionKt.slideInVertically$default(null, new Function1<Integer, Integer>() { // from class: androidx.compose.material3.DatePickerKt$SwitchableDateEntryContent$2$1.1
                                public final Integer invoke(int height) {
                                    return Integer.valueOf(height);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Integer invoke(Integer num) {
                                    return invoke(num.intValue());
                                }
                            }, 1, null).plus(EnterExitTransitionKt.fadeIn$default(AnimationSpecKt.tween$default(100, 100, null, 4, null), 0.0f, 2, null));
                            ExitTransition exitTransitionFadeOut$default = EnterExitTransitionKt.fadeOut$default(AnimationSpecKt.tween$default(100, 0, null, 6, null), 0.0f, 2, null);
                            final int i2 = parallaxTarget;
                            contentTransform = AnimatedContentKt.togetherWith(enterTransitionPlus, exitTransitionFadeOut$default.plus(EnterExitTransitionKt.slideOutVertically$default(null, new Function1<Integer, Integer>() { // from class: androidx.compose.material3.DatePickerKt$SwitchableDateEntryContent$2$1.2
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                public final Integer invoke(int i3) {
                                    return Integer.valueOf(i2);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Integer invoke(Integer num) {
                                    return invoke(num.intValue());
                                }
                            }, 1, null)));
                        } else {
                            TweenSpec tweenSpecTween$default = AnimationSpecKt.tween$default(0, 50, null, 5, null);
                            final int i3 = parallaxTarget;
                            contentTransform = AnimatedContentKt.togetherWith(EnterExitTransitionKt.slideInVertically(tweenSpecTween$default, new Function1<Integer, Integer>() { // from class: androidx.compose.material3.DatePickerKt$SwitchableDateEntryContent$2$1.3
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Integer invoke(Integer num) {
                                    return invoke(num.intValue());
                                }

                                public final Integer invoke(int i4) {
                                    return Integer.valueOf(i3);
                                }
                            }).plus(EnterExitTransitionKt.fadeIn$default(AnimationSpecKt.tween$default(100, 100, null, 4, null), 0.0f, 2, null)), EnterExitTransitionKt.slideOutVertically$default(null, new Function1<Integer, Integer>() { // from class: androidx.compose.material3.DatePickerKt$SwitchableDateEntryContent$2$1.4
                                public final Integer invoke(int fullHeight) {
                                    return Integer.valueOf(fullHeight);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Integer invoke(Integer num) {
                                    return invoke(num.intValue());
                                }
                            }, 1, null).plus(EnterExitTransitionKt.fadeOut$default(AnimationSpecKt.tween$default(100, 0, null, 6, null), 0.0f, 2, null)));
                        }
                        return animatedContentTransitionScope.using(contentTransform, AnimatedContentKt.SizeTransform(true, new Function2<IntSize, IntSize, FiniteAnimationSpec<IntSize>>() { // from class: androidx.compose.material3.DatePickerKt$SwitchableDateEntryContent$2$1.5
                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ FiniteAnimationSpec<IntSize> invoke(IntSize intSize, IntSize intSize2) {
                                return m2318invokeTemP2vQ(intSize.m7680unboximpl(), intSize2.m7680unboximpl());
                            }

                            /* JADX INFO: renamed from: invoke-TemP2vQ, reason: not valid java name */
                            public final FiniteAnimationSpec<IntSize> m2318invokeTemP2vQ(long j, long j2) {
                                return AnimationSpecKt.tween$default(LogSeverity.ERROR_VALUE, 0, MotionTokens.INSTANCE.getEasingEmphasizedDecelerateCubicBezier(), 2, null);
                            }
                        }));
                    }
                };
                $composer3.updateRememberedValue(value$iv);
            } else {
                value$iv = it$iv;
            }
            ComposerKt.sourceInformationMarkerEnd($composer3);
            final Function1<? super Long, Unit> function15 = function13;
            final Function1<? super Long, Unit> function16 = function14;
            final CalendarModel calendarModel3 = calendarModel2;
            final IntRange intRange2 = intRange;
            final SelectableDates selectableDates3 = selectableDates2;
            final DatePickerColors datePickerColors2 = datePickerColors;
            AnimatedContentKt.AnimatedContent(displayModeM2344boximpl, modifierSemantics$default, (Function1) value$iv, null, "DatePickerDisplayModeAnimation", null, ComposableLambdaKt.rememberComposableLambda(-459778869, true, new Function4<AnimatedContentScope, DisplayMode, Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$SwitchableDateEntryContent$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(4);
                }

                @Override // kotlin.jvm.functions.Function4
                public /* bridge */ /* synthetic */ Unit invoke(AnimatedContentScope animatedContentScope, DisplayMode displayMode2, Composer composer, Integer num) {
                    m2319invokefYndouo(animatedContentScope, displayMode2.getValue(), composer, num.intValue());
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke-fYndouo, reason: not valid java name */
                public final void m2319invokefYndouo(AnimatedContentScope $this$AnimatedContent, int mode, Composer $composer4, int $changed2) {
                    ComposerKt.sourceInformation($composer4, "CP(0:c#material3.DisplayMode):DatePicker.kt#uh7d8r");
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-459778869, $changed2, -1, "androidx.compose.material3.SwitchableDateEntryContent.<anonymous> (DatePicker.kt:1446)");
                    }
                    if (DisplayMode.m2347equalsimpl0(mode, DisplayMode.INSTANCE.m2352getPickerjFl4v0())) {
                        $composer4.startReplaceGroup(-1870124677);
                        ComposerKt.sourceInformation($composer4, "1448@67061L534");
                        DatePickerKt.DatePickerContent(selectedDateMillis, displayedMonthMillis, function15, function16, calendarModel3, intRange2, dateFormatter, selectableDates3, datePickerColors2, $composer4, 0);
                        $composer4.endReplaceGroup();
                    } else if (DisplayMode.m2347equalsimpl0(mode, DisplayMode.INSTANCE.m2351getInputjFl4v0())) {
                        $composer4.startReplaceGroup(-1870106124);
                        ComposerKt.sourceInformation($composer4, "1460@67645L399");
                        DateInputKt.DateInputContent(selectedDateMillis, function15, calendarModel3, intRange2, dateFormatter, selectableDates3, datePickerColors2, $composer4, 0);
                        $composer4.endReplaceGroup();
                    } else {
                        $composer4.startReplaceGroup(-2138321635);
                        $composer4.endReplaceGroup();
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, $composer3, 54), $composer3, (($dirty2 >> 6) & 14) | 1597440, 40);
            $composer2 = $composer3;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final int i2 = i;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$SwitchableDateEntryContent$4
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) throws Throwable {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i3) throws Throwable {
                    DatePickerKt.m2314SwitchableDateEntryContentd7iavvg(selectedDateMillis, displayedMonthMillis, i2, function1, function12, calendarModel, yearRange, dateFormatter, selectableDates, colors, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:102:0x02b6  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x02e9  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0360  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x036e  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0414  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0420  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0424  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0453  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0469  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0525  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0531  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0537  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0568  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x057e  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x06fb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void DatePickerContent(final Long selectedDateMillis, final long displayedMonthMillis, final Function1<? super Long, Unit> function1, final Function1<? super Long, Unit> function12, final CalendarModel calendarModel, final IntRange yearRange, final DatePickerFormatter dateFormatter, final SelectableDates selectableDates, final DatePickerColors colors, Composer $composer, final int $changed) {
        Object value$iv$iv;
        Function0<ComposeUiNode> function0;
        MeasurePolicy measurePolicy$iv;
        String monthYear;
        boolean invalid$iv;
        Object value$iv;
        boolean invalid$iv2;
        Object value$iv2;
        boolean invalid$iv3;
        Composer $composer2;
        Composer $composer3;
        Composer $composer4;
        Composer $this$Layout_u24lambda_u240$iv$iv;
        MutableState yearPickerVisible$delegate;
        CompositionLocalMap localMap$iv$iv;
        Function0<ComposeUiNode> function02;
        Composer $this$Layout_u24lambda_u240$iv$iv2;
        Modifier modifier$iv;
        Function0<ComposeUiNode> function03;
        Composer $composer5 = $composer.startRestartGroup(-434467002);
        ComposerKt.sourceInformation($composer5, "C(DatePickerContent)P(7,3,4,5!1,8,2,6)1488@68600L87,1489@68713L24,1490@68767L42,1491@68834L15,1492@68854L5031:DatePicker.kt#uh7d8r");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer5.changed(selectedDateMillis) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer5.changed(displayedMonthMillis) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty |= $composer5.changedInstance(function1) ? 256 : 128;
        }
        if (($changed & 3072) == 0) {
            $dirty |= $composer5.changedInstance(function12) ? 2048 : 1024;
        }
        if (($changed & 24576) == 0) {
            $dirty |= $composer5.changedInstance(calendarModel) ? 16384 : 8192;
        }
        if ((196608 & $changed) == 0) {
            $dirty |= $composer5.changedInstance(yearRange) ? 131072 : 65536;
        }
        if ((1572864 & $changed) == 0) {
            $dirty |= (2097152 & $changed) == 0 ? $composer5.changed(dateFormatter) : $composer5.changedInstance(dateFormatter) ? 1048576 : 524288;
        }
        if ((12582912 & $changed) == 0) {
            $dirty |= $composer5.changed(selectableDates) ? 8388608 : 4194304;
        }
        if ((100663296 & $changed) == 0) {
            $dirty |= $composer5.changed(colors) ? 67108864 : 33554432;
        }
        if ((38347923 & $dirty) != 38347922 || !$composer5.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-434467002, $dirty, -1, "androidx.compose.material3.DatePickerContent (DatePicker.kt:1485)");
            }
            final CalendarMonth displayedMonth = calendarModel.getMonth(displayedMonthMillis);
            final LazyListState monthsListState = LazyListStateKt.rememberLazyListState(displayedMonth.indexIn(yearRange), 0, $composer5, 0, 2);
            ComposerKt.sourceInformationMarkerStart($composer5, 773894976, "CC(rememberCoroutineScope)489@20472L144:Effects.kt#9igjgp");
            ComposerKt.sourceInformationMarkerStart($composer5, -954363344, "CC(remember):Effects.kt#9igjgp");
            Object it$iv$iv = $composer5.rememberedValue();
            if (it$iv$iv == Composer.INSTANCE.getEmpty()) {
                value$iv$iv = new CompositionScopedCoroutineScopeCanceller(EffectsKt.createCompositionCoroutineScope(EmptyCoroutineContext.INSTANCE, $composer5));
                $composer5.updateRememberedValue(value$iv$iv);
            } else {
                value$iv$iv = it$iv$iv;
            }
            CompositionScopedCoroutineScopeCanceller wrapper$iv = (CompositionScopedCoroutineScopeCanceller) value$iv$iv;
            ComposerKt.sourceInformationMarkerEnd($composer5);
            final CoroutineScope coroutineScope = wrapper$iv.getCoroutineScope();
            ComposerKt.sourceInformationMarkerEnd($composer5);
            final MutableState yearPickerVisible$delegate2 = (MutableState) RememberSaveableKt.m4137rememberSaveable(new Object[0], (Saver) null, (String) null, (Function0) new Function0<MutableState<Boolean>>() { // from class: androidx.compose.material3.DatePickerKt$DatePickerContent$yearPickerVisible$2
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final MutableState<Boolean> invoke() {
                    return SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
                }
            }, $composer5, 3072, 6);
            Locale defaultLocale = CalendarLocale_androidKt.defaultLocale($composer5, 0);
            ComposerKt.sourceInformationMarkerStart($composer5, -483455358, "CC(Column)P(2,3,1)85@4251L61,86@4317L133:Column.kt#2w3rfo");
            Modifier modifier$iv2 = Modifier.INSTANCE;
            Arrangement.Vertical verticalArrangement$iv = Arrangement.INSTANCE.getTop();
            Alignment.Horizontal horizontalAlignment$iv = Alignment.INSTANCE.getStart();
            MeasurePolicy measurePolicy$iv2 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv, horizontalAlignment$iv, $composer5, ((0 >> 3) & 14) | ((0 >> 3) & 112));
            int $changed$iv$iv = (0 << 3) & 112;
            ComposerKt.sourceInformationMarkerStart($composer5, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
            int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer5, 0);
            CompositionLocalMap localMap$iv$iv2 = $composer5.getCurrentCompositionLocalMap();
            Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer5, modifier$iv2);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int $changed$iv$iv$iv = (($changed$iv$iv << 6) & 896) | 6;
            int $dirty2 = $dirty;
            ComposerKt.sourceInformationMarkerStart($composer5, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
            if (!($composer5.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer5.startReusableNode();
            if ($composer5.getInserting()) {
                function0 = constructor;
                $composer5.createNode(function0);
            } else {
                function0 = constructor;
                $composer5.useNode();
            }
            Composer $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3967constructorimpl($composer5);
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if ($this$Layout_u24lambda_u240$iv$iv3.getInserting()) {
                measurePolicy$iv = measurePolicy$iv2;
            } else {
                measurePolicy$iv = measurePolicy$iv2;
                if (!Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv3.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                }
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
                int i = ($changed$iv$iv$iv >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer5, -384862393, "C87@4365L9:Column.kt#2w3rfo");
                ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                int i2 = ((0 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer5, -1437690694, "C1503@69381L511,1515@69926L520,1527@70488L42,1493@68871L1698,1531@70579L3300:DatePicker.kt#uh7d8r");
                Modifier modifierM820paddingVpY3zN4$default = PaddingKt.m820paddingVpY3zN4$default(Modifier.INSTANCE, DatePickerHorizontalPadding, 0.0f, 2, null);
                boolean canScrollForward = monthsListState.getCanScrollForward();
                boolean canScrollBackward = monthsListState.getCanScrollBackward();
                boolean zDatePickerContent$lambda$8 = DatePickerContent$lambda$8(yearPickerVisible$delegate2);
                monthYear = dateFormatter.formatMonthYear(Long.valueOf(displayedMonthMillis), defaultLocale);
                if (monthYear == null) {
                    monthYear = "-";
                }
                String str = monthYear;
                ComposerKt.sourceInformationMarkerStart($composer5, 230729368, "CC(remember):DatePicker.kt#9igjgp");
                invalid$iv = $composer5.changedInstance(coroutineScope) | $composer5.changed(monthsListState);
                value$iv = $composer5.rememberedValue();
                if (!invalid$iv || value$iv == Composer.INSTANCE.getEmpty()) {
                    value$iv = (Function0) new Function0<Unit>() { // from class: androidx.compose.material3.DatePickerKt$DatePickerContent$1$1$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        /* JADX INFO: renamed from: androidx.compose.material3.DatePickerKt$DatePickerContent$1$1$1$1, reason: invalid class name */
                        /* JADX INFO: compiled from: DatePicker.kt */
                        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
                        @DebugMetadata(c = "androidx.compose.material3.DatePickerKt$DatePickerContent$1$1$1$1", f = "DatePicker.kt", i = {}, l = {1507}, m = "invokeSuspend", n = {}, s = {})
                        static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                            final /* synthetic */ LazyListState $monthsListState;
                            int label;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            AnonymousClass1(LazyListState lazyListState, Continuation<? super AnonymousClass1> continuation) {
                                super(2, continuation);
                                this.$monthsListState = lazyListState;
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                                return new AnonymousClass1(this.$monthsListState, continuation);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Object invokeSuspend(Object $result) {
                                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                                try {
                                    switch (this.label) {
                                        case 0:
                                            ResultKt.throwOnFailure($result);
                                            this.label = 1;
                                            if (LazyListState.animateScrollToItem$default(this.$monthsListState, this.$monthsListState.getFirstVisibleItemIndex() + 1, 0, this, 2, null) == coroutine_suspended) {
                                                return coroutine_suspended;
                                            }
                                            break;
                                        case 1:
                                            ResultKt.throwOnFailure($result);
                                            break;
                                        default:
                                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                    }
                                } catch (IllegalArgumentException e) {
                                }
                                return Unit.INSTANCE;
                            }
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public /* bridge */ /* synthetic */ Unit invoke() {
                            invoke2();
                            return Unit.INSTANCE;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2() {
                            BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new AnonymousClass1(monthsListState, null), 3, null);
                        }
                    };
                    $composer5.updateRememberedValue(value$iv);
                }
                Function0 function04 = (Function0) value$iv;
                ComposerKt.sourceInformationMarkerEnd($composer5);
                ComposerKt.sourceInformationMarkerStart($composer5, 230746817, "CC(remember):DatePicker.kt#9igjgp");
                invalid$iv2 = $composer5.changedInstance(coroutineScope) | $composer5.changed(monthsListState);
                value$iv2 = $composer5.rememberedValue();
                if (!invalid$iv2 || value$iv2 == Composer.INSTANCE.getEmpty()) {
                    value$iv2 = (Function0) new Function0<Unit>() { // from class: androidx.compose.material3.DatePickerKt$DatePickerContent$1$2$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        /* JADX INFO: renamed from: androidx.compose.material3.DatePickerKt$DatePickerContent$1$2$1$1, reason: invalid class name */
                        /* JADX INFO: compiled from: DatePicker.kt */
                        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
                        @DebugMetadata(c = "androidx.compose.material3.DatePickerKt$DatePickerContent$1$2$1$1", f = "DatePicker.kt", i = {}, l = {1519}, m = "invokeSuspend", n = {}, s = {})
                        static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                            final /* synthetic */ LazyListState $monthsListState;
                            int label;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            AnonymousClass1(LazyListState lazyListState, Continuation<? super AnonymousClass1> continuation) {
                                super(2, continuation);
                                this.$monthsListState = lazyListState;
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                                return new AnonymousClass1(this.$monthsListState, continuation);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Object invokeSuspend(Object $result) {
                                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                                try {
                                    switch (this.label) {
                                        case 0:
                                            ResultKt.throwOnFailure($result);
                                            this.label = 1;
                                            if (LazyListState.animateScrollToItem$default(this.$monthsListState, this.$monthsListState.getFirstVisibleItemIndex() - 1, 0, this, 2, null) == coroutine_suspended) {
                                                return coroutine_suspended;
                                            }
                                            break;
                                        case 1:
                                            ResultKt.throwOnFailure($result);
                                            break;
                                        default:
                                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                    }
                                } catch (IllegalArgumentException e) {
                                }
                                return Unit.INSTANCE;
                            }
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public /* bridge */ /* synthetic */ Unit invoke() {
                            invoke2();
                            return Unit.INSTANCE;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2() {
                            BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new AnonymousClass1(monthsListState, null), 3, null);
                        }
                    };
                    $composer5.updateRememberedValue(value$iv2);
                }
                Function0 function05 = (Function0) value$iv2;
                ComposerKt.sourceInformationMarkerEnd($composer5);
                ComposerKt.sourceInformationMarkerStart($composer5, 230764323, "CC(remember):DatePicker.kt#9igjgp");
                invalid$iv3 = $composer5.changed(yearPickerVisible$delegate2);
                Object value$iv3 = $composer5.rememberedValue();
                if (invalid$iv3) {
                    $composer2 = $composer5;
                    if (value$iv3 == Composer.INSTANCE.getEmpty()) {
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    $composer3 = $composer2;
                    $composer4 = $composer5;
                    MonthsNavigation(modifierM820paddingVpY3zN4$default, canScrollForward, canScrollBackward, zDatePickerContent$lambda$8, str, function04, function05, (Function0) value$iv3, colors, $composer3, ($dirty2 & 234881024) | 6);
                    ComposerKt.sourceInformationMarkerStart($composer3, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                    Modifier modifier$iv3 = Modifier.INSTANCE;
                    Alignment contentAlignment$iv = Alignment.INSTANCE.getTopStart();
                    MeasurePolicy measurePolicy$iv3 = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv, false);
                    int $changed$iv$iv2 = (0 << 3) & 112;
                    ComposerKt.sourceInformationMarkerStart($composer3, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                    int compositeKeyHash$iv$iv2 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                    CompositionLocalMap localMap$iv$iv3 = $composer3.getCurrentCompositionLocalMap();
                    Modifier materialized$iv$iv2 = ComposedModifierKt.materializeModifier($composer3, modifier$iv3);
                    Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
                    int $changed$iv$iv$iv2 = (($changed$iv$iv2 << 6) & 896) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer3, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                    if (!($composer3.getApplier() instanceof Applier)) {
                        ComposablesKt.invalidApplier();
                    }
                    $composer3.startReusableNode();
                    if ($composer3.getInserting()) {
                        $composer3.createNode(constructor2);
                    } else {
                        $composer3.useNode();
                    }
                    $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer3);
                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash2 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                    if ($this$Layout_u24lambda_u240$iv$iv.getInserting()) {
                        yearPickerVisible$delegate = yearPickerVisible$delegate2;
                        localMap$iv$iv = localMap$iv$iv3;
                    } else {
                        yearPickerVisible$delegate = yearPickerVisible$delegate2;
                        localMap$iv$iv = localMap$iv$iv3;
                        if (!Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv2))) {
                        }
                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv2, ComposeUiNode.INSTANCE.getSetModifier());
                        int i3 = ($changed$iv$iv$iv2 >> 6) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer3, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                        int i4 = ((0 >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer3, 2145148451, "C1532@70597L683,1551@71579L2290,1546@71320L2549:DatePicker.kt#uh7d8r");
                        Modifier modifier$iv4 = PaddingKt.m820paddingVpY3zN4$default(Modifier.INSTANCE, DatePickerHorizontalPadding, 0.0f, 2, null);
                        ComposerKt.sourceInformationMarkerStart($composer3, -483455358, "CC(Column)P(2,3,1)85@4251L61,86@4317L133:Column.kt#2w3rfo");
                        Arrangement.Vertical verticalArrangement$iv2 = Arrangement.INSTANCE.getTop();
                        Alignment.Horizontal horizontalAlignment$iv2 = Alignment.INSTANCE.getStart();
                        MeasurePolicy measurePolicy$iv4 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv2, horizontalAlignment$iv2, $composer3, ((6 >> 3) & 14) | ((6 >> 3) & 112));
                        int $changed$iv$iv3 = (6 << 3) & 112;
                        ComposerKt.sourceInformationMarkerStart($composer3, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv3 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                        CompositionLocalMap localMap$iv$iv4 = $composer3.getCurrentCompositionLocalMap();
                        Modifier materialized$iv$iv3 = ComposedModifierKt.materializeModifier($composer3, modifier$iv4);
                        Function0<ComposeUiNode> constructor3 = ComposeUiNode.INSTANCE.getConstructor();
                        int $changed$iv$iv$iv3 = (($changed$iv$iv3 << 6) & 896) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer3, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                        if (!($composer3.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        $composer3.startReusableNode();
                        if (!$composer3.getInserting()) {
                            function02 = constructor3;
                            $composer3.createNode(function02);
                        } else {
                            function02 = constructor3;
                            $composer3.useNode();
                        }
                        $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3967constructorimpl($composer3);
                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv4, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv4, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash3 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if ($this$Layout_u24lambda_u240$iv$iv2.getInserting()) {
                            modifier$iv = modifier$iv4;
                            function03 = function02;
                            if (!Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv2.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv3))) {
                            }
                            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, materialized$iv$iv3, ComposeUiNode.INSTANCE.getSetModifier());
                            int i5 = ($changed$iv$iv$iv3 >> 6) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer3, -384862393, "C87@4365L9:Column.kt#2w3rfo");
                            ColumnScopeInstance columnScopeInstance2 = ColumnScopeInstance.INSTANCE;
                            int i6 = ((6 >> 6) & 112) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer3, 454425903, "C1533@70693L31,1534@70741L525:DatePicker.kt#uh7d8r");
                            WeekDays(colors, calendarModel, $composer3, (($dirty2 >> 24) & 14) | (($dirty2 >> 9) & 112));
                            HorizontalMonthsList(monthsListState, selectedDateMillis, function1, function12, calendarModel, yearRange, dateFormatter, selectableDates, colors, $composer3, (($dirty2 << 3) & 112) | ($dirty2 & 896) | ($dirty2 & 7168) | ($dirty2 & 57344) | ($dirty2 & 458752) | ($dirty2 & 3670016) | ($dirty2 & 29360128) | ($dirty2 & 234881024));
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            $composer3.endNode();
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            final MutableState yearPickerVisible$delegate3 = yearPickerVisible$delegate;
                            AnimatedVisibilityKt.AnimatedVisibility(DatePickerContent$lambda$8(yearPickerVisible$delegate), ClipKt.clipToBounds(Modifier.INSTANCE), EnterExitTransitionKt.expandVertically$default(null, null, false, null, 15, null).plus(EnterExitTransitionKt.fadeIn$default(null, 0.6f, 1, null)), EnterExitTransitionKt.shrinkVertically$default(null, null, false, null, 15, null).plus(EnterExitTransitionKt.fadeOut$default(null, 0.0f, 3, null)), (String) null, ComposableLambdaKt.rememberComposableLambda(1193716082, true, new Function3<AnimatedVisibilityScope, Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DatePickerContent$1$4$2
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(3);
                                }

                                @Override // kotlin.jvm.functions.Function3
                                public /* bridge */ /* synthetic */ Unit invoke(AnimatedVisibilityScope animatedVisibilityScope, Composer composer, Integer num) {
                                    invoke(animatedVisibilityScope, composer, num.intValue());
                                    return Unit.INSTANCE;
                                }

                                /* JADX WARN: Removed duplicated region for block: B:38:0x026b  */
                                /* JADX WARN: Removed duplicated region for block: B:40:? A[RETURN, SYNTHETIC] */
                                /*
                                    Code decompiled incorrectly, please refer to instructions dump.
                                */
                                public final void invoke(AnimatedVisibilityScope $this$AnimatedVisibility, Composer $composer6, int $changed2) {
                                    Object value$iv4;
                                    Function0<ComposeUiNode> function06;
                                    Modifier modifier;
                                    SelectableDates selectableDates2;
                                    IntRange intRange;
                                    Object value$iv5;
                                    ComposerKt.sourceInformation($composer6, "C1556@71903L48,1557@72005L30,1557@71968L1887:DatePicker.kt#uh7d8r");
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1193716082, $changed2, -1, "androidx.compose.material3.DatePickerContent.<anonymous>.<anonymous>.<anonymous> (DatePicker.kt:1556)");
                                    }
                                    Strings.Companion companion = Strings.INSTANCE;
                                    final String yearsPaneTitle = Strings_androidKt.m3257getString2EP1pXo(Strings.m3187constructorimpl(R.string.m3c_date_picker_year_picker_pane_title), $composer6, 0);
                                    Modifier.Companion companion2 = Modifier.INSTANCE;
                                    ComposerKt.sourceInformationMarkerStart($composer6, 14700341, "CC(remember):DatePicker.kt#9igjgp");
                                    boolean invalid$iv4 = $composer6.changed(yearsPaneTitle);
                                    Object it$iv = $composer6.rememberedValue();
                                    if (invalid$iv4 || it$iv == Composer.INSTANCE.getEmpty()) {
                                        value$iv4 = (Function1) new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DatePickerContent$1$4$2$1$1
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
                                                SemanticsPropertiesKt.setPaneTitle($this$semantics, yearsPaneTitle);
                                            }
                                        };
                                        $composer6.updateRememberedValue(value$iv4);
                                    } else {
                                        value$iv4 = it$iv;
                                    }
                                    ComposerKt.sourceInformationMarkerEnd($composer6);
                                    Modifier modifier$iv5 = SemanticsModifierKt.semantics$default(companion2, false, (Function1) value$iv4, 1, null);
                                    long j = displayedMonthMillis;
                                    final MutableState<Boolean> mutableState = yearPickerVisible$delegate3;
                                    final CoroutineScope coroutineScope2 = coroutineScope;
                                    final LazyListState lazyListState = monthsListState;
                                    final IntRange intRange2 = yearRange;
                                    final CalendarMonth calendarMonth = displayedMonth;
                                    SelectableDates selectableDates3 = selectableDates;
                                    CalendarModel calendarModel2 = calendarModel;
                                    DatePickerColors datePickerColors = colors;
                                    ComposerKt.sourceInformationMarkerStart($composer6, -483455358, "CC(Column)P(2,3,1)85@4251L61,86@4317L133:Column.kt#2w3rfo");
                                    Arrangement.Vertical verticalArrangement$iv3 = Arrangement.INSTANCE.getTop();
                                    Alignment.Horizontal horizontalAlignment$iv3 = Alignment.INSTANCE.getStart();
                                    MeasurePolicy measurePolicy$iv5 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv3, horizontalAlignment$iv3, $composer6, ((0 >> 3) & 14) | ((0 >> 3) & 112));
                                    int $changed$iv$iv4 = (0 << 3) & 112;
                                    ComposerKt.sourceInformationMarkerStart($composer6, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                                    int compositeKeyHash$iv$iv4 = ComposablesKt.getCurrentCompositeKeyHash($composer6, 0);
                                    CompositionLocalMap localMap$iv$iv5 = $composer6.getCurrentCompositionLocalMap();
                                    Modifier materialized$iv$iv4 = ComposedModifierKt.materializeModifier($composer6, modifier$iv5);
                                    Function0<ComposeUiNode> constructor4 = ComposeUiNode.INSTANCE.getConstructor();
                                    int $changed$iv$iv$iv4 = (($changed$iv$iv4 << 6) & 896) | 6;
                                    ComposerKt.sourceInformationMarkerStart($composer6, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                                    if (!($composer6.getApplier() instanceof Applier)) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    $composer6.startReusableNode();
                                    if ($composer6.getInserting()) {
                                        function06 = constructor4;
                                        $composer6.createNode(function06);
                                    } else {
                                        function06 = constructor4;
                                        $composer6.useNode();
                                    }
                                    Composer $this$Layout_u24lambda_u240$iv$iv4 = Updater.m3967constructorimpl($composer6);
                                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv4, measurePolicy$iv5, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv4, localMap$iv$iv5, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                    Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash4 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                    if ($this$Layout_u24lambda_u240$iv$iv4.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv4.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv4))) {
                                        $this$Layout_u24lambda_u240$iv$iv4.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv4));
                                        $this$Layout_u24lambda_u240$iv$iv4.apply(Integer.valueOf(compositeKeyHash$iv$iv4), setCompositeKeyHash4);
                                    }
                                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv4, materialized$iv$iv4, ComposeUiNode.INSTANCE.getSetModifier());
                                    int i7 = ($changed$iv$iv$iv4 >> 6) & 14;
                                    ComposerKt.sourceInformationMarkerStart($composer6, -384862393, "C87@4365L9:Column.kt#2w3rfo");
                                    ColumnScopeInstance columnScopeInstance3 = ColumnScopeInstance.INSTANCE;
                                    int i8 = ((0 >> 6) & 112) | 6;
                                    ComposerKt.sourceInformationMarkerStart($composer6, 535553211, "C1569@72779L767,1558@72059L1711,1586@73791L46:DatePicker.kt#uh7d8r");
                                    Modifier.Companion companion3 = Modifier.INSTANCE;
                                    float arg0$iv = DatePickerKt.getRecommendedSizeForAccessibility();
                                    float arg0$iv2 = Dp.m7505constructorimpl(7 * arg0$iv);
                                    float other$iv = DividerDefaults.INSTANCE.m2353getThicknessD9Ej5fM();
                                    Modifier modifierM820paddingVpY3zN4$default2 = PaddingKt.m820paddingVpY3zN4$default(SizeKt.m853requiredHeight3ABfNKs(companion3, Dp.m7505constructorimpl(arg0$iv2 - other$iv)), DatePickerKt.getDatePickerHorizontalPadding(), 0.0f, 2, null);
                                    ComposerKt.sourceInformationMarkerStart($composer6, -2060912043, "CC(remember):DatePicker.kt#9igjgp");
                                    boolean invalid$iv5 = $composer6.changed(mutableState) | $composer6.changedInstance(coroutineScope2) | $composer6.changed(lazyListState) | $composer6.changedInstance(intRange2) | $composer6.changed(calendarMonth);
                                    Object it$iv2 = $composer6.rememberedValue();
                                    if (!invalid$iv5) {
                                        modifier = modifierM820paddingVpY3zN4$default2;
                                        if (it$iv2 != Composer.INSTANCE.getEmpty()) {
                                            intRange = intRange2;
                                            selectableDates2 = selectableDates3;
                                            value$iv5 = it$iv2;
                                        }
                                        ComposerKt.sourceInformationMarkerEnd($composer6);
                                        DatePickerKt.YearPicker(modifier, j, (Function1) value$iv5, selectableDates2, calendarModel2, intRange, datePickerColors, $composer6, 6);
                                        DividerKt.m2355HorizontalDivider9IZ8Weo(null, 0.0f, datePickerColors.getDividerColor(), $composer6, 0, 3);
                                        ComposerKt.sourceInformationMarkerEnd($composer6);
                                        ComposerKt.sourceInformationMarkerEnd($composer6);
                                        $composer6.endNode();
                                        ComposerKt.sourceInformationMarkerEnd($composer6);
                                        ComposerKt.sourceInformationMarkerEnd($composer6);
                                        ComposerKt.sourceInformationMarkerEnd($composer6);
                                        if (ComposerKt.isTraceInProgress()) {
                                            return;
                                        }
                                        ComposerKt.traceEventEnd();
                                        return;
                                    }
                                    modifier = modifierM820paddingVpY3zN4$default2;
                                    selectableDates2 = selectableDates3;
                                    Object obj = new Function1<Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DatePickerContent$1$4$2$2$1$1
                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                        {
                                            super(1);
                                        }

                                        @Override // kotlin.jvm.functions.Function1
                                        public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                                            invoke(num.intValue());
                                            return Unit.INSTANCE;
                                        }

                                        /* JADX INFO: renamed from: androidx.compose.material3.DatePickerKt$DatePickerContent$1$4$2$2$1$1$1, reason: invalid class name */
                                        /* JADX INFO: compiled from: DatePicker.kt */
                                        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
                                        @DebugMetadata(c = "androidx.compose.material3.DatePickerKt$DatePickerContent$1$4$2$2$1$1$1", f = "DatePicker.kt", i = {}, l = {1577}, m = "invokeSuspend", n = {}, s = {})
                                        static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                                            final /* synthetic */ CalendarMonth $displayedMonth;
                                            final /* synthetic */ LazyListState $monthsListState;
                                            final /* synthetic */ int $year;
                                            final /* synthetic */ IntRange $yearRange;
                                            int label;

                                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                            AnonymousClass1(LazyListState lazyListState, int i, IntRange intRange, CalendarMonth calendarMonth, Continuation<? super AnonymousClass1> continuation) {
                                                super(2, continuation);
                                                this.$monthsListState = lazyListState;
                                                this.$year = i;
                                                this.$yearRange = intRange;
                                                this.$displayedMonth = calendarMonth;
                                            }

                                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                                                return new AnonymousClass1(this.$monthsListState, this.$year, this.$yearRange, this.$displayedMonth, continuation);
                                            }

                                            @Override // kotlin.jvm.functions.Function2
                                            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                                                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                                            }

                                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                            public final Object invokeSuspend(Object $result) {
                                                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                                                switch (this.label) {
                                                    case 0:
                                                        ResultKt.throwOnFailure($result);
                                                        this.label = 1;
                                                        if (LazyListState.scrollToItem$default(this.$monthsListState, (((this.$year - this.$yearRange.getFirst()) * 12) + this.$displayedMonth.getMonth()) - 1, 0, this, 2, null) == coroutine_suspended) {
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

                                        public final void invoke(int year) {
                                            DatePickerKt.DatePickerContent$lambda$9(mutableState, !DatePickerKt.DatePickerContent$lambda$8(mutableState));
                                            BuildersKt__Builders_commonKt.launch$default(coroutineScope2, null, null, new AnonymousClass1(lazyListState, year, intRange2, calendarMonth, null), 3, null);
                                        }
                                    };
                                    intRange = intRange2;
                                    value$iv5 = (Function1) obj;
                                    $composer6.updateRememberedValue(value$iv5);
                                    ComposerKt.sourceInformationMarkerEnd($composer6);
                                    DatePickerKt.YearPicker(modifier, j, (Function1) value$iv5, selectableDates2, calendarModel2, intRange, datePickerColors, $composer6, 6);
                                    DividerKt.m2355HorizontalDivider9IZ8Weo(null, 0.0f, datePickerColors.getDividerColor(), $composer6, 0, 3);
                                    ComposerKt.sourceInformationMarkerEnd($composer6);
                                    ComposerKt.sourceInformationMarkerEnd($composer6);
                                    $composer6.endNode();
                                    ComposerKt.sourceInformationMarkerEnd($composer6);
                                    ComposerKt.sourceInformationMarkerEnd($composer6);
                                    ComposerKt.sourceInformationMarkerEnd($composer6);
                                    if (ComposerKt.isTraceInProgress()) {
                                    }
                                }
                            }, $composer3, 54), $composer3, 200112, 16);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            $composer3.endNode();
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            ComposerKt.sourceInformationMarkerEnd($composer5);
                            $composer4.endNode();
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        } else {
                            modifier$iv = modifier$iv4;
                            function03 = function02;
                        }
                        $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv3));
                        $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv3), setCompositeKeyHash3);
                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, materialized$iv$iv3, ComposeUiNode.INSTANCE.getSetModifier());
                        int i52 = ($changed$iv$iv$iv3 >> 6) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer3, -384862393, "C87@4365L9:Column.kt#2w3rfo");
                        ColumnScopeInstance columnScopeInstance22 = ColumnScopeInstance.INSTANCE;
                        int i62 = ((6 >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer3, 454425903, "C1533@70693L31,1534@70741L525:DatePicker.kt#uh7d8r");
                        WeekDays(colors, calendarModel, $composer3, (($dirty2 >> 24) & 14) | (($dirty2 >> 9) & 112));
                        HorizontalMonthsList(monthsListState, selectedDateMillis, function1, function12, calendarModel, yearRange, dateFormatter, selectableDates, colors, $composer3, (($dirty2 << 3) & 112) | ($dirty2 & 896) | ($dirty2 & 7168) | ($dirty2 & 57344) | ($dirty2 & 458752) | ($dirty2 & 3670016) | ($dirty2 & 29360128) | ($dirty2 & 234881024));
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        $composer3.endNode();
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        final MutableState<Boolean> yearPickerVisible$delegate32 = yearPickerVisible$delegate;
                        AnimatedVisibilityKt.AnimatedVisibility(DatePickerContent$lambda$8(yearPickerVisible$delegate), ClipKt.clipToBounds(Modifier.INSTANCE), EnterExitTransitionKt.expandVertically$default(null, null, false, null, 15, null).plus(EnterExitTransitionKt.fadeIn$default(null, 0.6f, 1, null)), EnterExitTransitionKt.shrinkVertically$default(null, null, false, null, 15, null).plus(EnterExitTransitionKt.fadeOut$default(null, 0.0f, 3, null)), (String) null, ComposableLambdaKt.rememberComposableLambda(1193716082, true, new Function3<AnimatedVisibilityScope, Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DatePickerContent$1$4$2
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(3);
                            }

                            @Override // kotlin.jvm.functions.Function3
                            public /* bridge */ /* synthetic */ Unit invoke(AnimatedVisibilityScope animatedVisibilityScope, Composer composer, Integer num) {
                                invoke(animatedVisibilityScope, composer, num.intValue());
                                return Unit.INSTANCE;
                            }

                            /* JADX WARN: Removed duplicated region for block: B:38:0x026b  */
                            /* JADX WARN: Removed duplicated region for block: B:40:? A[RETURN, SYNTHETIC] */
                            /*
                                Code decompiled incorrectly, please refer to instructions dump.
                            */
                            public final void invoke(AnimatedVisibilityScope $this$AnimatedVisibility, Composer $composer6, int $changed2) {
                                Object value$iv4;
                                Function0<ComposeUiNode> function06;
                                Modifier modifier;
                                SelectableDates selectableDates2;
                                IntRange intRange;
                                Object value$iv5;
                                ComposerKt.sourceInformation($composer6, "C1556@71903L48,1557@72005L30,1557@71968L1887:DatePicker.kt#uh7d8r");
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1193716082, $changed2, -1, "androidx.compose.material3.DatePickerContent.<anonymous>.<anonymous>.<anonymous> (DatePicker.kt:1556)");
                                }
                                Strings.Companion companion = Strings.INSTANCE;
                                final String yearsPaneTitle = Strings_androidKt.m3257getString2EP1pXo(Strings.m3187constructorimpl(R.string.m3c_date_picker_year_picker_pane_title), $composer6, 0);
                                Modifier.Companion companion2 = Modifier.INSTANCE;
                                ComposerKt.sourceInformationMarkerStart($composer6, 14700341, "CC(remember):DatePicker.kt#9igjgp");
                                boolean invalid$iv4 = $composer6.changed(yearsPaneTitle);
                                Object it$iv = $composer6.rememberedValue();
                                if (invalid$iv4 || it$iv == Composer.INSTANCE.getEmpty()) {
                                    value$iv4 = (Function1) new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DatePickerContent$1$4$2$1$1
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
                                            SemanticsPropertiesKt.setPaneTitle($this$semantics, yearsPaneTitle);
                                        }
                                    };
                                    $composer6.updateRememberedValue(value$iv4);
                                } else {
                                    value$iv4 = it$iv;
                                }
                                ComposerKt.sourceInformationMarkerEnd($composer6);
                                Modifier modifier$iv5 = SemanticsModifierKt.semantics$default(companion2, false, (Function1) value$iv4, 1, null);
                                long j = displayedMonthMillis;
                                final MutableState<Boolean> mutableState = yearPickerVisible$delegate32;
                                final CoroutineScope coroutineScope2 = coroutineScope;
                                final LazyListState lazyListState = monthsListState;
                                final IntRange intRange2 = yearRange;
                                final CalendarMonth calendarMonth = displayedMonth;
                                SelectableDates selectableDates3 = selectableDates;
                                CalendarModel calendarModel2 = calendarModel;
                                DatePickerColors datePickerColors = colors;
                                ComposerKt.sourceInformationMarkerStart($composer6, -483455358, "CC(Column)P(2,3,1)85@4251L61,86@4317L133:Column.kt#2w3rfo");
                                Arrangement.Vertical verticalArrangement$iv3 = Arrangement.INSTANCE.getTop();
                                Alignment.Horizontal horizontalAlignment$iv3 = Alignment.INSTANCE.getStart();
                                MeasurePolicy measurePolicy$iv5 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv3, horizontalAlignment$iv3, $composer6, ((0 >> 3) & 14) | ((0 >> 3) & 112));
                                int $changed$iv$iv4 = (0 << 3) & 112;
                                ComposerKt.sourceInformationMarkerStart($composer6, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                                int compositeKeyHash$iv$iv4 = ComposablesKt.getCurrentCompositeKeyHash($composer6, 0);
                                CompositionLocalMap localMap$iv$iv5 = $composer6.getCurrentCompositionLocalMap();
                                Modifier materialized$iv$iv4 = ComposedModifierKt.materializeModifier($composer6, modifier$iv5);
                                Function0<ComposeUiNode> constructor4 = ComposeUiNode.INSTANCE.getConstructor();
                                int $changed$iv$iv$iv4 = (($changed$iv$iv4 << 6) & 896) | 6;
                                ComposerKt.sourceInformationMarkerStart($composer6, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                                if (!($composer6.getApplier() instanceof Applier)) {
                                    ComposablesKt.invalidApplier();
                                }
                                $composer6.startReusableNode();
                                if ($composer6.getInserting()) {
                                    function06 = constructor4;
                                    $composer6.createNode(function06);
                                } else {
                                    function06 = constructor4;
                                    $composer6.useNode();
                                }
                                Composer $this$Layout_u24lambda_u240$iv$iv4 = Updater.m3967constructorimpl($composer6);
                                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv4, measurePolicy$iv5, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv4, localMap$iv$iv5, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash4 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                if ($this$Layout_u24lambda_u240$iv$iv4.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv4.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv4))) {
                                    $this$Layout_u24lambda_u240$iv$iv4.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv4));
                                    $this$Layout_u24lambda_u240$iv$iv4.apply(Integer.valueOf(compositeKeyHash$iv$iv4), setCompositeKeyHash4);
                                }
                                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv4, materialized$iv$iv4, ComposeUiNode.INSTANCE.getSetModifier());
                                int i7 = ($changed$iv$iv$iv4 >> 6) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer6, -384862393, "C87@4365L9:Column.kt#2w3rfo");
                                ColumnScopeInstance columnScopeInstance3 = ColumnScopeInstance.INSTANCE;
                                int i8 = ((0 >> 6) & 112) | 6;
                                ComposerKt.sourceInformationMarkerStart($composer6, 535553211, "C1569@72779L767,1558@72059L1711,1586@73791L46:DatePicker.kt#uh7d8r");
                                Modifier.Companion companion3 = Modifier.INSTANCE;
                                float arg0$iv = DatePickerKt.getRecommendedSizeForAccessibility();
                                float arg0$iv2 = Dp.m7505constructorimpl(7 * arg0$iv);
                                float other$iv = DividerDefaults.INSTANCE.m2353getThicknessD9Ej5fM();
                                Modifier modifierM820paddingVpY3zN4$default2 = PaddingKt.m820paddingVpY3zN4$default(SizeKt.m853requiredHeight3ABfNKs(companion3, Dp.m7505constructorimpl(arg0$iv2 - other$iv)), DatePickerKt.getDatePickerHorizontalPadding(), 0.0f, 2, null);
                                ComposerKt.sourceInformationMarkerStart($composer6, -2060912043, "CC(remember):DatePicker.kt#9igjgp");
                                boolean invalid$iv5 = $composer6.changed(mutableState) | $composer6.changedInstance(coroutineScope2) | $composer6.changed(lazyListState) | $composer6.changedInstance(intRange2) | $composer6.changed(calendarMonth);
                                Object it$iv2 = $composer6.rememberedValue();
                                if (!invalid$iv5) {
                                    modifier = modifierM820paddingVpY3zN4$default2;
                                    if (it$iv2 != Composer.INSTANCE.getEmpty()) {
                                        intRange = intRange2;
                                        selectableDates2 = selectableDates3;
                                        value$iv5 = it$iv2;
                                    }
                                    ComposerKt.sourceInformationMarkerEnd($composer6);
                                    DatePickerKt.YearPicker(modifier, j, (Function1) value$iv5, selectableDates2, calendarModel2, intRange, datePickerColors, $composer6, 6);
                                    DividerKt.m2355HorizontalDivider9IZ8Weo(null, 0.0f, datePickerColors.getDividerColor(), $composer6, 0, 3);
                                    ComposerKt.sourceInformationMarkerEnd($composer6);
                                    ComposerKt.sourceInformationMarkerEnd($composer6);
                                    $composer6.endNode();
                                    ComposerKt.sourceInformationMarkerEnd($composer6);
                                    ComposerKt.sourceInformationMarkerEnd($composer6);
                                    ComposerKt.sourceInformationMarkerEnd($composer6);
                                    if (ComposerKt.isTraceInProgress()) {
                                        return;
                                    }
                                    ComposerKt.traceEventEnd();
                                    return;
                                }
                                modifier = modifierM820paddingVpY3zN4$default2;
                                selectableDates2 = selectableDates3;
                                Object obj = new Function1<Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DatePickerContent$1$4$2$2$1$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                                        invoke(num.intValue());
                                        return Unit.INSTANCE;
                                    }

                                    /* JADX INFO: renamed from: androidx.compose.material3.DatePickerKt$DatePickerContent$1$4$2$2$1$1$1, reason: invalid class name */
                                    /* JADX INFO: compiled from: DatePicker.kt */
                                    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
                                    @DebugMetadata(c = "androidx.compose.material3.DatePickerKt$DatePickerContent$1$4$2$2$1$1$1", f = "DatePicker.kt", i = {}, l = {1577}, m = "invokeSuspend", n = {}, s = {})
                                    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                                        final /* synthetic */ CalendarMonth $displayedMonth;
                                        final /* synthetic */ LazyListState $monthsListState;
                                        final /* synthetic */ int $year;
                                        final /* synthetic */ IntRange $yearRange;
                                        int label;

                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                        AnonymousClass1(LazyListState lazyListState, int i, IntRange intRange, CalendarMonth calendarMonth, Continuation<? super AnonymousClass1> continuation) {
                                            super(2, continuation);
                                            this.$monthsListState = lazyListState;
                                            this.$year = i;
                                            this.$yearRange = intRange;
                                            this.$displayedMonth = calendarMonth;
                                        }

                                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                                            return new AnonymousClass1(this.$monthsListState, this.$year, this.$yearRange, this.$displayedMonth, continuation);
                                        }

                                        @Override // kotlin.jvm.functions.Function2
                                        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                                            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                                        }

                                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                        public final Object invokeSuspend(Object $result) {
                                            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                                            switch (this.label) {
                                                case 0:
                                                    ResultKt.throwOnFailure($result);
                                                    this.label = 1;
                                                    if (LazyListState.scrollToItem$default(this.$monthsListState, (((this.$year - this.$yearRange.getFirst()) * 12) + this.$displayedMonth.getMonth()) - 1, 0, this, 2, null) == coroutine_suspended) {
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

                                    public final void invoke(int year) {
                                        DatePickerKt.DatePickerContent$lambda$9(mutableState, !DatePickerKt.DatePickerContent$lambda$8(mutableState));
                                        BuildersKt__Builders_commonKt.launch$default(coroutineScope2, null, null, new AnonymousClass1(lazyListState, year, intRange2, calendarMonth, null), 3, null);
                                    }
                                };
                                intRange = intRange2;
                                value$iv5 = (Function1) obj;
                                $composer6.updateRememberedValue(value$iv5);
                                ComposerKt.sourceInformationMarkerEnd($composer6);
                                DatePickerKt.YearPicker(modifier, j, (Function1) value$iv5, selectableDates2, calendarModel2, intRange, datePickerColors, $composer6, 6);
                                DividerKt.m2355HorizontalDivider9IZ8Weo(null, 0.0f, datePickerColors.getDividerColor(), $composer6, 0, 3);
                                ComposerKt.sourceInformationMarkerEnd($composer6);
                                ComposerKt.sourceInformationMarkerEnd($composer6);
                                $composer6.endNode();
                                ComposerKt.sourceInformationMarkerEnd($composer6);
                                ComposerKt.sourceInformationMarkerEnd($composer6);
                                ComposerKt.sourceInformationMarkerEnd($composer6);
                                if (ComposerKt.isTraceInProgress()) {
                                }
                            }
                        }, $composer3, 54), $composer3, 200112, 16);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        $composer3.endNode();
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        ComposerKt.sourceInformationMarkerEnd($composer5);
                        $composer4.endNode();
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        if (ComposerKt.isTraceInProgress()) {
                        }
                    }
                    $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv2));
                    $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv2), setCompositeKeyHash2);
                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv2, ComposeUiNode.INSTANCE.getSetModifier());
                    int i32 = ($changed$iv$iv$iv2 >> 6) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer3, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                    BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                    int i42 = ((0 >> 6) & 112) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer3, 2145148451, "C1532@70597L683,1551@71579L2290,1546@71320L2549:DatePicker.kt#uh7d8r");
                    Modifier modifier$iv42 = PaddingKt.m820paddingVpY3zN4$default(Modifier.INSTANCE, DatePickerHorizontalPadding, 0.0f, 2, null);
                    ComposerKt.sourceInformationMarkerStart($composer3, -483455358, "CC(Column)P(2,3,1)85@4251L61,86@4317L133:Column.kt#2w3rfo");
                    Arrangement.Vertical verticalArrangement$iv22 = Arrangement.INSTANCE.getTop();
                    Alignment.Horizontal horizontalAlignment$iv22 = Alignment.INSTANCE.getStart();
                    MeasurePolicy measurePolicy$iv42 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv22, horizontalAlignment$iv22, $composer3, ((6 >> 3) & 14) | ((6 >> 3) & 112));
                    int $changed$iv$iv32 = (6 << 3) & 112;
                    ComposerKt.sourceInformationMarkerStart($composer3, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                    int compositeKeyHash$iv$iv32 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                    CompositionLocalMap localMap$iv$iv42 = $composer3.getCurrentCompositionLocalMap();
                    Modifier materialized$iv$iv32 = ComposedModifierKt.materializeModifier($composer3, modifier$iv42);
                    Function0<ComposeUiNode> constructor32 = ComposeUiNode.INSTANCE.getConstructor();
                    int $changed$iv$iv$iv32 = (($changed$iv$iv32 << 6) & 896) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer3, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                    if (!($composer3.getApplier() instanceof Applier)) {
                    }
                    $composer3.startReusableNode();
                    if (!$composer3.getInserting()) {
                    }
                    $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3967constructorimpl($composer3);
                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv42, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv42, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash32 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                    if ($this$Layout_u24lambda_u240$iv$iv2.getInserting()) {
                    }
                    $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv32));
                    $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv32), setCompositeKeyHash32);
                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, materialized$iv$iv32, ComposeUiNode.INSTANCE.getSetModifier());
                    int i522 = ($changed$iv$iv$iv32 >> 6) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer3, -384862393, "C87@4365L9:Column.kt#2w3rfo");
                    ColumnScopeInstance columnScopeInstance222 = ColumnScopeInstance.INSTANCE;
                    int i622 = ((6 >> 6) & 112) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer3, 454425903, "C1533@70693L31,1534@70741L525:DatePicker.kt#uh7d8r");
                    WeekDays(colors, calendarModel, $composer3, (($dirty2 >> 24) & 14) | (($dirty2 >> 9) & 112));
                    HorizontalMonthsList(monthsListState, selectedDateMillis, function1, function12, calendarModel, yearRange, dateFormatter, selectableDates, colors, $composer3, (($dirty2 << 3) & 112) | ($dirty2 & 896) | ($dirty2 & 7168) | ($dirty2 & 57344) | ($dirty2 & 458752) | ($dirty2 & 3670016) | ($dirty2 & 29360128) | ($dirty2 & 234881024));
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    $composer3.endNode();
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    final MutableState<Boolean> yearPickerVisible$delegate322 = yearPickerVisible$delegate;
                    AnimatedVisibilityKt.AnimatedVisibility(DatePickerContent$lambda$8(yearPickerVisible$delegate), ClipKt.clipToBounds(Modifier.INSTANCE), EnterExitTransitionKt.expandVertically$default(null, null, false, null, 15, null).plus(EnterExitTransitionKt.fadeIn$default(null, 0.6f, 1, null)), EnterExitTransitionKt.shrinkVertically$default(null, null, false, null, 15, null).plus(EnterExitTransitionKt.fadeOut$default(null, 0.0f, 3, null)), (String) null, ComposableLambdaKt.rememberComposableLambda(1193716082, true, new Function3<AnimatedVisibilityScope, Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DatePickerContent$1$4$2
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(3);
                        }

                        @Override // kotlin.jvm.functions.Function3
                        public /* bridge */ /* synthetic */ Unit invoke(AnimatedVisibilityScope animatedVisibilityScope, Composer composer, Integer num) {
                            invoke(animatedVisibilityScope, composer, num.intValue());
                            return Unit.INSTANCE;
                        }

                        /* JADX WARN: Removed duplicated region for block: B:38:0x026b  */
                        /* JADX WARN: Removed duplicated region for block: B:40:? A[RETURN, SYNTHETIC] */
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                        */
                        public final void invoke(AnimatedVisibilityScope $this$AnimatedVisibility, Composer $composer6, int $changed2) {
                            Object value$iv4;
                            Function0<ComposeUiNode> function06;
                            Modifier modifier;
                            SelectableDates selectableDates2;
                            IntRange intRange;
                            Object value$iv5;
                            ComposerKt.sourceInformation($composer6, "C1556@71903L48,1557@72005L30,1557@71968L1887:DatePicker.kt#uh7d8r");
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1193716082, $changed2, -1, "androidx.compose.material3.DatePickerContent.<anonymous>.<anonymous>.<anonymous> (DatePicker.kt:1556)");
                            }
                            Strings.Companion companion = Strings.INSTANCE;
                            final String yearsPaneTitle = Strings_androidKt.m3257getString2EP1pXo(Strings.m3187constructorimpl(R.string.m3c_date_picker_year_picker_pane_title), $composer6, 0);
                            Modifier.Companion companion2 = Modifier.INSTANCE;
                            ComposerKt.sourceInformationMarkerStart($composer6, 14700341, "CC(remember):DatePicker.kt#9igjgp");
                            boolean invalid$iv4 = $composer6.changed(yearsPaneTitle);
                            Object it$iv = $composer6.rememberedValue();
                            if (invalid$iv4 || it$iv == Composer.INSTANCE.getEmpty()) {
                                value$iv4 = (Function1) new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DatePickerContent$1$4$2$1$1
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
                                        SemanticsPropertiesKt.setPaneTitle($this$semantics, yearsPaneTitle);
                                    }
                                };
                                $composer6.updateRememberedValue(value$iv4);
                            } else {
                                value$iv4 = it$iv;
                            }
                            ComposerKt.sourceInformationMarkerEnd($composer6);
                            Modifier modifier$iv5 = SemanticsModifierKt.semantics$default(companion2, false, (Function1) value$iv4, 1, null);
                            long j = displayedMonthMillis;
                            final MutableState<Boolean> mutableState = yearPickerVisible$delegate322;
                            final CoroutineScope coroutineScope2 = coroutineScope;
                            final LazyListState lazyListState = monthsListState;
                            final IntRange intRange2 = yearRange;
                            final CalendarMonth calendarMonth = displayedMonth;
                            SelectableDates selectableDates3 = selectableDates;
                            CalendarModel calendarModel2 = calendarModel;
                            DatePickerColors datePickerColors = colors;
                            ComposerKt.sourceInformationMarkerStart($composer6, -483455358, "CC(Column)P(2,3,1)85@4251L61,86@4317L133:Column.kt#2w3rfo");
                            Arrangement.Vertical verticalArrangement$iv3 = Arrangement.INSTANCE.getTop();
                            Alignment.Horizontal horizontalAlignment$iv3 = Alignment.INSTANCE.getStart();
                            MeasurePolicy measurePolicy$iv5 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv3, horizontalAlignment$iv3, $composer6, ((0 >> 3) & 14) | ((0 >> 3) & 112));
                            int $changed$iv$iv4 = (0 << 3) & 112;
                            ComposerKt.sourceInformationMarkerStart($composer6, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                            int compositeKeyHash$iv$iv4 = ComposablesKt.getCurrentCompositeKeyHash($composer6, 0);
                            CompositionLocalMap localMap$iv$iv5 = $composer6.getCurrentCompositionLocalMap();
                            Modifier materialized$iv$iv4 = ComposedModifierKt.materializeModifier($composer6, modifier$iv5);
                            Function0<ComposeUiNode> constructor4 = ComposeUiNode.INSTANCE.getConstructor();
                            int $changed$iv$iv$iv4 = (($changed$iv$iv4 << 6) & 896) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer6, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                            if (!($composer6.getApplier() instanceof Applier)) {
                                ComposablesKt.invalidApplier();
                            }
                            $composer6.startReusableNode();
                            if ($composer6.getInserting()) {
                                function06 = constructor4;
                                $composer6.createNode(function06);
                            } else {
                                function06 = constructor4;
                                $composer6.useNode();
                            }
                            Composer $this$Layout_u24lambda_u240$iv$iv4 = Updater.m3967constructorimpl($composer6);
                            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv4, measurePolicy$iv5, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv4, localMap$iv$iv5, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                            Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash4 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                            if ($this$Layout_u24lambda_u240$iv$iv4.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv4.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv4))) {
                                $this$Layout_u24lambda_u240$iv$iv4.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv4));
                                $this$Layout_u24lambda_u240$iv$iv4.apply(Integer.valueOf(compositeKeyHash$iv$iv4), setCompositeKeyHash4);
                            }
                            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv4, materialized$iv$iv4, ComposeUiNode.INSTANCE.getSetModifier());
                            int i7 = ($changed$iv$iv$iv4 >> 6) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer6, -384862393, "C87@4365L9:Column.kt#2w3rfo");
                            ColumnScopeInstance columnScopeInstance3 = ColumnScopeInstance.INSTANCE;
                            int i8 = ((0 >> 6) & 112) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer6, 535553211, "C1569@72779L767,1558@72059L1711,1586@73791L46:DatePicker.kt#uh7d8r");
                            Modifier.Companion companion3 = Modifier.INSTANCE;
                            float arg0$iv = DatePickerKt.getRecommendedSizeForAccessibility();
                            float arg0$iv2 = Dp.m7505constructorimpl(7 * arg0$iv);
                            float other$iv = DividerDefaults.INSTANCE.m2353getThicknessD9Ej5fM();
                            Modifier modifierM820paddingVpY3zN4$default2 = PaddingKt.m820paddingVpY3zN4$default(SizeKt.m853requiredHeight3ABfNKs(companion3, Dp.m7505constructorimpl(arg0$iv2 - other$iv)), DatePickerKt.getDatePickerHorizontalPadding(), 0.0f, 2, null);
                            ComposerKt.sourceInformationMarkerStart($composer6, -2060912043, "CC(remember):DatePicker.kt#9igjgp");
                            boolean invalid$iv5 = $composer6.changed(mutableState) | $composer6.changedInstance(coroutineScope2) | $composer6.changed(lazyListState) | $composer6.changedInstance(intRange2) | $composer6.changed(calendarMonth);
                            Object it$iv2 = $composer6.rememberedValue();
                            if (!invalid$iv5) {
                                modifier = modifierM820paddingVpY3zN4$default2;
                                if (it$iv2 != Composer.INSTANCE.getEmpty()) {
                                    intRange = intRange2;
                                    selectableDates2 = selectableDates3;
                                    value$iv5 = it$iv2;
                                }
                                ComposerKt.sourceInformationMarkerEnd($composer6);
                                DatePickerKt.YearPicker(modifier, j, (Function1) value$iv5, selectableDates2, calendarModel2, intRange, datePickerColors, $composer6, 6);
                                DividerKt.m2355HorizontalDivider9IZ8Weo(null, 0.0f, datePickerColors.getDividerColor(), $composer6, 0, 3);
                                ComposerKt.sourceInformationMarkerEnd($composer6);
                                ComposerKt.sourceInformationMarkerEnd($composer6);
                                $composer6.endNode();
                                ComposerKt.sourceInformationMarkerEnd($composer6);
                                ComposerKt.sourceInformationMarkerEnd($composer6);
                                ComposerKt.sourceInformationMarkerEnd($composer6);
                                if (ComposerKt.isTraceInProgress()) {
                                    return;
                                }
                                ComposerKt.traceEventEnd();
                                return;
                            }
                            modifier = modifierM820paddingVpY3zN4$default2;
                            selectableDates2 = selectableDates3;
                            Object obj = new Function1<Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DatePickerContent$1$4$2$2$1$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                                    invoke(num.intValue());
                                    return Unit.INSTANCE;
                                }

                                /* JADX INFO: renamed from: androidx.compose.material3.DatePickerKt$DatePickerContent$1$4$2$2$1$1$1, reason: invalid class name */
                                /* JADX INFO: compiled from: DatePicker.kt */
                                @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
                                @DebugMetadata(c = "androidx.compose.material3.DatePickerKt$DatePickerContent$1$4$2$2$1$1$1", f = "DatePicker.kt", i = {}, l = {1577}, m = "invokeSuspend", n = {}, s = {})
                                static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                                    final /* synthetic */ CalendarMonth $displayedMonth;
                                    final /* synthetic */ LazyListState $monthsListState;
                                    final /* synthetic */ int $year;
                                    final /* synthetic */ IntRange $yearRange;
                                    int label;

                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    AnonymousClass1(LazyListState lazyListState, int i, IntRange intRange, CalendarMonth calendarMonth, Continuation<? super AnonymousClass1> continuation) {
                                        super(2, continuation);
                                        this.$monthsListState = lazyListState;
                                        this.$year = i;
                                        this.$yearRange = intRange;
                                        this.$displayedMonth = calendarMonth;
                                    }

                                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                                        return new AnonymousClass1(this.$monthsListState, this.$year, this.$yearRange, this.$displayedMonth, continuation);
                                    }

                                    @Override // kotlin.jvm.functions.Function2
                                    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                                        return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                                    }

                                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                    public final Object invokeSuspend(Object $result) {
                                        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                                        switch (this.label) {
                                            case 0:
                                                ResultKt.throwOnFailure($result);
                                                this.label = 1;
                                                if (LazyListState.scrollToItem$default(this.$monthsListState, (((this.$year - this.$yearRange.getFirst()) * 12) + this.$displayedMonth.getMonth()) - 1, 0, this, 2, null) == coroutine_suspended) {
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

                                public final void invoke(int year) {
                                    DatePickerKt.DatePickerContent$lambda$9(mutableState, !DatePickerKt.DatePickerContent$lambda$8(mutableState));
                                    BuildersKt__Builders_commonKt.launch$default(coroutineScope2, null, null, new AnonymousClass1(lazyListState, year, intRange2, calendarMonth, null), 3, null);
                                }
                            };
                            intRange = intRange2;
                            value$iv5 = (Function1) obj;
                            $composer6.updateRememberedValue(value$iv5);
                            ComposerKt.sourceInformationMarkerEnd($composer6);
                            DatePickerKt.YearPicker(modifier, j, (Function1) value$iv5, selectableDates2, calendarModel2, intRange, datePickerColors, $composer6, 6);
                            DividerKt.m2355HorizontalDivider9IZ8Weo(null, 0.0f, datePickerColors.getDividerColor(), $composer6, 0, 3);
                            ComposerKt.sourceInformationMarkerEnd($composer6);
                            ComposerKt.sourceInformationMarkerEnd($composer6);
                            $composer6.endNode();
                            ComposerKt.sourceInformationMarkerEnd($composer6);
                            ComposerKt.sourceInformationMarkerEnd($composer6);
                            ComposerKt.sourceInformationMarkerEnd($composer6);
                            if (ComposerKt.isTraceInProgress()) {
                            }
                        }
                    }, $composer3, 54), $composer3, 200112, 16);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    $composer3.endNode();
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    ComposerKt.sourceInformationMarkerEnd($composer5);
                    $composer4.endNode();
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    if (ComposerKt.isTraceInProgress()) {
                    }
                } else {
                    $composer2 = $composer5;
                }
                value$iv3 = (Function0) new Function0<Unit>() { // from class: androidx.compose.material3.DatePickerKt$DatePickerContent$1$3$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                        DatePickerKt.DatePickerContent$lambda$9(yearPickerVisible$delegate2, !DatePickerKt.DatePickerContent$lambda$8(yearPickerVisible$delegate2));
                    }
                };
                $composer5.updateRememberedValue(value$iv3);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                $composer3 = $composer2;
                $composer4 = $composer5;
                MonthsNavigation(modifierM820paddingVpY3zN4$default, canScrollForward, canScrollBackward, zDatePickerContent$lambda$8, str, function04, function05, (Function0) value$iv3, colors, $composer3, ($dirty2 & 234881024) | 6);
                ComposerKt.sourceInformationMarkerStart($composer3, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                Modifier modifier$iv32 = Modifier.INSTANCE;
                Alignment contentAlignment$iv2 = Alignment.INSTANCE.getTopStart();
                MeasurePolicy measurePolicy$iv32 = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv2, false);
                int $changed$iv$iv22 = (0 << 3) & 112;
                ComposerKt.sourceInformationMarkerStart($composer3, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                int compositeKeyHash$iv$iv22 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                CompositionLocalMap localMap$iv$iv32 = $composer3.getCurrentCompositionLocalMap();
                Modifier materialized$iv$iv22 = ComposedModifierKt.materializeModifier($composer3, modifier$iv32);
                Function0<ComposeUiNode> constructor22 = ComposeUiNode.INSTANCE.getConstructor();
                int $changed$iv$iv$iv22 = (($changed$iv$iv22 << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart($composer3, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!($composer3.getApplier() instanceof Applier)) {
                }
                $composer3.startReusableNode();
                if ($composer3.getInserting()) {
                }
                $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer3);
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv32, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv32, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash22 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if ($this$Layout_u24lambda_u240$iv$iv.getInserting()) {
                }
                $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv22));
                $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv22), setCompositeKeyHash22);
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv22, ComposeUiNode.INSTANCE.getSetModifier());
                int i322 = ($changed$iv$iv$iv22 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer3, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                BoxScopeInstance boxScopeInstance22 = BoxScopeInstance.INSTANCE;
                int i422 = ((0 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer3, 2145148451, "C1532@70597L683,1551@71579L2290,1546@71320L2549:DatePicker.kt#uh7d8r");
                Modifier modifier$iv422 = PaddingKt.m820paddingVpY3zN4$default(Modifier.INSTANCE, DatePickerHorizontalPadding, 0.0f, 2, null);
                ComposerKt.sourceInformationMarkerStart($composer3, -483455358, "CC(Column)P(2,3,1)85@4251L61,86@4317L133:Column.kt#2w3rfo");
                Arrangement.Vertical verticalArrangement$iv222 = Arrangement.INSTANCE.getTop();
                Alignment.Horizontal horizontalAlignment$iv222 = Alignment.INSTANCE.getStart();
                MeasurePolicy measurePolicy$iv422 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv222, horizontalAlignment$iv222, $composer3, ((6 >> 3) & 14) | ((6 >> 3) & 112));
                int $changed$iv$iv322 = (6 << 3) & 112;
                ComposerKt.sourceInformationMarkerStart($composer3, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                int compositeKeyHash$iv$iv322 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                CompositionLocalMap localMap$iv$iv422 = $composer3.getCurrentCompositionLocalMap();
                Modifier materialized$iv$iv322 = ComposedModifierKt.materializeModifier($composer3, modifier$iv422);
                Function0<ComposeUiNode> constructor322 = ComposeUiNode.INSTANCE.getConstructor();
                int $changed$iv$iv$iv322 = (($changed$iv$iv322 << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart($composer3, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!($composer3.getApplier() instanceof Applier)) {
                }
                $composer3.startReusableNode();
                if (!$composer3.getInserting()) {
                }
                $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3967constructorimpl($composer3);
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv422, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv422, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash322 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if ($this$Layout_u24lambda_u240$iv$iv2.getInserting()) {
                }
                $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv322));
                $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv322), setCompositeKeyHash322);
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, materialized$iv$iv322, ComposeUiNode.INSTANCE.getSetModifier());
                int i5222 = ($changed$iv$iv$iv322 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer3, -384862393, "C87@4365L9:Column.kt#2w3rfo");
                ColumnScopeInstance columnScopeInstance2222 = ColumnScopeInstance.INSTANCE;
                int i6222 = ((6 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer3, 454425903, "C1533@70693L31,1534@70741L525:DatePicker.kt#uh7d8r");
                WeekDays(colors, calendarModel, $composer3, (($dirty2 >> 24) & 14) | (($dirty2 >> 9) & 112));
                HorizontalMonthsList(monthsListState, selectedDateMillis, function1, function12, calendarModel, yearRange, dateFormatter, selectableDates, colors, $composer3, (($dirty2 << 3) & 112) | ($dirty2 & 896) | ($dirty2 & 7168) | ($dirty2 & 57344) | ($dirty2 & 458752) | ($dirty2 & 3670016) | ($dirty2 & 29360128) | ($dirty2 & 234881024));
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer3.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                final MutableState<Boolean> yearPickerVisible$delegate3222 = yearPickerVisible$delegate;
                AnimatedVisibilityKt.AnimatedVisibility(DatePickerContent$lambda$8(yearPickerVisible$delegate), ClipKt.clipToBounds(Modifier.INSTANCE), EnterExitTransitionKt.expandVertically$default(null, null, false, null, 15, null).plus(EnterExitTransitionKt.fadeIn$default(null, 0.6f, 1, null)), EnterExitTransitionKt.shrinkVertically$default(null, null, false, null, 15, null).plus(EnterExitTransitionKt.fadeOut$default(null, 0.0f, 3, null)), (String) null, ComposableLambdaKt.rememberComposableLambda(1193716082, true, new Function3<AnimatedVisibilityScope, Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DatePickerContent$1$4$2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(3);
                    }

                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Unit invoke(AnimatedVisibilityScope animatedVisibilityScope, Composer composer, Integer num) {
                        invoke(animatedVisibilityScope, composer, num.intValue());
                        return Unit.INSTANCE;
                    }

                    /* JADX WARN: Removed duplicated region for block: B:38:0x026b  */
                    /* JADX WARN: Removed duplicated region for block: B:40:? A[RETURN, SYNTHETIC] */
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public final void invoke(AnimatedVisibilityScope $this$AnimatedVisibility, Composer $composer6, int $changed2) {
                        Object value$iv4;
                        Function0<ComposeUiNode> function06;
                        Modifier modifier;
                        SelectableDates selectableDates2;
                        IntRange intRange;
                        Object value$iv5;
                        ComposerKt.sourceInformation($composer6, "C1556@71903L48,1557@72005L30,1557@71968L1887:DatePicker.kt#uh7d8r");
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1193716082, $changed2, -1, "androidx.compose.material3.DatePickerContent.<anonymous>.<anonymous>.<anonymous> (DatePicker.kt:1556)");
                        }
                        Strings.Companion companion = Strings.INSTANCE;
                        final String yearsPaneTitle = Strings_androidKt.m3257getString2EP1pXo(Strings.m3187constructorimpl(R.string.m3c_date_picker_year_picker_pane_title), $composer6, 0);
                        Modifier.Companion companion2 = Modifier.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart($composer6, 14700341, "CC(remember):DatePicker.kt#9igjgp");
                        boolean invalid$iv4 = $composer6.changed(yearsPaneTitle);
                        Object it$iv = $composer6.rememberedValue();
                        if (invalid$iv4 || it$iv == Composer.INSTANCE.getEmpty()) {
                            value$iv4 = (Function1) new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DatePickerContent$1$4$2$1$1
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
                                    SemanticsPropertiesKt.setPaneTitle($this$semantics, yearsPaneTitle);
                                }
                            };
                            $composer6.updateRememberedValue(value$iv4);
                        } else {
                            value$iv4 = it$iv;
                        }
                        ComposerKt.sourceInformationMarkerEnd($composer6);
                        Modifier modifier$iv5 = SemanticsModifierKt.semantics$default(companion2, false, (Function1) value$iv4, 1, null);
                        long j = displayedMonthMillis;
                        final MutableState<Boolean> mutableState = yearPickerVisible$delegate3222;
                        final CoroutineScope coroutineScope2 = coroutineScope;
                        final LazyListState lazyListState = monthsListState;
                        final IntRange intRange2 = yearRange;
                        final CalendarMonth calendarMonth = displayedMonth;
                        SelectableDates selectableDates3 = selectableDates;
                        CalendarModel calendarModel2 = calendarModel;
                        DatePickerColors datePickerColors = colors;
                        ComposerKt.sourceInformationMarkerStart($composer6, -483455358, "CC(Column)P(2,3,1)85@4251L61,86@4317L133:Column.kt#2w3rfo");
                        Arrangement.Vertical verticalArrangement$iv3 = Arrangement.INSTANCE.getTop();
                        Alignment.Horizontal horizontalAlignment$iv3 = Alignment.INSTANCE.getStart();
                        MeasurePolicy measurePolicy$iv5 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv3, horizontalAlignment$iv3, $composer6, ((0 >> 3) & 14) | ((0 >> 3) & 112));
                        int $changed$iv$iv4 = (0 << 3) & 112;
                        ComposerKt.sourceInformationMarkerStart($composer6, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv4 = ComposablesKt.getCurrentCompositeKeyHash($composer6, 0);
                        CompositionLocalMap localMap$iv$iv5 = $composer6.getCurrentCompositionLocalMap();
                        Modifier materialized$iv$iv4 = ComposedModifierKt.materializeModifier($composer6, modifier$iv5);
                        Function0<ComposeUiNode> constructor4 = ComposeUiNode.INSTANCE.getConstructor();
                        int $changed$iv$iv$iv4 = (($changed$iv$iv4 << 6) & 896) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer6, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                        if (!($composer6.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        $composer6.startReusableNode();
                        if ($composer6.getInserting()) {
                            function06 = constructor4;
                            $composer6.createNode(function06);
                        } else {
                            function06 = constructor4;
                            $composer6.useNode();
                        }
                        Composer $this$Layout_u24lambda_u240$iv$iv4 = Updater.m3967constructorimpl($composer6);
                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv4, measurePolicy$iv5, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv4, localMap$iv$iv5, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash4 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if ($this$Layout_u24lambda_u240$iv$iv4.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv4.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv4))) {
                            $this$Layout_u24lambda_u240$iv$iv4.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv4));
                            $this$Layout_u24lambda_u240$iv$iv4.apply(Integer.valueOf(compositeKeyHash$iv$iv4), setCompositeKeyHash4);
                        }
                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv4, materialized$iv$iv4, ComposeUiNode.INSTANCE.getSetModifier());
                        int i7 = ($changed$iv$iv$iv4 >> 6) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer6, -384862393, "C87@4365L9:Column.kt#2w3rfo");
                        ColumnScopeInstance columnScopeInstance3 = ColumnScopeInstance.INSTANCE;
                        int i8 = ((0 >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer6, 535553211, "C1569@72779L767,1558@72059L1711,1586@73791L46:DatePicker.kt#uh7d8r");
                        Modifier.Companion companion3 = Modifier.INSTANCE;
                        float arg0$iv = DatePickerKt.getRecommendedSizeForAccessibility();
                        float arg0$iv2 = Dp.m7505constructorimpl(7 * arg0$iv);
                        float other$iv = DividerDefaults.INSTANCE.m2353getThicknessD9Ej5fM();
                        Modifier modifierM820paddingVpY3zN4$default2 = PaddingKt.m820paddingVpY3zN4$default(SizeKt.m853requiredHeight3ABfNKs(companion3, Dp.m7505constructorimpl(arg0$iv2 - other$iv)), DatePickerKt.getDatePickerHorizontalPadding(), 0.0f, 2, null);
                        ComposerKt.sourceInformationMarkerStart($composer6, -2060912043, "CC(remember):DatePicker.kt#9igjgp");
                        boolean invalid$iv5 = $composer6.changed(mutableState) | $composer6.changedInstance(coroutineScope2) | $composer6.changed(lazyListState) | $composer6.changedInstance(intRange2) | $composer6.changed(calendarMonth);
                        Object it$iv2 = $composer6.rememberedValue();
                        if (!invalid$iv5) {
                            modifier = modifierM820paddingVpY3zN4$default2;
                            if (it$iv2 != Composer.INSTANCE.getEmpty()) {
                                intRange = intRange2;
                                selectableDates2 = selectableDates3;
                                value$iv5 = it$iv2;
                            }
                            ComposerKt.sourceInformationMarkerEnd($composer6);
                            DatePickerKt.YearPicker(modifier, j, (Function1) value$iv5, selectableDates2, calendarModel2, intRange, datePickerColors, $composer6, 6);
                            DividerKt.m2355HorizontalDivider9IZ8Weo(null, 0.0f, datePickerColors.getDividerColor(), $composer6, 0, 3);
                            ComposerKt.sourceInformationMarkerEnd($composer6);
                            ComposerKt.sourceInformationMarkerEnd($composer6);
                            $composer6.endNode();
                            ComposerKt.sourceInformationMarkerEnd($composer6);
                            ComposerKt.sourceInformationMarkerEnd($composer6);
                            ComposerKt.sourceInformationMarkerEnd($composer6);
                            if (ComposerKt.isTraceInProgress()) {
                                return;
                            }
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        modifier = modifierM820paddingVpY3zN4$default2;
                        selectableDates2 = selectableDates3;
                        Object obj = new Function1<Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DatePickerContent$1$4$2$2$1$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                                invoke(num.intValue());
                                return Unit.INSTANCE;
                            }

                            /* JADX INFO: renamed from: androidx.compose.material3.DatePickerKt$DatePickerContent$1$4$2$2$1$1$1, reason: invalid class name */
                            /* JADX INFO: compiled from: DatePicker.kt */
                            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
                            @DebugMetadata(c = "androidx.compose.material3.DatePickerKt$DatePickerContent$1$4$2$2$1$1$1", f = "DatePicker.kt", i = {}, l = {1577}, m = "invokeSuspend", n = {}, s = {})
                            static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                                final /* synthetic */ CalendarMonth $displayedMonth;
                                final /* synthetic */ LazyListState $monthsListState;
                                final /* synthetic */ int $year;
                                final /* synthetic */ IntRange $yearRange;
                                int label;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                AnonymousClass1(LazyListState lazyListState, int i, IntRange intRange, CalendarMonth calendarMonth, Continuation<? super AnonymousClass1> continuation) {
                                    super(2, continuation);
                                    this.$monthsListState = lazyListState;
                                    this.$year = i;
                                    this.$yearRange = intRange;
                                    this.$displayedMonth = calendarMonth;
                                }

                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                                    return new AnonymousClass1(this.$monthsListState, this.$year, this.$yearRange, this.$displayedMonth, continuation);
                                }

                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                                    return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                                }

                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                public final Object invokeSuspend(Object $result) {
                                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                                    switch (this.label) {
                                        case 0:
                                            ResultKt.throwOnFailure($result);
                                            this.label = 1;
                                            if (LazyListState.scrollToItem$default(this.$monthsListState, (((this.$year - this.$yearRange.getFirst()) * 12) + this.$displayedMonth.getMonth()) - 1, 0, this, 2, null) == coroutine_suspended) {
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

                            public final void invoke(int year) {
                                DatePickerKt.DatePickerContent$lambda$9(mutableState, !DatePickerKt.DatePickerContent$lambda$8(mutableState));
                                BuildersKt__Builders_commonKt.launch$default(coroutineScope2, null, null, new AnonymousClass1(lazyListState, year, intRange2, calendarMonth, null), 3, null);
                            }
                        };
                        intRange = intRange2;
                        value$iv5 = (Function1) obj;
                        $composer6.updateRememberedValue(value$iv5);
                        ComposerKt.sourceInformationMarkerEnd($composer6);
                        DatePickerKt.YearPicker(modifier, j, (Function1) value$iv5, selectableDates2, calendarModel2, intRange, datePickerColors, $composer6, 6);
                        DividerKt.m2355HorizontalDivider9IZ8Weo(null, 0.0f, datePickerColors.getDividerColor(), $composer6, 0, 3);
                        ComposerKt.sourceInformationMarkerEnd($composer6);
                        ComposerKt.sourceInformationMarkerEnd($composer6);
                        $composer6.endNode();
                        ComposerKt.sourceInformationMarkerEnd($composer6);
                        ComposerKt.sourceInformationMarkerEnd($composer6);
                        ComposerKt.sourceInformationMarkerEnd($composer6);
                        if (ComposerKt.isTraceInProgress()) {
                        }
                    }
                }, $composer3, 54), $composer3, 200112, 16);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer3.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer5);
                $composer4.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer4);
                ComposerKt.sourceInformationMarkerEnd($composer4);
                ComposerKt.sourceInformationMarkerEnd($composer4);
                if (ComposerKt.isTraceInProgress()) {
                }
            }
            $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
            $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv), setCompositeKeyHash);
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
            int i7 = ($changed$iv$iv$iv >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer5, -384862393, "C87@4365L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance3 = ColumnScopeInstance.INSTANCE;
            int i22 = ((0 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer5, -1437690694, "C1503@69381L511,1515@69926L520,1527@70488L42,1493@68871L1698,1531@70579L3300:DatePicker.kt#uh7d8r");
            Modifier modifierM820paddingVpY3zN4$default2 = PaddingKt.m820paddingVpY3zN4$default(Modifier.INSTANCE, DatePickerHorizontalPadding, 0.0f, 2, null);
            boolean canScrollForward2 = monthsListState.getCanScrollForward();
            boolean canScrollBackward2 = monthsListState.getCanScrollBackward();
            boolean zDatePickerContent$lambda$82 = DatePickerContent$lambda$8(yearPickerVisible$delegate2);
            monthYear = dateFormatter.formatMonthYear(Long.valueOf(displayedMonthMillis), defaultLocale);
            if (monthYear == null) {
            }
            String str2 = monthYear;
            ComposerKt.sourceInformationMarkerStart($composer5, 230729368, "CC(remember):DatePicker.kt#9igjgp");
            invalid$iv = $composer5.changedInstance(coroutineScope) | $composer5.changed(monthsListState);
            value$iv = $composer5.rememberedValue();
            if (!invalid$iv) {
                value$iv = (Function0) new Function0<Unit>() { // from class: androidx.compose.material3.DatePickerKt$DatePickerContent$1$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX INFO: renamed from: androidx.compose.material3.DatePickerKt$DatePickerContent$1$1$1$1, reason: invalid class name */
                    /* JADX INFO: compiled from: DatePicker.kt */
                    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
                    @DebugMetadata(c = "androidx.compose.material3.DatePickerKt$DatePickerContent$1$1$1$1", f = "DatePicker.kt", i = {}, l = {1507}, m = "invokeSuspend", n = {}, s = {})
                    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                        final /* synthetic */ LazyListState $monthsListState;
                        int label;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        AnonymousClass1(LazyListState lazyListState, Continuation<? super AnonymousClass1> continuation) {
                            super(2, continuation);
                            this.$monthsListState = lazyListState;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                            return new AnonymousClass1(this.$monthsListState, continuation);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object $result) {
                            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                            try {
                                switch (this.label) {
                                    case 0:
                                        ResultKt.throwOnFailure($result);
                                        this.label = 1;
                                        if (LazyListState.animateScrollToItem$default(this.$monthsListState, this.$monthsListState.getFirstVisibleItemIndex() + 1, 0, this, 2, null) == coroutine_suspended) {
                                            return coroutine_suspended;
                                        }
                                        break;
                                    case 1:
                                        ResultKt.throwOnFailure($result);
                                        break;
                                    default:
                                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                            } catch (IllegalArgumentException e) {
                            }
                            return Unit.INSTANCE;
                        }
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new AnonymousClass1(monthsListState, null), 3, null);
                    }
                };
                $composer5.updateRememberedValue(value$iv);
                Function0 function042 = (Function0) value$iv;
                ComposerKt.sourceInformationMarkerEnd($composer5);
                ComposerKt.sourceInformationMarkerStart($composer5, 230746817, "CC(remember):DatePicker.kt#9igjgp");
                invalid$iv2 = $composer5.changedInstance(coroutineScope) | $composer5.changed(monthsListState);
                value$iv2 = $composer5.rememberedValue();
                if (!invalid$iv2) {
                }
                value$iv2 = (Function0) new Function0<Unit>() { // from class: androidx.compose.material3.DatePickerKt$DatePickerContent$1$2$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX INFO: renamed from: androidx.compose.material3.DatePickerKt$DatePickerContent$1$2$1$1, reason: invalid class name */
                    /* JADX INFO: compiled from: DatePicker.kt */
                    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
                    @DebugMetadata(c = "androidx.compose.material3.DatePickerKt$DatePickerContent$1$2$1$1", f = "DatePicker.kt", i = {}, l = {1519}, m = "invokeSuspend", n = {}, s = {})
                    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                        final /* synthetic */ LazyListState $monthsListState;
                        int label;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        AnonymousClass1(LazyListState lazyListState, Continuation<? super AnonymousClass1> continuation) {
                            super(2, continuation);
                            this.$monthsListState = lazyListState;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                            return new AnonymousClass1(this.$monthsListState, continuation);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object $result) {
                            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                            try {
                                switch (this.label) {
                                    case 0:
                                        ResultKt.throwOnFailure($result);
                                        this.label = 1;
                                        if (LazyListState.animateScrollToItem$default(this.$monthsListState, this.$monthsListState.getFirstVisibleItemIndex() - 1, 0, this, 2, null) == coroutine_suspended) {
                                            return coroutine_suspended;
                                        }
                                        break;
                                    case 1:
                                        ResultKt.throwOnFailure($result);
                                        break;
                                    default:
                                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                            } catch (IllegalArgumentException e) {
                            }
                            return Unit.INSTANCE;
                        }
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new AnonymousClass1(monthsListState, null), 3, null);
                    }
                };
                $composer5.updateRememberedValue(value$iv2);
                Function0 function052 = (Function0) value$iv2;
                ComposerKt.sourceInformationMarkerEnd($composer5);
                ComposerKt.sourceInformationMarkerStart($composer5, 230764323, "CC(remember):DatePicker.kt#9igjgp");
                invalid$iv3 = $composer5.changed(yearPickerVisible$delegate2);
                Object value$iv32 = $composer5.rememberedValue();
                if (invalid$iv3) {
                }
                value$iv32 = (Function0) new Function0<Unit>() { // from class: androidx.compose.material3.DatePickerKt$DatePickerContent$1$3$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                        DatePickerKt.DatePickerContent$lambda$9(yearPickerVisible$delegate2, !DatePickerKt.DatePickerContent$lambda$8(yearPickerVisible$delegate2));
                    }
                };
                $composer5.updateRememberedValue(value$iv32);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                $composer3 = $composer2;
                $composer4 = $composer5;
                MonthsNavigation(modifierM820paddingVpY3zN4$default2, canScrollForward2, canScrollBackward2, zDatePickerContent$lambda$82, str2, function042, function052, (Function0) value$iv32, colors, $composer3, ($dirty2 & 234881024) | 6);
                ComposerKt.sourceInformationMarkerStart($composer3, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                Modifier modifier$iv322 = Modifier.INSTANCE;
                Alignment contentAlignment$iv22 = Alignment.INSTANCE.getTopStart();
                MeasurePolicy measurePolicy$iv322 = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv22, false);
                int $changed$iv$iv222 = (0 << 3) & 112;
                ComposerKt.sourceInformationMarkerStart($composer3, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                int compositeKeyHash$iv$iv222 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                CompositionLocalMap localMap$iv$iv322 = $composer3.getCurrentCompositionLocalMap();
                Modifier materialized$iv$iv222 = ComposedModifierKt.materializeModifier($composer3, modifier$iv322);
                Function0<ComposeUiNode> constructor222 = ComposeUiNode.INSTANCE.getConstructor();
                int $changed$iv$iv$iv222 = (($changed$iv$iv222 << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart($composer3, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!($composer3.getApplier() instanceof Applier)) {
                }
                $composer3.startReusableNode();
                if ($composer3.getInserting()) {
                }
                $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer3);
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv322, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv322, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if ($this$Layout_u24lambda_u240$iv$iv.getInserting()) {
                }
                $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv222));
                $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv222), setCompositeKeyHash222);
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv222, ComposeUiNode.INSTANCE.getSetModifier());
                int i3222 = ($changed$iv$iv$iv222 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer3, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                BoxScopeInstance boxScopeInstance222 = BoxScopeInstance.INSTANCE;
                int i4222 = ((0 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer3, 2145148451, "C1532@70597L683,1551@71579L2290,1546@71320L2549:DatePicker.kt#uh7d8r");
                Modifier modifier$iv4222 = PaddingKt.m820paddingVpY3zN4$default(Modifier.INSTANCE, DatePickerHorizontalPadding, 0.0f, 2, null);
                ComposerKt.sourceInformationMarkerStart($composer3, -483455358, "CC(Column)P(2,3,1)85@4251L61,86@4317L133:Column.kt#2w3rfo");
                Arrangement.Vertical verticalArrangement$iv2222 = Arrangement.INSTANCE.getTop();
                Alignment.Horizontal horizontalAlignment$iv2222 = Alignment.INSTANCE.getStart();
                MeasurePolicy measurePolicy$iv4222 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv2222, horizontalAlignment$iv2222, $composer3, ((6 >> 3) & 14) | ((6 >> 3) & 112));
                int $changed$iv$iv3222 = (6 << 3) & 112;
                ComposerKt.sourceInformationMarkerStart($composer3, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                int compositeKeyHash$iv$iv3222 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                CompositionLocalMap localMap$iv$iv4222 = $composer3.getCurrentCompositionLocalMap();
                Modifier materialized$iv$iv3222 = ComposedModifierKt.materializeModifier($composer3, modifier$iv4222);
                Function0<ComposeUiNode> constructor3222 = ComposeUiNode.INSTANCE.getConstructor();
                int $changed$iv$iv$iv3222 = (($changed$iv$iv3222 << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart($composer3, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!($composer3.getApplier() instanceof Applier)) {
                }
                $composer3.startReusableNode();
                if (!$composer3.getInserting()) {
                }
                $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3967constructorimpl($composer3);
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv4222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv4222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash3222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if ($this$Layout_u24lambda_u240$iv$iv2.getInserting()) {
                }
                $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv3222));
                $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv3222), setCompositeKeyHash3222);
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, materialized$iv$iv3222, ComposeUiNode.INSTANCE.getSetModifier());
                int i52222 = ($changed$iv$iv$iv3222 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer3, -384862393, "C87@4365L9:Column.kt#2w3rfo");
                ColumnScopeInstance columnScopeInstance22222 = ColumnScopeInstance.INSTANCE;
                int i62222 = ((6 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer3, 454425903, "C1533@70693L31,1534@70741L525:DatePicker.kt#uh7d8r");
                WeekDays(colors, calendarModel, $composer3, (($dirty2 >> 24) & 14) | (($dirty2 >> 9) & 112));
                HorizontalMonthsList(monthsListState, selectedDateMillis, function1, function12, calendarModel, yearRange, dateFormatter, selectableDates, colors, $composer3, (($dirty2 << 3) & 112) | ($dirty2 & 896) | ($dirty2 & 7168) | ($dirty2 & 57344) | ($dirty2 & 458752) | ($dirty2 & 3670016) | ($dirty2 & 29360128) | ($dirty2 & 234881024));
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer3.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                final MutableState<Boolean> yearPickerVisible$delegate32222 = yearPickerVisible$delegate;
                AnimatedVisibilityKt.AnimatedVisibility(DatePickerContent$lambda$8(yearPickerVisible$delegate), ClipKt.clipToBounds(Modifier.INSTANCE), EnterExitTransitionKt.expandVertically$default(null, null, false, null, 15, null).plus(EnterExitTransitionKt.fadeIn$default(null, 0.6f, 1, null)), EnterExitTransitionKt.shrinkVertically$default(null, null, false, null, 15, null).plus(EnterExitTransitionKt.fadeOut$default(null, 0.0f, 3, null)), (String) null, ComposableLambdaKt.rememberComposableLambda(1193716082, true, new Function3<AnimatedVisibilityScope, Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DatePickerContent$1$4$2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(3);
                    }

                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ Unit invoke(AnimatedVisibilityScope animatedVisibilityScope, Composer composer, Integer num) {
                        invoke(animatedVisibilityScope, composer, num.intValue());
                        return Unit.INSTANCE;
                    }

                    /* JADX WARN: Removed duplicated region for block: B:38:0x026b  */
                    /* JADX WARN: Removed duplicated region for block: B:40:? A[RETURN, SYNTHETIC] */
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public final void invoke(AnimatedVisibilityScope $this$AnimatedVisibility, Composer $composer6, int $changed2) {
                        Object value$iv4;
                        Function0<ComposeUiNode> function06;
                        Modifier modifier;
                        SelectableDates selectableDates2;
                        IntRange intRange;
                        Object value$iv5;
                        ComposerKt.sourceInformation($composer6, "C1556@71903L48,1557@72005L30,1557@71968L1887:DatePicker.kt#uh7d8r");
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1193716082, $changed2, -1, "androidx.compose.material3.DatePickerContent.<anonymous>.<anonymous>.<anonymous> (DatePicker.kt:1556)");
                        }
                        Strings.Companion companion = Strings.INSTANCE;
                        final String yearsPaneTitle = Strings_androidKt.m3257getString2EP1pXo(Strings.m3187constructorimpl(R.string.m3c_date_picker_year_picker_pane_title), $composer6, 0);
                        Modifier.Companion companion2 = Modifier.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart($composer6, 14700341, "CC(remember):DatePicker.kt#9igjgp");
                        boolean invalid$iv4 = $composer6.changed(yearsPaneTitle);
                        Object it$iv = $composer6.rememberedValue();
                        if (invalid$iv4 || it$iv == Composer.INSTANCE.getEmpty()) {
                            value$iv4 = (Function1) new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DatePickerContent$1$4$2$1$1
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
                                    SemanticsPropertiesKt.setPaneTitle($this$semantics, yearsPaneTitle);
                                }
                            };
                            $composer6.updateRememberedValue(value$iv4);
                        } else {
                            value$iv4 = it$iv;
                        }
                        ComposerKt.sourceInformationMarkerEnd($composer6);
                        Modifier modifier$iv5 = SemanticsModifierKt.semantics$default(companion2, false, (Function1) value$iv4, 1, null);
                        long j = displayedMonthMillis;
                        final MutableState<Boolean> mutableState = yearPickerVisible$delegate32222;
                        final CoroutineScope coroutineScope2 = coroutineScope;
                        final LazyListState lazyListState = monthsListState;
                        final IntRange intRange2 = yearRange;
                        final CalendarMonth calendarMonth = displayedMonth;
                        SelectableDates selectableDates3 = selectableDates;
                        CalendarModel calendarModel2 = calendarModel;
                        DatePickerColors datePickerColors = colors;
                        ComposerKt.sourceInformationMarkerStart($composer6, -483455358, "CC(Column)P(2,3,1)85@4251L61,86@4317L133:Column.kt#2w3rfo");
                        Arrangement.Vertical verticalArrangement$iv3 = Arrangement.INSTANCE.getTop();
                        Alignment.Horizontal horizontalAlignment$iv3 = Alignment.INSTANCE.getStart();
                        MeasurePolicy measurePolicy$iv5 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv3, horizontalAlignment$iv3, $composer6, ((0 >> 3) & 14) | ((0 >> 3) & 112));
                        int $changed$iv$iv4 = (0 << 3) & 112;
                        ComposerKt.sourceInformationMarkerStart($composer6, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv4 = ComposablesKt.getCurrentCompositeKeyHash($composer6, 0);
                        CompositionLocalMap localMap$iv$iv5 = $composer6.getCurrentCompositionLocalMap();
                        Modifier materialized$iv$iv4 = ComposedModifierKt.materializeModifier($composer6, modifier$iv5);
                        Function0<ComposeUiNode> constructor4 = ComposeUiNode.INSTANCE.getConstructor();
                        int $changed$iv$iv$iv4 = (($changed$iv$iv4 << 6) & 896) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer6, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                        if (!($composer6.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        $composer6.startReusableNode();
                        if ($composer6.getInserting()) {
                            function06 = constructor4;
                            $composer6.createNode(function06);
                        } else {
                            function06 = constructor4;
                            $composer6.useNode();
                        }
                        Composer $this$Layout_u24lambda_u240$iv$iv4 = Updater.m3967constructorimpl($composer6);
                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv4, measurePolicy$iv5, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv4, localMap$iv$iv5, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash4 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if ($this$Layout_u24lambda_u240$iv$iv4.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv4.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv4))) {
                            $this$Layout_u24lambda_u240$iv$iv4.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv4));
                            $this$Layout_u24lambda_u240$iv$iv4.apply(Integer.valueOf(compositeKeyHash$iv$iv4), setCompositeKeyHash4);
                        }
                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv4, materialized$iv$iv4, ComposeUiNode.INSTANCE.getSetModifier());
                        int i72 = ($changed$iv$iv$iv4 >> 6) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer6, -384862393, "C87@4365L9:Column.kt#2w3rfo");
                        ColumnScopeInstance columnScopeInstance32 = ColumnScopeInstance.INSTANCE;
                        int i8 = ((0 >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer6, 535553211, "C1569@72779L767,1558@72059L1711,1586@73791L46:DatePicker.kt#uh7d8r");
                        Modifier.Companion companion3 = Modifier.INSTANCE;
                        float arg0$iv = DatePickerKt.getRecommendedSizeForAccessibility();
                        float arg0$iv2 = Dp.m7505constructorimpl(7 * arg0$iv);
                        float other$iv = DividerDefaults.INSTANCE.m2353getThicknessD9Ej5fM();
                        Modifier modifierM820paddingVpY3zN4$default22 = PaddingKt.m820paddingVpY3zN4$default(SizeKt.m853requiredHeight3ABfNKs(companion3, Dp.m7505constructorimpl(arg0$iv2 - other$iv)), DatePickerKt.getDatePickerHorizontalPadding(), 0.0f, 2, null);
                        ComposerKt.sourceInformationMarkerStart($composer6, -2060912043, "CC(remember):DatePicker.kt#9igjgp");
                        boolean invalid$iv5 = $composer6.changed(mutableState) | $composer6.changedInstance(coroutineScope2) | $composer6.changed(lazyListState) | $composer6.changedInstance(intRange2) | $composer6.changed(calendarMonth);
                        Object it$iv2 = $composer6.rememberedValue();
                        if (!invalid$iv5) {
                            modifier = modifierM820paddingVpY3zN4$default22;
                            if (it$iv2 != Composer.INSTANCE.getEmpty()) {
                                intRange = intRange2;
                                selectableDates2 = selectableDates3;
                                value$iv5 = it$iv2;
                            }
                            ComposerKt.sourceInformationMarkerEnd($composer6);
                            DatePickerKt.YearPicker(modifier, j, (Function1) value$iv5, selectableDates2, calendarModel2, intRange, datePickerColors, $composer6, 6);
                            DividerKt.m2355HorizontalDivider9IZ8Weo(null, 0.0f, datePickerColors.getDividerColor(), $composer6, 0, 3);
                            ComposerKt.sourceInformationMarkerEnd($composer6);
                            ComposerKt.sourceInformationMarkerEnd($composer6);
                            $composer6.endNode();
                            ComposerKt.sourceInformationMarkerEnd($composer6);
                            ComposerKt.sourceInformationMarkerEnd($composer6);
                            ComposerKt.sourceInformationMarkerEnd($composer6);
                            if (ComposerKt.isTraceInProgress()) {
                                return;
                            }
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        modifier = modifierM820paddingVpY3zN4$default22;
                        selectableDates2 = selectableDates3;
                        Object obj = new Function1<Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DatePickerContent$1$4$2$2$1$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                                invoke(num.intValue());
                                return Unit.INSTANCE;
                            }

                            /* JADX INFO: renamed from: androidx.compose.material3.DatePickerKt$DatePickerContent$1$4$2$2$1$1$1, reason: invalid class name */
                            /* JADX INFO: compiled from: DatePicker.kt */
                            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
                            @DebugMetadata(c = "androidx.compose.material3.DatePickerKt$DatePickerContent$1$4$2$2$1$1$1", f = "DatePicker.kt", i = {}, l = {1577}, m = "invokeSuspend", n = {}, s = {})
                            static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                                final /* synthetic */ CalendarMonth $displayedMonth;
                                final /* synthetic */ LazyListState $monthsListState;
                                final /* synthetic */ int $year;
                                final /* synthetic */ IntRange $yearRange;
                                int label;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                AnonymousClass1(LazyListState lazyListState, int i, IntRange intRange, CalendarMonth calendarMonth, Continuation<? super AnonymousClass1> continuation) {
                                    super(2, continuation);
                                    this.$monthsListState = lazyListState;
                                    this.$year = i;
                                    this.$yearRange = intRange;
                                    this.$displayedMonth = calendarMonth;
                                }

                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                                    return new AnonymousClass1(this.$monthsListState, this.$year, this.$yearRange, this.$displayedMonth, continuation);
                                }

                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                                    return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                                }

                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                public final Object invokeSuspend(Object $result) {
                                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                                    switch (this.label) {
                                        case 0:
                                            ResultKt.throwOnFailure($result);
                                            this.label = 1;
                                            if (LazyListState.scrollToItem$default(this.$monthsListState, (((this.$year - this.$yearRange.getFirst()) * 12) + this.$displayedMonth.getMonth()) - 1, 0, this, 2, null) == coroutine_suspended) {
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

                            public final void invoke(int year) {
                                DatePickerKt.DatePickerContent$lambda$9(mutableState, !DatePickerKt.DatePickerContent$lambda$8(mutableState));
                                BuildersKt__Builders_commonKt.launch$default(coroutineScope2, null, null, new AnonymousClass1(lazyListState, year, intRange2, calendarMonth, null), 3, null);
                            }
                        };
                        intRange = intRange2;
                        value$iv5 = (Function1) obj;
                        $composer6.updateRememberedValue(value$iv5);
                        ComposerKt.sourceInformationMarkerEnd($composer6);
                        DatePickerKt.YearPicker(modifier, j, (Function1) value$iv5, selectableDates2, calendarModel2, intRange, datePickerColors, $composer6, 6);
                        DividerKt.m2355HorizontalDivider9IZ8Weo(null, 0.0f, datePickerColors.getDividerColor(), $composer6, 0, 3);
                        ComposerKt.sourceInformationMarkerEnd($composer6);
                        ComposerKt.sourceInformationMarkerEnd($composer6);
                        $composer6.endNode();
                        ComposerKt.sourceInformationMarkerEnd($composer6);
                        ComposerKt.sourceInformationMarkerEnd($composer6);
                        ComposerKt.sourceInformationMarkerEnd($composer6);
                        if (ComposerKt.isTraceInProgress()) {
                        }
                    }
                }, $composer3, 54), $composer3, 200112, 16);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer3.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                ComposerKt.sourceInformationMarkerEnd($composer5);
                $composer4.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer4);
                ComposerKt.sourceInformationMarkerEnd($composer4);
                ComposerKt.sourceInformationMarkerEnd($composer4);
                if (ComposerKt.isTraceInProgress()) {
                }
            }
        } else {
            $composer5.skipToGroupEnd();
            $composer4 = $composer5;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer4.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt.DatePickerContent.2
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
                    DatePickerKt.DatePickerContent(selectedDateMillis, displayedMonthMillis, function1, function12, calendarModel, yearRange, dateFormatter, selectableDates, colors, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean DatePickerContent$lambda$8(MutableState<Boolean> mutableState) {
        MutableState<Boolean> $this$getValue$iv = mutableState;
        return $this$getValue$iv.getValue().booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void DatePickerContent$lambda$9(MutableState<Boolean> mutableState, boolean value) {
        mutableState.setValue(Boolean.valueOf(value));
    }

    /* JADX INFO: renamed from: DatePickerHeader-pc5RIQQ, reason: not valid java name */
    public static final void m2310DatePickerHeaderpc5RIQQ(final Modifier modifier, final Function2<? super Composer, ? super Integer, Unit> function2, final long titleContentColor, final long headlineContentColor, final float minHeight, final Function2<? super Composer, ? super Integer, Unit> function22, Composer $composer, final int $changed) {
        long j;
        Modifier.Companion heightModifier;
        Function0<ComposeUiNode> function0;
        Composer $composer$iv;
        Composer $composer2 = $composer.startRestartGroup(-996037719);
        ComposerKt.sourceInformation($composer2, "C(DatePickerHeader)P(3,4,5:c#ui.graphics.Color,1:c#ui.graphics.Color,2:c#ui.unit.Dp)1609@74344L539:DatePicker.kt#uh7d8r");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changed(modifier) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer2.changedInstance(function2) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            j = titleContentColor;
            $dirty |= $composer2.changed(j) ? 256 : 128;
        } else {
            j = titleContentColor;
        }
        if (($changed & 3072) == 0) {
            $dirty |= $composer2.changed(headlineContentColor) ? 2048 : 1024;
        }
        if (($changed & 24576) == 0) {
            $dirty |= $composer2.changed(minHeight) ? 16384 : 8192;
        }
        if ((196608 & $changed) == 0) {
            $dirty |= $composer2.changedInstance(function22) ? 131072 : 65536;
        }
        if ((74899 & $dirty) != 74898 || !$composer2.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-996037719, $dirty, -1, "androidx.compose.material3.DatePickerHeader (DatePicker.kt:1601)");
            }
            if (function2 != null) {
                heightModifier = SizeKt.m849defaultMinSizeVpY3zN4$default(Modifier.INSTANCE, 0.0f, minHeight, 1, null);
            } else {
                heightModifier = Modifier.INSTANCE;
            }
            Modifier modifier$iv = SizeKt.fillMaxWidth$default(modifier, 0.0f, 1, null).then(heightModifier);
            Arrangement.Vertical verticalArrangement$iv = Arrangement.INSTANCE.getSpaceBetween();
            ComposerKt.sourceInformationMarkerStart($composer2, -483455358, "CC(Column)P(2,3,1)85@4251L61,86@4317L133:Column.kt#2w3rfo");
            Alignment.Horizontal horizontalAlignment$iv = Alignment.INSTANCE.getStart();
            MeasurePolicy measurePolicy$iv = ColumnKt.columnMeasurePolicy(verticalArrangement$iv, horizontalAlignment$iv, $composer2, ((48 >> 3) & 14) | ((48 >> 3) & 112));
            int $changed$iv$iv = (48 << 3) & 112;
            int $dirty2 = $dirty;
            ComposerKt.sourceInformationMarkerStart($composer2, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
            int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer2, 0);
            CompositionLocalMap localMap$iv$iv = $composer2.getCurrentCompositionLocalMap();
            Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer2, modifier$iv);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int $changed$iv$iv$iv = (($changed$iv$iv << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer2, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
            if (!($composer2.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer2.startReusableNode();
            if ($composer2.getInserting()) {
                function0 = constructor;
                $composer2.createNode(function0);
            } else {
                function0 = constructor;
                $composer2.useNode();
            }
            Composer $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer2);
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if ($this$Layout_u24lambda_u240$iv$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), setCompositeKeyHash);
            }
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
            int i = ($changed$iv$iv$iv >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer2, -384862393, "C87@4365L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            int i2 = ((48 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer2, 1243392968, "C1619@74785L92:DatePicker.kt#uh7d8r");
            $composer2.startReplaceGroup(594298678);
            ComposerKt.sourceInformation($composer2, "1614@74573L5,1615@74677L89,1615@74591L175");
            if (function2 == null) {
                $composer$iv = $composer2;
            } else {
                TextStyle textStyle = TypographyKt.getValue(DatePickerModalTokens.INSTANCE.getHeaderSupportingTextFont(), $composer2, 6);
                $composer$iv = $composer2;
                ProvideContentColorTextStyleKt.m3185ProvideContentColorTextStyle3JVO9M(j, textStyle, ComposableLambdaKt.rememberComposableLambda(1936268514, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DatePickerHeader$1$1
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

                    public final void invoke(Composer $composer3, int $changed2) {
                        Function0<ComposeUiNode> function02;
                        ComposerKt.sourceInformation($composer3, "C1616@74695L57:DatePicker.kt#uh7d8r");
                        if (($changed2 & 3) == 2 && $composer3.getSkipping()) {
                            $composer3.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1936268514, $changed2, -1, "androidx.compose.material3.DatePickerHeader.<anonymous>.<anonymous> (DatePicker.kt:1616)");
                        }
                        Alignment contentAlignment$iv = Alignment.INSTANCE.getBottomStart();
                        Function2<Composer, Integer, Unit> function23 = function2;
                        ComposerKt.sourceInformationMarkerStart($composer3, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                        Modifier modifier$iv2 = Modifier.INSTANCE;
                        MeasurePolicy measurePolicy$iv2 = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv, false);
                        int $changed$iv$iv2 = (48 << 3) & 112;
                        ComposerKt.sourceInformationMarkerStart($composer3, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                        int compositeKeyHash$iv$iv2 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                        CompositionLocalMap localMap$iv$iv2 = $composer3.getCurrentCompositionLocalMap();
                        Modifier materialized$iv$iv2 = ComposedModifierKt.materializeModifier($composer3, modifier$iv2);
                        Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
                        int $changed$iv$iv$iv2 = (($changed$iv$iv2 << 6) & 896) | 6;
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
                        Composer $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3967constructorimpl($composer3);
                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash2 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if ($this$Layout_u24lambda_u240$iv$iv2.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv2.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv2))) {
                            $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv2));
                            $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv2), setCompositeKeyHash2);
                        }
                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, materialized$iv$iv2, ComposeUiNode.INSTANCE.getSetModifier());
                        int i3 = ($changed$iv$iv$iv2 >> 6) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer3, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                        int i4 = ((48 >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer3, -398367181, "C1616@74743L7:DatePicker.kt#uh7d8r");
                        function23.invoke($composer3, 0);
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
                }, $composer2, 54), $composer2, (($dirty2 >> 6) & 14) | RendererCapabilities.DECODER_SUPPORT_MASK);
            }
            $composer2.endReplaceGroup();
            CompositionLocalKt.CompositionLocalProvider(ContentColorKt.getLocalContentColor().provides(Color.m4687boximpl(headlineContentColor)), function22, $composer2, ProvidedValue.$stable | (($dirty2 >> 12) & 112));
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer$iv);
            $composer2.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DatePickerHeader$2
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

                public final void invoke(Composer composer, int i3) {
                    DatePickerKt.m2310DatePickerHeaderpc5RIQQ(modifier, function2, titleContentColor, headlineContentColor, minHeight, function22, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void HorizontalMonthsList(final LazyListState lazyListState, final Long selectedDateMillis, final Function1<? super Long, Unit> function1, final Function1<? super Long, Unit> function12, final CalendarModel calendarModel, final IntRange yearRange, final DatePickerFormatter dateFormatter, final SelectableDates selectableDates, final DatePickerColors colors, Composer $composer, final int $changed) {
        final Function1<? super Long, Unit> function13;
        Function1<? super Long, Unit> function14;
        SelectableDates selectableDates2;
        DatePickerColors datePickerColors;
        CalendarDate today;
        Object value$iv;
        DatePickerKt$HorizontalMonthsList$2$1 value$iv2;
        final LazyListState lazyListState2 = lazyListState;
        Composer $composer2 = $composer.startRestartGroup(-1994757941);
        ComposerKt.sourceInformation($composer2, "C(HorizontalMonthsList)P(3,7,4,5!1,8,2,6)1639@75443L158,1645@75663L5,1645@75670L1365,1645@75606L1429,1676@77071L228,1676@77041L258:DatePicker.kt#uh7d8r");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changed(lazyListState2) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer2.changed(selectedDateMillis) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            function13 = function1;
            $dirty |= $composer2.changedInstance(function13) ? 256 : 128;
        } else {
            function13 = function1;
        }
        if (($changed & 3072) == 0) {
            function14 = function12;
            $dirty |= $composer2.changedInstance(function14) ? 2048 : 1024;
        } else {
            function14 = function12;
        }
        if (($changed & 24576) == 0) {
            $dirty |= $composer2.changedInstance(calendarModel) ? 16384 : 8192;
        }
        if ((196608 & $changed) == 0) {
            $dirty |= $composer2.changedInstance(yearRange) ? 131072 : 65536;
        }
        if ((1572864 & $changed) == 0) {
            $dirty |= (2097152 & $changed) == 0 ? $composer2.changed(dateFormatter) : $composer2.changedInstance(dateFormatter) ? 1048576 : 524288;
        }
        if ((12582912 & $changed) == 0) {
            selectableDates2 = selectableDates;
            $dirty |= $composer2.changed(selectableDates2) ? 8388608 : 4194304;
        } else {
            selectableDates2 = selectableDates;
        }
        if ((100663296 & $changed) == 0) {
            datePickerColors = colors;
            $dirty |= $composer2.changed(datePickerColors) ? 67108864 : 33554432;
        } else {
            datePickerColors = colors;
        }
        if ((38347923 & $dirty) != 38347922 || !$composer2.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1994757941, $dirty, -1, "androidx.compose.material3.HorizontalMonthsList (DatePicker.kt:1636)");
            }
            CalendarDate today2 = calendarModel.getToday();
            ComposerKt.sourceInformationMarkerStart($composer2, -1217547306, "CC(remember):DatePicker.kt#9igjgp");
            boolean invalid$iv = $composer2.changed(yearRange);
            Object it$iv = $composer2.rememberedValue();
            if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                today = today2;
                value$iv = calendarModel.getMonth(yearRange.getFirst(), 1);
                $composer2.updateRememberedValue(value$iv);
            } else {
                today = today2;
                value$iv = it$iv;
            }
            final CalendarMonth firstMonth = (CalendarMonth) value$iv;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            int $dirty2 = $dirty;
            final DatePickerColors datePickerColors2 = datePickerColors;
            final CalendarDate today3 = today;
            final SelectableDates selectableDates3 = selectableDates2;
            TextKt.ProvideTextStyle(TypographyKt.getValue(DatePickerModalTokens.INSTANCE.getDateLabelTextFont(), $composer2, 6), ComposableLambdaKt.rememberComposableLambda(1504086906, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt.HorizontalMonthsList.1
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

                /* JADX WARN: Removed duplicated region for block: B:21:0x00fb  */
                /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final void invoke(Composer $composer3, int $changed2) {
                    FlingBehavior flingBehavior;
                    Object value$iv3;
                    ComposerKt.sourceInformation($composer3, "C1655@76191L40,1656@76242L787,1646@75680L1349:DatePicker.kt#uh7d8r");
                    if (($changed2 & 3) != 2 || !$composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1504086906, $changed2, -1, "androidx.compose.material3.HorizontalMonthsList.<anonymous> (DatePicker.kt:1646)");
                        }
                        Modifier modifierSemantics$default = SemanticsModifierKt.semantics$default(Modifier.INSTANCE, false, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DatePickerKt.HorizontalMonthsList.1.1
                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                                invoke2(semanticsPropertyReceiver);
                                return Unit.INSTANCE;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(SemanticsPropertyReceiver $this$semantics) {
                                SemanticsPropertiesKt.setHorizontalScrollAxisRange($this$semantics, new ScrollAxisRange(new Function0<Float>() { // from class: androidx.compose.material3.DatePickerKt.HorizontalMonthsList.1.1.1
                                    /* JADX WARN: Can't rename method to resolve collision */
                                    @Override // kotlin.jvm.functions.Function0
                                    public final Float invoke() {
                                        return Float.valueOf(0.0f);
                                    }
                                }, new Function0<Float>() { // from class: androidx.compose.material3.DatePickerKt.HorizontalMonthsList.1.1.2
                                    /* JADX WARN: Can't rename method to resolve collision */
                                    @Override // kotlin.jvm.functions.Function0
                                    public final Float invoke() {
                                        return Float.valueOf(0.0f);
                                    }
                                }, false, 4, null));
                            }
                        }, 1, null);
                        LazyListState lazyListState3 = lazyListState;
                        FlingBehavior flingBehaviorRememberSnapFlingBehavior$material3_release = DatePickerDefaults.INSTANCE.rememberSnapFlingBehavior$material3_release(lazyListState, null, $composer3, RendererCapabilities.DECODER_SUPPORT_MASK, 2);
                        ComposerKt.sourceInformationMarkerStart($composer3, 1232787498, "CC(remember):DatePicker.kt#9igjgp");
                        boolean invalid$iv2 = $composer3.changedInstance(yearRange) | $composer3.changedInstance(calendarModel) | $composer3.changed(firstMonth) | $composer3.changed(function13) | $composer3.changed(today3) | $composer3.changed(selectedDateMillis) | $composer3.changedInstance(dateFormatter) | $composer3.changed(selectableDates3) | $composer3.changed(datePickerColors2);
                        final IntRange intRange = yearRange;
                        final CalendarModel calendarModel2 = calendarModel;
                        final CalendarMonth calendarMonth = firstMonth;
                        final Function1<Long, Unit> function15 = function13;
                        final CalendarDate calendarDate = today3;
                        final Long l = selectedDateMillis;
                        final DatePickerFormatter datePickerFormatter = dateFormatter;
                        final SelectableDates selectableDates4 = selectableDates3;
                        final DatePickerColors datePickerColors3 = datePickerColors2;
                        Object it$iv2 = $composer3.rememberedValue();
                        if (!invalid$iv2) {
                            flingBehavior = flingBehaviorRememberSnapFlingBehavior$material3_release;
                            if (it$iv2 != Composer.INSTANCE.getEmpty()) {
                                value$iv3 = it$iv2;
                            }
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            LazyDslKt.LazyRow(modifierSemantics$default, lazyListState3, null, false, null, null, flingBehavior, false, (Function1) value$iv3, $composer3, 0, TsExtractor.TS_PACKET_SIZE);
                            if (!ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                                return;
                            }
                            return;
                        }
                        flingBehavior = flingBehaviorRememberSnapFlingBehavior$material3_release;
                        value$iv3 = (Function1) new Function1<LazyListScope, Unit>() { // from class: androidx.compose.material3.DatePickerKt$HorizontalMonthsList$1$2$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(LazyListScope lazyListScope) {
                                invoke2(lazyListScope);
                                return Unit.INSTANCE;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(LazyListScope $this$LazyRow) {
                                int iNumberOfMonthsInRange = DatePickerKt.numberOfMonthsInRange(intRange);
                                final CalendarModel calendarModel3 = calendarModel2;
                                final CalendarMonth calendarMonth2 = calendarMonth;
                                final Function1<Long, Unit> function16 = function15;
                                final CalendarDate calendarDate2 = calendarDate;
                                final Long l2 = l;
                                final DatePickerFormatter datePickerFormatter2 = datePickerFormatter;
                                final SelectableDates selectableDates5 = selectableDates4;
                                final DatePickerColors datePickerColors4 = datePickerColors3;
                                LazyListScope.items$default($this$LazyRow, iNumberOfMonthsInRange, null, null, ComposableLambdaKt.composableLambdaInstance(1137566309, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$HorizontalMonthsList$1$2$1.1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    /* JADX WARN: Multi-variable type inference failed */
                                    {
                                        super(4);
                                    }

                                    @Override // kotlin.jvm.functions.Function4
                                    public /* bridge */ /* synthetic */ Unit invoke(LazyItemScope lazyItemScope, Integer num, Composer composer, Integer num2) {
                                        invoke(lazyItemScope, num.intValue(), composer, num2.intValue());
                                        return Unit.INSTANCE;
                                    }

                                    public final void invoke(LazyItemScope $this$items, int it, Composer $composer4, int $changed3) {
                                        Function0<ComposeUiNode> function0;
                                        ComposerKt.sourceInformation($composer4, "C1659@76409L596:DatePicker.kt#uh7d8r");
                                        int $dirty3 = $changed3;
                                        if (($changed3 & 6) == 0) {
                                            $dirty3 |= $composer4.changed($this$items) ? 4 : 2;
                                        }
                                        if (($changed3 & 48) == 0) {
                                            $dirty3 |= $composer4.changed(it) ? 32 : 16;
                                        }
                                        if (($dirty3 & 147) != 146 || !$composer4.getSkipping()) {
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(1137566309, $dirty3, -1, "androidx.compose.material3.HorizontalMonthsList.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePicker.kt:1658)");
                                            }
                                            CalendarMonth month = calendarModel3.plusMonths(calendarMonth2, it);
                                            Modifier modifier$iv = LazyItemScope.fillParentMaxWidth$default($this$items, Modifier.INSTANCE, 0.0f, 1, null);
                                            Function1<Long, Unit> function17 = function16;
                                            CalendarDate calendarDate3 = calendarDate2;
                                            Long l3 = l2;
                                            DatePickerFormatter datePickerFormatter3 = datePickerFormatter2;
                                            SelectableDates selectableDates6 = selectableDates5;
                                            DatePickerColors datePickerColors5 = datePickerColors4;
                                            ComposerKt.sourceInformationMarkerStart($composer4, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                                            Alignment contentAlignment$iv = Alignment.INSTANCE.getTopStart();
                                            MeasurePolicy measurePolicy$iv = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv, false);
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
                                            int i = ($changed$iv$iv$iv >> 6) & 14;
                                            ComposerKt.sourceInformationMarkerStart($composer4, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                                            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                            int i2 = ((0 >> 6) & 112) | 6;
                                            ComposerKt.sourceInformationMarkerStart($composer4, 31343282, "C1660@76477L510:DatePicker.kt#uh7d8r");
                                            DatePickerKt.Month(month, function17, calendarDate3.getUtcTimeMillis(), l3, null, null, datePickerFormatter3, selectableDates6, datePickerColors5, $composer4, 221184);
                                            ComposerKt.sourceInformationMarkerEnd($composer4);
                                            ComposerKt.sourceInformationMarkerEnd($composer4);
                                            $composer4.endNode();
                                            ComposerKt.sourceInformationMarkerEnd($composer4);
                                            ComposerKt.sourceInformationMarkerEnd($composer4);
                                            ComposerKt.sourceInformationMarkerEnd($composer4);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                                return;
                                            }
                                            return;
                                        }
                                        $composer4.skipToGroupEnd();
                                    }
                                }), 6, null);
                            }
                        };
                        $composer3.updateRememberedValue(value$iv3);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        LazyDslKt.LazyRow(modifierSemantics$default, lazyListState3, null, false, null, null, flingBehavior, false, (Function1) value$iv3, $composer3, 0, TsExtractor.TS_PACKET_SIZE);
                        if (!ComposerKt.isTraceInProgress()) {
                        }
                    } else {
                        $composer3.skipToGroupEnd();
                    }
                }
            }, $composer2, 54), $composer2, 48);
            ComposerKt.sourceInformationMarkerStart($composer2, -1217495140, "CC(remember):DatePicker.kt#9igjgp");
            boolean invalid$iv2 = (($dirty2 & 14) == 4) | (($dirty2 & 7168) == 2048) | $composer2.changedInstance(calendarModel) | $composer2.changedInstance(yearRange);
            Object it$iv2 = $composer2.rememberedValue();
            if (invalid$iv2 || it$iv2 == Composer.INSTANCE.getEmpty()) {
                lazyListState2 = lazyListState;
                value$iv2 = new DatePickerKt$HorizontalMonthsList$2$1(lazyListState2, function14, calendarModel, yearRange, null);
                $composer2.updateRememberedValue(value$iv2);
            } else {
                lazyListState2 = lazyListState;
                value$iv2 = it$iv2;
            }
            ComposerKt.sourceInformationMarkerEnd($composer2);
            EffectsKt.LaunchedEffect(lazyListState2, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) value$iv2, $composer2, $dirty2 & 14);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt.HorizontalMonthsList.3
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

                public final void invoke(Composer composer, int i) {
                    DatePickerKt.HorizontalMonthsList(lazyListState2, selectedDateMillis, function1, function12, calendarModel, yearRange, dateFormatter, selectableDates, colors, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }

    public static final Object updateDisplayedMonth(final LazyListState lazyListState, final Function1<? super Long, Unit> function1, final CalendarModel calendarModel, final IntRange yearRange, Continuation<? super Unit> continuation) {
        Object objCollect = SnapshotStateKt.snapshotFlow(new Function0<Integer>() { // from class: androidx.compose.material3.DatePickerKt.updateDisplayedMonth.2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Integer invoke() {
                return Integer.valueOf(lazyListState.getFirstVisibleItemIndex());
            }
        }).collect(new FlowCollector() { // from class: androidx.compose.material3.DatePickerKt.updateDisplayedMonth.3
            @Override // kotlinx.coroutines.flow.FlowCollector
            public /* bridge */ /* synthetic */ Object emit(Object value, Continuation $completion) {
                return emit(((Number) value).intValue(), (Continuation<? super Unit>) $completion);
            }

            public final Object emit(int it, Continuation<? super Unit> continuation2) {
                int yearOffset = lazyListState.getFirstVisibleItemIndex() / 12;
                int month = (lazyListState.getFirstVisibleItemIndex() % 12) + 1;
                function1.invoke(Boxing.boxLong(calendarModel.getMonth(yearRange.getFirst() + yearOffset, month).getStartUtcTimeMillis()));
                return Unit.INSTANCE;
            }
        }, continuation);
        return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x01d3  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0293  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x029f  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x02a5  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x041c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void WeekDays(final DatePickerColors colors, final CalendarModel calendarModel, Composer $composer, final int $changed) {
        Composer $composer2;
        ArrayList dayNames;
        int $i$f$fastForEach;
        int index$iv;
        Modifier modifier$iv;
        int compositeKeyHash$iv$iv;
        Function0<ComposeUiNode> function0;
        Composer $this$Layout_u24lambda_u240$iv$iv;
        Composer $composer3 = $composer.startRestartGroup(-1849465391);
        ComposerKt.sourceInformation($composer3, "C(WeekDays)P(1)1719@78602L5,1721@78613L974:DatePicker.kt#uh7d8r");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer3.changed(colors) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer3.changedInstance(calendarModel) ? 32 : 16;
        }
        if (($dirty & 19) != 18 || !$composer3.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1849465391, $dirty, -1, "androidx.compose.material3.WeekDays (DatePicker.kt:1708)");
            }
            int firstDayOfWeek = calendarModel.getFirstDayOfWeek();
            List<Pair<String, String>> weekdayNames = calendarModel.getWeekdayNames();
            ArrayList dayNames2 = new ArrayList();
            int size = weekdayNames.size();
            for (int i = firstDayOfWeek - 1; i < size; i++) {
                dayNames2.add(weekdayNames.get(i));
            }
            int i2 = firstDayOfWeek - 1;
            for (int i3 = 0; i3 < i2; i3++) {
                dayNames2.add(weekdayNames.get(i3));
            }
            TextStyle textStyle = TypographyKt.getValue(DatePickerModalTokens.INSTANCE.getWeekdaysLabelTextFont(), $composer3, 6);
            Modifier modifier$iv2 = SizeKt.fillMaxWidth$default(SizeKt.m849defaultMinSizeVpY3zN4$default(Modifier.INSTANCE, 0.0f, RecommendedSizeForAccessibility, 1, null), 0.0f, 1, null);
            Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.getSpaceEvenly();
            Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getCenterVertically();
            ComposerKt.sourceInformationMarkerStart($composer3, 693286680, "CC(Row)P(2,1,3)98@4939L58,99@5002L130:Row.kt#2w3rfo");
            MeasurePolicy measurePolicy$iv = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer3, ((438 >> 3) & 14) | ((438 >> 3) & 112));
            int $changed$iv$iv = (438 << 3) & 112;
            String str = "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh";
            ComposerKt.sourceInformationMarkerStart($composer3, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
            int compositeKeyHash$iv$iv2 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
            CompositionLocalMap localMap$iv$iv = $composer3.getCurrentCompositionLocalMap();
            Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer3, modifier$iv2);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int $changed$iv$iv$iv = (($changed$iv$iv << 6) & 896) | 6;
            String str2 = "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp";
            ComposerKt.sourceInformationMarkerStart($composer3, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
            if (!($composer3.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer3.startReusableNode();
            if ($composer3.getInserting()) {
                $composer3.createNode(constructor);
            } else {
                $composer3.useNode();
            }
            Composer $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3967constructorimpl($composer3);
            $composer2 = $composer3;
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if ($this$Layout_u24lambda_u240$iv$iv2.getInserting()) {
                dayNames = dayNames2;
            } else {
                dayNames = dayNames2;
                if (!Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv2.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv2))) {
                }
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
                int i4 = ($changed$iv$iv$iv >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer2, -407918630, "C100@5047L9:Row.kt#2w3rfo");
                RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                int $changed2 = ((438 >> 6) & 112) | 6;
                Function0<ComposeUiNode> function02 = constructor;
                Composer $composer4 = $composer2;
                ComposerKt.sourceInformationMarkerStart($composer4, -603629529, "C:DatePicker.kt#uh7d8r");
                $composer4.startReplaceGroup(396170355);
                ComposerKt.sourceInformation($composer4, "*1730@78979L33,1728@78897L674");
                ArrayList $this$fastForEach$iv = dayNames;
                $i$f$fastForEach = $this$fastForEach$iv.size();
                index$iv = 0;
                while (index$iv < $i$f$fastForEach) {
                    Object item$iv = $this$fastForEach$iv.get(index$iv);
                    List $this$fastForEach$iv2 = $this$fastForEach$iv;
                    final Pair it = (Pair) item$iv;
                    int i5 = $i$f$fastForEach;
                    Modifier.Companion companion = Modifier.INSTANCE;
                    int index$iv2 = index$iv;
                    int $changed3 = $changed2;
                    ComposerKt.sourceInformationMarkerStart($composer4, -1458727475, "CC(remember):DatePicker.kt#9igjgp");
                    boolean invalid$iv = $composer4.changed(it);
                    Composer $this$cache$iv = $composer4;
                    Object value$iv = $this$cache$iv.rememberedValue();
                    if (!invalid$iv) {
                        modifier$iv = modifier$iv2;
                        if (value$iv == Composer.INSTANCE.getEmpty()) {
                        }
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        Modifier modifier$iv3 = SizeKt.m866sizeVpY3zN4(SemanticsModifierKt.clearAndSetSemantics(companion, (Function1) value$iv), RecommendedSizeForAccessibility, RecommendedSizeForAccessibility);
                        Alignment contentAlignment$iv = Alignment.INSTANCE.getCenter();
                        ComposerKt.sourceInformationMarkerStart($composer4, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                        MeasurePolicy measurePolicy$iv2 = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv, false);
                        int $changed$iv$iv2 = (48 << 3) & 112;
                        ComposerKt.sourceInformationMarkerStart($composer4, -1323940314, str);
                        compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                        CompositionLocalMap localMap$iv$iv2 = $composer4.getCurrentCompositionLocalMap();
                        String str3 = str;
                        Modifier materialized$iv$iv2 = ComposedModifierKt.materializeModifier($composer4, modifier$iv3);
                        Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
                        int $changed$iv$iv$iv2 = (($changed$iv$iv2 << 6) & 896) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer4, -692256719, str2);
                        if (!($composer4.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        $composer4.startReusableNode();
                        if (!$composer4.getInserting()) {
                            function0 = constructor2;
                            $composer4.createNode(function0);
                        } else {
                            function0 = constructor2;
                            $composer4.useNode();
                        }
                        $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer4);
                        String str4 = str2;
                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash2 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if (!$this$Layout_u24lambda_u240$iv$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                            $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                            $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), setCompositeKeyHash2);
                        }
                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv2, ComposeUiNode.INSTANCE.getSetModifier());
                        int i6 = ($changed$iv$iv$iv2 >> 6) & 14;
                        Composer $composer$iv = $composer4;
                        ComposerKt.sourceInformationMarkerStart($composer$iv, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                        int i7 = ((48 >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer$iv, 87052400, "C1737@79293L264:DatePicker.kt#uh7d8r");
                        Composer $composer5 = $composer4;
                        TextKt.m2976Text4IGK_g((String) it.getSecond(), SizeKt.wrapContentSize$default(Modifier.INSTANCE, null, false, 3, null), colors.getWeekdayContentColor(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, TextAlign.m7351boximpl(TextAlign.INSTANCE.m7358getCentere0LSkKk()), 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, textStyle, $composer$iv, 48, 0, 65016);
                        ComposerKt.sourceInformationMarkerEnd($composer$iv);
                        ComposerKt.sourceInformationMarkerEnd($composer$iv);
                        $composer5.endNode();
                        ComposerKt.sourceInformationMarkerEnd($composer5);
                        ComposerKt.sourceInformationMarkerEnd($composer5);
                        ComposerKt.sourceInformationMarkerEnd($composer5);
                        index$iv = index$iv2 + 1;
                        verticalAlignment$iv = verticalAlignment$iv;
                        measurePolicy$iv = measurePolicy$iv;
                        $this$fastForEach$iv = $this$fastForEach$iv2;
                        $i$f$fastForEach = i5;
                        $changed2 = $changed3;
                        modifier$iv2 = modifier$iv;
                        str2 = str4;
                        horizontalArrangement$iv = horizontalArrangement$iv;
                        str = str3;
                        $composer4 = $composer5;
                        localMap$iv$iv = localMap$iv$iv;
                        function02 = function02;
                    } else {
                        modifier$iv = modifier$iv2;
                    }
                    value$iv = (Function1) new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DatePickerKt$WeekDays$1$1$1$1
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
                        public final void invoke2(SemanticsPropertyReceiver $this$clearAndSetSemantics) {
                            SemanticsPropertiesKt.setContentDescription($this$clearAndSetSemantics, it.getFirst());
                        }
                    };
                    $this$cache$iv.updateRememberedValue(value$iv);
                    ComposerKt.sourceInformationMarkerEnd($composer4);
                    Modifier modifier$iv32 = SizeKt.m866sizeVpY3zN4(SemanticsModifierKt.clearAndSetSemantics(companion, (Function1) value$iv), RecommendedSizeForAccessibility, RecommendedSizeForAccessibility);
                    Alignment contentAlignment$iv2 = Alignment.INSTANCE.getCenter();
                    ComposerKt.sourceInformationMarkerStart($composer4, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                    MeasurePolicy measurePolicy$iv22 = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv2, false);
                    int $changed$iv$iv22 = (48 << 3) & 112;
                    ComposerKt.sourceInformationMarkerStart($composer4, -1323940314, str);
                    compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                    CompositionLocalMap localMap$iv$iv22 = $composer4.getCurrentCompositionLocalMap();
                    String str32 = str;
                    Modifier materialized$iv$iv22 = ComposedModifierKt.materializeModifier($composer4, modifier$iv32);
                    Function0<ComposeUiNode> constructor22 = ComposeUiNode.INSTANCE.getConstructor();
                    int $changed$iv$iv$iv22 = (($changed$iv$iv22 << 6) & 896) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer4, -692256719, str2);
                    if (!($composer4.getApplier() instanceof Applier)) {
                    }
                    $composer4.startReusableNode();
                    if (!$composer4.getInserting()) {
                    }
                    $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer4);
                    String str42 = str2;
                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv22, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv22, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash22 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                    if (!$this$Layout_u24lambda_u240$iv$iv.getInserting()) {
                    }
                    $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                    $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), setCompositeKeyHash22);
                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv22, ComposeUiNode.INSTANCE.getSetModifier());
                    int i62 = ($changed$iv$iv$iv22 >> 6) & 14;
                    Composer $composer$iv2 = $composer4;
                    ComposerKt.sourceInformationMarkerStart($composer$iv2, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                    BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                    int i72 = ((48 >> 6) & 112) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer$iv2, 87052400, "C1737@79293L264:DatePicker.kt#uh7d8r");
                    Composer $composer52 = $composer4;
                    TextKt.m2976Text4IGK_g((String) it.getSecond(), SizeKt.wrapContentSize$default(Modifier.INSTANCE, null, false, 3, null), colors.getWeekdayContentColor(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, TextAlign.m7351boximpl(TextAlign.INSTANCE.m7358getCentere0LSkKk()), 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, textStyle, $composer$iv2, 48, 0, 65016);
                    ComposerKt.sourceInformationMarkerEnd($composer$iv2);
                    ComposerKt.sourceInformationMarkerEnd($composer$iv2);
                    $composer52.endNode();
                    ComposerKt.sourceInformationMarkerEnd($composer52);
                    ComposerKt.sourceInformationMarkerEnd($composer52);
                    ComposerKt.sourceInformationMarkerEnd($composer52);
                    index$iv = index$iv2 + 1;
                    verticalAlignment$iv = verticalAlignment$iv;
                    measurePolicy$iv = measurePolicy$iv;
                    $this$fastForEach$iv = $this$fastForEach$iv2;
                    $i$f$fastForEach = i5;
                    $changed2 = $changed3;
                    modifier$iv2 = modifier$iv;
                    str2 = str42;
                    horizontalArrangement$iv = horizontalArrangement$iv;
                    str = str32;
                    $composer4 = $composer52;
                    localMap$iv$iv = localMap$iv$iv;
                    function02 = function02;
                }
                Composer $composer6 = $composer4;
                $composer6.endReplaceGroup();
                ComposerKt.sourceInformationMarkerEnd($composer6);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                $composer2.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
            $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv2));
            $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv2), setCompositeKeyHash);
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
            int i42 = ($changed$iv$iv$iv >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer2, -407918630, "C100@5047L9:Row.kt#2w3rfo");
            RowScopeInstance rowScopeInstance2 = RowScopeInstance.INSTANCE;
            int $changed22 = ((438 >> 6) & 112) | 6;
            Function0<ComposeUiNode> function022 = constructor;
            Composer $composer42 = $composer2;
            ComposerKt.sourceInformationMarkerStart($composer42, -603629529, "C:DatePicker.kt#uh7d8r");
            $composer42.startReplaceGroup(396170355);
            ComposerKt.sourceInformation($composer42, "*1730@78979L33,1728@78897L674");
            ArrayList $this$fastForEach$iv3 = dayNames;
            $i$f$fastForEach = $this$fastForEach$iv3.size();
            index$iv = 0;
            while (index$iv < $i$f$fastForEach) {
            }
            Composer $composer62 = $composer42;
            $composer62.endReplaceGroup();
            ComposerKt.sourceInformationMarkerEnd($composer62);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            $composer2.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            if (ComposerKt.isTraceInProgress()) {
            }
        } else {
            $composer3.skipToGroupEnd();
            $composer2 = $composer3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt.WeekDays.2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i8) {
                    DatePickerKt.WeekDays(colors, calendarModel, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:180:0x04c8  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x05e3  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x05fb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void Month(final CalendarMonth month, final Function1<? super Long, Unit> function1, final long todayMillis, final Long startDateMillis, final Long endDateMillis, final SelectedRangeInfo rangeSelectionInfo, final DatePickerFormatter dateFormatter, final SelectableDates selectableDates, final DatePickerColors colors, Composer $composer, final int $changed) {
        Modifier.Companion rangeSelectionDrawModifier;
        Function0<ComposeUiNode> function0;
        Composer $composer2;
        int dayIndex;
        int cellIndex;
        Locale defaultLocale;
        int i;
        int $changed2;
        Composer $composer3;
        Composer $composer4;
        Alignment.Vertical verticalAlignment$iv;
        Function0<ComposeUiNode> function02;
        String str;
        MeasurePolicy measurePolicy$iv;
        int $dirty;
        Composer $composer5;
        boolean inRange;
        Modifier.Companion companion;
        boolean z;
        Object value$iv;
        Function0 function03;
        String str2;
        boolean z2;
        Object value$iv2;
        final Function1<? super Long, Unit> function12 = function1;
        DatePickerFormatter datePickerFormatter = dateFormatter;
        Composer $composer6 = $composer.startRestartGroup(-1912870997);
        ComposerKt.sourceInformation($composer6, "C(Month)P(3,4,8,7,2,5,1,6)1773@80392L15,1775@80434L5256:DatePicker.kt#uh7d8r");
        int $dirty2 = $changed;
        if (($changed & 6) == 0) {
            $dirty2 |= $composer6.changed(month) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty2 |= $composer6.changedInstance(function12) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty2 |= $composer6.changed(todayMillis) ? 256 : 128;
        }
        if (($changed & 3072) == 0) {
            $dirty2 |= $composer6.changed(startDateMillis) ? 2048 : 1024;
        }
        if (($changed & 24576) == 0) {
            $dirty2 |= $composer6.changed(endDateMillis) ? 16384 : 8192;
        }
        if ((196608 & $changed) == 0) {
            $dirty2 |= $composer6.changed(rangeSelectionInfo) ? 131072 : 65536;
        }
        if ((1572864 & $changed) == 0) {
            $dirty2 |= (2097152 & $changed) == 0 ? $composer6.changed(datePickerFormatter) : $composer6.changedInstance(datePickerFormatter) ? 1048576 : 524288;
        }
        if ((12582912 & $changed) == 0) {
            $dirty2 |= $composer6.changed(selectableDates) ? 8388608 : 4194304;
        }
        if (($changed & 100663296) == 0) {
            $dirty2 |= $composer6.changed(colors) ? 67108864 : 33554432;
        }
        if (($dirty2 & 38347923) != 38347922 || !$composer6.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1912870997, $dirty2, -1, "androidx.compose.material3.Month (DatePicker.kt:1762)");
            }
            $composer6.startReplaceGroup(1821406531);
            ComposerKt.sourceInformation($composer6, "1765@80175L143");
            String str3 = "CC(remember):DatePicker.kt#9igjgp";
            if (rangeSelectionInfo != null) {
                Modifier.Companion companion2 = Modifier.INSTANCE;
                ComposerKt.sourceInformationMarkerStart($composer6, 1821408684, "CC(remember):DatePicker.kt#9igjgp");
                boolean invalid$iv = (($dirty2 & 458752) == 131072) | (($dirty2 & 234881024) == 67108864);
                Object it$iv = $composer6.rememberedValue();
                if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                    value$iv2 = (Function1) new Function1<ContentDrawScope, Unit>() { // from class: androidx.compose.material3.DatePickerKt$Month$rangeSelectionDrawModifier$1$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(ContentDrawScope contentDrawScope) {
                            invoke2(contentDrawScope);
                            return Unit.INSTANCE;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(ContentDrawScope $this$drawWithContent) {
                            DateRangePickerKt.m2330drawRangeBackgroundmxwnekA($this$drawWithContent, rangeSelectionInfo, colors.getDayInSelectionRangeContainerColor());
                            $this$drawWithContent.drawContent();
                        }
                    };
                    $composer6.updateRememberedValue(value$iv2);
                } else {
                    value$iv2 = it$iv;
                }
                ComposerKt.sourceInformationMarkerEnd($composer6);
                rangeSelectionDrawModifier = DrawModifierKt.drawWithContent(companion2, (Function1) value$iv2);
            } else {
                rangeSelectionDrawModifier = Modifier.INSTANCE;
            }
            $composer6.endReplaceGroup();
            Locale defaultLocale2 = CalendarLocale_androidKt.defaultLocale($composer6, 0);
            Modifier.Companion companion3 = Modifier.INSTANCE;
            float arg0$iv = RecommendedSizeForAccessibility;
            int cellIndex2 = 0;
            Modifier modifier$iv = SizeKt.m853requiredHeight3ABfNKs(companion3, Dp.m7505constructorimpl(6 * arg0$iv)).then(rangeSelectionDrawModifier);
            Arrangement.Vertical verticalArrangement$iv = Arrangement.INSTANCE.getSpaceEvenly();
            ComposerKt.sourceInformationMarkerStart($composer6, -483455358, "CC(Column)P(2,3,1)85@4251L61,86@4317L133:Column.kt#2w3rfo");
            Alignment.Horizontal horizontalAlignment$iv = Alignment.INSTANCE.getStart();
            MeasurePolicy measurePolicy$iv2 = ColumnKt.columnMeasurePolicy(verticalArrangement$iv, horizontalAlignment$iv, $composer6, ((48 >> 3) & 14) | ((48 >> 3) & 112));
            int $changed$iv$iv = (48 << 3) & 112;
            String str4 = "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh";
            ComposerKt.sourceInformationMarkerStart($composer6, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
            int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer6, 0);
            CompositionLocalMap localMap$iv$iv = $composer6.getCurrentCompositionLocalMap();
            Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer6, modifier$iv);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int $changed$iv$iv$iv = (($changed$iv$iv << 6) & 896) | 6;
            int i2 = 6;
            String str5 = "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp";
            ComposerKt.sourceInformationMarkerStart($composer6, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
            if (!($composer6.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer6.startReusableNode();
            if ($composer6.getInserting()) {
                function0 = constructor;
                $composer6.createNode(function0);
            } else {
                function0 = constructor;
                $composer6.useNode();
            }
            Composer $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer6);
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if ($this$Layout_u24lambda_u240$iv$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), setCompositeKeyHash);
            }
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
            int i3 = ($changed$iv$iv$iv >> 6) & 14;
            int i4 = 0;
            ComposerKt.sourceInformationMarkerStart($composer6, -384862393, "C87@4365L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            int i5 = ((48 >> 6) & 112) | 6;
            Composer $composer7 = $composer6;
            String str6 = "C:DatePicker.kt#uh7d8r";
            ComposerKt.sourceInformationMarkerStart($composer7, 1402700144, "C:DatePicker.kt#uh7d8r");
            $composer7.startReplaceGroup(-647488269);
            ComposerKt.sourceInformation($composer7, "*1782@80726L4948");
            int weekIndex = 0;
            while (true) {
                Modifier materialized$iv$iv2 = materialized$iv$iv;
                if (weekIndex >= i2) {
                    break;
                }
                int weekIndex2 = weekIndex;
                int i6 = i4;
                int $dirty3 = $dirty2;
                Modifier modifier$iv2 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.getSpaceEvenly();
                Alignment.Vertical verticalAlignment$iv2 = Alignment.INSTANCE.getCenterVertically();
                ComposerKt.sourceInformationMarkerStart($composer7, 693286680, "CC(Row)P(2,1,3)98@4939L58,99@5002L130:Row.kt#2w3rfo");
                MeasurePolicy measurePolicy$iv3 = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv2, $composer7, ((438 >> 3) & 14) | ((438 >> 3) & 112));
                int $changed$iv$iv2 = (438 << 3) & 112;
                ComposerKt.sourceInformationMarkerStart($composer7, -1323940314, str4);
                int compositeKeyHash$iv$iv2 = ComposablesKt.getCurrentCompositeKeyHash($composer7, 0);
                String str7 = str4;
                CompositionLocalMap localMap$iv$iv2 = $composer7.getCurrentCompositionLocalMap();
                Modifier materialized$iv$iv3 = ComposedModifierKt.materializeModifier($composer7, modifier$iv2);
                int $changed$iv$iv$iv2 = (($changed$iv$iv2 << 6) & 896) | 6;
                Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
                ComposerKt.sourceInformationMarkerStart($composer7, -692256719, str5);
                if (!($composer7.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                $composer7.startReusableNode();
                if ($composer7.getInserting()) {
                    $composer7.createNode(constructor2);
                } else {
                    $composer7.useNode();
                }
                Composer $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3967constructorimpl($composer7);
                String str8 = str5;
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash2 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if ($this$Layout_u24lambda_u240$iv$iv2.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv2.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv2))) {
                    $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv2));
                    $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv2), setCompositeKeyHash2);
                }
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, materialized$iv$iv3, ComposeUiNode.INSTANCE.getSetModifier());
                int i7 = ($changed$iv$iv$iv2 >> 6) & 14;
                Composer $composer8 = $composer7;
                int i8 = 0;
                ComposerKt.sourceInformationMarkerStart($composer8, -407918630, "C100@5047L9:Row.kt#2w3rfo");
                RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                int $changed3 = ((438 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer8, 1553857275, str6);
                $composer8.startReplaceGroup(-88422904);
                ComposerKt.sourceInformation($composer8, "");
                int dayIndex2 = 0;
                String str9 = str6;
                int cellIndex3 = cellIndex2;
                while (true) {
                    Modifier materialized$iv$iv4 = materialized$iv$iv3;
                    if (dayIndex2 < 7) {
                        if (cellIndex3 < month.getDaysFromStartOfWeekToFirstOfMonth() || cellIndex3 >= month.getDaysFromStartOfWeekToFirstOfMonth() + month.getNumberOfDays()) {
                            dayIndex = dayIndex2;
                            cellIndex = cellIndex3;
                            defaultLocale = defaultLocale2;
                            i = i8;
                            $changed2 = $changed3;
                            $composer3 = $composer6;
                            $composer4 = $composer7;
                            verticalAlignment$iv = verticalAlignment$iv2;
                            function02 = constructor2;
                            str = str3;
                            measurePolicy$iv = measurePolicy$iv2;
                            $dirty = $dirty3;
                            $composer8.startReplaceGroup(1554022070);
                            ComposerKt.sourceInformation($composer8, "1794@81308L315");
                            SpacerKt.Spacer(SizeKt.m858requiredSizeVpY3zN4(Modifier.INSTANCE, RecommendedSizeForAccessibility, RecommendedSizeForAccessibility), $composer8, 6);
                            $composer8.endReplaceGroup();
                            function12 = function1;
                            datePickerFormatter = dateFormatter;
                            measurePolicy$iv2 = measurePolicy$iv;
                            $composer7 = $composer4;
                            verticalAlignment$iv2 = verticalAlignment$iv;
                            cellIndex3 = cellIndex + 1;
                            constructor2 = function02;
                            dayIndex2 = dayIndex + 1;
                            $composer6 = $composer3;
                            $dirty3 = $dirty;
                            $changed3 = $changed2;
                            str3 = str;
                            defaultLocale2 = defaultLocale;
                            materialized$iv$iv3 = materialized$iv$iv4;
                            i8 = i;
                        } else {
                            $composer8.startReplaceGroup(1554536112);
                            ComposerKt.sourceInformation($composer8, "1822@82897L365,1838@83755L39,1844@84162L550,1862@85212L376,1835@83586L2002");
                            final int dayNumber = cellIndex3 - month.getDaysFromStartOfWeekToFirstOfMonth();
                            dayIndex = dayIndex2;
                            cellIndex = cellIndex3;
                            final long dateInMillis = month.getStartUtcTimeMillis() + (((long) dayNumber) * 86400000);
                            boolean isToday = dateInMillis == todayMillis;
                            boolean startDateSelected = startDateMillis != null && dateInMillis == startDateMillis.longValue();
                            boolean endDateSelected = endDateMillis != null && dateInMillis == endDateMillis.longValue();
                            i = i8;
                            $composer8.startReplaceGroup(-88387804);
                            ComposerKt.sourceInformation($composer8, "1810@82233L435");
                            if (rangeSelectionInfo != null) {
                                ComposerKt.sourceInformationMarkerStart($composer8, -88385906, str3);
                                $composer5 = $composer8;
                                boolean invalid$iv2 = (($dirty3 & 458752) == 131072) | $composer6.changed(dateInMillis);
                                Object value$iv3 = $composer5.rememberedValue();
                                if (invalid$iv2 || value$iv3 == Composer.INSTANCE.getEmpty()) {
                                    if (dateInMillis < (startDateMillis != null ? startDateMillis.longValue() : Long.MAX_VALUE)) {
                                        z2 = false;
                                        $changed2 = $changed3;
                                        value$iv3 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.valueOf(z2), null, 2, null);
                                        $composer5.updateRememberedValue(value$iv3);
                                    } else {
                                        if (dateInMillis <= (endDateMillis != null ? endDateMillis.longValue() : Long.MIN_VALUE)) {
                                            z2 = true;
                                        }
                                        $changed2 = $changed3;
                                        value$iv3 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.valueOf(z2), null, 2, null);
                                        $composer5.updateRememberedValue(value$iv3);
                                    }
                                    function12 = function1;
                                    datePickerFormatter = dateFormatter;
                                    measurePolicy$iv2 = measurePolicy$iv;
                                    $composer7 = $composer4;
                                    verticalAlignment$iv2 = verticalAlignment$iv;
                                    cellIndex3 = cellIndex + 1;
                                    constructor2 = function02;
                                    dayIndex2 = dayIndex + 1;
                                    $composer6 = $composer3;
                                    $dirty3 = $dirty;
                                    $changed3 = $changed2;
                                    str3 = str;
                                    defaultLocale2 = defaultLocale;
                                    materialized$iv$iv3 = materialized$iv$iv4;
                                    i8 = i;
                                } else {
                                    $changed2 = $changed3;
                                }
                                ComposerKt.sourceInformationMarkerEnd($composer5);
                                inRange = ((Boolean) ((MutableState) value$iv3).getValue()).booleanValue();
                            } else {
                                $composer5 = $composer8;
                                $changed2 = $changed3;
                                inRange = false;
                            }
                            $composer5.endReplaceGroup();
                            String dayContentDescription = dayContentDescription(rangeSelectionInfo != null, isToday, startDateSelected, endDateSelected, inRange, $composer5, 0);
                            Composer $composer9 = $composer5;
                            Composer $composer10 = $composer7;
                            String formattedDateDescription = datePickerFormatter.formatDate(Long.valueOf(dateInMillis), defaultLocale2, true);
                            if (formattedDateDescription == null) {
                                formattedDateDescription = "";
                            }
                            Modifier.Companion companion4 = Modifier.INSTANCE;
                            if (startDateSelected || endDateSelected) {
                                companion = companion4;
                                z = true;
                            } else {
                                companion = companion4;
                                z = false;
                            }
                            defaultLocale = defaultLocale2;
                            ComposerKt.sourceInformationMarkerStart($composer9, -88337598, str3);
                            boolean invalid$iv3 = (($dirty3 & 112) == 32) | $composer6.changed(dateInMillis);
                            Object it$iv2 = $composer9.rememberedValue();
                            if (invalid$iv3 || it$iv2 == Composer.INSTANCE.getEmpty()) {
                                value$iv = (Function0) new Function0<Unit>() { // from class: androidx.compose.material3.DatePickerKt$Month$1$1$1$1
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
                                        function12.invoke(Long.valueOf(dateInMillis));
                                    }
                                };
                                $composer9.updateRememberedValue(value$iv);
                            } else {
                                value$iv = it$iv2;
                            }
                            Function0 function04 = (Function0) value$iv;
                            ComposerKt.sourceInformationMarkerEnd($composer9);
                            ComposerKt.sourceInformationMarkerStart($composer9, -88324063, str3);
                            boolean invalid$iv4 = $composer9.changed(dateInMillis);
                            Object value$iv4 = $composer9.rememberedValue();
                            if (!invalid$iv4) {
                                function03 = function04;
                                if (value$iv4 == Composer.INSTANCE.getEmpty()) {
                                }
                                boolean zBooleanValue = ((Boolean) value$iv4).booleanValue();
                                ComposerKt.sourceInformationMarkerEnd($composer9);
                                if (dayContentDescription == null) {
                                    str2 = dayContentDescription + ", " + formattedDateDescription;
                                } else {
                                    str2 = formattedDateDescription;
                                }
                                $composer3 = $composer6;
                                $composer4 = $composer10;
                                $dirty = $dirty3;
                                String str10 = str2;
                                verticalAlignment$iv = verticalAlignment$iv2;
                                function02 = constructor2;
                                measurePolicy$iv = measurePolicy$iv2;
                                boolean startDateSelected2 = startDateSelected;
                                str = str3;
                                Day(companion, z, function03, startDateSelected2, zBooleanValue, isToday, inRange, str10, colors, ComposableLambdaKt.rememberComposableLambda(-2095706591, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$Month$1$1$3
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(2);
                                    }

                                    @Override // kotlin.jvm.functions.Function2
                                    public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                                        invoke(composer, num.intValue());
                                        return Unit.INSTANCE;
                                    }

                                    public final void invoke(Composer $composer11, int $changed4) {
                                        ComposerKt.sourceInformation($composer11, "C1863@85242L320:DatePicker.kt#uh7d8r");
                                        if (($changed4 & 3) != 2 || !$composer11.getSkipping()) {
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(-2095706591, $changed4, -1, "androidx.compose.material3.Month.<anonymous>.<anonymous>.<anonymous> (DatePicker.kt:1863)");
                                            }
                                            TextKt.m2976Text4IGK_g(CalendarLocale_jvmKt.toLocalString$default(dayNumber + 1, 0, 0, false, 7, null), SemanticsModifierKt.clearAndSetSemantics(Modifier.INSTANCE, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DatePickerKt$Month$1$1$3.1
                                                @Override // kotlin.jvm.functions.Function1
                                                public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                                                    invoke2(semanticsPropertyReceiver);
                                                    return Unit.INSTANCE;
                                                }

                                                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                                                public final void invoke2(SemanticsPropertyReceiver $this$clearAndSetSemantics) {
                                                }
                                            }), 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, TextAlign.m7351boximpl(TextAlign.INSTANCE.m7358getCentere0LSkKk()), 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer11, 0, 0, 130556);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                                return;
                                            }
                                            return;
                                        }
                                        $composer11.skipToGroupEnd();
                                    }
                                }, $composer9, 54), $composer9, 805306374 | ($dirty3 & 234881024));
                                $composer8 = $composer9;
                                $composer8.endReplaceGroup();
                                function12 = function1;
                                datePickerFormatter = dateFormatter;
                                measurePolicy$iv2 = measurePolicy$iv;
                                $composer7 = $composer4;
                                verticalAlignment$iv2 = verticalAlignment$iv;
                                cellIndex3 = cellIndex + 1;
                                constructor2 = function02;
                                dayIndex2 = dayIndex + 1;
                                $composer6 = $composer3;
                                $dirty3 = $dirty;
                                $changed3 = $changed2;
                                str3 = str;
                                defaultLocale2 = defaultLocale;
                                materialized$iv$iv3 = materialized$iv$iv4;
                                i8 = i;
                            } else {
                                function03 = function04;
                            }
                            value$iv4 = Boolean.valueOf(selectableDates.isSelectableYear(month.getYear()) && selectableDates.isSelectableDate(dateInMillis));
                            $composer9.updateRememberedValue(value$iv4);
                            boolean zBooleanValue2 = ((Boolean) value$iv4).booleanValue();
                            ComposerKt.sourceInformationMarkerEnd($composer9);
                            if (dayContentDescription == null) {
                            }
                            $composer3 = $composer6;
                            $composer4 = $composer10;
                            $dirty = $dirty3;
                            String str102 = str2;
                            verticalAlignment$iv = verticalAlignment$iv2;
                            function02 = constructor2;
                            measurePolicy$iv = measurePolicy$iv2;
                            boolean startDateSelected22 = startDateSelected;
                            str = str3;
                            Day(companion, z, function03, startDateSelected22, zBooleanValue2, isToday, inRange, str102, colors, ComposableLambdaKt.rememberComposableLambda(-2095706591, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$Month$1$1$3
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(2);
                                }

                                @Override // kotlin.jvm.functions.Function2
                                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                                    invoke(composer, num.intValue());
                                    return Unit.INSTANCE;
                                }

                                public final void invoke(Composer $composer11, int $changed4) {
                                    ComposerKt.sourceInformation($composer11, "C1863@85242L320:DatePicker.kt#uh7d8r");
                                    if (($changed4 & 3) != 2 || !$composer11.getSkipping()) {
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-2095706591, $changed4, -1, "androidx.compose.material3.Month.<anonymous>.<anonymous>.<anonymous> (DatePicker.kt:1863)");
                                        }
                                        TextKt.m2976Text4IGK_g(CalendarLocale_jvmKt.toLocalString$default(dayNumber + 1, 0, 0, false, 7, null), SemanticsModifierKt.clearAndSetSemantics(Modifier.INSTANCE, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DatePickerKt$Month$1$1$3.1
                                            @Override // kotlin.jvm.functions.Function1
                                            public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                                                invoke2(semanticsPropertyReceiver);
                                                return Unit.INSTANCE;
                                            }

                                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                                            public final void invoke2(SemanticsPropertyReceiver $this$clearAndSetSemantics) {
                                            }
                                        }), 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, TextAlign.m7351boximpl(TextAlign.INSTANCE.m7358getCentere0LSkKk()), 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer11, 0, 0, 130556);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                            return;
                                        }
                                        return;
                                    }
                                    $composer11.skipToGroupEnd();
                                }
                            }, $composer9, 54), $composer9, 805306374 | ($dirty3 & 234881024));
                            $composer8 = $composer9;
                            $composer8.endReplaceGroup();
                            function12 = function1;
                            datePickerFormatter = dateFormatter;
                            measurePolicy$iv2 = measurePolicy$iv;
                            $composer7 = $composer4;
                            verticalAlignment$iv2 = verticalAlignment$iv;
                            cellIndex3 = cellIndex + 1;
                            constructor2 = function02;
                            dayIndex2 = dayIndex + 1;
                            $composer6 = $composer3;
                            $dirty3 = $dirty;
                            $changed3 = $changed2;
                            str3 = str;
                            defaultLocale2 = defaultLocale;
                            materialized$iv$iv3 = materialized$iv$iv4;
                            i8 = i;
                        }
                    }
                }
                int cellIndex4 = cellIndex3;
                Composer $composer11 = $composer7;
                $composer8.endReplaceGroup();
                ComposerKt.sourceInformationMarkerEnd($composer8);
                ComposerKt.sourceInformationMarkerEnd($composer8);
                $composer11.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer11);
                ComposerKt.sourceInformationMarkerEnd($composer11);
                ComposerKt.sourceInformationMarkerEnd($composer11);
                function12 = function1;
                datePickerFormatter = dateFormatter;
                weekIndex = weekIndex2 + 1;
                i2 = 6;
                $dirty2 = $dirty3;
                materialized$iv$iv = materialized$iv$iv2;
                i4 = i6;
                str4 = str7;
                str5 = str8;
                defaultLocale2 = defaultLocale2;
                str6 = str9;
                cellIndex2 = cellIndex4;
            }
            $composer2 = $composer6;
            Composer $composer12 = $composer7;
            $composer12.endReplaceGroup();
            ComposerKt.sourceInformationMarkerEnd($composer12);
            ComposerKt.sourceInformationMarkerEnd($composer6);
            $composer2.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer6.skipToGroupEnd();
            $composer2 = $composer6;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt.Month.2
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
                    DatePickerKt.Month(month, function1, todayMillis, startDateMillis, endDateMillis, rangeSelectionInfo, dateFormatter, selectableDates, colors, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }

    public static final int numberOfMonthsInRange(IntRange yearRange) {
        return ((yearRange.getLast() - yearRange.getFirst()) + 1) * 12;
    }

    private static final String dayContentDescription(boolean rangeSelectionEnabled, boolean isToday, boolean isStartDate, boolean isEndDate, boolean isInRange, Composer $composer, int $changed) {
        boolean z;
        ComposerKt.sourceInformationMarkerStart($composer, 502032503, "C(dayContentDescription)P(4,3,2):DatePicker.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(502032503, $changed, -1, "androidx.compose.material3.dayContentDescription (DatePicker.kt:1889)");
        }
        StringBuilder descriptionBuilder = new StringBuilder();
        $composer.startReplaceGroup(-647758197);
        ComposerKt.sourceInformation($composer, "");
        boolean z2 = false;
        if (rangeSelectionEnabled) {
            if (isStartDate) {
                $composer.startReplaceGroup(-647755172);
                ComposerKt.sourceInformation($composer, "1894@86219L56");
                Strings.Companion companion = Strings.INSTANCE;
                descriptionBuilder.append(Strings_androidKt.m3257getString2EP1pXo(Strings.m3187constructorimpl(R.string.m3c_date_range_picker_start_headline), $composer, 0));
                $composer.endReplaceGroup();
            } else if (isEndDate) {
                $composer.startReplaceGroup(-647751174);
                ComposerKt.sourceInformation($composer, "1896@86344L54");
                Strings.Companion companion2 = Strings.INSTANCE;
                descriptionBuilder.append(Strings_androidKt.m3257getString2EP1pXo(Strings.m3187constructorimpl(R.string.m3c_date_range_picker_end_headline), $composer, 0));
                $composer.endReplaceGroup();
            } else if (isInRange) {
                $composer.startReplaceGroup(-647747239);
                ComposerKt.sourceInformation($composer, "1898@86467L53");
                Strings.Companion companion3 = Strings.INSTANCE;
                descriptionBuilder.append(Strings_androidKt.m3257getString2EP1pXo(Strings.m3187constructorimpl(R.string.m3c_date_range_picker_day_in_range), $composer, 0));
                $composer.endReplaceGroup();
            } else {
                $composer.startReplaceGroup(1394740614);
                $composer.endReplaceGroup();
            }
        }
        $composer.endReplaceGroup();
        $composer.startReplaceGroup(-647744489);
        ComposerKt.sourceInformation($composer, "1903@86668L54");
        if (isToday) {
            if (descriptionBuilder.length() <= 0) {
                z = false;
            } else {
                z = true;
            }
            if (z) {
                descriptionBuilder.append(", ");
            }
            Strings.Companion companion4 = Strings.INSTANCE;
            descriptionBuilder.append(Strings_androidKt.m3257getString2EP1pXo(Strings.m3187constructorimpl(R.string.m3c_date_picker_today_description), $composer, 0));
        }
        $composer.endReplaceGroup();
        if (descriptionBuilder.length() == 0) {
            z2 = true;
        }
        String string = z2 ? null : descriptionBuilder.toString();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        return string;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Day(final Modifier modifier, final boolean selected, final Function0<Unit> function0, final boolean animateChecked, final boolean enabled, final boolean today, final boolean inRange, final String description, final DatePickerColors colors, final Function2<? super Composer, ? super Integer, Unit> function2, Composer $composer, final int $changed) {
        boolean z;
        boolean z2;
        boolean z3;
        DatePickerColors datePickerColors;
        Object value$iv;
        BorderStroke borderStrokeM290BorderStrokecXLIe8U;
        Composer $composer2;
        Composer $composer3 = $composer.startRestartGroup(-1434777861);
        ComposerKt.sourceInformation($composer3, "C(Day)P(6,8,7!1,4,9,5,3)1931@87580L114,1936@87780L5,1939@87839L83,1943@88006L190,1959@88508L319,1922@87151L1676:DatePicker.kt#uh7d8r");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer3.changed(modifier) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer3.changed(selected) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty |= $composer3.changedInstance(function0) ? 256 : 128;
        }
        if (($changed & 3072) == 0) {
            z = animateChecked;
            $dirty |= $composer3.changed(z) ? 2048 : 1024;
        } else {
            z = animateChecked;
        }
        if (($changed & 24576) == 0) {
            z2 = enabled;
            $dirty |= $composer3.changed(z2) ? 16384 : 8192;
        } else {
            z2 = enabled;
        }
        if ((196608 & $changed) == 0) {
            $dirty |= $composer3.changed(today) ? 131072 : 65536;
        }
        if ((1572864 & $changed) == 0) {
            z3 = inRange;
            $dirty |= $composer3.changed(z3) ? 1048576 : 524288;
        } else {
            z3 = inRange;
        }
        if ((12582912 & $changed) == 0) {
            $dirty |= $composer3.changed(description) ? 8388608 : 4194304;
        }
        if ((100663296 & $changed) == 0) {
            datePickerColors = colors;
            $dirty |= $composer3.changed(datePickerColors) ? 67108864 : 33554432;
        } else {
            datePickerColors = colors;
        }
        if ((805306368 & $changed) == 0) {
            $dirty |= $composer3.changedInstance(function2) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
        }
        int $dirty2 = $dirty;
        if ((306783379 & $dirty2) != 306783378 || !$composer3.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1434777861, $dirty2, -1, "androidx.compose.material3.Day (DatePicker.kt:1921)");
            }
            ComposerKt.sourceInformationMarkerStart($composer3, 67481739, "CC(remember):DatePicker.kt#9igjgp");
            boolean invalid$iv = (29360128 & $dirty2) == 8388608;
            Object it$iv = $composer3.rememberedValue();
            if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                value$iv = (Function1) new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DatePickerKt$Day$1$1
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
                        SemanticsPropertiesKt.setText($this$semantics, new AnnotatedString(description, null, null, 6, null));
                        SemanticsPropertiesKt.m6718setRolekuIjeqM($this$semantics, Role.INSTANCE.m6699getButtono7Vup1c());
                    }
                };
                $composer3.updateRememberedValue(value$iv);
            } else {
                value$iv = it$iv;
            }
            ComposerKt.sourceInformationMarkerEnd($composer3);
            Modifier modifierSemantics = SemanticsModifierKt.semantics(modifier, true, (Function1) value$iv);
            Shape value = ShapesKt.getValue(DatePickerModalTokens.INSTANCE.getDateContainerShape(), $composer3, 6);
            long jM4707unboximpl = datePickerColors.dayContainerColor$material3_release(selected, z2, z, $composer3, (($dirty2 >> 3) & 14) | (($dirty2 >> 9) & 112) | (($dirty2 >> 3) & 896) | (($dirty2 >> 15) & 7168)).getValue().m4707unboximpl();
            long jM4707unboximpl2 = colors.dayContentColor$material3_release(today, selected, z3, enabled, $composer3, (($dirty2 >> 15) & 14) | ($dirty2 & 112) | (($dirty2 >> 12) & 896) | (($dirty2 >> 3) & 7168) | (57344 & ($dirty2 >> 12))).getValue().m4707unboximpl();
            if (today && !selected) {
                borderStrokeM290BorderStrokecXLIe8U = BorderStrokeKt.m290BorderStrokecXLIe8U(DatePickerModalTokens.INSTANCE.m3428getDateTodayContainerOutlineWidthD9Ej5fM(), colors.getTodayDateBorderColor());
            } else {
                borderStrokeM290BorderStrokecXLIe8U = null;
            }
            $composer2 = $composer3;
            SurfaceKt.m2827Surfaced85dljk(selected, function0, modifierSemantics, enabled, value, jM4707unboximpl, jM4707unboximpl2, 0.0f, 0.0f, borderStrokeM290BorderStrokecXLIe8U, (MutableInteractionSource) null, ComposableLambdaKt.rememberComposableLambda(-2031780827, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt.Day.2
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
                    Function0<ComposeUiNode> function02;
                    ComposerKt.sourceInformation($composer4, "C1960@88518L303:DatePicker.kt#uh7d8r");
                    if (($changed2 & 3) != 2 || !$composer4.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-2031780827, $changed2, -1, "androidx.compose.material3.Day.<anonymous> (DatePicker.kt:1960)");
                        }
                        Modifier modifier$iv = SizeKt.m858requiredSizeVpY3zN4(Modifier.INSTANCE, DatePickerModalTokens.INSTANCE.m3427getDateStateLayerWidthD9Ej5fM(), DatePickerModalTokens.INSTANCE.m3426getDateStateLayerHeightD9Ej5fM());
                        Alignment contentAlignment$iv = Alignment.INSTANCE.getCenter();
                        Function2<Composer, Integer, Unit> function22 = function2;
                        ComposerKt.sourceInformationMarkerStart($composer4, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                        MeasurePolicy measurePolicy$iv = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv, false);
                        int $changed$iv$iv = (54 << 3) & 112;
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
                            function02 = constructor;
                            $composer4.createNode(function02);
                        } else {
                            function02 = constructor;
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
                        int i = ($changed$iv$iv$iv >> 6) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer4, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                        int i2 = ((54 >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer4, 2117902499, "C1968@88802L9:DatePicker.kt#uh7d8r");
                        function22.invoke($composer4, 0);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        $composer4.endNode();
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer4.skipToGroupEnd();
                }
            }, $composer3, 54), $composer2, (($dirty2 >> 3) & 14) | (($dirty2 >> 3) & 112) | (($dirty2 >> 3) & 7168), 48, 1408);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer3.skipToGroupEnd();
            $composer2 = $composer3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt.Day.3
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

                public final void invoke(Composer composer, int i) {
                    DatePickerKt.Day(modifier, selected, function0, animateChecked, enabled, today, inRange, description, colors, function2, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void YearPicker(final Modifier modifier, final long displayedMonthMillis, final Function1<? super Integer, Unit> function1, final SelectableDates selectableDates, final CalendarModel calendarModel, final IntRange yearRange, final DatePickerColors colors, Composer $composer, final int $changed) {
        Modifier modifier2;
        final long j;
        Function1<? super Integer, Unit> function12;
        SelectableDates selectableDates2;
        CalendarModel calendarModel2;
        IntRange intRange;
        DatePickerColors datePickerColors;
        Composer $composer2 = $composer.startRestartGroup(-1286899812);
        ComposerKt.sourceInformation($composer2, "C(YearPicker)P(3,2,4,5!1,6)1984@89212L5,1984@89219L4227,1984@89138L4308:DatePicker.kt#uh7d8r");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            modifier2 = modifier;
            $dirty |= $composer2.changed(modifier2) ? 4 : 2;
        } else {
            modifier2 = modifier;
        }
        if (($changed & 48) == 0) {
            j = displayedMonthMillis;
            $dirty |= $composer2.changed(j) ? 32 : 16;
        } else {
            j = displayedMonthMillis;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            function12 = function1;
            $dirty |= $composer2.changedInstance(function12) ? 256 : 128;
        } else {
            function12 = function1;
        }
        if (($changed & 3072) == 0) {
            selectableDates2 = selectableDates;
            $dirty |= $composer2.changed(selectableDates2) ? 2048 : 1024;
        } else {
            selectableDates2 = selectableDates;
        }
        if (($changed & 24576) == 0) {
            calendarModel2 = calendarModel;
            $dirty |= $composer2.changedInstance(calendarModel2) ? 16384 : 8192;
        } else {
            calendarModel2 = calendarModel;
        }
        if ((196608 & $changed) == 0) {
            intRange = yearRange;
            $dirty |= $composer2.changedInstance(intRange) ? 131072 : 65536;
        } else {
            intRange = yearRange;
        }
        if ((1572864 & $changed) == 0) {
            datePickerColors = colors;
            $dirty |= $composer2.changed(datePickerColors) ? 1048576 : 524288;
        } else {
            datePickerColors = colors;
        }
        if ((599187 & $dirty) != 599186 || !$composer2.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1286899812, $dirty, -1, "androidx.compose.material3.YearPicker (DatePicker.kt:1983)");
            }
            final Modifier modifier3 = modifier2;
            final Function1<? super Integer, Unit> function13 = function12;
            final SelectableDates selectableDates3 = selectableDates2;
            final CalendarModel calendarModel3 = calendarModel2;
            final IntRange intRange2 = intRange;
            final DatePickerColors datePickerColors2 = datePickerColors;
            TextKt.ProvideTextStyle(TypographyKt.getValue(DatePickerModalTokens.INSTANCE.getSelectionYearLabelTextFont(), $composer2, 6), ComposableLambdaKt.rememberComposableLambda(1301915789, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt.YearPicker.1
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

                /* JADX WARN: Removed duplicated region for block: B:25:0x01b8  */
                /* JADX WARN: Removed duplicated region for block: B:28:? A[RETURN, SYNTHETIC] */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final void invoke(Composer $composer3, int $changed2) {
                    Object value$iv$iv;
                    final DatePickerColors datePickerColors3;
                    final LazyGridState lazyGridState;
                    Object value$iv;
                    ComposerKt.sourceInformation($composer3, "C1988@89414L281,1995@89876L24,1996@89941L53,1997@90033L51,2012@90779L2661,1998@90093L3347:DatePicker.kt#uh7d8r");
                    if (($changed2 & 3) != 2 || !$composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1301915789, $changed2, -1, "androidx.compose.material3.YearPicker.<anonymous> (DatePicker.kt:1985)");
                        }
                        final int currentYear = calendarModel3.getMonth(calendarModel3.getToday()).getYear();
                        final int displayedYear = calendarModel3.getMonth(j).getYear();
                        LazyGridState lazyGridState2 = LazyGridStateKt.rememberLazyGridState(Math.max(0, (displayedYear - intRange2.getFirst()) - 3), 0, $composer3, 0, 2);
                        long containerColor = datePickerColors2.getContainerColor();
                        ComposerKt.sourceInformationMarkerStart($composer3, 773894976, "CC(rememberCoroutineScope)489@20472L144:Effects.kt#9igjgp");
                        ComposerKt.sourceInformationMarkerStart($composer3, -954363344, "CC(remember):Effects.kt#9igjgp");
                        Object it$iv$iv = $composer3.rememberedValue();
                        if (it$iv$iv == Composer.INSTANCE.getEmpty()) {
                            value$iv$iv = new CompositionScopedCoroutineScopeCanceller(EffectsKt.createCompositionCoroutineScope(EmptyCoroutineContext.INSTANCE, $composer3));
                            $composer3.updateRememberedValue(value$iv$iv);
                        } else {
                            value$iv$iv = it$iv$iv;
                        }
                        CompositionScopedCoroutineScopeCanceller wrapper$iv = (CompositionScopedCoroutineScopeCanceller) value$iv$iv;
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        final CoroutineScope coroutineScope = wrapper$iv.getCoroutineScope();
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        Strings.Companion companion = Strings.INSTANCE;
                        final String scrollToEarlierYearsLabel = Strings_androidKt.m3257getString2EP1pXo(Strings.m3187constructorimpl(R.string.m3c_date_picker_scroll_to_earlier_years), $composer3, 0);
                        Strings.Companion companion2 = Strings.INSTANCE;
                        final String scrollToLaterYearsLabel = Strings_androidKt.m3257getString2EP1pXo(Strings.m3187constructorimpl(R.string.m3c_date_picker_scroll_to_later_years), $composer3, 0);
                        GridCells.Fixed fixed = new GridCells.Fixed(3);
                        Modifier modifierSemantics$default = SemanticsModifierKt.semantics$default(BackgroundKt.m264backgroundbw27NRU$default(modifier3, containerColor, null, 2, null), false, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DatePickerKt.YearPicker.1.1
                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                                invoke2(semanticsPropertyReceiver);
                                return Unit.INSTANCE;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(SemanticsPropertyReceiver $this$semantics) {
                                SemanticsPropertiesKt.setVerticalScrollAxisRange($this$semantics, new ScrollAxisRange(new Function0<Float>() { // from class: androidx.compose.material3.DatePickerKt.YearPicker.1.1.1
                                    /* JADX WARN: Can't rename method to resolve collision */
                                    @Override // kotlin.jvm.functions.Function0
                                    public final Float invoke() {
                                        return Float.valueOf(0.0f);
                                    }
                                }, new Function0<Float>() { // from class: androidx.compose.material3.DatePickerKt.YearPicker.1.1.2
                                    /* JADX WARN: Can't rename method to resolve collision */
                                    @Override // kotlin.jvm.functions.Function0
                                    public final Float invoke() {
                                        return Float.valueOf(0.0f);
                                    }
                                }, false, 4, null));
                            }
                        }, 1, null);
                        Arrangement.HorizontalOrVertical spaceEvenly = Arrangement.INSTANCE.getSpaceEvenly();
                        GridCells.Fixed fixed2 = fixed;
                        Arrangement.HorizontalOrVertical horizontalOrVerticalM688spacedBy0680j_4 = Arrangement.INSTANCE.m688spacedBy0680j_4(DatePickerKt.YearsVerticalPadding);
                        Arrangement.HorizontalOrVertical horizontalOrVertical = spaceEvenly;
                        ComposerKt.sourceInformationMarkerStart($composer3, 15757458, "CC(remember):DatePicker.kt#9igjgp");
                        boolean invalid$iv = $composer3.changedInstance(intRange2) | $composer3.changed(lazyGridState2) | $composer3.changedInstance(coroutineScope) | $composer3.changed(scrollToEarlierYearsLabel) | $composer3.changed(scrollToLaterYearsLabel) | $composer3.changed(displayedYear) | $composer3.changed(currentYear) | $composer3.changed(function13) | $composer3.changed(selectableDates3) | $composer3.changed(datePickerColors2);
                        final IntRange intRange3 = intRange2;
                        final Function1<Integer, Unit> function14 = function13;
                        final SelectableDates selectableDates4 = selectableDates3;
                        DatePickerColors datePickerColors4 = datePickerColors2;
                        Object it$iv = $composer3.rememberedValue();
                        if (!invalid$iv) {
                            datePickerColors3 = datePickerColors4;
                            if (it$iv != Composer.INSTANCE.getEmpty()) {
                                value$iv = it$iv;
                                lazyGridState = lazyGridState2;
                            }
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            LazyGridDslKt.LazyVerticalGrid(fixed2, modifierSemantics$default, lazyGridState, null, false, horizontalOrVerticalM688spacedBy0680j_4, horizontalOrVertical, null, false, (Function1) value$iv, $composer3, 1769472, 408);
                            if (!ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                                return;
                            }
                            return;
                        }
                        datePickerColors3 = datePickerColors4;
                        lazyGridState = lazyGridState2;
                        value$iv = (Function1) new Function1<LazyGridScope, Unit>() { // from class: androidx.compose.material3.DatePickerKt$YearPicker$1$2$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(LazyGridScope lazyGridScope) {
                                invoke2(lazyGridScope);
                                return Unit.INSTANCE;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(LazyGridScope $this$LazyVerticalGrid) {
                                int iCount = CollectionsKt.count(intRange3);
                                final IntRange intRange4 = intRange3;
                                final LazyGridState lazyGridState3 = lazyGridState;
                                final CoroutineScope coroutineScope2 = coroutineScope;
                                final String str = scrollToEarlierYearsLabel;
                                final String str2 = scrollToLaterYearsLabel;
                                final int i = displayedYear;
                                final int i2 = currentYear;
                                final Function1<Integer, Unit> function15 = function14;
                                final SelectableDates selectableDates5 = selectableDates4;
                                final DatePickerColors datePickerColors5 = datePickerColors3;
                                LazyGridScope.items$default($this$LazyVerticalGrid, iCount, null, null, null, ComposableLambdaKt.composableLambdaInstance(1040623618, true, new Function4<LazyGridItemScope, Integer, Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$YearPicker$1$2$1.1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    /* JADX WARN: Multi-variable type inference failed */
                                    {
                                        super(4);
                                    }

                                    @Override // kotlin.jvm.functions.Function4
                                    public /* bridge */ /* synthetic */ Unit invoke(LazyGridItemScope lazyGridItemScope, Integer num, Composer composer, Integer num2) {
                                        invoke(lazyGridItemScope, num.intValue(), composer, num2.intValue());
                                        return Unit.INSTANCE;
                                    }

                                    public final void invoke(LazyGridItemScope $this$items, final int it, Composer $composer4, int $changed3) {
                                        Object value$iv2;
                                        Object value$iv3;
                                        ComposerKt.sourceInformation($composer4, "C2022@91293L1332,2047@92782L32,*2050@92952L54,2053@93113L303,2016@90957L2459:DatePicker.kt#uh7d8r");
                                        int $dirty2 = $changed3;
                                        if (($changed3 & 48) == 0) {
                                            $dirty2 |= $composer4.changed(it) ? 32 : 16;
                                        }
                                        int $dirty3 = $dirty2;
                                        if (($dirty3 & 145) != 144 || !$composer4.getSkipping()) {
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(1040623618, $dirty3, -1, "androidx.compose.material3.YearPicker.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePicker.kt:2014)");
                                            }
                                            final int selectedYear = it + intRange4.getFirst();
                                            final String localizedYear = CalendarLocale_jvmKt.toLocalString$default(selectedYear, 0, 0, false, 7, null);
                                            Modifier modifierM858requiredSizeVpY3zN4 = SizeKt.m858requiredSizeVpY3zN4(Modifier.INSTANCE, DatePickerModalTokens.INSTANCE.m3435getSelectionYearContainerWidthD9Ej5fM(), DatePickerModalTokens.INSTANCE.m3434getSelectionYearContainerHeightD9Ej5fM());
                                            ComposerKt.sourceInformationMarkerStart($composer4, -213681250, "CC(remember):DatePicker.kt#9igjgp");
                                            boolean invalid$iv2 = $composer4.changed(lazyGridState3) | (($dirty3 & 112) == 32) | $composer4.changedInstance(coroutineScope2) | $composer4.changed(str) | $composer4.changed(str2);
                                            final LazyGridState lazyGridState4 = lazyGridState3;
                                            final CoroutineScope coroutineScope3 = coroutineScope2;
                                            final String str3 = str;
                                            final String str4 = str2;
                                            Object it$iv2 = $composer4.rememberedValue();
                                            if (invalid$iv2 || it$iv2 == Composer.INSTANCE.getEmpty()) {
                                                value$iv2 = (Function1) new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DatePickerKt$YearPicker$1$2$1$1$1$1
                                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                    {
                                                        super(1);
                                                    }

                                                    @Override // kotlin.jvm.functions.Function1
                                                    public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                                                        invoke2(semanticsPropertyReceiver);
                                                        return Unit.INSTANCE;
                                                    }

                                                    /* JADX WARN: Removed duplicated region for block: B:13:0x0034  */
                                                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                                                    /*
                                                        Code decompiled incorrectly, please refer to instructions dump.
                                                    */
                                                    public final void invoke2(SemanticsPropertyReceiver $this$semantics) {
                                                        List listCustomScrollActions;
                                                        if (lazyGridState4.getFirstVisibleItemIndex() != it) {
                                                            LazyGridItemInfo lazyGridItemInfo = (LazyGridItemInfo) CollectionsKt.lastOrNull((List) lazyGridState4.getLayoutInfo().getVisibleItemsInfo());
                                                            boolean z = false;
                                                            if (lazyGridItemInfo != null && lazyGridItemInfo.getIndex() == it) {
                                                                z = true;
                                                            }
                                                            if (z) {
                                                                listCustomScrollActions = DatePickerKt.customScrollActions(lazyGridState4, coroutineScope3, str3, str4);
                                                            } else {
                                                                listCustomScrollActions = CollectionsKt.emptyList();
                                                            }
                                                        }
                                                        SemanticsPropertiesKt.setCustomActions($this$semantics, listCustomScrollActions);
                                                    }
                                                };
                                                $composer4.updateRememberedValue(value$iv2);
                                            } else {
                                                value$iv2 = it$iv2;
                                            }
                                            ComposerKt.sourceInformationMarkerEnd($composer4);
                                            Modifier modifierSemantics$default2 = SemanticsModifierKt.semantics$default(modifierM858requiredSizeVpY3zN4, false, (Function1) value$iv2, 1, null);
                                            boolean z = selectedYear == i;
                                            boolean z2 = selectedYear == i2;
                                            ComposerKt.sourceInformationMarkerStart($composer4, -213634902, "CC(remember):DatePicker.kt#9igjgp");
                                            boolean invalid$iv3 = $composer4.changed(function15) | $composer4.changed(selectedYear);
                                            final Function1<Integer, Unit> function16 = function15;
                                            Object it$iv3 = $composer4.rememberedValue();
                                            if (invalid$iv3 || it$iv3 == Composer.INSTANCE.getEmpty()) {
                                                value$iv3 = (Function0) new Function0<Unit>() { // from class: androidx.compose.material3.DatePickerKt$YearPicker$1$2$1$1$2$1
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
                                                        function16.invoke(Integer.valueOf(selectedYear));
                                                    }
                                                };
                                                $composer4.updateRememberedValue(value$iv3);
                                            } else {
                                                value$iv3 = it$iv3;
                                            }
                                            ComposerKt.sourceInformationMarkerEnd($composer4);
                                            boolean zIsSelectableYear = selectableDates5.isSelectableYear(selectedYear);
                                            Strings.Companion companion3 = Strings.INSTANCE;
                                            String str5 = String.format(Strings_androidKt.m3257getString2EP1pXo(Strings.m3187constructorimpl(R.string.m3c_date_picker_navigate_to_year_description), $composer4, 0), Arrays.copyOf(new Object[]{localizedYear}, 1));
                                            Intrinsics.checkNotNullExpressionValue(str5, "format(this, *args)");
                                            DatePickerKt.Year(modifierSemantics$default2, z, z2, (Function0) value$iv3, zIsSelectableYear, str5, datePickerColors5, ComposableLambdaKt.rememberComposableLambda(882189459, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt.YearPicker.1.2.1.1.3
                                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                {
                                                    super(2);
                                                }

                                                @Override // kotlin.jvm.functions.Function2
                                                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                                                    invoke(composer, num.intValue());
                                                    return Unit.INSTANCE;
                                                }

                                                public final void invoke(Composer $composer5, int $changed4) {
                                                    ComposerKt.sourceInformation($composer5, "C2054@93135L263:DatePicker.kt#uh7d8r");
                                                    if (($changed4 & 3) != 2 || !$composer5.getSkipping()) {
                                                        if (ComposerKt.isTraceInProgress()) {
                                                            ComposerKt.traceEventStart(882189459, $changed4, -1, "androidx.compose.material3.YearPicker.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (DatePicker.kt:2054)");
                                                        }
                                                        TextKt.m2976Text4IGK_g(localizedYear, SemanticsModifierKt.clearAndSetSemantics(Modifier.INSTANCE, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DatePickerKt.YearPicker.1.2.1.1.3.1
                                                            @Override // kotlin.jvm.functions.Function1
                                                            public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                                                                invoke2(semanticsPropertyReceiver);
                                                                return Unit.INSTANCE;
                                                            }

                                                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                                                            public final void invoke2(SemanticsPropertyReceiver $this$clearAndSetSemantics) {
                                                            }
                                                        }), 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, TextAlign.m7351boximpl(TextAlign.INSTANCE.m7358getCentere0LSkKk()), 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer5, 0, 0, 130556);
                                                        if (ComposerKt.isTraceInProgress()) {
                                                            ComposerKt.traceEventEnd();
                                                            return;
                                                        }
                                                        return;
                                                    }
                                                    $composer5.skipToGroupEnd();
                                                }
                                            }, $composer4, 54), $composer4, 12582912);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                                return;
                                            }
                                            return;
                                        }
                                        $composer4.skipToGroupEnd();
                                    }
                                }), 14, null);
                            }
                        };
                        $composer3.updateRememberedValue(value$iv);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        LazyGridDslKt.LazyVerticalGrid(fixed2, modifierSemantics$default, lazyGridState, null, false, horizontalOrVerticalM688spacedBy0680j_4, horizontalOrVertical, null, false, (Function1) value$iv, $composer3, 1769472, 408);
                        if (!ComposerKt.isTraceInProgress()) {
                        }
                    } else {
                        $composer3.skipToGroupEnd();
                    }
                }
            }, $composer2, 54), $composer2, 48);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt.YearPicker.2
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

                public final void invoke(Composer composer, int i) {
                    DatePickerKt.YearPicker(modifier, displayedMonthMillis, function1, selectableDates, calendarModel, yearRange, colors, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Year(final Modifier modifier, final boolean selected, final boolean currentYear, final Function0<Unit> function0, final boolean enabled, final String description, final DatePickerColors colors, final Function2<? super Composer, ? super Integer, Unit> function2, Composer $composer, final int $changed) {
        int $dirty;
        Object value$iv;
        Object value$iv2;
        Composer $composer2;
        Composer $composer3 = $composer.startRestartGroup(238547184);
        ComposerKt.sourceInformation($composer3, "C(Year)P(5,7,2,6,4,3)2079@93760L393,2097@94528L102,2102@94726L5,2103@94756L58,2106@94881L83,2109@95020L106,2090@94158L968:DatePicker.kt#uh7d8r");
        int $dirty2 = $changed;
        if (($changed & 6) == 0) {
            $dirty2 |= $composer3.changed(modifier) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty2 |= $composer3.changed(selected) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty2 |= $composer3.changed(currentYear) ? 256 : 128;
        }
        if (($changed & 3072) == 0) {
            $dirty2 |= $composer3.changedInstance(function0) ? 2048 : 1024;
        }
        if (($changed & 24576) == 0) {
            $dirty2 |= $composer3.changed(enabled) ? 16384 : 8192;
        }
        if ((196608 & $changed) == 0) {
            $dirty2 |= $composer3.changed(description) ? 131072 : 65536;
        }
        if ((1572864 & $changed) == 0) {
            $dirty2 |= $composer3.changed(colors) ? 1048576 : 524288;
        }
        if ((12582912 & $changed) == 0) {
            $dirty2 |= $composer3.changedInstance(function2) ? 8388608 : 4194304;
        }
        if ((4793491 & $dirty2) != 4793490 || !$composer3.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(238547184, $dirty2, -1, "androidx.compose.material3.Year (DatePicker.kt:2077)");
            }
            ComposerKt.sourceInformationMarkerStart($composer3, -1682614743, "CC(remember):DatePicker.kt#9igjgp");
            boolean invalid$iv = (($dirty2 & 896) == 256) | (($dirty2 & 112) == 32);
            Object it$iv = $composer3.rememberedValue();
            if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                if (currentYear && !selected) {
                    $dirty = $dirty2;
                    value$iv = BorderStrokeKt.m290BorderStrokecXLIe8U(DatePickerModalTokens.INSTANCE.m3428getDateTodayContainerOutlineWidthD9Ej5fM(), colors.getTodayDateBorderColor());
                } else {
                    $dirty = $dirty2;
                    value$iv = null;
                }
                $composer3.updateRememberedValue(value$iv);
            } else {
                $dirty = $dirty2;
                value$iv = it$iv;
            }
            BorderStroke border = (BorderStroke) value$iv;
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerStart($composer3, -1682590458, "CC(remember):DatePicker.kt#9igjgp");
            boolean invalid$iv2 = ($dirty & 458752) == 131072;
            Object it$iv2 = $composer3.rememberedValue();
            if (invalid$iv2 || it$iv2 == Composer.INSTANCE.getEmpty()) {
                value$iv2 = (Function1) new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DatePickerKt$Year$1$1
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
                        SemanticsPropertiesKt.setText($this$semantics, new AnnotatedString(description, null, null, 6, null));
                        SemanticsPropertiesKt.m6718setRolekuIjeqM($this$semantics, Role.INSTANCE.m6699getButtono7Vup1c());
                    }
                };
                $composer3.updateRememberedValue(value$iv2);
            } else {
                value$iv2 = it$iv2;
            }
            ComposerKt.sourceInformationMarkerEnd($composer3);
            $composer2 = $composer3;
            SurfaceKt.m2827Surfaced85dljk(selected, function0, SemanticsModifierKt.semantics(modifier, true, (Function1) value$iv2), enabled, ShapesKt.getValue(DatePickerModalTokens.INSTANCE.getSelectionYearStateLayerShape(), $composer3, 6), colors.yearContainerColor$material3_release(selected, enabled, $composer3, (($dirty >> 3) & 14) | (($dirty >> 9) & 112) | (($dirty >> 12) & 896)).getValue().m4707unboximpl(), colors.yearContentColor$material3_release(currentYear, selected, enabled, $composer3, (($dirty >> 6) & 14) | ($dirty & 112) | (($dirty >> 6) & 896) | (($dirty >> 9) & 7168)).getValue().m4707unboximpl(), 0.0f, 0.0f, border, (MutableInteractionSource) null, ComposableLambdaKt.rememberComposableLambda(-1573188346, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt.Year.2
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
                    Function0<ComposeUiNode> function02;
                    ComposerKt.sourceInformation($composer4, "C2110@95030L90:DatePicker.kt#uh7d8r");
                    if (($changed2 & 3) == 2 && $composer4.getSkipping()) {
                        $composer4.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-1573188346, $changed2, -1, "androidx.compose.material3.Year.<anonymous> (DatePicker.kt:2110)");
                    }
                    Modifier modifier$iv = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                    Alignment contentAlignment$iv = Alignment.INSTANCE.getCenter();
                    Function2<Composer, Integer, Unit> function22 = function2;
                    ComposerKt.sourceInformationMarkerStart($composer4, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                    MeasurePolicy measurePolicy$iv = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv, false);
                    int $changed$iv$iv = (54 << 3) & 112;
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
                        function02 = constructor;
                        $composer4.createNode(function02);
                    } else {
                        function02 = constructor;
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
                    int i = ($changed$iv$iv$iv >> 6) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer4, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                    int i2 = ((54 >> 6) & 112) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer4, -2125152740, "C2110@95109L9:DatePicker.kt#uh7d8r");
                    function22.invoke($composer4, 0);
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
            }, $composer3, 54), $composer2, (($dirty >> 3) & 14) | (($dirty >> 6) & 112) | (($dirty >> 3) & 7168), 48, 1408);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer3.skipToGroupEnd();
            $composer2 = $composer3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt.Year.3
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

                public final void invoke(Composer composer, int i) {
                    DatePickerKt.Year(modifier, selected, currentYear, function0, enabled, description, colors, function2, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void MonthsNavigation(final Modifier modifier, final boolean nextAvailable, final boolean previousAvailable, final boolean yearPickerVisible, final String yearPickerText, final Function0<Unit> function0, final Function0<Unit> function02, final Function0<Unit> function03, DatePickerColors colors, Composer $composer, final int $changed) {
        final boolean z;
        final boolean z2;
        final String str;
        Function0<Unit> function04;
        Function0<Unit> function05;
        DatePickerColors datePickerColors;
        Arrangement.HorizontalOrVertical horizontalArrangement$iv;
        Function0<ComposeUiNode> function06;
        Composer $composer2 = $composer.startRestartGroup(-773929258);
        ComposerKt.sourceInformation($composer2, "C(MonthsNavigation)P(1,2,6,8,7,3,4,5)2131@95632L2049:DatePicker.kt#uh7d8r");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changed(modifier) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            z = nextAvailable;
            $dirty |= $composer2.changed(z) ? 32 : 16;
        } else {
            z = nextAvailable;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            z2 = previousAvailable;
            $dirty |= $composer2.changed(z2) ? 256 : 128;
        } else {
            z2 = previousAvailable;
        }
        if (($changed & 3072) == 0) {
            $dirty |= $composer2.changed(yearPickerVisible) ? 2048 : 1024;
        }
        if (($changed & 24576) == 0) {
            str = yearPickerText;
            $dirty |= $composer2.changed(str) ? 16384 : 8192;
        } else {
            str = yearPickerText;
        }
        if ((196608 & $changed) == 0) {
            function04 = function0;
            $dirty |= $composer2.changedInstance(function04) ? 131072 : 65536;
        } else {
            function04 = function0;
        }
        if ((1572864 & $changed) == 0) {
            $dirty |= $composer2.changedInstance(function02) ? 1048576 : 524288;
        }
        if ((12582912 & $changed) == 0) {
            function05 = function03;
            $dirty |= $composer2.changedInstance(function05) ? 8388608 : 4194304;
        } else {
            function05 = function03;
        }
        if ((100663296 & $changed) == 0) {
            datePickerColors = colors;
            $dirty |= $composer2.changed(datePickerColors) ? 67108864 : 33554432;
        } else {
            datePickerColors = colors;
        }
        int $dirty2 = $dirty;
        if ((38347923 & $dirty2) != 38347922 || !$composer2.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-773929258, $dirty2, -1, "androidx.compose.material3.MonthsNavigation (DatePicker.kt:2130)");
            }
            Modifier modifier$iv = SizeKt.m853requiredHeight3ABfNKs(SizeKt.fillMaxWidth$default(modifier, 0.0f, 1, null), MonthYearHeight);
            if (yearPickerVisible) {
                horizontalArrangement$iv = Arrangement.INSTANCE.getStart();
            } else {
                horizontalArrangement$iv = Arrangement.INSTANCE.getSpaceBetween();
            }
            Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getCenterVertically();
            ComposerKt.sourceInformationMarkerStart($composer2, 693286680, "CC(Row)P(2,1,3)98@4939L58,99@5002L130:Row.kt#2w3rfo");
            MeasurePolicy measurePolicy$iv = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer2, ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 112));
            int $changed$iv$iv = (RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 112;
            ComposerKt.sourceInformationMarkerStart($composer2, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
            int compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer2, 0);
            CompositionLocalMap localMap$iv$iv = $composer2.getCurrentCompositionLocalMap();
            Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer2, modifier$iv);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int $changed$iv$iv$iv = (($changed$iv$iv << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer2, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
            if (!($composer2.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer2.startReusableNode();
            if ($composer2.getInserting()) {
                function06 = constructor;
                $composer2.createNode(function06);
            } else {
                function06 = constructor;
                $composer2.useNode();
            }
            Composer $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer2);
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if ($this$Layout_u24lambda_u240$iv$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), setCompositeKeyHash);
            }
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
            int i = ($changed$iv$iv$iv >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer2, -407918630, "C100@5047L9:Row.kt#2w3rfo");
            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
            int i2 = ((RendererCapabilities.DECODER_SUPPORT_MASK >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer2, -857484277, "C2141@96047L1628,2141@95964L1711:DatePicker.kt#uh7d8r");
            final Function0<Unit> function07 = function05;
            final Function0<Unit> function08 = function04;
            CompositionLocalKt.CompositionLocalProvider(ContentColorKt.getLocalContentColor().provides(Color.m4687boximpl(datePickerColors.getNavigationContentColor())), ComposableLambdaKt.rememberComposableLambda(-962805198, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$MonthsNavigation$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer $composer3, int $changed2) {
                    boolean z3;
                    int $changed$iv;
                    ComposerKt.sourceInformation($composer3, "C2146@96246L559,2143@96112L693,2161@96955L696:DatePicker.kt#uh7d8r");
                    if (($changed2 & 3) != 2 || !$composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-962805198, $changed2, -1, "androidx.compose.material3.MonthsNavigation.<anonymous>.<anonymous> (DatePicker.kt:2143)");
                        }
                        Function0<Unit> function09 = function07;
                        boolean z4 = yearPickerVisible;
                        final String str2 = str;
                        DatePickerKt.YearPickerMenuButton(function09, z4, null, ComposableLambdaKt.rememberComposableLambda(1377272806, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$MonthsNavigation$1$1.1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                                invoke(composer, num.intValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(Composer $composer4, int $changed3) {
                                Object value$iv;
                                ComposerKt.sourceInformation($composer4, "C2150@96387L386,2147@96264L527:DatePicker.kt#uh7d8r");
                                if (($changed3 & 3) != 2 || !$composer4.getSkipping()) {
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1377272806, $changed3, -1, "androidx.compose.material3.MonthsNavigation.<anonymous>.<anonymous>.<anonymous> (DatePicker.kt:2147)");
                                    }
                                    String str3 = str2;
                                    Modifier.Companion companion = Modifier.INSTANCE;
                                    ComposerKt.sourceInformationMarkerStart($composer4, -557929175, "CC(remember):DatePicker.kt#9igjgp");
                                    boolean invalid$iv = $composer4.changed(str2);
                                    final String str4 = str2;
                                    Object it$iv = $composer4.rememberedValue();
                                    if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                                        value$iv = (Function1) new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.DatePickerKt$MonthsNavigation$1$1$1$1$1
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
                                                SemanticsPropertiesKt.m6717setLiveRegionhR3wRGc($this$semantics, LiveRegionMode.INSTANCE.m6691getPolite0phEisY());
                                                SemanticsPropertiesKt.setContentDescription($this$semantics, str4);
                                            }
                                        };
                                        $composer4.updateRememberedValue(value$iv);
                                    } else {
                                        value$iv = it$iv;
                                    }
                                    ComposerKt.sourceInformationMarkerEnd($composer4);
                                    TextKt.m2976Text4IGK_g(str3, SemanticsModifierKt.semantics$default(companion, false, (Function1) value$iv, 1, null), 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, (TextStyle) null, $composer4, 0, 0, 131068);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                        return;
                                    }
                                    return;
                                }
                                $composer4.skipToGroupEnd();
                            }
                        }, $composer3, 54), $composer3, 3072, 4);
                        if (!yearPickerVisible) {
                            Function0<Unit> function010 = function02;
                            boolean z5 = z2;
                            Function0<Unit> function011 = function08;
                            boolean z6 = z;
                            ComposerKt.sourceInformationMarkerStart($composer3, 693286680, "CC(Row)P(2,1,3)98@4939L58,99@5002L130:Row.kt#2w3rfo");
                            Modifier modifier$iv2 = Modifier.INSTANCE;
                            Arrangement.Horizontal horizontalArrangement$iv2 = Arrangement.INSTANCE.getStart();
                            Alignment.Vertical verticalAlignment$iv2 = Alignment.INSTANCE.getTop();
                            MeasurePolicy measurePolicy$iv2 = RowKt.rowMeasurePolicy(horizontalArrangement$iv2, verticalAlignment$iv2, $composer3, ((0 >> 3) & 14) | ((0 >> 3) & 112));
                            int $changed$iv$iv2 = (0 << 3) & 112;
                            ComposerKt.sourceInformationMarkerStart($composer3, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                            int compositeKeyHash$iv$iv2 = ComposablesKt.getCurrentCompositeKeyHash($composer3, 0);
                            CompositionLocalMap localMap$iv$iv2 = $composer3.getCurrentCompositionLocalMap();
                            Modifier materialized$iv$iv2 = ComposedModifierKt.materializeModifier($composer3, modifier$iv2);
                            Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
                            int $changed$iv$iv$iv2 = (($changed$iv$iv2 << 6) & 896) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer3, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                            if (!($composer3.getApplier() instanceof Applier)) {
                                ComposablesKt.invalidApplier();
                            }
                            $composer3.startReusableNode();
                            if ($composer3.getInserting()) {
                                $composer3.createNode(constructor2);
                            } else {
                                $composer3.useNode();
                            }
                            Composer $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3967constructorimpl($composer3);
                            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                            Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash2 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                            if ($this$Layout_u24lambda_u240$iv$iv2.getInserting()) {
                                z3 = z6;
                                $changed$iv = 0;
                            } else {
                                z3 = z6;
                                $changed$iv = 0;
                                if (!Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv2.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv2))) {
                                }
                                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, materialized$iv$iv2, ComposeUiNode.INSTANCE.getSetModifier());
                                int i3 = ($changed$iv$iv$iv2 >> 6) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer3, -407918630, "C100@5047L9:Row.kt#2w3rfo");
                                RowScopeInstance rowScopeInstance2 = RowScopeInstance.INSTANCE;
                                int i4 = (($changed$iv >> 6) & 112) | 6;
                                ComposerKt.sourceInformationMarkerStart($composer3, -115337744, "C2162@96981L321,2168@97323L310:DatePicker.kt#uh7d8r");
                                IconButtonKt.IconButton(function010, null, z5, null, null, ComposableSingletons$DatePickerKt.INSTANCE.m2246getLambda3$material3_release(), $composer3, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 26);
                                IconButtonKt.IconButton(function011, null, z3, null, null, ComposableSingletons$DatePickerKt.INSTANCE.m2247getLambda4$material3_release(), $composer3, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 26);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                $composer3.endNode();
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                            }
                            $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv2));
                            $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv2), setCompositeKeyHash2);
                            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, materialized$iv$iv2, ComposeUiNode.INSTANCE.getSetModifier());
                            int i32 = ($changed$iv$iv$iv2 >> 6) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer3, -407918630, "C100@5047L9:Row.kt#2w3rfo");
                            RowScopeInstance rowScopeInstance22 = RowScopeInstance.INSTANCE;
                            int i42 = (($changed$iv >> 6) & 112) | 6;
                            ComposerKt.sourceInformationMarkerStart($composer3, -115337744, "C2162@96981L321,2168@97323L310:DatePicker.kt#uh7d8r");
                            IconButtonKt.IconButton(function010, null, z5, null, null, ComposableSingletons$DatePickerKt.INSTANCE.m2246getLambda3$material3_release(), $composer3, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 26);
                            IconButtonKt.IconButton(function011, null, z3, null, null, ComposableSingletons$DatePickerKt.INSTANCE.m2247getLambda4$material3_release(), $composer3, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 26);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            $composer3.endNode();
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer3.skipToGroupEnd();
                }
            }, $composer2, 54), $composer2, ProvidedValue.$stable | 48);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            $composer2.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final DatePickerColors datePickerColors2 = datePickerColors;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt.MonthsNavigation.2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i3) {
                    DatePickerKt.MonthsNavigation(modifier, nextAvailable, previousAvailable, yearPickerVisible, yearPickerText, function0, function02, function03, datePickerColors2, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void YearPickerMenuButton(final Function0<Unit> function0, final boolean expanded, Modifier modifier, final Function2<? super Composer, ? super Integer, Unit> function2, Composer $composer, final int $changed, final int i) {
        Function0<Unit> function02;
        Modifier modifier2;
        final Modifier modifier3;
        Composer $composer2 = $composer.startRestartGroup(409654418);
        ComposerKt.sourceInformation($composer2, "C(YearPickerMenuButton)P(3,1,2)2192@98101L7,2192@98051L58,2195@98166L453,2188@97922L697:DatePicker.kt#uh7d8r");
        int $dirty = $changed;
        if ((i & 1) != 0) {
            $dirty |= 6;
            function02 = function0;
        } else if (($changed & 6) == 0) {
            function02 = function0;
            $dirty |= $composer2.changedInstance(function02) ? 4 : 2;
        } else {
            function02 = function0;
        }
        if ((i & 2) != 0) {
            $dirty |= 48;
        } else if (($changed & 48) == 0) {
            $dirty |= $composer2.changed(expanded) ? 32 : 16;
        }
        int i2 = i & 4;
        if (i2 != 0) {
            $dirty |= RendererCapabilities.DECODER_SUPPORT_MASK;
            modifier2 = modifier;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            modifier2 = modifier;
            $dirty |= $composer2.changed(modifier2) ? 256 : 128;
        } else {
            modifier2 = modifier;
        }
        if ((i & 8) != 0) {
            $dirty |= 3072;
        } else if (($changed & 3072) == 0) {
            $dirty |= $composer2.changedInstance(function2) ? 2048 : 1024;
        }
        if (($dirty & 1171) == 1170 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
            modifier3 = modifier2;
        } else {
            Modifier modifier4 = i2 != 0 ? Modifier.INSTANCE : modifier2;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(409654418, $dirty, -1, "androidx.compose.material3.YearPickerMenuButton (DatePicker.kt:2187)");
            }
            RoundedCornerShape circleShape = RoundedCornerShapeKt.getCircleShape();
            ButtonDefaults buttonDefaults = ButtonDefaults.INSTANCE;
            ProvidableCompositionLocal<Color> localContentColor = ContentColorKt.getLocalContentColor();
            ComposerKt.sourceInformationMarkerStart($composer2, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object objConsume = $composer2.consume(localContentColor);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            Modifier modifier5 = modifier4;
            ButtonKt.TextButton(function02, modifier5, false, circleShape, buttonDefaults.m2103textButtonColorsro_MJ88(0L, ((Color) objConsume).m4707unboximpl(), 0L, 0L, $composer2, 24576, 13), null, null, null, null, ComposableLambdaKt.rememberComposableLambda(1899012021, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt.YearPickerMenuButton.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(RowScope rowScope, Composer composer, Integer num) {
                    invoke(rowScope, composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(RowScope $this$TextButton, Composer $composer3, int $changed2) {
                    String str;
                    ComposerKt.sourceInformation($composer3, "C2196@98176L9,2197@98194L49,2198@98252L361:DatePicker.kt#uh7d8r");
                    if (($changed2 & 17) != 16 || !$composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1899012021, $changed2, -1, "androidx.compose.material3.YearPickerMenuButton.<anonymous> (DatePicker.kt:2196)");
                        }
                        function2.invoke($composer3, 0);
                        SpacerKt.Spacer(SizeKt.m864size3ABfNKs(Modifier.INSTANCE, ButtonDefaults.INSTANCE.m2099getIconSpacingD9Ej5fM()), $composer3, 6);
                        ImageVector arrowDropDown = ArrowDropDownKt.getArrowDropDown(Icons.Filled.INSTANCE);
                        if (expanded) {
                            $composer3.startReplaceGroup(-1360891317);
                            ComposerKt.sourceInformation($composer3, "2202@98383L49");
                            Strings.Companion companion = Strings.INSTANCE;
                            String strM3257getString2EP1pXo = Strings_androidKt.m3257getString2EP1pXo(Strings.m3187constructorimpl(R.string.m3c_date_picker_switch_to_day_selection), $composer3, 0);
                            $composer3.endReplaceGroup();
                            str = strM3257getString2EP1pXo;
                        } else {
                            $composer3.startReplaceGroup(-1360797046);
                            ComposerKt.sourceInformation($composer3, "2204@98478L50");
                            Strings.Companion companion2 = Strings.INSTANCE;
                            String strM3257getString2EP1pXo2 = Strings_androidKt.m3257getString2EP1pXo(Strings.m3187constructorimpl(R.string.m3c_date_picker_switch_to_year_selection), $composer3, 0);
                            $composer3.endReplaceGroup();
                            str = strM3257getString2EP1pXo2;
                        }
                        IconKt.m2433Iconww6aTOc(arrowDropDown, str, RotateKt.rotate(Modifier.INSTANCE, expanded ? 180.0f : 0.0f), 0L, $composer3, 0, 8);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    $composer3.skipToGroupEnd();
                }
            }, $composer2, 54), $composer2, ($dirty & 14) | 807075840 | (($dirty >> 3) & 112), 388);
            $composer2 = $composer2;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier5;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt.YearPickerMenuButton.2
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

                public final void invoke(Composer composer, int i3) {
                    DatePickerKt.YearPickerMenuButton(function0, expanded, modifier3, function2, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List<CustomAccessibilityAction> customScrollActions(final LazyGridState state, final CoroutineScope coroutineScope, String scrollUpLabel, String scrollDownLabel) {
        return CollectionsKt.listOf((Object[]) new CustomAccessibilityAction[]{new CustomAccessibilityAction(scrollUpLabel, new Function0<Boolean>() { // from class: androidx.compose.material3.DatePickerKt$customScrollActions$scrollUpAction$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Boolean invoke() {
                boolean z;
                if (state.getCanScrollBackward()) {
                    BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new AnonymousClass1(state, null), 3, null);
                    z = true;
                } else {
                    z = false;
                }
                return Boolean.valueOf(z);
            }

            /* JADX INFO: renamed from: androidx.compose.material3.DatePickerKt$customScrollActions$scrollUpAction$1$1, reason: invalid class name */
            /* JADX INFO: compiled from: DatePicker.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
            @DebugMetadata(c = "androidx.compose.material3.DatePickerKt$customScrollActions$scrollUpAction$1$1", f = "DatePicker.kt", i = {}, l = {2222}, m = "invokeSuspend", n = {}, s = {})
            static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                final /* synthetic */ LazyGridState $state;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass1(LazyGridState lazyGridState, Continuation<? super AnonymousClass1> continuation) {
                    super(2, continuation);
                    this.$state = lazyGridState;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    return new AnonymousClass1(this.$state, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                    return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object $result) {
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    switch (this.label) {
                        case 0:
                            ResultKt.throwOnFailure($result);
                            this.label = 1;
                            if (LazyGridState.scrollToItem$default(this.$state, this.$state.getFirstVisibleItemIndex() - 3, 0, this, 2, null) == coroutine_suspended) {
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
        }), new CustomAccessibilityAction(scrollDownLabel, new Function0<Boolean>() { // from class: androidx.compose.material3.DatePickerKt$customScrollActions$scrollDownAction$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Boolean invoke() {
                boolean z;
                if (state.getCanScrollForward()) {
                    BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new AnonymousClass1(state, null), 3, null);
                    z = true;
                } else {
                    z = false;
                }
                return Boolean.valueOf(z);
            }

            /* JADX INFO: renamed from: androidx.compose.material3.DatePickerKt$customScrollActions$scrollDownAction$1$1, reason: invalid class name */
            /* JADX INFO: compiled from: DatePicker.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
            @DebugMetadata(c = "androidx.compose.material3.DatePickerKt$customScrollActions$scrollDownAction$1$1", f = "DatePicker.kt", i = {}, l = {2230}, m = "invokeSuspend", n = {}, s = {})
            static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                final /* synthetic */ LazyGridState $state;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass1(LazyGridState lazyGridState, Continuation<? super AnonymousClass1> continuation) {
                    super(2, continuation);
                    this.$state = lazyGridState;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    return new AnonymousClass1(this.$state, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                    return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object $result) {
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    switch (this.label) {
                        case 0:
                            ResultKt.throwOnFailure($result);
                            this.label = 1;
                            if (LazyGridState.scrollToItem$default(this.$state, this.$state.getFirstVisibleItemIndex() + 3, 0, this, 2, null) == coroutine_suspended) {
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
        })});
    }

    public static final float getRecommendedSizeForAccessibility() {
        return RecommendedSizeForAccessibility;
    }

    public static final float getMonthYearHeight() {
        return MonthYearHeight;
    }

    public static final float getDatePickerHorizontalPadding() {
        return DatePickerHorizontalPadding;
    }

    public static final PaddingValues getDatePickerModeTogglePadding() {
        return DatePickerModeTogglePadding;
    }
}
