package androidx.compose.material3;

import androidx.compose.animation.SingleValueAnimationKt;
import androidx.compose.animation.core.AnimationScope;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.AnimationStateKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.foundation.gestures.DraggableKt;
import androidx.compose.foundation.gestures.DraggableState;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsPaddingKt;
import androidx.compose.material3.internal.ProvideContentColorTextStyleKt;
import androidx.compose.material3.tokens.BottomAppBarTokens;
import androidx.compose.material3.tokens.TopAppBarLargeTokens;
import androidx.compose.material3.tokens.TopAppBarMediumTokens;
import androidx.compose.material3.tokens.TopAppBarSmallTokens;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.CompositingStrategy;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.GraphicsLayerScopeKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.layout.AlignmentLineKt;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.LayoutModifierKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.Velocity;
import androidx.compose.ui.unit.VelocityKt;
import androidx.media3.common.C;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.extractor.ts.TsExtractor;
import androidx.profileinstaller.ProfileVerifier;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: AppBar.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000¶\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a\u0083\u0001\u0010\u0010\u001a\u00020\u00112\u001c\u0010\u0012\u001a\u0018\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00110\u0013¢\u0006\u0002\b\u0015¢\u0006\u0002\b\u00162\b\b\u0002\u0010\u0017\u001a\u00020\u00182\u0015\b\u0002\u0010\u0019\u001a\u000f\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u001a¢\u0006\u0002\b\u00152\b\b\u0002\u0010\u001b\u001a\u00020\u001c2\b\b\u0002\u0010\u001d\u001a\u00020\u001c2\b\b\u0002\u0010\u001e\u001a\u00020\u00012\b\b\u0002\u0010\u001f\u001a\u00020 2\b\b\u0002\u0010!\u001a\u00020\"H\u0007ø\u0001\u0000¢\u0006\u0004\b#\u0010$\u001a\u008f\u0001\u0010\u0010\u001a\u00020\u00112\u001c\u0010\u0012\u001a\u0018\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00110\u0013¢\u0006\u0002\b\u0015¢\u0006\u0002\b\u00162\b\b\u0002\u0010\u0017\u001a\u00020\u00182\u0015\b\u0002\u0010\u0019\u001a\u000f\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u001a¢\u0006\u0002\b\u00152\b\b\u0002\u0010\u001b\u001a\u00020\u001c2\b\b\u0002\u0010\u001d\u001a\u00020\u001c2\b\b\u0002\u0010\u001e\u001a\u00020\u00012\b\b\u0002\u0010\u001f\u001a\u00020 2\b\b\u0002\u0010!\u001a\u00020\"2\n\b\u0002\u0010%\u001a\u0004\u0018\u00010&H\u0007ø\u0001\u0000¢\u0006\u0004\b'\u0010(\u001al\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0017\u001a\u00020\u00182\b\b\u0002\u0010\u001b\u001a\u00020\u001c2\b\b\u0002\u0010\u001d\u001a\u00020\u001c2\b\b\u0002\u0010\u001e\u001a\u00020\u00012\b\b\u0002\u0010\u001f\u001a\u00020 2\b\b\u0002\u0010!\u001a\u00020\"2\u001c\u0010)\u001a\u0018\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00110\u0013¢\u0006\u0002\b\u0015¢\u0006\u0002\b\u0016H\u0007ø\u0001\u0000¢\u0006\u0004\b*\u0010+\u001ax\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0017\u001a\u00020\u00182\b\b\u0002\u0010\u001b\u001a\u00020\u001c2\b\b\u0002\u0010\u001d\u001a\u00020\u001c2\b\b\u0002\u0010\u001e\u001a\u00020\u00012\b\b\u0002\u0010\u001f\u001a\u00020 2\b\b\u0002\u0010!\u001a\u00020\"2\n\b\u0002\u0010%\u001a\u0004\u0018\u00010&2\u001c\u0010)\u001a\u0018\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00110\u0013¢\u0006\u0002\b\u0015¢\u0006\u0002\b\u0016H\u0007ø\u0001\u0000¢\u0006\u0004\b,\u0010-\u001a \u0010.\u001a\u00020/2\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u0002012\u0006\u00103\u001a\u000201H\u0007\u001a\u007f\u00104\u001a\u00020\u00112\u0011\u00105\u001a\r\u0012\u0004\u0012\u00020\u00110\u001a¢\u0006\u0002\b\u00152\b\b\u0002\u0010\u0017\u001a\u00020\u00182\u0013\b\u0002\u00106\u001a\r\u0012\u0004\u0012\u00020\u00110\u001a¢\u0006\u0002\b\u00152\u001e\b\u0002\u0010\u0012\u001a\u0018\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00110\u0013¢\u0006\u0002\b\u0015¢\u0006\u0002\b\u00162\b\b\u0002\u0010!\u001a\u00020\"2\b\b\u0002\u00107\u001a\u0002082\n\b\u0002\u0010%\u001a\u0004\u0018\u000109H\u0007¢\u0006\u0002\u0010:\u001a\u008e\u0001\u00104\u001a\u00020\u00112\u0011\u00105\u001a\r\u0012\u0004\u0012\u00020\u00110\u001a¢\u0006\u0002\b\u00152\b\b\u0002\u0010\u0017\u001a\u00020\u00182\u0013\b\u0002\u00106\u001a\r\u0012\u0004\u0012\u00020\u00110\u001a¢\u0006\u0002\b\u00152\u001e\b\u0002\u0010\u0012\u001a\u0018\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00110\u0013¢\u0006\u0002\b\u0015¢\u0006\u0002\b\u00162\b\b\u0002\u0010;\u001a\u00020\u00012\b\b\u0002\u0010!\u001a\u00020\"2\b\b\u0002\u00107\u001a\u0002082\n\b\u0002\u0010%\u001a\u0004\u0018\u000109H\u0007ø\u0001\u0000¢\u0006\u0004\b<\u0010=\u001a\u007f\u0010>\u001a\u00020\u00112\u0011\u00105\u001a\r\u0012\u0004\u0012\u00020\u00110\u001a¢\u0006\u0002\b\u00152\b\b\u0002\u0010\u0017\u001a\u00020\u00182\u0013\b\u0002\u00106\u001a\r\u0012\u0004\u0012\u00020\u00110\u001a¢\u0006\u0002\b\u00152\u001e\b\u0002\u0010\u0012\u001a\u0018\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00110\u0013¢\u0006\u0002\b\u0015¢\u0006\u0002\b\u00162\b\b\u0002\u0010!\u001a\u00020\"2\b\b\u0002\u00107\u001a\u0002082\n\b\u0002\u0010%\u001a\u0004\u0018\u000109H\u0007¢\u0006\u0002\u0010:\u001a\u0098\u0001\u0010>\u001a\u00020\u00112\u0011\u00105\u001a\r\u0012\u0004\u0012\u00020\u00110\u001a¢\u0006\u0002\b\u00152\b\b\u0002\u0010\u0017\u001a\u00020\u00182\u0013\b\u0002\u00106\u001a\r\u0012\u0004\u0012\u00020\u00110\u001a¢\u0006\u0002\b\u00152\u001e\b\u0002\u0010\u0012\u001a\u0018\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00110\u0013¢\u0006\u0002\b\u0015¢\u0006\u0002\b\u00162\b\b\u0002\u0010?\u001a\u00020\u00012\b\b\u0002\u0010;\u001a\u00020\u00012\b\b\u0002\u0010!\u001a\u00020\"2\b\b\u0002\u00107\u001a\u0002082\n\b\u0002\u0010%\u001a\u0004\u0018\u000109H\u0007ø\u0001\u0000¢\u0006\u0004\b@\u0010A\u001a\u007f\u0010B\u001a\u00020\u00112\u0011\u00105\u001a\r\u0012\u0004\u0012\u00020\u00110\u001a¢\u0006\u0002\b\u00152\b\b\u0002\u0010\u0017\u001a\u00020\u00182\u0013\b\u0002\u00106\u001a\r\u0012\u0004\u0012\u00020\u00110\u001a¢\u0006\u0002\b\u00152\u001e\b\u0002\u0010\u0012\u001a\u0018\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00110\u0013¢\u0006\u0002\b\u0015¢\u0006\u0002\b\u00162\b\b\u0002\u0010!\u001a\u00020\"2\b\b\u0002\u00107\u001a\u0002082\n\b\u0002\u0010%\u001a\u0004\u0018\u000109H\u0007¢\u0006\u0002\u0010:\u001a\u0098\u0001\u0010B\u001a\u00020\u00112\u0011\u00105\u001a\r\u0012\u0004\u0012\u00020\u00110\u001a¢\u0006\u0002\b\u00152\b\b\u0002\u0010\u0017\u001a\u00020\u00182\u0013\b\u0002\u00106\u001a\r\u0012\u0004\u0012\u00020\u00110\u001a¢\u0006\u0002\b\u00152\u001e\b\u0002\u0010\u0012\u001a\u0018\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00110\u0013¢\u0006\u0002\b\u0015¢\u0006\u0002\b\u00162\b\b\u0002\u0010?\u001a\u00020\u00012\b\b\u0002\u0010;\u001a\u00020\u00012\b\b\u0002\u0010!\u001a\u00020\"2\b\b\u0002\u00107\u001a\u0002082\n\b\u0002\u0010%\u001a\u0004\u0018\u000109H\u0007ø\u0001\u0000¢\u0006\u0004\bC\u0010A\u001a\u0092\u0001\u0010D\u001a\u00020\u00112\b\b\u0002\u0010\u0017\u001a\u00020\u00182\u0011\u00105\u001a\r\u0012\u0004\u0012\u00020\u00110\u001a¢\u0006\u0002\b\u00152\u0006\u0010E\u001a\u00020F2\u0006\u0010G\u001a\u00020H2\u0011\u00106\u001a\r\u0012\u0004\u0012\u00020\u00110\u001a¢\u0006\u0002\b\u00152\u001c\u0010\u0012\u001a\u0018\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00110\u0013¢\u0006\u0002\b\u0015¢\u0006\u0002\b\u00162\u0006\u0010;\u001a\u00020\u00012\u0006\u0010!\u001a\u00020\"2\u0006\u00107\u001a\u0002082\b\u0010%\u001a\u0004\u0018\u000109H\u0003ø\u0001\u0000¢\u0006\u0004\bI\u0010J\u001a\u007f\u0010K\u001a\u00020\u00112\u0011\u00105\u001a\r\u0012\u0004\u0012\u00020\u00110\u001a¢\u0006\u0002\b\u00152\b\b\u0002\u0010\u0017\u001a\u00020\u00182\u0013\b\u0002\u00106\u001a\r\u0012\u0004\u0012\u00020\u00110\u001a¢\u0006\u0002\b\u00152\u001e\b\u0002\u0010\u0012\u001a\u0018\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00110\u0013¢\u0006\u0002\b\u0015¢\u0006\u0002\b\u00162\b\b\u0002\u0010!\u001a\u00020\"2\b\b\u0002\u00107\u001a\u0002082\n\b\u0002\u0010%\u001a\u0004\u0018\u000109H\u0007¢\u0006\u0002\u0010:\u001a\u008e\u0001\u0010K\u001a\u00020\u00112\u0011\u00105\u001a\r\u0012\u0004\u0012\u00020\u00110\u001a¢\u0006\u0002\b\u00152\b\b\u0002\u0010\u0017\u001a\u00020\u00182\u0013\b\u0002\u00106\u001a\r\u0012\u0004\u0012\u00020\u00110\u001a¢\u0006\u0002\b\u00152\u001e\b\u0002\u0010\u0012\u001a\u0018\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00110\u0013¢\u0006\u0002\b\u0015¢\u0006\u0002\b\u00162\b\b\u0002\u0010;\u001a\u00020\u00012\b\b\u0002\u0010!\u001a\u00020\"2\b\b\u0002\u00107\u001a\u0002082\n\b\u0002\u0010%\u001a\u0004\u0018\u000109H\u0007ø\u0001\u0000¢\u0006\u0004\bL\u0010=\u001a£\u0001\u0010M\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010N\u001a\u00020O2\u0006\u0010P\u001a\u00020\u001c2\u0006\u0010Q\u001a\u00020\u001c2\u0006\u0010R\u001a\u00020\u001c2\u0011\u00105\u001a\r\u0012\u0004\u0012\u00020\u00110\u001a¢\u0006\u0002\b\u00152\u0006\u0010E\u001a\u00020F2\u0006\u0010S\u001a\u0002012\u0006\u0010T\u001a\u00020U2\u0006\u0010V\u001a\u00020W2\u0006\u0010X\u001a\u00020Y2\u0006\u0010Z\u001a\u00020H2\u0011\u00106\u001a\r\u0012\u0004\u0012\u00020\u00110\u001a¢\u0006\u0002\b\u00152\u0011\u0010\u0012\u001a\r\u0012\u0004\u0012\u00020\u00110\u001a¢\u0006\u0002\b\u0015H\u0003ø\u0001\u0000¢\u0006\u0004\b[\u0010\\\u001aµ\u0001\u0010]\u001a\u00020\u00112\b\b\u0002\u0010\u0017\u001a\u00020\u00182\u0011\u00105\u001a\r\u0012\u0004\u0012\u00020\u00110\u001a¢\u0006\u0002\b\u00152\u0006\u0010E\u001a\u00020F2\u0006\u0010X\u001a\u00020\u00012\u0011\u0010^\u001a\r\u0012\u0004\u0012\u00020\u00110\u001a¢\u0006\u0002\b\u00152\u0006\u0010_\u001a\u00020F2\u0011\u00106\u001a\r\u0012\u0004\u0012\u00020\u00110\u001a¢\u0006\u0002\b\u00152\u001c\u0010\u0012\u001a\u0018\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00110\u0013¢\u0006\u0002\b\u0015¢\u0006\u0002\b\u00162\u0006\u0010?\u001a\u00020\u00012\u0006\u0010;\u001a\u00020\u00012\u0006\u0010!\u001a\u00020\"2\u0006\u00107\u001a\u0002082\b\u0010%\u001a\u0004\u0018\u000109H\u0003ø\u0001\u0000¢\u0006\u0004\b`\u0010a\u001a+\u0010b\u001a\u00020/2\b\b\u0002\u00100\u001a\u0002012\b\b\u0002\u00102\u001a\u0002012\b\b\u0002\u00103\u001a\u000201H\u0007¢\u0006\u0002\u0010c\u001a+\u0010d\u001a\u00020e2\b\b\u0002\u00100\u001a\u0002012\b\b\u0002\u00102\u001a\u0002012\b\b\u0002\u00103\u001a\u000201H\u0007¢\u0006\u0002\u0010f\u001a>\u0010g\u001a\u00020h2\u0006\u0010i\u001a\u00020e2\u0006\u0010j\u001a\u0002012\u000e\u0010k\u001a\n\u0012\u0004\u0012\u000201\u0018\u00010l2\u000e\u0010m\u001a\n\u0012\u0004\u0012\u000201\u0018\u00010nH\u0082@¢\u0006\u0002\u0010o\u001a>\u0010p\u001a\u00020h2\u0006\u0010i\u001a\u00020/2\u0006\u0010j\u001a\u0002012\u000e\u0010k\u001a\n\u0012\u0004\u0012\u000201\u0018\u00010l2\u000e\u0010m\u001a\n\u0012\u0004\u0012\u000201\u0018\u00010nH\u0082@¢\u0006\u0002\u0010q\"\u0010\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u0016\u0010\u0003\u001a\u00020\u0001X\u0080\u0004¢\u0006\n\n\u0002\u0010\u0002\u001a\u0004\b\u0004\u0010\u0005\"\u0010\u0010\u0006\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u0007\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\b\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\t\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\n\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u000b\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u0014\u0010\f\u001a\u00020\rX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u0006r²\u0006\n\u0010s\u001a\u000201X\u008a\u0084\u0002²\u0006\n\u0010t\u001a\u00020\u001cX\u008a\u0084\u0002"}, d2 = {"BottomAppBarHorizontalPadding", "Landroidx/compose/ui/unit/Dp;", "F", "BottomAppBarVerticalPadding", "getBottomAppBarVerticalPadding", "()F", "FABHorizontalPadding", "FABVerticalPadding", "LargeTitleBottomPadding", "MediumTitleBottomPadding", "TopAppBarHorizontalPadding", "TopAppBarTitleInset", "TopTitleAlphaEasing", "Landroidx/compose/animation/core/CubicBezierEasing;", "getTopTitleAlphaEasing", "()Landroidx/compose/animation/core/CubicBezierEasing;", "BottomAppBar", "", "actions", "Lkotlin/Function1;", "Landroidx/compose/foundation/layout/RowScope;", "Landroidx/compose/runtime/Composable;", "Lkotlin/ExtensionFunctionType;", "modifier", "Landroidx/compose/ui/Modifier;", "floatingActionButton", "Lkotlin/Function0;", "containerColor", "Landroidx/compose/ui/graphics/Color;", "contentColor", "tonalElevation", "contentPadding", "Landroidx/compose/foundation/layout/PaddingValues;", "windowInsets", "Landroidx/compose/foundation/layout/WindowInsets;", "BottomAppBar-Snr_uVM", "(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/Composer;II)V", "scrollBehavior", "Landroidx/compose/material3/BottomAppBarScrollBehavior;", "BottomAppBar-qhFBPw4", "(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/BottomAppBarScrollBehavior;Landroidx/compose/runtime/Composer;II)V", "content", "BottomAppBar-1oL4kX8", "(Landroidx/compose/ui/Modifier;JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "BottomAppBar-e-3WI5M", "(Landroidx/compose/ui/Modifier;JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/BottomAppBarScrollBehavior;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "BottomAppBarState", "Landroidx/compose/material3/BottomAppBarState;", "initialHeightOffsetLimit", "", "initialHeightOffset", "initialContentOffset", "CenterAlignedTopAppBar", "title", "navigationIcon", "colors", "Landroidx/compose/material3/TopAppBarColors;", "Landroidx/compose/material3/TopAppBarScrollBehavior;", "(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/TopAppBarScrollBehavior;Landroidx/compose/runtime/Composer;II)V", "expandedHeight", "CenterAlignedTopAppBar-GHTll3U", "(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/TopAppBarScrollBehavior;Landroidx/compose/runtime/Composer;II)V", "LargeTopAppBar", "collapsedHeight", "LargeTopAppBar-oKE7A98", "(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FFLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/TopAppBarScrollBehavior;Landroidx/compose/runtime/Composer;II)V", "MediumTopAppBar", "MediumTopAppBar-oKE7A98", "SingleRowTopAppBar", "titleTextStyle", "Landroidx/compose/ui/text/TextStyle;", "centeredTitle", "", "SingleRowTopAppBar-cJHQLPU", "(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/TopAppBarScrollBehavior;Landroidx/compose/runtime/Composer;II)V", "TopAppBar", "TopAppBar-GHTll3U", "TopAppBarLayout", "scrolledOffset", "Landroidx/compose/material3/ScrolledOffset;", "navigationIconContentColor", "titleContentColor", "actionIconContentColor", "titleAlpha", "titleVerticalArrangement", "Landroidx/compose/foundation/layout/Arrangement$Vertical;", "titleHorizontalArrangement", "Landroidx/compose/foundation/layout/Arrangement$Horizontal;", "titleBottomPadding", "", "hideTitleSemantics", "TopAppBarLayout-kXwM9vE", "(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/ScrolledOffset;JJJLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;FLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;IZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V", "TwoRowsTopAppBar", "smallTitle", "smallTitleTextStyle", "TwoRowsTopAppBar-nS6u9G4", "(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;FLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FFLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/TopAppBarScrollBehavior;Landroidx/compose/runtime/Composer;III)V", "rememberBottomAppBarState", "(FFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/BottomAppBarState;", "rememberTopAppBarState", "Landroidx/compose/material3/TopAppBarState;", "(FFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/TopAppBarState;", "settleAppBar", "Landroidx/compose/ui/unit/Velocity;", "state", "velocity", "flingAnimationSpec", "Landroidx/compose/animation/core/DecayAnimationSpec;", "snapAnimationSpec", "Landroidx/compose/animation/core/AnimationSpec;", "(Landroidx/compose/material3/TopAppBarState;FLandroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "settleAppBarBottom", "(Landroidx/compose/material3/BottomAppBarState;FLandroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "material3_release", "colorTransitionFraction", "appBarContainerColor"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class AppBarKt {
    private static final float BottomAppBarHorizontalPadding;
    private static final float BottomAppBarVerticalPadding;
    private static final float FABHorizontalPadding;
    private static final float FABVerticalPadding;
    private static final float LargeTitleBottomPadding;
    private static final float MediumTitleBottomPadding;
    private static final float TopAppBarHorizontalPadding;
    private static final float TopAppBarTitleInset;
    private static final CubicBezierEasing TopTitleAlphaEasing;

    /* JADX INFO: renamed from: androidx.compose.material3.AppBarKt$settleAppBar$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AppBar.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.material3.AppBarKt", f = "AppBar.kt", i = {0, 0, 0, 1}, l = {2501, 2515}, m = "settleAppBar", n = {"state", "snapAnimationSpec", "remainingVelocity", "remainingVelocity"}, s = {"L$0", "L$1", "L$2", "L$0"})
    static final class C04041 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C04041(Continuation<? super C04041> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AppBarKt.settleAppBar(null, 0.0f, null, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.material3.AppBarKt$settleAppBarBottom$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AppBar.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.material3.AppBarKt", f = "AppBar.kt", i = {0, 0, 0, 1}, l = {1803, 1817}, m = "settleAppBarBottom", n = {"state", "snapAnimationSpec", "remainingVelocity", "remainingVelocity"}, s = {"L$0", "L$1", "L$2", "L$0"})
    static final class C04061 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C04061(Continuation<? super C04061> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AppBarKt.settleAppBarBottom(null, 0.0f, null, null, this);
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Deprecated in favor of TopAppBar with expandedHeight parameter")
    public static final /* synthetic */ void TopAppBar(final Function2 title, Modifier modifier, Function2 navigationIcon, Function3 actions, WindowInsets windowInsets, TopAppBarColors colors, TopAppBarScrollBehavior scrollBehavior, Composer $composer, final int $changed, final int i) {
        Function2 function2;
        Modifier modifier2;
        Function2 navigationIcon2;
        Function3 actions2;
        WindowInsets windowInsets2;
        TopAppBarColors colors2;
        TopAppBarScrollBehavior topAppBarScrollBehavior;
        TopAppBarColors colors3;
        TopAppBarScrollBehavior scrollBehavior2;
        Function3 actions3;
        WindowInsets windowInsets3;
        Modifier modifier3;
        Function2 navigationIcon3;
        int i2;
        Composer $composer2;
        final Modifier modifier4;
        final Function2 navigationIcon4;
        final Function3 actions4;
        final WindowInsets windowInsets4;
        final TopAppBarColors colors4;
        final TopAppBarScrollBehavior scrollBehavior3;
        Composer $composer3 = $composer.startRestartGroup(1906353009);
        ComposerKt.sourceInformation($composer3, "C(TopAppBar)P(5,2,3!1,6)142@6819L12,143@6881L17,146@6960L306:AppBar.kt#uh7d8r");
        int $dirty = $changed;
        if ((i & 1) != 0) {
            $dirty |= 6;
            function2 = title;
        } else if (($changed & 6) == 0) {
            function2 = title;
            $dirty |= $composer3.changedInstance(function2) ? 4 : 2;
        } else {
            function2 = title;
        }
        int i3 = i & 2;
        if (i3 != 0) {
            $dirty |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty |= $composer3.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        int i4 = i & 4;
        if (i4 != 0) {
            $dirty |= RendererCapabilities.DECODER_SUPPORT_MASK;
            navigationIcon2 = navigationIcon;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            navigationIcon2 = navigationIcon;
            $dirty |= $composer3.changedInstance(navigationIcon2) ? 256 : 128;
        } else {
            navigationIcon2 = navigationIcon;
        }
        int i5 = i & 8;
        if (i5 != 0) {
            $dirty |= 3072;
            actions2 = actions;
        } else if (($changed & 3072) == 0) {
            actions2 = actions;
            $dirty |= $composer3.changedInstance(actions2) ? 2048 : 1024;
        } else {
            actions2 = actions;
        }
        if (($changed & 24576) == 0) {
            if ((i & 16) == 0) {
                windowInsets2 = windowInsets;
                int i6 = $composer3.changed(windowInsets2) ? 16384 : 8192;
                $dirty |= i6;
            } else {
                windowInsets2 = windowInsets;
            }
            $dirty |= i6;
        } else {
            windowInsets2 = windowInsets;
        }
        if ((196608 & $changed) == 0) {
            if ((i & 32) == 0) {
                colors2 = colors;
                int i7 = $composer3.changed(colors2) ? 131072 : 65536;
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
            topAppBarScrollBehavior = scrollBehavior;
        } else if ((1572864 & $changed) == 0) {
            topAppBarScrollBehavior = scrollBehavior;
            $dirty |= $composer3.changed(topAppBarScrollBehavior) ? 1048576 : 524288;
        } else {
            topAppBarScrollBehavior = scrollBehavior;
        }
        if ((599187 & $dirty) == 599186 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            modifier4 = modifier2;
            actions4 = actions2;
            $composer2 = $composer3;
            navigationIcon4 = navigationIcon2;
            windowInsets4 = windowInsets2;
            colors4 = colors2;
            scrollBehavior3 = topAppBarScrollBehavior;
        } else {
            $composer3.startDefaults();
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                Modifier.Companion modifier5 = i3 != 0 ? Modifier.INSTANCE : modifier2;
                if (i4 != 0) {
                    navigationIcon2 = ComposableSingletons$AppBarKt.INSTANCE.m2223getLambda1$material3_release();
                }
                if (i5 != 0) {
                    actions2 = ComposableSingletons$AppBarKt.INSTANCE.m2233getLambda2$material3_release();
                }
                if ((i & 16) != 0) {
                    $dirty &= -57345;
                    windowInsets2 = TopAppBarDefaults.INSTANCE.getWindowInsets($composer3, 6);
                }
                if ((i & 32) != 0) {
                    $dirty &= -458753;
                    colors2 = TopAppBarDefaults.INSTANCE.topAppBarColors($composer3, 6);
                }
                if (i8 != 0) {
                    scrollBehavior2 = null;
                    windowInsets3 = windowInsets2;
                    colors3 = colors2;
                    navigationIcon3 = navigationIcon2;
                    actions3 = actions2;
                    modifier3 = modifier5;
                    i2 = 1906353009;
                } else {
                    colors3 = colors2;
                    scrollBehavior2 = topAppBarScrollBehavior;
                    actions3 = actions2;
                    windowInsets3 = windowInsets2;
                    modifier3 = modifier5;
                    navigationIcon3 = navigationIcon2;
                    i2 = 1906353009;
                }
            } else {
                $composer3.skipToGroupEnd();
                if ((i & 16) != 0) {
                    $dirty &= -57345;
                }
                if ((i & 32) != 0) {
                    $dirty &= -458753;
                    colors3 = colors2;
                    scrollBehavior2 = topAppBarScrollBehavior;
                    i2 = 1906353009;
                    actions3 = actions2;
                    windowInsets3 = windowInsets2;
                    modifier3 = modifier2;
                    navigationIcon3 = navigationIcon2;
                } else {
                    colors3 = colors2;
                    scrollBehavior2 = topAppBarScrollBehavior;
                    i2 = 1906353009;
                    actions3 = actions2;
                    windowInsets3 = windowInsets2;
                    modifier3 = modifier2;
                    navigationIcon3 = navigationIcon2;
                }
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(i2, $dirty, -1, "androidx.compose.material3.TopAppBar (AppBar.kt:146)");
            }
            $composer2 = $composer3;
            m2057TopAppBarGHTll3U(function2, modifier3, navigationIcon3, actions3, TopAppBarDefaults.INSTANCE.m3144getTopAppBarExpandedHeightD9Ej5fM(), windowInsets3, colors3, scrollBehavior2, $composer2, ($dirty & 14) | 24576 | ($dirty & 112) | ($dirty & 896) | ($dirty & 7168) | (($dirty << 3) & 458752) | (($dirty << 3) & 3670016) | (29360128 & ($dirty << 3)), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier4 = modifier3;
            navigationIcon4 = navigationIcon3;
            actions4 = actions3;
            windowInsets4 = windowInsets3;
            colors4 = colors3;
            scrollBehavior3 = scrollBehavior2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.AppBarKt.TopAppBar.1
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
                    AppBarKt.TopAppBar(title, modifier4, navigationIcon4, actions4, windowInsets4, colors4, scrollBehavior3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    /* JADX INFO: renamed from: TopAppBar-GHTll3U, reason: not valid java name */
    public static final void m2057TopAppBarGHTll3U(final Function2<? super Composer, ? super Integer, Unit> function2, Modifier modifier, Function2<? super Composer, ? super Integer, Unit> function22, Function3<? super RowScope, ? super Composer, ? super Integer, Unit> function3, float expandedHeight, WindowInsets windowInsets, TopAppBarColors colors, TopAppBarScrollBehavior scrollBehavior, Composer $composer, final int $changed, final int i) {
        Function2<? super Composer, ? super Integer, Unit> function23;
        Modifier modifier2;
        Function2<? super Composer, ? super Integer, Unit> function2M2234getLambda3$material3_release;
        Function3<? super RowScope, ? super Composer, ? super Integer, Unit> function3M2235getLambda4$material3_release;
        float expandedHeight2;
        WindowInsets windowInsets2;
        TopAppBarColors colors2;
        int i2;
        int $dirty;
        TopAppBarScrollBehavior scrollBehavior2;
        Modifier modifier3;
        Function3<? super RowScope, ? super Composer, ? super Integer, Unit> function32;
        float expandedHeight3;
        WindowInsets windowInsets3;
        TopAppBarColors colors3;
        int i3;
        Function2<? super Composer, ? super Integer, Unit> function24;
        Composer $composer2;
        final float expandedHeight4;
        final Modifier modifier4;
        final Function2<? super Composer, ? super Integer, Unit> function25;
        final WindowInsets windowInsets4;
        final TopAppBarColors colors4;
        final TopAppBarScrollBehavior scrollBehavior3;
        final Function3<? super RowScope, ? super Composer, ? super Integer, Unit> function33;
        Composer $composer3 = $composer.startRestartGroup(226148675);
        ComposerKt.sourceInformation($composer3, "C(TopAppBar)P(6,3,4!1,2:c#ui.unit.Dp,7)204@9890L12,205@9952L17,211@10162L5,208@10031L579:AppBar.kt#uh7d8r");
        int $dirty2 = $changed;
        if ((i & 1) != 0) {
            $dirty2 |= 6;
            function23 = function2;
        } else if (($changed & 6) == 0) {
            function23 = function2;
            $dirty2 |= $composer3.changedInstance(function23) ? 4 : 2;
        } else {
            function23 = function2;
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
        int i5 = i & 4;
        if (i5 != 0) {
            $dirty2 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            function2M2234getLambda3$material3_release = function22;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            function2M2234getLambda3$material3_release = function22;
            $dirty2 |= $composer3.changedInstance(function2M2234getLambda3$material3_release) ? 256 : 128;
        } else {
            function2M2234getLambda3$material3_release = function22;
        }
        int i6 = i & 8;
        if (i6 != 0) {
            $dirty2 |= 3072;
            function3M2235getLambda4$material3_release = function3;
        } else if (($changed & 3072) == 0) {
            function3M2235getLambda4$material3_release = function3;
            $dirty2 |= $composer3.changedInstance(function3M2235getLambda4$material3_release) ? 2048 : 1024;
        } else {
            function3M2235getLambda4$material3_release = function3;
        }
        int i7 = i & 16;
        if (i7 != 0) {
            $dirty2 |= 24576;
            expandedHeight2 = expandedHeight;
        } else if (($changed & 24576) == 0) {
            expandedHeight2 = expandedHeight;
            $dirty2 |= $composer3.changed(expandedHeight2) ? 16384 : 8192;
        } else {
            expandedHeight2 = expandedHeight;
        }
        if ((196608 & $changed) == 0) {
            if ((i & 32) == 0) {
                windowInsets2 = windowInsets;
                int i8 = $composer3.changed(windowInsets2) ? 131072 : 65536;
                $dirty2 |= i8;
            } else {
                windowInsets2 = windowInsets;
            }
            $dirty2 |= i8;
        } else {
            windowInsets2 = windowInsets;
        }
        if ((1572864 & $changed) == 0) {
            if ((i & 64) == 0) {
                colors2 = colors;
                int i9 = $composer3.changed(colors2) ? 1048576 : 524288;
                $dirty2 |= i9;
            } else {
                colors2 = colors;
            }
            $dirty2 |= i9;
        } else {
            colors2 = colors;
        }
        int i10 = i & 128;
        if (i10 != 0) {
            $dirty2 |= 12582912;
            i2 = i10;
        } else if (($changed & 12582912) == 0) {
            i2 = i10;
            $dirty2 |= $composer3.changed(scrollBehavior) ? 8388608 : 4194304;
        } else {
            i2 = i10;
        }
        int $dirty3 = $dirty2;
        if (($dirty2 & 4793491) == 4793490 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            $composer2 = $composer3;
            modifier4 = modifier2;
            function25 = function2M2234getLambda3$material3_release;
            function33 = function3M2235getLambda4$material3_release;
            expandedHeight4 = expandedHeight2;
            windowInsets4 = windowInsets2;
            colors4 = colors2;
            scrollBehavior3 = scrollBehavior;
        } else {
            $composer3.startDefaults();
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                Modifier.Companion modifier5 = i4 != 0 ? Modifier.INSTANCE : modifier2;
                if (i5 != 0) {
                    function2M2234getLambda3$material3_release = ComposableSingletons$AppBarKt.INSTANCE.m2234getLambda3$material3_release();
                }
                if (i6 != 0) {
                    function3M2235getLambda4$material3_release = ComposableSingletons$AppBarKt.INSTANCE.m2235getLambda4$material3_release();
                }
                if (i7 != 0) {
                    expandedHeight2 = TopAppBarDefaults.INSTANCE.m3144getTopAppBarExpandedHeightD9Ej5fM();
                }
                if ((i & 32) != 0) {
                    $dirty = $dirty3 & (-458753);
                    windowInsets2 = TopAppBarDefaults.INSTANCE.getWindowInsets($composer3, 6);
                } else {
                    $dirty = $dirty3;
                }
                if ((i & 64) != 0) {
                    $dirty &= -3670017;
                    colors2 = TopAppBarDefaults.INSTANCE.topAppBarColors($composer3, 6);
                }
                if (i2 != 0) {
                    modifier3 = modifier5;
                    scrollBehavior2 = null;
                    function32 = function3M2235getLambda4$material3_release;
                    expandedHeight3 = expandedHeight2;
                    windowInsets3 = windowInsets2;
                    colors3 = colors2;
                    i3 = 226148675;
                    function24 = function2M2234getLambda3$material3_release;
                } else {
                    scrollBehavior2 = scrollBehavior;
                    modifier3 = modifier5;
                    function32 = function3M2235getLambda4$material3_release;
                    expandedHeight3 = expandedHeight2;
                    windowInsets3 = windowInsets2;
                    colors3 = colors2;
                    i3 = 226148675;
                    function24 = function2M2234getLambda3$material3_release;
                }
            } else {
                $composer3.skipToGroupEnd();
                int $dirty4 = (i & 32) != 0 ? $dirty3 & (-458753) : $dirty3;
                if ((i & 64) != 0) {
                    $dirty4 &= -3670017;
                }
                scrollBehavior2 = scrollBehavior;
                modifier3 = modifier2;
                function32 = function3M2235getLambda4$material3_release;
                windowInsets3 = windowInsets2;
                colors3 = colors2;
                i3 = 226148675;
                $dirty = $dirty4;
                function24 = function2M2234getLambda3$material3_release;
                expandedHeight3 = expandedHeight2;
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(i3, $dirty, -1, "androidx.compose.material3.TopAppBar (AppBar.kt:208)");
            }
            $composer2 = $composer3;
            m2056SingleRowTopAppBarcJHQLPU(modifier3, function23, TypographyKt.getValue(TopAppBarSmallTokens.INSTANCE.getHeadlineFont(), $composer3, 6), false, function24, function32, (Dp.m7510equalsimpl0(expandedHeight3, Dp.INSTANCE.m7525getUnspecifiedD9Ej5fM()) || Dp.m7510equalsimpl0(expandedHeight3, Dp.INSTANCE.m7524getInfinityD9Ej5fM())) ? TopAppBarDefaults.INSTANCE.m3144getTopAppBarExpandedHeightD9Ej5fM() : expandedHeight3, windowInsets3, colors3, scrollBehavior2, $composer2, (($dirty >> 3) & 14) | 3072 | (($dirty << 3) & 112) | (($dirty << 6) & 57344) | (($dirty << 6) & 458752) | (($dirty << 6) & 29360128) | (($dirty << 6) & 234881024) | (($dirty << 6) & C.ENCODING_PCM_DOUBLE), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            expandedHeight4 = expandedHeight3;
            modifier4 = modifier3;
            function25 = function24;
            windowInsets4 = windowInsets3;
            colors4 = colors3;
            scrollBehavior3 = scrollBehavior2;
            function33 = function32;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.AppBarKt.TopAppBar.2
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

                public final void invoke(Composer composer, int i11) {
                    AppBarKt.m2057TopAppBarGHTll3U(function2, modifier4, function25, function33, expandedHeight4, windowInsets4, colors4, scrollBehavior3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Deprecated in favor of CenterAlignedTopAppBar with expandedHeight parameter")
    public static final /* synthetic */ void CenterAlignedTopAppBar(final Function2 title, Modifier modifier, Function2 navigationIcon, Function3 actions, WindowInsets windowInsets, TopAppBarColors colors, TopAppBarScrollBehavior scrollBehavior, Composer $composer, final int $changed, final int i) {
        Function2 function2;
        Modifier modifier2;
        Function2 navigationIcon2;
        Function3 actions2;
        WindowInsets windowInsets2;
        TopAppBarColors colors2;
        TopAppBarScrollBehavior topAppBarScrollBehavior;
        TopAppBarColors colors3;
        TopAppBarScrollBehavior scrollBehavior2;
        Function3 actions3;
        WindowInsets windowInsets3;
        Modifier modifier3;
        Function2 navigationIcon3;
        int i2;
        Composer $composer2;
        final Modifier modifier4;
        final Function2 navigationIcon4;
        final Function3 actions4;
        final WindowInsets windowInsets4;
        final TopAppBarColors colors4;
        final TopAppBarScrollBehavior scrollBehavior3;
        Composer $composer3 = $composer.startRestartGroup(-2139286460);
        ComposerKt.sourceInformation($composer3, "C(CenterAlignedTopAppBar)P(5,2,3!1,6)269@12968L12,270@13030L30,273@13122L319:AppBar.kt#uh7d8r");
        int $dirty = $changed;
        if ((i & 1) != 0) {
            $dirty |= 6;
            function2 = title;
        } else if (($changed & 6) == 0) {
            function2 = title;
            $dirty |= $composer3.changedInstance(function2) ? 4 : 2;
        } else {
            function2 = title;
        }
        int i3 = i & 2;
        if (i3 != 0) {
            $dirty |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty |= $composer3.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        int i4 = i & 4;
        if (i4 != 0) {
            $dirty |= RendererCapabilities.DECODER_SUPPORT_MASK;
            navigationIcon2 = navigationIcon;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            navigationIcon2 = navigationIcon;
            $dirty |= $composer3.changedInstance(navigationIcon2) ? 256 : 128;
        } else {
            navigationIcon2 = navigationIcon;
        }
        int i5 = i & 8;
        if (i5 != 0) {
            $dirty |= 3072;
            actions2 = actions;
        } else if (($changed & 3072) == 0) {
            actions2 = actions;
            $dirty |= $composer3.changedInstance(actions2) ? 2048 : 1024;
        } else {
            actions2 = actions;
        }
        if (($changed & 24576) == 0) {
            if ((i & 16) == 0) {
                windowInsets2 = windowInsets;
                int i6 = $composer3.changed(windowInsets2) ? 16384 : 8192;
                $dirty |= i6;
            } else {
                windowInsets2 = windowInsets;
            }
            $dirty |= i6;
        } else {
            windowInsets2 = windowInsets;
        }
        if ((196608 & $changed) == 0) {
            if ((i & 32) == 0) {
                colors2 = colors;
                int i7 = $composer3.changed(colors2) ? 131072 : 65536;
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
            topAppBarScrollBehavior = scrollBehavior;
        } else if ((1572864 & $changed) == 0) {
            topAppBarScrollBehavior = scrollBehavior;
            $dirty |= $composer3.changed(topAppBarScrollBehavior) ? 1048576 : 524288;
        } else {
            topAppBarScrollBehavior = scrollBehavior;
        }
        if ((599187 & $dirty) == 599186 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            modifier4 = modifier2;
            actions4 = actions2;
            $composer2 = $composer3;
            navigationIcon4 = navigationIcon2;
            windowInsets4 = windowInsets2;
            colors4 = colors2;
            scrollBehavior3 = topAppBarScrollBehavior;
        } else {
            $composer3.startDefaults();
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                Modifier.Companion modifier5 = i3 != 0 ? Modifier.INSTANCE : modifier2;
                if (i4 != 0) {
                    navigationIcon2 = ComposableSingletons$AppBarKt.INSTANCE.m2236getLambda5$material3_release();
                }
                if (i5 != 0) {
                    actions2 = ComposableSingletons$AppBarKt.INSTANCE.m2237getLambda6$material3_release();
                }
                if ((i & 16) != 0) {
                    $dirty &= -57345;
                    windowInsets2 = TopAppBarDefaults.INSTANCE.getWindowInsets($composer3, 6);
                }
                if ((i & 32) != 0) {
                    $dirty &= -458753;
                    colors2 = TopAppBarDefaults.INSTANCE.centerAlignedTopAppBarColors($composer3, 6);
                }
                if (i8 != 0) {
                    scrollBehavior2 = null;
                    windowInsets3 = windowInsets2;
                    colors3 = colors2;
                    navigationIcon3 = navigationIcon2;
                    actions3 = actions2;
                    modifier3 = modifier5;
                    i2 = -2139286460;
                } else {
                    colors3 = colors2;
                    scrollBehavior2 = topAppBarScrollBehavior;
                    actions3 = actions2;
                    windowInsets3 = windowInsets2;
                    modifier3 = modifier5;
                    navigationIcon3 = navigationIcon2;
                    i2 = -2139286460;
                }
            } else {
                $composer3.skipToGroupEnd();
                if ((i & 16) != 0) {
                    $dirty &= -57345;
                }
                if ((i & 32) != 0) {
                    $dirty &= -458753;
                    colors3 = colors2;
                    scrollBehavior2 = topAppBarScrollBehavior;
                    i2 = -2139286460;
                    actions3 = actions2;
                    windowInsets3 = windowInsets2;
                    modifier3 = modifier2;
                    navigationIcon3 = navigationIcon2;
                } else {
                    colors3 = colors2;
                    scrollBehavior2 = topAppBarScrollBehavior;
                    i2 = -2139286460;
                    actions3 = actions2;
                    windowInsets3 = windowInsets2;
                    modifier3 = modifier2;
                    navigationIcon3 = navigationIcon2;
                }
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(i2, $dirty, -1, "androidx.compose.material3.CenterAlignedTopAppBar (AppBar.kt:273)");
            }
            $composer2 = $composer3;
            m2053CenterAlignedTopAppBarGHTll3U(function2, modifier3, navigationIcon3, actions3, TopAppBarDefaults.INSTANCE.m3144getTopAppBarExpandedHeightD9Ej5fM(), windowInsets3, colors3, scrollBehavior2, $composer2, ($dirty & 14) | 24576 | ($dirty & 112) | ($dirty & 896) | ($dirty & 7168) | (($dirty << 3) & 458752) | (($dirty << 3) & 3670016) | (29360128 & ($dirty << 3)), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier4 = modifier3;
            navigationIcon4 = navigationIcon3;
            actions4 = actions3;
            windowInsets4 = windowInsets3;
            colors4 = colors3;
            scrollBehavior3 = scrollBehavior2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.AppBarKt.CenterAlignedTopAppBar.1
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
                    AppBarKt.CenterAlignedTopAppBar(title, modifier4, navigationIcon4, actions4, windowInsets4, colors4, scrollBehavior3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    /* JADX INFO: renamed from: CenterAlignedTopAppBar-GHTll3U, reason: not valid java name */
    public static final void m2053CenterAlignedTopAppBarGHTll3U(final Function2<? super Composer, ? super Integer, Unit> function2, Modifier modifier, Function2<? super Composer, ? super Integer, Unit> function22, Function3<? super RowScope, ? super Composer, ? super Integer, Unit> function3, float expandedHeight, WindowInsets windowInsets, TopAppBarColors colors, TopAppBarScrollBehavior scrollBehavior, Composer $composer, final int $changed, final int i) {
        Function2<? super Composer, ? super Integer, Unit> function23;
        Modifier modifier2;
        Function2<? super Composer, ? super Integer, Unit> function2M2238getLambda7$material3_release;
        Function3<? super RowScope, ? super Composer, ? super Integer, Unit> function3M2239getLambda8$material3_release;
        float expandedHeight2;
        WindowInsets windowInsets2;
        TopAppBarColors colors2;
        int i2;
        int $dirty;
        TopAppBarScrollBehavior scrollBehavior2;
        Modifier modifier3;
        Function3<? super RowScope, ? super Composer, ? super Integer, Unit> function32;
        float expandedHeight3;
        WindowInsets windowInsets3;
        TopAppBarColors colors3;
        int i3;
        Function2<? super Composer, ? super Integer, Unit> function24;
        Composer $composer2;
        final float expandedHeight4;
        final Modifier modifier4;
        final Function2<? super Composer, ? super Integer, Unit> function25;
        final WindowInsets windowInsets4;
        final TopAppBarColors colors4;
        final TopAppBarScrollBehavior scrollBehavior3;
        final Function3<? super RowScope, ? super Composer, ? super Integer, Unit> function33;
        Composer $composer3 = $composer.startRestartGroup(1952988048);
        ComposerKt.sourceInformation($composer3, "C(CenterAlignedTopAppBar)P(6,3,4!1,2:c#ui.unit.Dp,7)328@16080L12,329@16142L30,335@16365L5,332@16234L578:AppBar.kt#uh7d8r");
        int $dirty2 = $changed;
        if ((i & 1) != 0) {
            $dirty2 |= 6;
            function23 = function2;
        } else if (($changed & 6) == 0) {
            function23 = function2;
            $dirty2 |= $composer3.changedInstance(function23) ? 4 : 2;
        } else {
            function23 = function2;
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
        int i5 = i & 4;
        if (i5 != 0) {
            $dirty2 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            function2M2238getLambda7$material3_release = function22;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            function2M2238getLambda7$material3_release = function22;
            $dirty2 |= $composer3.changedInstance(function2M2238getLambda7$material3_release) ? 256 : 128;
        } else {
            function2M2238getLambda7$material3_release = function22;
        }
        int i6 = i & 8;
        if (i6 != 0) {
            $dirty2 |= 3072;
            function3M2239getLambda8$material3_release = function3;
        } else if (($changed & 3072) == 0) {
            function3M2239getLambda8$material3_release = function3;
            $dirty2 |= $composer3.changedInstance(function3M2239getLambda8$material3_release) ? 2048 : 1024;
        } else {
            function3M2239getLambda8$material3_release = function3;
        }
        int i7 = i & 16;
        if (i7 != 0) {
            $dirty2 |= 24576;
            expandedHeight2 = expandedHeight;
        } else if (($changed & 24576) == 0) {
            expandedHeight2 = expandedHeight;
            $dirty2 |= $composer3.changed(expandedHeight2) ? 16384 : 8192;
        } else {
            expandedHeight2 = expandedHeight;
        }
        if ((196608 & $changed) == 0) {
            if ((i & 32) == 0) {
                windowInsets2 = windowInsets;
                int i8 = $composer3.changed(windowInsets2) ? 131072 : 65536;
                $dirty2 |= i8;
            } else {
                windowInsets2 = windowInsets;
            }
            $dirty2 |= i8;
        } else {
            windowInsets2 = windowInsets;
        }
        if ((1572864 & $changed) == 0) {
            if ((i & 64) == 0) {
                colors2 = colors;
                int i9 = $composer3.changed(colors2) ? 1048576 : 524288;
                $dirty2 |= i9;
            } else {
                colors2 = colors;
            }
            $dirty2 |= i9;
        } else {
            colors2 = colors;
        }
        int i10 = i & 128;
        if (i10 != 0) {
            $dirty2 |= 12582912;
            i2 = i10;
        } else if (($changed & 12582912) == 0) {
            i2 = i10;
            $dirty2 |= $composer3.changed(scrollBehavior) ? 8388608 : 4194304;
        } else {
            i2 = i10;
        }
        int $dirty3 = $dirty2;
        if (($dirty2 & 4793491) == 4793490 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            $composer2 = $composer3;
            modifier4 = modifier2;
            function25 = function2M2238getLambda7$material3_release;
            function33 = function3M2239getLambda8$material3_release;
            expandedHeight4 = expandedHeight2;
            windowInsets4 = windowInsets2;
            colors4 = colors2;
            scrollBehavior3 = scrollBehavior;
        } else {
            $composer3.startDefaults();
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                Modifier.Companion modifier5 = i4 != 0 ? Modifier.INSTANCE : modifier2;
                if (i5 != 0) {
                    function2M2238getLambda7$material3_release = ComposableSingletons$AppBarKt.INSTANCE.m2238getLambda7$material3_release();
                }
                if (i6 != 0) {
                    function3M2239getLambda8$material3_release = ComposableSingletons$AppBarKt.INSTANCE.m2239getLambda8$material3_release();
                }
                if (i7 != 0) {
                    expandedHeight2 = TopAppBarDefaults.INSTANCE.m3144getTopAppBarExpandedHeightD9Ej5fM();
                }
                if ((i & 32) != 0) {
                    $dirty = $dirty3 & (-458753);
                    windowInsets2 = TopAppBarDefaults.INSTANCE.getWindowInsets($composer3, 6);
                } else {
                    $dirty = $dirty3;
                }
                if ((i & 64) != 0) {
                    $dirty &= -3670017;
                    colors2 = TopAppBarDefaults.INSTANCE.centerAlignedTopAppBarColors($composer3, 6);
                }
                if (i2 != 0) {
                    modifier3 = modifier5;
                    scrollBehavior2 = null;
                    function32 = function3M2239getLambda8$material3_release;
                    expandedHeight3 = expandedHeight2;
                    windowInsets3 = windowInsets2;
                    colors3 = colors2;
                    i3 = 1952988048;
                    function24 = function2M2238getLambda7$material3_release;
                } else {
                    scrollBehavior2 = scrollBehavior;
                    modifier3 = modifier5;
                    function32 = function3M2239getLambda8$material3_release;
                    expandedHeight3 = expandedHeight2;
                    windowInsets3 = windowInsets2;
                    colors3 = colors2;
                    i3 = 1952988048;
                    function24 = function2M2238getLambda7$material3_release;
                }
            } else {
                $composer3.skipToGroupEnd();
                int $dirty4 = (i & 32) != 0 ? $dirty3 & (-458753) : $dirty3;
                if ((i & 64) != 0) {
                    $dirty4 &= -3670017;
                }
                scrollBehavior2 = scrollBehavior;
                modifier3 = modifier2;
                function32 = function3M2239getLambda8$material3_release;
                windowInsets3 = windowInsets2;
                colors3 = colors2;
                i3 = 1952988048;
                $dirty = $dirty4;
                function24 = function2M2238getLambda7$material3_release;
                expandedHeight3 = expandedHeight2;
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(i3, $dirty, -1, "androidx.compose.material3.CenterAlignedTopAppBar (AppBar.kt:332)");
            }
            $composer2 = $composer3;
            m2056SingleRowTopAppBarcJHQLPU(modifier3, function23, TypographyKt.getValue(TopAppBarSmallTokens.INSTANCE.getHeadlineFont(), $composer3, 6), true, function24, function32, (Dp.m7510equalsimpl0(expandedHeight3, Dp.INSTANCE.m7525getUnspecifiedD9Ej5fM()) || Dp.m7510equalsimpl0(expandedHeight3, Dp.INSTANCE.m7524getInfinityD9Ej5fM())) ? TopAppBarDefaults.INSTANCE.m3144getTopAppBarExpandedHeightD9Ej5fM() : expandedHeight3, windowInsets3, colors3, scrollBehavior2, $composer2, (($dirty >> 3) & 14) | 3072 | (($dirty << 3) & 112) | (($dirty << 6) & 57344) | (($dirty << 6) & 458752) | (($dirty << 6) & 29360128) | (($dirty << 6) & 234881024) | (($dirty << 6) & C.ENCODING_PCM_DOUBLE), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            expandedHeight4 = expandedHeight3;
            modifier4 = modifier3;
            function25 = function24;
            windowInsets4 = windowInsets3;
            colors4 = colors3;
            scrollBehavior3 = scrollBehavior2;
            function33 = function32;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.AppBarKt.CenterAlignedTopAppBar.2
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

                public final void invoke(Composer composer, int i11) {
                    AppBarKt.m2053CenterAlignedTopAppBarGHTll3U(function2, modifier4, function25, function33, expandedHeight4, windowInsets4, colors4, scrollBehavior3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Deprecated in favor of MediumTopAppBar with collapsedHeight and expandedHeight parameters")
    public static final /* synthetic */ void MediumTopAppBar(final Function2 title, Modifier modifier, Function2 navigationIcon, Function3 actions, WindowInsets windowInsets, TopAppBarColors colors, TopAppBarScrollBehavior scrollBehavior, Composer $composer, final int $changed, final int i) {
        Function2 function2;
        Modifier modifier2;
        Function2 navigationIcon2;
        Function3 actions2;
        WindowInsets windowInsets2;
        TopAppBarColors colors2;
        TopAppBarScrollBehavior topAppBarScrollBehavior;
        WindowInsets windowInsets3;
        TopAppBarColors colors3;
        TopAppBarScrollBehavior scrollBehavior2;
        Function2 navigationIcon3;
        Function3 actions3;
        Modifier modifier3;
        int i2;
        Composer $composer2;
        final Modifier modifier4;
        final Function2 navigationIcon4;
        final Function3 actions4;
        final WindowInsets windowInsets4;
        final TopAppBarColors colors4;
        final TopAppBarScrollBehavior scrollBehavior3;
        Composer $composer3 = $composer.startRestartGroup(1805417862);
        ComposerKt.sourceInformation($composer3, "C(MediumTopAppBar)P(5,2,3!1,6)396@19336L12,397@19398L23,400@19483L388:AppBar.kt#uh7d8r");
        int $dirty = $changed;
        if ((i & 1) != 0) {
            $dirty |= 6;
            function2 = title;
        } else if (($changed & 6) == 0) {
            function2 = title;
            $dirty |= $composer3.changedInstance(function2) ? 4 : 2;
        } else {
            function2 = title;
        }
        int i3 = i & 2;
        if (i3 != 0) {
            $dirty |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty |= $composer3.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        int i4 = i & 4;
        if (i4 != 0) {
            $dirty |= RendererCapabilities.DECODER_SUPPORT_MASK;
            navigationIcon2 = navigationIcon;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            navigationIcon2 = navigationIcon;
            $dirty |= $composer3.changedInstance(navigationIcon2) ? 256 : 128;
        } else {
            navigationIcon2 = navigationIcon;
        }
        int i5 = i & 8;
        if (i5 != 0) {
            $dirty |= 3072;
            actions2 = actions;
        } else if (($changed & 3072) == 0) {
            actions2 = actions;
            $dirty |= $composer3.changedInstance(actions2) ? 2048 : 1024;
        } else {
            actions2 = actions;
        }
        if (($changed & 24576) == 0) {
            if ((i & 16) == 0) {
                windowInsets2 = windowInsets;
                int i6 = $composer3.changed(windowInsets2) ? 16384 : 8192;
                $dirty |= i6;
            } else {
                windowInsets2 = windowInsets;
            }
            $dirty |= i6;
        } else {
            windowInsets2 = windowInsets;
        }
        if ((196608 & $changed) == 0) {
            if ((i & 32) == 0) {
                colors2 = colors;
                int i7 = $composer3.changed(colors2) ? 131072 : 65536;
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
            topAppBarScrollBehavior = scrollBehavior;
        } else if ((1572864 & $changed) == 0) {
            topAppBarScrollBehavior = scrollBehavior;
            $dirty |= $composer3.changed(topAppBarScrollBehavior) ? 1048576 : 524288;
        } else {
            topAppBarScrollBehavior = scrollBehavior;
        }
        if ((599187 & $dirty) == 599186 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            modifier4 = modifier2;
            actions4 = actions2;
            $composer2 = $composer3;
            navigationIcon4 = navigationIcon2;
            windowInsets4 = windowInsets2;
            colors4 = colors2;
            scrollBehavior3 = topAppBarScrollBehavior;
        } else {
            $composer3.startDefaults();
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                Modifier.Companion modifier5 = i3 != 0 ? Modifier.INSTANCE : modifier2;
                if (i4 != 0) {
                    navigationIcon2 = ComposableSingletons$AppBarKt.INSTANCE.m2240getLambda9$material3_release();
                }
                if (i5 != 0) {
                    actions2 = ComposableSingletons$AppBarKt.INSTANCE.m2224getLambda10$material3_release();
                }
                if ((i & 16) != 0) {
                    $dirty &= -57345;
                    windowInsets2 = TopAppBarDefaults.INSTANCE.getWindowInsets($composer3, 6);
                }
                if ((i & 32) != 0) {
                    $dirty &= -458753;
                    colors2 = TopAppBarDefaults.INSTANCE.mediumTopAppBarColors($composer3, 6);
                }
                if (i8 != 0) {
                    scrollBehavior2 = null;
                    windowInsets3 = windowInsets2;
                    colors3 = colors2;
                    navigationIcon3 = navigationIcon2;
                    actions3 = actions2;
                    modifier3 = modifier5;
                    i2 = 1805417862;
                } else {
                    windowInsets3 = windowInsets2;
                    colors3 = colors2;
                    scrollBehavior2 = topAppBarScrollBehavior;
                    navigationIcon3 = navigationIcon2;
                    actions3 = actions2;
                    modifier3 = modifier5;
                    i2 = 1805417862;
                }
            } else {
                $composer3.skipToGroupEnd();
                if ((i & 16) != 0) {
                    $dirty &= -57345;
                }
                if ((i & 32) != 0) {
                    $dirty &= -458753;
                    windowInsets3 = windowInsets2;
                    colors3 = colors2;
                    scrollBehavior2 = topAppBarScrollBehavior;
                    i2 = 1805417862;
                    navigationIcon3 = navigationIcon2;
                    actions3 = actions2;
                    modifier3 = modifier2;
                } else {
                    windowInsets3 = windowInsets2;
                    colors3 = colors2;
                    scrollBehavior2 = topAppBarScrollBehavior;
                    i2 = 1805417862;
                    navigationIcon3 = navigationIcon2;
                    actions3 = actions2;
                    modifier3 = modifier2;
                }
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(i2, $dirty, -1, "androidx.compose.material3.MediumTopAppBar (AppBar.kt:400)");
            }
            $composer2 = $composer3;
            m2055MediumTopAppBaroKE7A98(function2, modifier3, navigationIcon3, actions3, TopAppBarDefaults.INSTANCE.m3142getMediumAppBarCollapsedHeightD9Ej5fM(), TopAppBarDefaults.INSTANCE.m3143getMediumAppBarExpandedHeightD9Ej5fM(), windowInsets3, colors3, scrollBehavior2, $composer2, ($dirty & 14) | 221184 | ($dirty & 112) | ($dirty & 896) | ($dirty & 7168) | (($dirty << 6) & 3670016) | (($dirty << 6) & 29360128) | (($dirty << 6) & 234881024), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier4 = modifier3;
            navigationIcon4 = navigationIcon3;
            actions4 = actions3;
            windowInsets4 = windowInsets3;
            colors4 = colors3;
            scrollBehavior3 = scrollBehavior2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.AppBarKt.MediumTopAppBar.1
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
                    AppBarKt.MediumTopAppBar(title, modifier4, navigationIcon4, actions4, windowInsets4, colors4, scrollBehavior3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    /* JADX INFO: renamed from: MediumTopAppBar-oKE7A98, reason: not valid java name */
    public static final void m2055MediumTopAppBaroKE7A98(final Function2<? super Composer, ? super Integer, Unit> function2, Modifier modifier, Function2<? super Composer, ? super Integer, Unit> function22, Function3<? super RowScope, ? super Composer, ? super Integer, Unit> function3, float collapsedHeight, float expandedHeight, WindowInsets windowInsets, TopAppBarColors colors, TopAppBarScrollBehavior scrollBehavior, Composer $composer, final int $changed, final int i) {
        Function2<? super Composer, ? super Integer, Unit> function23;
        Modifier modifier2;
        Function2<? super Composer, ? super Integer, Unit> function2M2225getLambda11$material3_release;
        Function3<? super RowScope, ? super Composer, ? super Integer, Unit> function3M2226getLambda12$material3_release;
        float collapsedHeight2;
        float expandedHeight2;
        int i2;
        WindowInsets windowInsets2;
        int $dirty;
        TopAppBarColors colors2;
        TopAppBarScrollBehavior scrollBehavior2;
        WindowInsets windowInsets3;
        TopAppBarColors colors3;
        Function2<? super Composer, ? super Integer, Unit> function24;
        Function3<? super RowScope, ? super Composer, ? super Integer, Unit> function32;
        float collapsedHeight3;
        Modifier modifier3;
        int $dirty2;
        float expandedHeight3;
        Composer $composer2;
        final float collapsedHeight4;
        final float expandedHeight4;
        final Modifier modifier4;
        final Function2<? super Composer, ? super Integer, Unit> function25;
        final WindowInsets windowInsets4;
        final TopAppBarColors colors4;
        final TopAppBarScrollBehavior scrollBehavior3;
        final Function3<? super RowScope, ? super Composer, ? super Integer, Unit> function33;
        Composer $composer3 = $composer.startRestartGroup(1879191686);
        ComposerKt.sourceInformation($composer3, "C(MediumTopAppBar)P(7,4,5!1,1:c#ui.unit.Dp,3:c#ui.unit.Dp,8)465@23246L12,466@23308L23,472@23523L5,473@23594L5,469@23393L947:AppBar.kt#uh7d8r");
        int $dirty3 = $changed;
        if ((i & 1) != 0) {
            $dirty3 |= 6;
            function23 = function2;
        } else if (($changed & 6) == 0) {
            function23 = function2;
            $dirty3 |= $composer3.changedInstance(function23) ? 4 : 2;
        } else {
            function23 = function2;
        }
        int i3 = i & 2;
        if (i3 != 0) {
            $dirty3 |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty3 |= $composer3.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        int i4 = i & 4;
        if (i4 != 0) {
            $dirty3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            function2M2225getLambda11$material3_release = function22;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            function2M2225getLambda11$material3_release = function22;
            $dirty3 |= $composer3.changedInstance(function2M2225getLambda11$material3_release) ? 256 : 128;
        } else {
            function2M2225getLambda11$material3_release = function22;
        }
        int i5 = i & 8;
        if (i5 != 0) {
            $dirty3 |= 3072;
            function3M2226getLambda12$material3_release = function3;
        } else if (($changed & 3072) == 0) {
            function3M2226getLambda12$material3_release = function3;
            $dirty3 |= $composer3.changedInstance(function3M2226getLambda12$material3_release) ? 2048 : 1024;
        } else {
            function3M2226getLambda12$material3_release = function3;
        }
        int i6 = i & 16;
        if (i6 != 0) {
            $dirty3 |= 24576;
            collapsedHeight2 = collapsedHeight;
        } else if (($changed & 24576) == 0) {
            collapsedHeight2 = collapsedHeight;
            $dirty3 |= $composer3.changed(collapsedHeight2) ? 16384 : 8192;
        } else {
            collapsedHeight2 = collapsedHeight;
        }
        int i7 = i & 32;
        if (i7 != 0) {
            $dirty3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            expandedHeight2 = expandedHeight;
        } else if ((196608 & $changed) == 0) {
            expandedHeight2 = expandedHeight;
            $dirty3 |= $composer3.changed(expandedHeight2) ? 131072 : 65536;
        } else {
            expandedHeight2 = expandedHeight;
        }
        if (($changed & 1572864) == 0) {
            $dirty3 |= ((i & 64) == 0 && $composer3.changed(windowInsets)) ? 1048576 : 524288;
        }
        if (($changed & 12582912) == 0) {
            $dirty3 |= ((i & 128) == 0 && $composer3.changed(colors)) ? 8388608 : 4194304;
        }
        int i8 = i & 256;
        if (i8 != 0) {
            $dirty3 |= 100663296;
            i2 = i8;
        } else if (($changed & 100663296) == 0) {
            i2 = i8;
            $dirty3 |= $composer3.changed(scrollBehavior) ? 67108864 : 33554432;
        } else {
            i2 = i8;
        }
        int $dirty4 = $dirty3;
        if (($dirty3 & 38347923) == 38347922 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            windowInsets4 = windowInsets;
            scrollBehavior3 = scrollBehavior;
            $composer2 = $composer3;
            modifier4 = modifier2;
            function25 = function2M2225getLambda11$material3_release;
            function33 = function3M2226getLambda12$material3_release;
            collapsedHeight4 = collapsedHeight2;
            expandedHeight4 = expandedHeight2;
            colors4 = colors;
        } else {
            $composer3.startDefaults();
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                if (i3 != 0) {
                    modifier2 = Modifier.INSTANCE;
                }
                if (i4 != 0) {
                    function2M2225getLambda11$material3_release = ComposableSingletons$AppBarKt.INSTANCE.m2225getLambda11$material3_release();
                }
                if (i5 != 0) {
                    function3M2226getLambda12$material3_release = ComposableSingletons$AppBarKt.INSTANCE.m2226getLambda12$material3_release();
                }
                if (i6 != 0) {
                    collapsedHeight2 = TopAppBarDefaults.INSTANCE.m3142getMediumAppBarCollapsedHeightD9Ej5fM();
                }
                if (i7 != 0) {
                    expandedHeight2 = TopAppBarDefaults.INSTANCE.m3143getMediumAppBarExpandedHeightD9Ej5fM();
                }
                if ((i & 64) != 0) {
                    windowInsets2 = TopAppBarDefaults.INSTANCE.getWindowInsets($composer3, 6);
                    $dirty = $dirty4 & (-3670017);
                } else {
                    windowInsets2 = windowInsets;
                    $dirty = $dirty4;
                }
                if ((i & 128) != 0) {
                    colors2 = TopAppBarDefaults.INSTANCE.mediumTopAppBarColors($composer3, 6);
                    $dirty &= -29360129;
                } else {
                    colors2 = colors;
                }
                if (i2 != 0) {
                    windowInsets3 = windowInsets2;
                    colors3 = colors2;
                    function24 = function2M2225getLambda11$material3_release;
                    scrollBehavior2 = null;
                    function32 = function3M2226getLambda12$material3_release;
                    collapsedHeight3 = collapsedHeight2;
                    modifier3 = modifier2;
                    $dirty2 = $dirty;
                    expandedHeight3 = expandedHeight2;
                } else {
                    scrollBehavior2 = scrollBehavior;
                    windowInsets3 = windowInsets2;
                    colors3 = colors2;
                    function24 = function2M2225getLambda11$material3_release;
                    function32 = function3M2226getLambda12$material3_release;
                    collapsedHeight3 = collapsedHeight2;
                    modifier3 = modifier2;
                    $dirty2 = $dirty;
                    expandedHeight3 = expandedHeight2;
                }
            } else {
                $composer3.skipToGroupEnd();
                int $dirty5 = (i & 64) != 0 ? $dirty4 & (-3670017) : $dirty4;
                if ((i & 128) != 0) {
                    $dirty5 &= -29360129;
                }
                Modifier modifier5 = modifier2;
                $dirty2 = $dirty5;
                collapsedHeight3 = collapsedHeight2;
                modifier3 = modifier5;
                windowInsets3 = windowInsets;
                colors3 = colors;
                scrollBehavior2 = scrollBehavior;
                function24 = function2M2225getLambda11$material3_release;
                function32 = function3M2226getLambda12$material3_release;
                expandedHeight3 = expandedHeight2;
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1879191686, $dirty2, -1, "androidx.compose.material3.MediumTopAppBar (AppBar.kt:469)");
            }
            $composer2 = $composer3;
            m2059TwoRowsTopAppBarnS6u9G4(modifier3, function23, TypographyKt.getValue(TopAppBarMediumTokens.INSTANCE.getHeadlineFont(), $composer3, 6), MediumTitleBottomPadding, function2, TypographyKt.getValue(TopAppBarSmallTokens.INSTANCE.getHeadlineFont(), $composer3, 6), function24, function32, (Dp.m7510equalsimpl0(collapsedHeight3, Dp.INSTANCE.m7525getUnspecifiedD9Ej5fM()) || Dp.m7510equalsimpl0(collapsedHeight3, Dp.INSTANCE.m7524getInfinityD9Ej5fM())) ? TopAppBarDefaults.INSTANCE.m3142getMediumAppBarCollapsedHeightD9Ej5fM() : collapsedHeight3, (Dp.m7510equalsimpl0(expandedHeight3, Dp.INSTANCE.m7525getUnspecifiedD9Ej5fM()) || Dp.m7510equalsimpl0(expandedHeight3, Dp.INSTANCE.m7524getInfinityD9Ej5fM())) ? TopAppBarDefaults.INSTANCE.m3143getMediumAppBarExpandedHeightD9Ej5fM() : expandedHeight3, windowInsets3, colors3, scrollBehavior2, $composer2, (($dirty2 >> 3) & 14) | 3072 | (($dirty2 << 3) & 112) | (($dirty2 << 12) & 57344) | (($dirty2 << 12) & 3670016) | (29360128 & ($dirty2 << 12)), (($dirty2 >> 18) & 14) | (($dirty2 >> 18) & 112) | (($dirty2 >> 18) & 896), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            collapsedHeight4 = collapsedHeight3;
            expandedHeight4 = expandedHeight3;
            modifier4 = modifier3;
            function25 = function24;
            windowInsets4 = windowInsets3;
            colors4 = colors3;
            scrollBehavior3 = scrollBehavior2;
            function33 = function32;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.AppBarKt.MediumTopAppBar.2
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
                    AppBarKt.m2055MediumTopAppBaroKE7A98(function2, modifier4, function25, function33, collapsedHeight4, expandedHeight4, windowInsets4, colors4, scrollBehavior3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Deprecated in favor of LargeTopAppBar with collapsedHeight and expandedHeight parameters")
    public static final /* synthetic */ void LargeTopAppBar(final Function2 title, Modifier modifier, Function2 navigationIcon, Function3 actions, WindowInsets windowInsets, TopAppBarColors colors, TopAppBarScrollBehavior scrollBehavior, Composer $composer, final int $changed, final int i) {
        Function2 function2;
        Modifier modifier2;
        Function2 navigationIcon2;
        Function3 actions2;
        WindowInsets windowInsets2;
        TopAppBarColors colors2;
        TopAppBarScrollBehavior topAppBarScrollBehavior;
        WindowInsets windowInsets3;
        TopAppBarColors colors3;
        TopAppBarScrollBehavior scrollBehavior2;
        Function2 navigationIcon3;
        Function3 actions3;
        Modifier modifier3;
        int i2;
        Composer $composer2;
        final Modifier modifier4;
        final Function2 navigationIcon4;
        final Function3 actions4;
        final WindowInsets windowInsets4;
        final TopAppBarColors colors4;
        final TopAppBarScrollBehavior scrollBehavior3;
        Composer $composer3 = $composer.startRestartGroup(-474540752);
        ComposerKt.sourceInformation($composer3, "C(LargeTopAppBar)P(5,2,3!1,6)541@26855L12,542@26917L22,545@27001L385:AppBar.kt#uh7d8r");
        int $dirty = $changed;
        if ((i & 1) != 0) {
            $dirty |= 6;
            function2 = title;
        } else if (($changed & 6) == 0) {
            function2 = title;
            $dirty |= $composer3.changedInstance(function2) ? 4 : 2;
        } else {
            function2 = title;
        }
        int i3 = i & 2;
        if (i3 != 0) {
            $dirty |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty |= $composer3.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        int i4 = i & 4;
        if (i4 != 0) {
            $dirty |= RendererCapabilities.DECODER_SUPPORT_MASK;
            navigationIcon2 = navigationIcon;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            navigationIcon2 = navigationIcon;
            $dirty |= $composer3.changedInstance(navigationIcon2) ? 256 : 128;
        } else {
            navigationIcon2 = navigationIcon;
        }
        int i5 = i & 8;
        if (i5 != 0) {
            $dirty |= 3072;
            actions2 = actions;
        } else if (($changed & 3072) == 0) {
            actions2 = actions;
            $dirty |= $composer3.changedInstance(actions2) ? 2048 : 1024;
        } else {
            actions2 = actions;
        }
        if (($changed & 24576) == 0) {
            if ((i & 16) == 0) {
                windowInsets2 = windowInsets;
                int i6 = $composer3.changed(windowInsets2) ? 16384 : 8192;
                $dirty |= i6;
            } else {
                windowInsets2 = windowInsets;
            }
            $dirty |= i6;
        } else {
            windowInsets2 = windowInsets;
        }
        if ((196608 & $changed) == 0) {
            if ((i & 32) == 0) {
                colors2 = colors;
                int i7 = $composer3.changed(colors2) ? 131072 : 65536;
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
            topAppBarScrollBehavior = scrollBehavior;
        } else if ((1572864 & $changed) == 0) {
            topAppBarScrollBehavior = scrollBehavior;
            $dirty |= $composer3.changed(topAppBarScrollBehavior) ? 1048576 : 524288;
        } else {
            topAppBarScrollBehavior = scrollBehavior;
        }
        if ((599187 & $dirty) == 599186 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            modifier4 = modifier2;
            actions4 = actions2;
            $composer2 = $composer3;
            navigationIcon4 = navigationIcon2;
            windowInsets4 = windowInsets2;
            colors4 = colors2;
            scrollBehavior3 = topAppBarScrollBehavior;
        } else {
            $composer3.startDefaults();
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                Modifier.Companion modifier5 = i3 != 0 ? Modifier.INSTANCE : modifier2;
                if (i4 != 0) {
                    navigationIcon2 = ComposableSingletons$AppBarKt.INSTANCE.m2227getLambda13$material3_release();
                }
                if (i5 != 0) {
                    actions2 = ComposableSingletons$AppBarKt.INSTANCE.m2228getLambda14$material3_release();
                }
                if ((i & 16) != 0) {
                    $dirty &= -57345;
                    windowInsets2 = TopAppBarDefaults.INSTANCE.getWindowInsets($composer3, 6);
                }
                if ((i & 32) != 0) {
                    $dirty &= -458753;
                    colors2 = TopAppBarDefaults.INSTANCE.largeTopAppBarColors($composer3, 6);
                }
                if (i8 != 0) {
                    scrollBehavior2 = null;
                    windowInsets3 = windowInsets2;
                    colors3 = colors2;
                    navigationIcon3 = navigationIcon2;
                    actions3 = actions2;
                    modifier3 = modifier5;
                    i2 = -474540752;
                } else {
                    windowInsets3 = windowInsets2;
                    colors3 = colors2;
                    scrollBehavior2 = topAppBarScrollBehavior;
                    navigationIcon3 = navigationIcon2;
                    actions3 = actions2;
                    modifier3 = modifier5;
                    i2 = -474540752;
                }
            } else {
                $composer3.skipToGroupEnd();
                if ((i & 16) != 0) {
                    $dirty &= -57345;
                }
                if ((i & 32) != 0) {
                    $dirty &= -458753;
                    windowInsets3 = windowInsets2;
                    colors3 = colors2;
                    scrollBehavior2 = topAppBarScrollBehavior;
                    i2 = -474540752;
                    navigationIcon3 = navigationIcon2;
                    actions3 = actions2;
                    modifier3 = modifier2;
                } else {
                    windowInsets3 = windowInsets2;
                    colors3 = colors2;
                    scrollBehavior2 = topAppBarScrollBehavior;
                    i2 = -474540752;
                    navigationIcon3 = navigationIcon2;
                    actions3 = actions2;
                    modifier3 = modifier2;
                }
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(i2, $dirty, -1, "androidx.compose.material3.LargeTopAppBar (AppBar.kt:545)");
            }
            $composer2 = $composer3;
            m2054LargeTopAppBaroKE7A98(function2, modifier3, navigationIcon3, actions3, TopAppBarDefaults.INSTANCE.m3140getLargeAppBarCollapsedHeightD9Ej5fM(), TopAppBarDefaults.INSTANCE.m3141getLargeAppBarExpandedHeightD9Ej5fM(), windowInsets3, colors3, scrollBehavior2, $composer2, ($dirty & 14) | 221184 | ($dirty & 112) | ($dirty & 896) | ($dirty & 7168) | (($dirty << 6) & 3670016) | (($dirty << 6) & 29360128) | (($dirty << 6) & 234881024), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier4 = modifier3;
            navigationIcon4 = navigationIcon3;
            actions4 = actions3;
            windowInsets4 = windowInsets3;
            colors4 = colors3;
            scrollBehavior3 = scrollBehavior2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.AppBarKt.LargeTopAppBar.1
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
                    AppBarKt.LargeTopAppBar(title, modifier4, navigationIcon4, actions4, windowInsets4, colors4, scrollBehavior3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    /* JADX INFO: renamed from: LargeTopAppBar-oKE7A98, reason: not valid java name */
    public static final void m2054LargeTopAppBaroKE7A98(final Function2<? super Composer, ? super Integer, Unit> function2, Modifier modifier, Function2<? super Composer, ? super Integer, Unit> function22, Function3<? super RowScope, ? super Composer, ? super Integer, Unit> function3, float collapsedHeight, float expandedHeight, WindowInsets windowInsets, TopAppBarColors colors, TopAppBarScrollBehavior scrollBehavior, Composer $composer, final int $changed, final int i) {
        Function2<? super Composer, ? super Integer, Unit> function23;
        Modifier modifier2;
        Function2<? super Composer, ? super Integer, Unit> function2M2229getLambda15$material3_release;
        Function3<? super RowScope, ? super Composer, ? super Integer, Unit> function3M2230getLambda16$material3_release;
        float collapsedHeight2;
        float expandedHeight2;
        int i2;
        WindowInsets windowInsets2;
        int $dirty;
        TopAppBarColors colors2;
        TopAppBarScrollBehavior scrollBehavior2;
        WindowInsets windowInsets3;
        TopAppBarColors colors3;
        Function2<? super Composer, ? super Integer, Unit> function24;
        Function3<? super RowScope, ? super Composer, ? super Integer, Unit> function32;
        float collapsedHeight3;
        Modifier modifier3;
        int $dirty2;
        float expandedHeight3;
        Composer $composer2;
        final float collapsedHeight4;
        final float expandedHeight4;
        final Modifier modifier4;
        final Function2<? super Composer, ? super Integer, Unit> function25;
        final WindowInsets windowInsets4;
        final TopAppBarColors colors4;
        final TopAppBarScrollBehavior scrollBehavior3;
        final Function3<? super RowScope, ? super Composer, ? super Integer, Unit> function33;
        Composer $composer3 = $composer.startRestartGroup(-630005584);
        ComposerKt.sourceInformation($composer3, "C(LargeTopAppBar)P(7,4,5!1,1:c#ui.unit.Dp,3:c#ui.unit.Dp,8)610@30747L12,611@30809L22,616@30993L5,617@31064L5,614@30893L943:AppBar.kt#uh7d8r");
        int $dirty3 = $changed;
        if ((i & 1) != 0) {
            $dirty3 |= 6;
            function23 = function2;
        } else if (($changed & 6) == 0) {
            function23 = function2;
            $dirty3 |= $composer3.changedInstance(function23) ? 4 : 2;
        } else {
            function23 = function2;
        }
        int i3 = i & 2;
        if (i3 != 0) {
            $dirty3 |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty3 |= $composer3.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        int i4 = i & 4;
        if (i4 != 0) {
            $dirty3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            function2M2229getLambda15$material3_release = function22;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            function2M2229getLambda15$material3_release = function22;
            $dirty3 |= $composer3.changedInstance(function2M2229getLambda15$material3_release) ? 256 : 128;
        } else {
            function2M2229getLambda15$material3_release = function22;
        }
        int i5 = i & 8;
        if (i5 != 0) {
            $dirty3 |= 3072;
            function3M2230getLambda16$material3_release = function3;
        } else if (($changed & 3072) == 0) {
            function3M2230getLambda16$material3_release = function3;
            $dirty3 |= $composer3.changedInstance(function3M2230getLambda16$material3_release) ? 2048 : 1024;
        } else {
            function3M2230getLambda16$material3_release = function3;
        }
        int i6 = i & 16;
        if (i6 != 0) {
            $dirty3 |= 24576;
            collapsedHeight2 = collapsedHeight;
        } else if (($changed & 24576) == 0) {
            collapsedHeight2 = collapsedHeight;
            $dirty3 |= $composer3.changed(collapsedHeight2) ? 16384 : 8192;
        } else {
            collapsedHeight2 = collapsedHeight;
        }
        int i7 = i & 32;
        if (i7 != 0) {
            $dirty3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            expandedHeight2 = expandedHeight;
        } else if ((196608 & $changed) == 0) {
            expandedHeight2 = expandedHeight;
            $dirty3 |= $composer3.changed(expandedHeight2) ? 131072 : 65536;
        } else {
            expandedHeight2 = expandedHeight;
        }
        if (($changed & 1572864) == 0) {
            $dirty3 |= ((i & 64) == 0 && $composer3.changed(windowInsets)) ? 1048576 : 524288;
        }
        if (($changed & 12582912) == 0) {
            $dirty3 |= ((i & 128) == 0 && $composer3.changed(colors)) ? 8388608 : 4194304;
        }
        int i8 = i & 256;
        if (i8 != 0) {
            $dirty3 |= 100663296;
            i2 = i8;
        } else if (($changed & 100663296) == 0) {
            i2 = i8;
            $dirty3 |= $composer3.changed(scrollBehavior) ? 67108864 : 33554432;
        } else {
            i2 = i8;
        }
        int $dirty4 = $dirty3;
        if (($dirty3 & 38347923) == 38347922 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            windowInsets4 = windowInsets;
            scrollBehavior3 = scrollBehavior;
            $composer2 = $composer3;
            modifier4 = modifier2;
            function25 = function2M2229getLambda15$material3_release;
            function33 = function3M2230getLambda16$material3_release;
            collapsedHeight4 = collapsedHeight2;
            expandedHeight4 = expandedHeight2;
            colors4 = colors;
        } else {
            $composer3.startDefaults();
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                if (i3 != 0) {
                    modifier2 = Modifier.INSTANCE;
                }
                if (i4 != 0) {
                    function2M2229getLambda15$material3_release = ComposableSingletons$AppBarKt.INSTANCE.m2229getLambda15$material3_release();
                }
                if (i5 != 0) {
                    function3M2230getLambda16$material3_release = ComposableSingletons$AppBarKt.INSTANCE.m2230getLambda16$material3_release();
                }
                if (i6 != 0) {
                    collapsedHeight2 = TopAppBarDefaults.INSTANCE.m3140getLargeAppBarCollapsedHeightD9Ej5fM();
                }
                if (i7 != 0) {
                    expandedHeight2 = TopAppBarDefaults.INSTANCE.m3141getLargeAppBarExpandedHeightD9Ej5fM();
                }
                if ((i & 64) != 0) {
                    windowInsets2 = TopAppBarDefaults.INSTANCE.getWindowInsets($composer3, 6);
                    $dirty = $dirty4 & (-3670017);
                } else {
                    windowInsets2 = windowInsets;
                    $dirty = $dirty4;
                }
                if ((i & 128) != 0) {
                    colors2 = TopAppBarDefaults.INSTANCE.largeTopAppBarColors($composer3, 6);
                    $dirty &= -29360129;
                } else {
                    colors2 = colors;
                }
                if (i2 != 0) {
                    windowInsets3 = windowInsets2;
                    colors3 = colors2;
                    function24 = function2M2229getLambda15$material3_release;
                    scrollBehavior2 = null;
                    function32 = function3M2230getLambda16$material3_release;
                    collapsedHeight3 = collapsedHeight2;
                    modifier3 = modifier2;
                    $dirty2 = $dirty;
                    expandedHeight3 = expandedHeight2;
                } else {
                    scrollBehavior2 = scrollBehavior;
                    windowInsets3 = windowInsets2;
                    colors3 = colors2;
                    function24 = function2M2229getLambda15$material3_release;
                    function32 = function3M2230getLambda16$material3_release;
                    collapsedHeight3 = collapsedHeight2;
                    modifier3 = modifier2;
                    $dirty2 = $dirty;
                    expandedHeight3 = expandedHeight2;
                }
            } else {
                $composer3.skipToGroupEnd();
                int $dirty5 = (i & 64) != 0 ? $dirty4 & (-3670017) : $dirty4;
                if ((i & 128) != 0) {
                    $dirty5 &= -29360129;
                }
                Modifier modifier5 = modifier2;
                $dirty2 = $dirty5;
                collapsedHeight3 = collapsedHeight2;
                modifier3 = modifier5;
                windowInsets3 = windowInsets;
                colors3 = colors;
                scrollBehavior2 = scrollBehavior;
                function24 = function2M2229getLambda15$material3_release;
                function32 = function3M2230getLambda16$material3_release;
                expandedHeight3 = expandedHeight2;
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-630005584, $dirty2, -1, "androidx.compose.material3.LargeTopAppBar (AppBar.kt:614)");
            }
            $composer2 = $composer3;
            m2059TwoRowsTopAppBarnS6u9G4(modifier3, function23, TypographyKt.getValue(TopAppBarLargeTokens.INSTANCE.getHeadlineFont(), $composer3, 6), LargeTitleBottomPadding, function2, TypographyKt.getValue(TopAppBarSmallTokens.INSTANCE.getHeadlineFont(), $composer3, 6), function24, function32, (Dp.m7510equalsimpl0(collapsedHeight3, Dp.INSTANCE.m7525getUnspecifiedD9Ej5fM()) || Dp.m7510equalsimpl0(collapsedHeight3, Dp.INSTANCE.m7524getInfinityD9Ej5fM())) ? TopAppBarDefaults.INSTANCE.m3140getLargeAppBarCollapsedHeightD9Ej5fM() : collapsedHeight3, (Dp.m7510equalsimpl0(expandedHeight3, Dp.INSTANCE.m7525getUnspecifiedD9Ej5fM()) || Dp.m7510equalsimpl0(expandedHeight3, Dp.INSTANCE.m7524getInfinityD9Ej5fM())) ? TopAppBarDefaults.INSTANCE.m3141getLargeAppBarExpandedHeightD9Ej5fM() : expandedHeight3, windowInsets3, colors3, scrollBehavior2, $composer2, (($dirty2 >> 3) & 14) | 3072 | (($dirty2 << 3) & 112) | (($dirty2 << 12) & 57344) | (($dirty2 << 12) & 3670016) | (29360128 & ($dirty2 << 12)), (($dirty2 >> 18) & 14) | (($dirty2 >> 18) & 112) | (($dirty2 >> 18) & 896), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            collapsedHeight4 = collapsedHeight3;
            expandedHeight4 = expandedHeight3;
            modifier4 = modifier3;
            function25 = function24;
            windowInsets4 = windowInsets3;
            colors4 = colors3;
            scrollBehavior3 = scrollBehavior2;
            function33 = function32;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.AppBarKt.LargeTopAppBar.2
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
                    AppBarKt.m2054LargeTopAppBaroKE7A98(function2, modifier4, function25, function33, collapsedHeight4, expandedHeight4, windowInsets4, colors4, scrollBehavior3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    /* JADX INFO: renamed from: BottomAppBar-Snr_uVM, reason: not valid java name */
    public static final void m2050BottomAppBarSnr_uVM(final Function3<? super RowScope, ? super Composer, ? super Integer, Unit> function3, Modifier modifier, Function2<? super Composer, ? super Integer, Unit> function2, long containerColor, long contentColor, float tonalElevation, PaddingValues contentPadding, WindowInsets windowInsets, Composer $composer, final int $changed, final int i) {
        Function3<? super RowScope, ? super Composer, ? super Integer, Unit> function32;
        Modifier modifier2;
        Function2<? super Composer, ? super Integer, Unit> function22;
        long containerColor2;
        long contentColor2;
        float tonalElevation2;
        WindowInsets windowInsets2;
        PaddingValues contentPadding2;
        Modifier modifier3;
        long containerColor3;
        long contentColor3;
        float tonalElevation3;
        int i2;
        Function2<? super Composer, ? super Integer, Unit> function23;
        Composer $composer2;
        final Modifier modifier4;
        final Function2<? super Composer, ? super Integer, Unit> function24;
        final long containerColor4;
        final long contentColor4;
        final float tonalElevation4;
        final PaddingValues contentPadding3;
        final WindowInsets windowInsets3;
        Composer $composer3 = $composer.startRestartGroup(2141738945);
        ComposerKt.sourceInformation($composer3, "C(BottomAppBar)P(!1,5,4,1:c#ui.graphics.Color,2:c#ui.graphics.Color,6:c#ui.unit.Dp)678@33855L14,679@33897L31,682@34123L12,684@34145L355:AppBar.kt#uh7d8r");
        int $dirty = $changed;
        if ((i & 1) != 0) {
            $dirty |= 6;
            function32 = function3;
        } else if (($changed & 6) == 0) {
            function32 = function3;
            $dirty |= $composer3.changedInstance(function32) ? 4 : 2;
        } else {
            function32 = function3;
        }
        int i3 = i & 2;
        if (i3 != 0) {
            $dirty |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty |= $composer3.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        int i4 = i & 4;
        if (i4 != 0) {
            $dirty |= RendererCapabilities.DECODER_SUPPORT_MASK;
            function22 = function2;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            function22 = function2;
            $dirty |= $composer3.changedInstance(function22) ? 256 : 128;
        } else {
            function22 = function2;
        }
        if (($changed & 3072) == 0) {
            if ((i & 8) == 0) {
                containerColor2 = containerColor;
                int i5 = $composer3.changed(containerColor2) ? 2048 : 1024;
                $dirty |= i5;
            } else {
                containerColor2 = containerColor;
            }
            $dirty |= i5;
        } else {
            containerColor2 = containerColor;
        }
        if (($changed & 24576) == 0) {
            if ((i & 16) == 0) {
                contentColor2 = contentColor;
                int i6 = $composer3.changed(contentColor2) ? 16384 : 8192;
                $dirty |= i6;
            } else {
                contentColor2 = contentColor;
            }
            $dirty |= i6;
        } else {
            contentColor2 = contentColor;
        }
        int i7 = i & 32;
        if (i7 != 0) {
            $dirty |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            tonalElevation2 = tonalElevation;
        } else if ((196608 & $changed) == 0) {
            tonalElevation2 = tonalElevation;
            $dirty |= $composer3.changed(tonalElevation2) ? 131072 : 65536;
        } else {
            tonalElevation2 = tonalElevation;
        }
        int i8 = i & 64;
        if (i8 != 0) {
            $dirty |= 1572864;
        } else if (($changed & 1572864) == 0) {
            $dirty |= $composer3.changed(contentPadding) ? 1048576 : 524288;
        }
        if (($changed & 12582912) == 0) {
            $dirty |= ((i & 128) == 0 && $composer3.changed(windowInsets)) ? 8388608 : 4194304;
        }
        if (($dirty & 4793491) == 4793490 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            $composer2 = $composer3;
            modifier4 = modifier2;
            function24 = function22;
            containerColor4 = containerColor2;
            contentColor4 = contentColor2;
            tonalElevation4 = tonalElevation2;
            contentPadding3 = contentPadding;
            windowInsets3 = windowInsets;
        } else {
            $composer3.startDefaults();
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                if (i3 != 0) {
                    modifier2 = Modifier.INSTANCE;
                }
                if (i4 != 0) {
                    function22 = null;
                }
                if ((i & 8) != 0) {
                    containerColor2 = BottomAppBarDefaults.INSTANCE.getContainerColor($composer3, 6);
                    $dirty &= -7169;
                }
                if ((i & 16) != 0) {
                    contentColor2 = ColorSchemeKt.m2213contentColorForek8zF_U(containerColor2, $composer3, ($dirty >> 9) & 14);
                    $dirty &= -57345;
                }
                if (i7 != 0) {
                    tonalElevation2 = BottomAppBarDefaults.INSTANCE.m2073getContainerElevationD9Ej5fM();
                }
                PaddingValues contentPadding4 = i8 != 0 ? BottomAppBarDefaults.INSTANCE.getContentPadding() : contentPadding;
                if ((i & 128) != 0) {
                    $dirty &= -29360129;
                    contentPadding2 = contentPadding4;
                    modifier3 = modifier2;
                    windowInsets2 = BottomAppBarDefaults.INSTANCE.getWindowInsets($composer3, 6);
                    containerColor3 = containerColor2;
                    contentColor3 = contentColor2;
                    tonalElevation3 = tonalElevation2;
                    i2 = 2141738945;
                    function23 = function22;
                } else {
                    windowInsets2 = windowInsets;
                    contentPadding2 = contentPadding4;
                    modifier3 = modifier2;
                    containerColor3 = containerColor2;
                    contentColor3 = contentColor2;
                    tonalElevation3 = tonalElevation2;
                    i2 = 2141738945;
                    function23 = function22;
                }
            } else {
                $composer3.skipToGroupEnd();
                if ((i & 8) != 0) {
                    $dirty &= -7169;
                }
                if ((i & 16) != 0) {
                    $dirty &= -57345;
                }
                if ((i & 128) != 0) {
                    contentPadding2 = contentPadding;
                    windowInsets2 = windowInsets;
                    $dirty &= -29360129;
                    modifier3 = modifier2;
                    containerColor3 = containerColor2;
                    contentColor3 = contentColor2;
                    tonalElevation3 = tonalElevation2;
                    i2 = 2141738945;
                    function23 = function22;
                } else {
                    contentPadding2 = contentPadding;
                    windowInsets2 = windowInsets;
                    modifier3 = modifier2;
                    containerColor3 = containerColor2;
                    contentColor3 = contentColor2;
                    tonalElevation3 = tonalElevation2;
                    i2 = 2141738945;
                    function23 = function22;
                }
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(i2, $dirty, -1, "androidx.compose.material3.BottomAppBar (AppBar.kt:684)");
            }
            $composer2 = $composer3;
            m2052BottomAppBarqhFBPw4(function32, modifier3, function23, containerColor3, contentColor3, tonalElevation3, contentPadding2, windowInsets2, null, $composer2, ($dirty & 14) | 100663296 | ($dirty & 112) | ($dirty & 896) | ($dirty & 7168) | (57344 & $dirty) | (458752 & $dirty) | (3670016 & $dirty) | (29360128 & $dirty), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier4 = modifier3;
            function24 = function23;
            containerColor4 = containerColor3;
            contentColor4 = contentColor3;
            tonalElevation4 = tonalElevation3;
            contentPadding3 = contentPadding2;
            windowInsets3 = windowInsets2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.AppBarKt$BottomAppBar$1
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
                    AppBarKt.m2050BottomAppBarSnr_uVM(function3, modifier4, function24, containerColor4, contentColor4, tonalElevation4, contentPadding3, windowInsets3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    /* JADX INFO: renamed from: BottomAppBar-qhFBPw4, reason: not valid java name */
    public static final void m2052BottomAppBarqhFBPw4(final Function3<? super RowScope, ? super Composer, ? super Integer, Unit> function3, Modifier modifier, Function2<? super Composer, ? super Integer, Unit> function2, long containerColor, long contentColor, float tonalElevation, PaddingValues contentPadding, WindowInsets windowInsets, BottomAppBarScrollBehavior scrollBehavior, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        final Function2<? super Composer, ? super Integer, Unit> function22;
        long containerColor2;
        long contentColor2;
        float tonalElevation2;
        int i2;
        WindowInsets windowInsets2;
        BottomAppBarScrollBehavior scrollBehavior2;
        PaddingValues contentPadding2;
        Modifier modifier3;
        WindowInsets windowInsets3;
        float tonalElevation3;
        int i3;
        int i4;
        long containerColor3;
        long contentColor3;
        Composer $composer2;
        final Modifier modifier4;
        final long containerColor4;
        final float tonalElevation4;
        final PaddingValues contentPadding3;
        final WindowInsets windowInsets4;
        final BottomAppBarScrollBehavior scrollBehavior3;
        final Function2<? super Composer, ? super Integer, Unit> function23;
        final long contentColor4;
        Composer $composer3 = $composer.startRestartGroup(-1044837119);
        ComposerKt.sourceInformation($composer3, "C(BottomAppBar)P(!1,5,4,1:c#ui.graphics.Color,2:c#ui.graphics.Color,7:c#ui.unit.Dp!1,8)743@37109L14,744@37151L31,747@37377L12,758@37741L539,750@37455L825:AppBar.kt#uh7d8r");
        int $dirty = $changed;
        if ((i & 1) != 0) {
            $dirty |= 6;
        } else if (($changed & 6) == 0) {
            $dirty |= $composer3.changedInstance(function3) ? 4 : 2;
        }
        int i5 = i & 2;
        if (i5 != 0) {
            $dirty |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty |= $composer3.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        int i6 = i & 4;
        if (i6 != 0) {
            $dirty |= RendererCapabilities.DECODER_SUPPORT_MASK;
            function22 = function2;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            function22 = function2;
            $dirty |= $composer3.changedInstance(function22) ? 256 : 128;
        } else {
            function22 = function2;
        }
        if (($changed & 3072) == 0) {
            if ((i & 8) == 0) {
                containerColor2 = containerColor;
                int i7 = $composer3.changed(containerColor2) ? 2048 : 1024;
                $dirty |= i7;
            } else {
                containerColor2 = containerColor;
            }
            $dirty |= i7;
        } else {
            containerColor2 = containerColor;
        }
        if (($changed & 24576) == 0) {
            if ((i & 16) == 0) {
                contentColor2 = contentColor;
                int i8 = $composer3.changed(contentColor2) ? 16384 : 8192;
                $dirty |= i8;
            } else {
                contentColor2 = contentColor;
            }
            $dirty |= i8;
        } else {
            contentColor2 = contentColor;
        }
        int i9 = i & 32;
        if (i9 != 0) {
            $dirty |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            tonalElevation2 = tonalElevation;
        } else if ((196608 & $changed) == 0) {
            tonalElevation2 = tonalElevation;
            $dirty |= $composer3.changed(tonalElevation2) ? 131072 : 65536;
        } else {
            tonalElevation2 = tonalElevation;
        }
        int i10 = i & 64;
        if (i10 != 0) {
            $dirty |= 1572864;
        } else if (($changed & 1572864) == 0) {
            $dirty |= $composer3.changed(contentPadding) ? 1048576 : 524288;
        }
        if (($changed & 12582912) == 0) {
            $dirty |= ((i & 128) == 0 && $composer3.changed(windowInsets)) ? 8388608 : 4194304;
        }
        int i11 = i & 256;
        if (i11 != 0) {
            $dirty |= 100663296;
            i2 = i11;
        } else if (($changed & 100663296) == 0) {
            i2 = i11;
            $dirty |= $composer3.changed(scrollBehavior) ? 67108864 : 33554432;
        } else {
            i2 = i11;
        }
        if (($dirty & 38347923) == 38347922 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            $composer2 = $composer3;
            modifier4 = modifier2;
            function23 = function22;
            containerColor4 = containerColor2;
            contentColor4 = contentColor2;
            tonalElevation4 = tonalElevation2;
            contentPadding3 = contentPadding;
            windowInsets4 = windowInsets;
            scrollBehavior3 = scrollBehavior;
        } else {
            $composer3.startDefaults();
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                if (i5 != 0) {
                    modifier2 = Modifier.INSTANCE;
                }
                if (i6 != 0) {
                    function22 = null;
                }
                if ((i & 8) != 0) {
                    containerColor2 = BottomAppBarDefaults.INSTANCE.getContainerColor($composer3, 6);
                    $dirty &= -7169;
                }
                if ((i & 16) != 0) {
                    contentColor2 = ColorSchemeKt.m2213contentColorForek8zF_U(containerColor2, $composer3, ($dirty >> 9) & 14);
                    $dirty &= -57345;
                }
                if (i9 != 0) {
                    tonalElevation2 = BottomAppBarDefaults.INSTANCE.m2073getContainerElevationD9Ej5fM();
                }
                PaddingValues contentPadding4 = i10 != 0 ? BottomAppBarDefaults.INSTANCE.getContentPadding() : contentPadding;
                if ((i & 128) != 0) {
                    windowInsets2 = BottomAppBarDefaults.INSTANCE.getWindowInsets($composer3, 6);
                    $dirty &= -29360129;
                } else {
                    windowInsets2 = windowInsets;
                }
                if (i2 != 0) {
                    contentPadding2 = contentPadding4;
                    scrollBehavior2 = null;
                    modifier3 = modifier2;
                    windowInsets3 = windowInsets2;
                    tonalElevation3 = tonalElevation2;
                    i3 = 12582912;
                    i4 = -1044837119;
                    containerColor3 = containerColor2;
                    contentColor3 = contentColor2;
                } else {
                    scrollBehavior2 = scrollBehavior;
                    contentPadding2 = contentPadding4;
                    modifier3 = modifier2;
                    windowInsets3 = windowInsets2;
                    tonalElevation3 = tonalElevation2;
                    i3 = 12582912;
                    i4 = -1044837119;
                    containerColor3 = containerColor2;
                    contentColor3 = contentColor2;
                }
            } else {
                $composer3.skipToGroupEnd();
                if ((i & 8) != 0) {
                    $dirty &= -7169;
                }
                if ((i & 16) != 0) {
                    $dirty &= -57345;
                }
                if ((i & 128) != 0) {
                    contentPadding2 = contentPadding;
                    windowInsets3 = windowInsets;
                    scrollBehavior2 = scrollBehavior;
                    $dirty &= -29360129;
                    modifier3 = modifier2;
                    tonalElevation3 = tonalElevation2;
                    i3 = 12582912;
                    i4 = -1044837119;
                    containerColor3 = containerColor2;
                    contentColor3 = contentColor2;
                } else {
                    contentPadding2 = contentPadding;
                    windowInsets3 = windowInsets;
                    scrollBehavior2 = scrollBehavior;
                    modifier3 = modifier2;
                    tonalElevation3 = tonalElevation2;
                    i3 = 12582912;
                    i4 = -1044837119;
                    containerColor3 = containerColor2;
                    contentColor3 = contentColor2;
                }
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(i4, $dirty, -1, "androidx.compose.material3.BottomAppBar (AppBar.kt:750)");
            }
            $composer2 = $composer3;
            m2051BottomAppBare3WI5M(modifier3, containerColor3, contentColor3, tonalElevation3, contentPadding2, windowInsets3, scrollBehavior2, ComposableLambdaKt.rememberComposableLambda(1566394874, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: androidx.compose.material3.AppBarKt$BottomAppBar$2
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

                /* JADX WARN: Removed duplicated region for block: B:35:0x0168  */
                /* JADX WARN: Removed duplicated region for block: B:53:0x02a0  */
                /* JADX WARN: Removed duplicated region for block: B:56:? A[RETURN, SYNTHETIC] */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final void invoke(RowScope $this$BottomAppBar, Composer $composer4, int $changed2) {
                    Function0<ComposeUiNode> function0;
                    int $changed$iv;
                    ComposerKt.sourceInformation($composer4, "C759@37751L204,766@38012L252:AppBar.kt#uh7d8r");
                    int $dirty2 = $changed2;
                    if (($changed2 & 6) == 0) {
                        $dirty2 |= $composer4.changed($this$BottomAppBar) ? 4 : 2;
                    }
                    if (($dirty2 & 19) != 18 || !$composer4.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1566394874, $dirty2, -1, "androidx.compose.material3.BottomAppBar.<anonymous> (AppBar.kt:759)");
                        }
                        Modifier modifier$iv = RowScope.weight$default($this$BottomAppBar, Modifier.INSTANCE, 1.0f, false, 2, null);
                        Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.getStart();
                        Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getCenterVertically();
                        Function3<RowScope, Composer, Integer, Unit> function32 = function3;
                        ComposerKt.sourceInformationMarkerStart($composer4, 693286680, "CC(Row)P(2,1,3)98@4939L58,99@5002L130:Row.kt#2w3rfo");
                        MeasurePolicy measurePolicy$iv = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer4, ((432 >> 3) & 14) | ((432 >> 3) & 112));
                        int $changed$iv$iv = (432 << 3) & 112;
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
                        if (!$this$Layout_u24lambda_u240$iv$iv.getInserting()) {
                            $changed$iv = 432;
                            if (!Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                            }
                            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
                            int i12 = ($changed$iv$iv$iv >> 6) & 14;
                            ComposerKt.sourceInformationMarkerStart($composer4, -407918630, "C100@5047L9:Row.kt#2w3rfo");
                            function32.invoke(RowScopeInstance.INSTANCE, $composer4, Integer.valueOf((($changed$iv >> 6) & 112) | 6));
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            $composer4.endNode();
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            ComposerKt.sourceInformationMarkerEnd($composer4);
                            if (function22 != null) {
                                Modifier modifier$iv2 = PaddingKt.m822paddingqDBjuR0$default(SizeKt.fillMaxHeight$default(Modifier.INSTANCE, 0.0f, 1, null), 0.0f, AppBarKt.FABVerticalPadding, AppBarKt.FABHorizontalPadding, 0.0f, 9, null);
                                Alignment contentAlignment$iv = Alignment.INSTANCE.getTopStart();
                                Function2<Composer, Integer, Unit> function24 = function22;
                                ComposerKt.sourceInformationMarkerStart($composer4, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                                MeasurePolicy measurePolicy$iv2 = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv, false);
                                int $changed$iv$iv2 = (54 << 3) & 112;
                                ComposerKt.sourceInformationMarkerStart($composer4, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                                int compositeKeyHash$iv$iv2 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                                CompositionLocalMap localMap$iv$iv2 = $composer4.getCurrentCompositionLocalMap();
                                Modifier materialized$iv$iv2 = ComposedModifierKt.materializeModifier($composer4, modifier$iv2);
                                Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
                                int $changed$iv$iv$iv2 = (($changed$iv$iv2 << 6) & 896) | 6;
                                ComposerKt.sourceInformationMarkerStart($composer4, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                                if (!($composer4.getApplier() instanceof Applier)) {
                                    ComposablesKt.invalidApplier();
                                }
                                $composer4.startReusableNode();
                                if ($composer4.getInserting()) {
                                    $composer4.createNode(constructor2);
                                } else {
                                    $composer4.useNode();
                                }
                                Composer $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3967constructorimpl($composer4);
                                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash2 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                                if ($this$Layout_u24lambda_u240$iv$iv2.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv2.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv2))) {
                                    $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv2));
                                    $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv2), setCompositeKeyHash2);
                                }
                                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, materialized$iv$iv2, ComposeUiNode.INSTANCE.getSetModifier());
                                int i13 = ($changed$iv$iv$iv2 >> 6) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer4, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                int i14 = ((54 >> 6) & 112) | 6;
                                ComposerKt.sourceInformationMarkerStart($composer4, 553416911, "C771@38228L22:AppBar.kt#uh7d8r");
                                function24.invoke($composer4, 0);
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                $composer4.endNode();
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                                ComposerKt.sourceInformationMarkerEnd($composer4);
                            }
                            if (!ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                                return;
                            }
                            return;
                        }
                        $changed$iv = 432;
                        $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                        $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), setCompositeKeyHash);
                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
                        int i122 = ($changed$iv$iv$iv >> 6) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer4, -407918630, "C100@5047L9:Row.kt#2w3rfo");
                        function32.invoke(RowScopeInstance.INSTANCE, $composer4, Integer.valueOf((($changed$iv >> 6) & 112) | 6));
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        $composer4.endNode();
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        ComposerKt.sourceInformationMarkerEnd($composer4);
                        if (function22 != null) {
                        }
                        if (!ComposerKt.isTraceInProgress()) {
                        }
                    } else {
                        $composer4.skipToGroupEnd();
                    }
                }
            }, $composer3, 54), $composer2, i3 | (($dirty >> 3) & 14) | (($dirty >> 6) & 112) | (($dirty >> 6) & 896) | (($dirty >> 6) & 7168) | (($dirty >> 6) & 57344) | (($dirty >> 6) & 458752) | (($dirty >> 6) & 3670016), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier4 = modifier3;
            containerColor4 = containerColor3;
            tonalElevation4 = tonalElevation3;
            contentPadding3 = contentPadding2;
            windowInsets4 = windowInsets3;
            scrollBehavior3 = scrollBehavior2;
            function23 = function22;
            contentColor4 = contentColor3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.AppBarKt$BottomAppBar$3
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
                    AppBarKt.m2052BottomAppBarqhFBPw4(function3, modifier4, function23, containerColor4, contentColor4, tonalElevation4, contentPadding3, windowInsets4, scrollBehavior3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    /* JADX INFO: renamed from: BottomAppBar-1oL4kX8, reason: not valid java name */
    public static final void m2049BottomAppBar1oL4kX8(Modifier modifier, long containerColor, long contentColor, float tonalElevation, PaddingValues contentPadding, WindowInsets windowInsets, final Function3<? super RowScope, ? super Composer, ? super Integer, Unit> function3, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        long containerColor2;
        long contentColor2;
        float tonalElevation2;
        PaddingValues contentPadding2;
        WindowInsets windowInsets2;
        int $dirty;
        int i2;
        int $dirty2;
        PaddingValues contentPadding3;
        WindowInsets windowInsets3;
        int $dirty3;
        int i3;
        long containerColor3;
        long contentColor3;
        float tonalElevation3;
        Modifier modifier3;
        Composer $composer2;
        final long containerColor4;
        final Modifier modifier4;
        final long contentColor4;
        final float tonalElevation4;
        final PaddingValues contentPadding4;
        final WindowInsets windowInsets4;
        Composer $composer3 = $composer.startRestartGroup(-1391700845);
        ComposerKt.sourceInformation($composer3, "C(BottomAppBar)P(4,0:c#ui.graphics.Color,2:c#ui.graphics.Color,5:c#ui.unit.Dp,3,6)807@39959L14,808@40001L31,811@40227L12,814@40294L302:AppBar.kt#uh7d8r");
        int $dirty4 = $changed;
        int i4 = i & 1;
        if (i4 != 0) {
            $dirty4 |= 6;
            modifier2 = modifier;
        } else if (($changed & 6) == 0) {
            modifier2 = modifier;
            $dirty4 |= $composer3.changed(modifier2) ? 4 : 2;
        } else {
            modifier2 = modifier;
        }
        if (($changed & 48) == 0) {
            if ((i & 2) == 0) {
                containerColor2 = containerColor;
                int i5 = $composer3.changed(containerColor2) ? 32 : 16;
                $dirty4 |= i5;
            } else {
                containerColor2 = containerColor;
            }
            $dirty4 |= i5;
        } else {
            containerColor2 = containerColor;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i & 4) == 0) {
                contentColor2 = contentColor;
                int i6 = $composer3.changed(contentColor2) ? 256 : 128;
                $dirty4 |= i6;
            } else {
                contentColor2 = contentColor;
            }
            $dirty4 |= i6;
        } else {
            contentColor2 = contentColor;
        }
        int i7 = i & 8;
        if (i7 != 0) {
            $dirty4 |= 3072;
            tonalElevation2 = tonalElevation;
        } else if (($changed & 3072) == 0) {
            tonalElevation2 = tonalElevation;
            $dirty4 |= $composer3.changed(tonalElevation2) ? 2048 : 1024;
        } else {
            tonalElevation2 = tonalElevation;
        }
        int i8 = i & 16;
        if (i8 != 0) {
            $dirty4 |= 24576;
            contentPadding2 = contentPadding;
        } else if (($changed & 24576) == 0) {
            contentPadding2 = contentPadding;
            $dirty4 |= $composer3.changed(contentPadding2) ? 16384 : 8192;
        } else {
            contentPadding2 = contentPadding;
        }
        if ((196608 & $changed) == 0) {
            if ((i & 32) == 0) {
                windowInsets2 = windowInsets;
                int i9 = $composer3.changed(windowInsets2) ? 131072 : 65536;
                $dirty4 |= i9;
            } else {
                windowInsets2 = windowInsets;
            }
            $dirty4 |= i9;
        } else {
            windowInsets2 = windowInsets;
        }
        if ((i & 64) != 0) {
            $dirty4 |= 1572864;
        } else if (($changed & 1572864) == 0) {
            $dirty4 |= $composer3.changedInstance(function3) ? 1048576 : 524288;
        }
        int $dirty5 = $dirty4;
        if (($dirty4 & 599187) == 599186 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            $composer2 = $composer3;
            modifier4 = modifier2;
            containerColor4 = containerColor2;
            contentColor4 = contentColor2;
            tonalElevation4 = tonalElevation2;
            contentPadding4 = contentPadding2;
            windowInsets4 = windowInsets2;
        } else {
            $composer3.startDefaults();
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                if (i4 != 0) {
                    modifier2 = Modifier.INSTANCE;
                }
                if ((i & 2) != 0) {
                    containerColor2 = BottomAppBarDefaults.INSTANCE.getContainerColor($composer3, 6);
                    $dirty = $dirty5 & (-113);
                } else {
                    $dirty = $dirty5;
                }
                if ((i & 4) != 0) {
                    i2 = -458753;
                    contentColor2 = ColorSchemeKt.m2213contentColorForek8zF_U(containerColor2, $composer3, ($dirty >> 3) & 14);
                    $dirty &= -897;
                } else {
                    i2 = -458753;
                }
                if (i7 != 0) {
                    tonalElevation2 = BottomAppBarDefaults.INSTANCE.m2073getContainerElevationD9Ej5fM();
                }
                if (i8 != 0) {
                    contentPadding2 = BottomAppBarDefaults.INSTANCE.getContentPadding();
                }
                if ((i & 32) != 0) {
                    windowInsets3 = BottomAppBarDefaults.INSTANCE.getWindowInsets($composer3, 6);
                    contentColor3 = contentColor2;
                    contentPadding3 = contentPadding2;
                    i3 = -1391700845;
                    $dirty2 = $dirty & i2;
                    containerColor3 = containerColor2;
                    $dirty3 = 1572864;
                    tonalElevation3 = tonalElevation2;
                    modifier3 = modifier2;
                } else {
                    $dirty2 = $dirty;
                    contentPadding3 = contentPadding2;
                    windowInsets3 = windowInsets2;
                    $dirty3 = 1572864;
                    i3 = -1391700845;
                    containerColor3 = containerColor2;
                    contentColor3 = contentColor2;
                    tonalElevation3 = tonalElevation2;
                    modifier3 = modifier2;
                }
            } else {
                $composer3.skipToGroupEnd();
                int $dirty6 = (i & 2) != 0 ? $dirty5 & (-113) : $dirty5;
                if ((i & 4) != 0) {
                    $dirty6 &= -897;
                }
                if ((i & 32) != 0) {
                    $dirty2 = $dirty6 & (-458753);
                    contentPadding3 = contentPadding2;
                    windowInsets3 = windowInsets2;
                    $dirty3 = 1572864;
                    i3 = -1391700845;
                    containerColor3 = containerColor2;
                    contentColor3 = contentColor2;
                    tonalElevation3 = tonalElevation2;
                    modifier3 = modifier2;
                } else {
                    $dirty2 = $dirty6;
                    contentPadding3 = contentPadding2;
                    windowInsets3 = windowInsets2;
                    $dirty3 = 1572864;
                    i3 = -1391700845;
                    containerColor3 = containerColor2;
                    contentColor3 = contentColor2;
                    tonalElevation3 = tonalElevation2;
                    modifier3 = modifier2;
                }
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(i3, $dirty2, -1, "androidx.compose.material3.BottomAppBar (AppBar.kt:814)");
            }
            $composer2 = $composer3;
            m2051BottomAppBare3WI5M(modifier3, containerColor3, contentColor3, tonalElevation3, contentPadding3, windowInsets3, null, function3, $composer2, $dirty3 | ($dirty2 & 14) | ($dirty2 & 112) | ($dirty2 & 896) | ($dirty2 & 7168) | (57344 & $dirty2) | (458752 & $dirty2) | (29360128 & ($dirty2 << 3)), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            containerColor4 = containerColor3;
            modifier4 = modifier3;
            contentColor4 = contentColor3;
            tonalElevation4 = tonalElevation3;
            contentPadding4 = contentPadding3;
            windowInsets4 = windowInsets3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.AppBarKt$BottomAppBar$4
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
                    AppBarKt.m2049BottomAppBar1oL4kX8(modifier4, containerColor4, contentColor4, tonalElevation4, contentPadding4, windowInsets4, function3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    /* JADX INFO: renamed from: BottomAppBar-e-3WI5M, reason: not valid java name */
    public static final void m2051BottomAppBare3WI5M(Modifier modifier, long containerColor, long contentColor, float tonalElevation, PaddingValues contentPadding, WindowInsets windowInsets, BottomAppBarScrollBehavior scrollBehavior, final Function3<? super RowScope, ? super Composer, ? super Integer, Unit> function3, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        long containerColor2;
        long contentColor2;
        float f;
        PaddingValues paddingValues;
        int $dirty;
        final PaddingValues contentPadding2;
        WindowInsets windowInsets2;
        float tonalElevation2;
        long containerColor3;
        int i2;
        final BottomAppBarScrollBehavior scrollBehavior2;
        int $dirty2;
        long contentColor3;
        final WindowInsets windowInsets3;
        int i3;
        int $dirty3;
        int i4;
        int i5;
        Modifier.Companion appBarDragModifier;
        Object value$iv;
        Composer $composer2;
        final WindowInsets windowInsets4;
        final Modifier modifier3;
        final PaddingValues contentPadding3;
        final long contentColor4;
        final float tonalElevation3;
        final BottomAppBarScrollBehavior scrollBehavior3;
        final long containerColor4;
        Object value$iv2;
        AppBarKt$BottomAppBar$appBarDragModifier$2$1 value$iv3;
        Composer $composer3 = $composer.startRestartGroup(422438773);
        ComposerKt.sourceInformation($composer3, "C(BottomAppBar)P(4,0:c#ui.graphics.Color,2:c#ui.graphics.Color,6:c#ui.unit.Dp,3,7,5)860@42630L14,861@42672L31,864@42898L12,896@44292L5,899@44363L596,911@45008L364,891@44025L1347:AppBar.kt#uh7d8r");
        int $dirty4 = $changed;
        int i6 = i & 1;
        if (i6 != 0) {
            $dirty4 |= 6;
            modifier2 = modifier;
        } else if (($changed & 6) == 0) {
            modifier2 = modifier;
            $dirty4 |= $composer3.changed(modifier2) ? 4 : 2;
        } else {
            modifier2 = modifier;
        }
        if (($changed & 48) == 0) {
            if ((i & 2) == 0) {
                containerColor2 = containerColor;
                int i7 = $composer3.changed(containerColor2) ? 32 : 16;
                $dirty4 |= i7;
            } else {
                containerColor2 = containerColor;
            }
            $dirty4 |= i7;
        } else {
            containerColor2 = containerColor;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            if ((i & 4) == 0) {
                contentColor2 = contentColor;
                int i8 = $composer3.changed(contentColor2) ? 256 : 128;
                $dirty4 |= i8;
            } else {
                contentColor2 = contentColor;
            }
            $dirty4 |= i8;
        } else {
            contentColor2 = contentColor;
        }
        int i9 = i & 8;
        if (i9 != 0) {
            $dirty4 |= 3072;
            f = tonalElevation;
        } else if (($changed & 3072) == 0) {
            f = tonalElevation;
            $dirty4 |= $composer3.changed(f) ? 2048 : 1024;
        } else {
            f = tonalElevation;
        }
        int i10 = i & 16;
        if (i10 != 0) {
            $dirty4 |= 24576;
            paddingValues = contentPadding;
        } else if (($changed & 24576) == 0) {
            paddingValues = contentPadding;
            $dirty4 |= $composer3.changed(paddingValues) ? 16384 : 8192;
        } else {
            paddingValues = contentPadding;
        }
        if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            $dirty4 |= ((i & 32) == 0 && $composer3.changed(windowInsets)) ? 131072 : 65536;
        }
        int i11 = i & 64;
        if (i11 != 0) {
            $dirty4 |= 1572864;
        } else if (($changed & 1572864) == 0) {
            $dirty4 |= $composer3.changed(scrollBehavior) ? 1048576 : 524288;
        }
        if ((i & 128) != 0) {
            $dirty4 |= 12582912;
        } else if (($changed & 12582912) == 0) {
            $dirty4 |= $composer3.changedInstance(function3) ? 8388608 : 4194304;
        }
        int $dirty5 = $dirty4;
        if ((4793491 & $dirty4) == 4793490 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            scrollBehavior3 = scrollBehavior;
            $composer2 = $composer3;
            modifier3 = modifier2;
            containerColor4 = containerColor2;
            contentColor4 = contentColor2;
            tonalElevation3 = f;
            contentPadding3 = paddingValues;
            windowInsets4 = windowInsets;
        } else {
            $composer3.startDefaults();
            if (($changed & 1) == 0 || $composer3.getDefaultsInvalid()) {
                if (i6 != 0) {
                    modifier2 = Modifier.INSTANCE;
                }
                if ((i & 2) != 0) {
                    containerColor2 = BottomAppBarDefaults.INSTANCE.getContainerColor($composer3, 6);
                    $dirty = $dirty5 & (-113);
                } else {
                    $dirty = $dirty5;
                }
                if ((i & 4) != 0) {
                    contentColor2 = ColorSchemeKt.m2213contentColorForek8zF_U(containerColor2, $composer3, ($dirty >> 3) & 14);
                    $dirty &= -897;
                }
                float tonalElevation4 = i9 != 0 ? BottomAppBarDefaults.INSTANCE.m2073getContainerElevationD9Ej5fM() : f;
                contentPadding2 = i10 != 0 ? BottomAppBarDefaults.INSTANCE.getContentPadding() : paddingValues;
                if ((i & 32) != 0) {
                    windowInsets2 = BottomAppBarDefaults.INSTANCE.getWindowInsets($composer3, 6);
                    $dirty &= -458753;
                } else {
                    windowInsets2 = windowInsets;
                }
                if (i11 != 0) {
                    tonalElevation2 = tonalElevation4;
                    containerColor3 = containerColor2;
                    scrollBehavior2 = null;
                    i2 = 12582912;
                    $dirty2 = $dirty;
                    contentColor3 = contentColor2;
                    windowInsets3 = windowInsets2;
                    i3 = 422438773;
                } else {
                    tonalElevation2 = tonalElevation4;
                    containerColor3 = containerColor2;
                    i2 = 12582912;
                    scrollBehavior2 = scrollBehavior;
                    $dirty2 = $dirty;
                    contentColor3 = contentColor2;
                    windowInsets3 = windowInsets2;
                    i3 = 422438773;
                }
            } else {
                $composer3.skipToGroupEnd();
                int $dirty6 = (i & 2) != 0 ? $dirty5 & (-113) : $dirty5;
                if ((i & 4) != 0) {
                    $dirty6 &= -897;
                }
                if ((i & 32) != 0) {
                    $dirty6 &= -458753;
                }
                scrollBehavior2 = scrollBehavior;
                tonalElevation2 = f;
                contentPadding2 = paddingValues;
                containerColor3 = containerColor2;
                i2 = 12582912;
                $dirty2 = $dirty6;
                contentColor3 = contentColor2;
                i3 = 422438773;
                windowInsets3 = windowInsets;
            }
            $composer3.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(i3, $dirty2, -1, "androidx.compose.material3.BottomAppBar (AppBar.kt:867)");
            }
            $composer3.startReplaceGroup(1393560009);
            ComposerKt.sourceInformation($composer3, "874@43358L55,874@43335L78,875@43447L289");
            if (scrollBehavior2 == null || scrollBehavior2.getIsPinned()) {
                $dirty3 = $dirty2;
                i4 = i2;
                i5 = 3670016;
                appBarDragModifier = Modifier.INSTANCE;
            } else {
                Modifier.Companion companion = Modifier.INSTANCE;
                Orientation orientation = Orientation.Vertical;
                i4 = i2;
                ComposerKt.sourceInformationMarkerStart($composer3, 1393566103, "CC(remember):AppBar.kt#9igjgp");
                i5 = 3670016;
                boolean invalid$iv = ($dirty2 & 3670016) == 1048576;
                Object it$iv = $composer3.rememberedValue();
                if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                    value$iv2 = (Function1) new Function1<Float, Unit>() { // from class: androidx.compose.material3.AppBarKt$BottomAppBar$appBarDragModifier$1$1
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(Float f2) {
                            invoke(f2.floatValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(float delta) {
                            BottomAppBarState state = scrollBehavior2.getState();
                            state.setHeightOffset(state.getHeightOffset() - delta);
                        }
                    };
                    $composer3.updateRememberedValue(value$iv2);
                } else {
                    value$iv2 = it$iv;
                }
                ComposerKt.sourceInformationMarkerEnd($composer3);
                DraggableState draggableStateRememberDraggableState = DraggableKt.rememberDraggableState((Function1) value$iv2, $composer3, 0);
                Modifier.Companion companion2 = companion;
                ComposerKt.sourceInformationMarkerStart($composer3, 1393569185, "CC(remember):AppBar.kt#9igjgp");
                boolean invalid$iv2 = ($dirty2 & 3670016) == 1048576;
                Object it$iv2 = $composer3.rememberedValue();
                if (invalid$iv2 || it$iv2 == Composer.INSTANCE.getEmpty()) {
                    $dirty3 = $dirty2;
                    value$iv3 = new AppBarKt$BottomAppBar$appBarDragModifier$2$1(scrollBehavior2, null);
                    $composer3.updateRememberedValue(value$iv3);
                } else {
                    $dirty3 = $dirty2;
                    value$iv3 = it$iv2;
                }
                ComposerKt.sourceInformationMarkerEnd($composer3);
                appBarDragModifier = DraggableKt.draggable(companion2, draggableStateRememberDraggableState, orientation, (TsExtractor.TS_PACKET_SIZE & 4) != 0, (TsExtractor.TS_PACKET_SIZE & 8) != 0 ? null : null, (TsExtractor.TS_PACKET_SIZE & 16) != 0 ? false : false, (TsExtractor.TS_PACKET_SIZE & 32) != 0 ? DraggableKt.NoOpOnDragStarted : null, (TsExtractor.TS_PACKET_SIZE & 64) != 0 ? DraggableKt.NoOpOnDragStopped : (Function3) value$iv3, (TsExtractor.TS_PACKET_SIZE & 128) != 0 ? false : false);
            }
            $composer3.endReplaceGroup();
            Shape value = ShapesKt.getValue(BottomAppBarTokens.INSTANCE.getContainerShape(), $composer3, 6);
            ComposerKt.sourceInformationMarkerStart($composer3, 1393598804, "CC(remember):AppBar.kt#9igjgp");
            boolean invalid$iv3 = ($dirty3 & i5) == 1048576;
            Object it$iv3 = $composer3.rememberedValue();
            if (invalid$iv3 || it$iv3 == Composer.INSTANCE.getEmpty()) {
                value$iv = (Function3) new Function3<MeasureScope, Measurable, Constraints, MeasureResult>() { // from class: androidx.compose.material3.AppBarKt$BottomAppBar$5$1
                    {
                        super(3);
                    }

                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ MeasureResult invoke(MeasureScope measureScope, Measurable measurable, Constraints constraints) {
                        return m2063invoke3p2s80s(measureScope, measurable, constraints.getValue());
                    }

                    /* JADX INFO: renamed from: invoke-3p2s80s, reason: not valid java name */
                    public final MeasureResult m2063invoke3p2s80s(MeasureScope $this$layout, Measurable measurable, long constraints) {
                        BottomAppBarState state;
                        BottomAppBarScrollBehavior bottomAppBarScrollBehavior = scrollBehavior2;
                        BottomAppBarState state2 = bottomAppBarScrollBehavior != null ? bottomAppBarScrollBehavior.getState() : null;
                        if (state2 != null) {
                            state2.setHeightOffsetLimit(-$this$layout.mo405toPx0680j_4(BottomAppBarTokens.INSTANCE.m3299getContainerHeightD9Ej5fM()));
                        }
                        final Placeable placeable = measurable.mo6141measureBRTryo0(constraints);
                        float height = placeable.getHeight();
                        BottomAppBarScrollBehavior bottomAppBarScrollBehavior2 = scrollBehavior2;
                        float height2 = height + ((bottomAppBarScrollBehavior2 == null || (state = bottomAppBarScrollBehavior2.getState()) == null) ? 0.0f : state.getHeightOffset());
                        return MeasureScope.layout$default($this$layout, placeable.getWidth(), MathKt.roundToInt(height2), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material3.AppBarKt$BottomAppBar$5$1.1
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                                invoke2(placementScope);
                                return Unit.INSTANCE;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(Placeable.PlacementScope $this$layout2) {
                                Placeable.PlacementScope.place$default($this$layout2, placeable, 0, 0, 0.0f, 4, null);
                            }
                        }, 4, null);
                    }
                };
                $composer3.updateRememberedValue(value$iv);
            } else {
                value$iv = it$iv3;
            }
            ComposerKt.sourceInformationMarkerEnd($composer3);
            $composer2 = $composer3;
            SurfaceKt.m2826SurfaceT9BRK9s(LayoutModifierKt.layout(modifier2, (Function3) value$iv).then(appBarDragModifier), value, containerColor3, contentColor3, tonalElevation2, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(1243053520, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.AppBarKt$BottomAppBar$6
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
                    ComposerKt.sourceInformation($composer4, "C912@45018L348:AppBar.kt#uh7d8r");
                    if (($changed2 & 3) != 2 || !$composer4.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1243053520, $changed2, -1, "androidx.compose.material3.BottomAppBar.<anonymous> (AppBar.kt:912)");
                        }
                        Modifier modifier$iv = PaddingKt.padding(SizeKt.m850height3ABfNKs(WindowInsetsPaddingKt.windowInsetsPadding(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), windowInsets3), BottomAppBarTokens.INSTANCE.m3299getContainerHeightD9Ej5fM()), contentPadding2);
                        Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.getStart();
                        Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getCenterVertically();
                        Function3<RowScope, Composer, Integer, Unit> function32 = function3;
                        ComposerKt.sourceInformationMarkerStart($composer4, 693286680, "CC(Row)P(2,1,3)98@4939L58,99@5002L130:Row.kt#2w3rfo");
                        MeasurePolicy measurePolicy$iv = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer4, ((432 >> 3) & 14) | ((432 >> 3) & 112));
                        int $changed$iv$iv = (432 << 3) & 112;
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
                            $composer4.createNode(constructor);
                        } else {
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
                        int i12 = ($changed$iv$iv$iv >> 6) & 14;
                        ComposerKt.sourceInformationMarkerStart($composer4, -407918630, "C100@5047L9:Row.kt#2w3rfo");
                        function32.invoke(RowScopeInstance.INSTANCE, $composer4, Integer.valueOf(((432 >> 6) & 112) | 6));
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
            }, $composer3, 54), $composer2, (($dirty3 << 3) & 896) | i4 | (($dirty3 << 3) & 7168) | (57344 & ($dirty3 << 3)), 96);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            windowInsets4 = windowInsets3;
            modifier3 = modifier2;
            contentPadding3 = contentPadding2;
            contentColor4 = contentColor3;
            tonalElevation3 = tonalElevation2;
            scrollBehavior3 = scrollBehavior2;
            containerColor4 = containerColor3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.AppBarKt$BottomAppBar$7
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
                    AppBarKt.m2051BottomAppBare3WI5M(modifier3, containerColor4, contentColor4, tonalElevation3, contentPadding3, windowInsets4, scrollBehavior3, function3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    public static final TopAppBarState rememberTopAppBarState(final float initialHeightOffsetLimit, final float initialHeightOffset, final float initialContentOffset, Composer $composer, int $changed, int i) {
        Object value$iv;
        ComposerKt.sourceInformationMarkerStart($composer, 1801969826, "C(rememberTopAppBarState)P(2,1)1292@62790L99,1292@62743L146:AppBar.kt#uh7d8r");
        if ((i & 1) != 0) {
            initialHeightOffsetLimit = -3.4028235E38f;
        }
        if ((i & 2) != 0) {
            initialHeightOffset = 0.0f;
        }
        if ((i & 4) != 0) {
            initialContentOffset = 0.0f;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1801969826, $changed, -1, "androidx.compose.material3.rememberTopAppBarState (AppBar.kt:1291)");
        }
        Object[] objArr = new Object[0];
        Saver<TopAppBarState, ?> saver = TopAppBarState.INSTANCE.getSaver();
        ComposerKt.sourceInformationMarkerStart($composer, 1949255933, "CC(remember):AppBar.kt#9igjgp");
        boolean invalid$iv = (((($changed & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 && $composer.changed(initialContentOffset)) || ($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | (((($changed & 14) ^ 6) > 4 && $composer.changed(initialHeightOffsetLimit)) || ($changed & 6) == 4) | (((($changed & 112) ^ 48) > 32 && $composer.changed(initialHeightOffset)) || ($changed & 48) == 32);
        Object it$iv = $composer.rememberedValue();
        if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
            value$iv = (Function0) new Function0<TopAppBarState>() { // from class: androidx.compose.material3.AppBarKt$rememberTopAppBarState$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final TopAppBarState invoke() {
                    return new TopAppBarState(initialHeightOffsetLimit, initialHeightOffset, initialContentOffset);
                }
            };
            $composer.updateRememberedValue(value$iv);
        } else {
            value$iv = it$iv;
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        TopAppBarState topAppBarState = (TopAppBarState) RememberSaveableKt.m4137rememberSaveable(objArr, (Saver) saver, (String) null, (Function0) value$iv, $composer, 0, 4);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        return topAppBarState;
    }

    public static final BottomAppBarState rememberBottomAppBarState(final float initialHeightOffsetLimit, final float initialHeightOffset, final float initialContentOffset, Composer $composer, int $changed, int i) {
        Object value$iv;
        ComposerKt.sourceInformationMarkerStart($composer, 1420874240, "C(rememberBottomAppBarState)P(2,1)1611@75546L102,1611@75496L152:AppBar.kt#uh7d8r");
        if ((i & 1) != 0) {
            initialHeightOffsetLimit = -3.4028235E38f;
        }
        if ((i & 2) != 0) {
            initialHeightOffset = 0.0f;
        }
        if ((i & 4) != 0) {
            initialContentOffset = 0.0f;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1420874240, $changed, -1, "androidx.compose.material3.rememberBottomAppBarState (AppBar.kt:1610)");
        }
        Object[] objArr = new Object[0];
        Saver<BottomAppBarState, ?> saver = BottomAppBarState.INSTANCE.getSaver();
        ComposerKt.sourceInformationMarkerStart($composer, -1399214710, "CC(remember):AppBar.kt#9igjgp");
        boolean invalid$iv = (((($changed & 896) ^ RendererCapabilities.DECODER_SUPPORT_MASK) > 256 && $composer.changed(initialContentOffset)) || ($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 256) | (((($changed & 14) ^ 6) > 4 && $composer.changed(initialHeightOffsetLimit)) || ($changed & 6) == 4) | (((($changed & 112) ^ 48) > 32 && $composer.changed(initialHeightOffset)) || ($changed & 48) == 32);
        Object it$iv = $composer.rememberedValue();
        if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
            value$iv = (Function0) new Function0<BottomAppBarState>() { // from class: androidx.compose.material3.AppBarKt$rememberBottomAppBarState$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final BottomAppBarState invoke() {
                    return AppBarKt.BottomAppBarState(initialHeightOffsetLimit, initialHeightOffset, initialContentOffset);
                }
            };
            $composer.updateRememberedValue(value$iv);
        } else {
            value$iv = it$iv;
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        BottomAppBarState bottomAppBarState = (BottomAppBarState) RememberSaveableKt.m4137rememberSaveable(objArr, (Saver) saver, (String) null, (Function0) value$iv, $composer, 0, 4);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        return bottomAppBarState;
    }

    public static final BottomAppBarState BottomAppBarState(float initialHeightOffsetLimit, float initialHeightOffset, float initialContentOffset) {
        return new BottomAppBarStateImpl(initialHeightOffsetLimit, initialHeightOffset, initialContentOffset);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0122 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object settleAppBarBottom(final BottomAppBarState state, float velocity, DecayAnimationSpec<Float> decayAnimationSpec, AnimationSpec<Float> animationSpec, Continuation<? super Velocity> continuation) {
        C04061 c04061;
        Ref.FloatRef remainingVelocity;
        final BottomAppBarState state2;
        AnimationSpec<Float> animationSpec2;
        BottomAppBarState state3;
        Ref.FloatRef remainingVelocity2;
        AnimationSpec<Float> animationSpec3;
        AnimationState animationStateAnimationState$default;
        float heightOffsetLimit;
        Float fBoxFloat;
        Function1<AnimationScope<Float, AnimationVector1D>, Unit> function1;
        Ref.FloatRef remainingVelocity3;
        if (continuation instanceof C04061) {
            c04061 = (C04061) continuation;
            if ((c04061.label & Integer.MIN_VALUE) != 0) {
                c04061.label -= Integer.MIN_VALUE;
            } else {
                c04061 = new C04061(continuation);
            }
        }
        C04061 c040612 = c04061;
        Object $result = c040612.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c040612.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                if (state.getCollapsedFraction() >= 0.01f) {
                    if (!(state.getCollapsedFraction() == 1.0f)) {
                        final Ref.FloatRef remainingVelocity4 = new Ref.FloatRef();
                        remainingVelocity4.element = velocity;
                        if (decayAnimationSpec != null && Math.abs(velocity) > 1.0f) {
                            final Ref.FloatRef lastValue = new Ref.FloatRef();
                            AnimationState animationStateAnimationState$default2 = AnimationStateKt.AnimationState$default(0.0f, velocity, 0L, 0L, false, 28, null);
                            Function1<AnimationScope<Float, AnimationVector1D>, Unit> function12 = new Function1<AnimationScope<Float, AnimationVector1D>, Unit>() { // from class: androidx.compose.material3.AppBarKt.settleAppBarBottom.2
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(AnimationScope<Float, AnimationVector1D> animationScope) {
                                    invoke2(animationScope);
                                    return Unit.INSTANCE;
                                }

                                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                                public final void invoke2(AnimationScope<Float, AnimationVector1D> animationScope) {
                                    float delta = animationScope.getValue().floatValue() - lastValue.element;
                                    float initialHeightOffset = state.getHeightOffset();
                                    state.setHeightOffset(initialHeightOffset + delta);
                                    float consumed = Math.abs(initialHeightOffset - state.getHeightOffset());
                                    lastValue.element = animationScope.getValue().floatValue();
                                    remainingVelocity4.element = animationScope.getVelocity().floatValue();
                                    if (Math.abs(delta - consumed) > 0.5f) {
                                        animationScope.cancelAnimation();
                                    }
                                }
                            };
                            c040612.L$0 = state;
                            c040612.L$1 = animationSpec;
                            c040612.L$2 = remainingVelocity4;
                            c040612.label = 1;
                            if (SuspendAnimationKt.animateDecay$default(animationStateAnimationState$default2, decayAnimationSpec, false, function12, c040612, 2, null) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            state3 = state;
                            remainingVelocity2 = remainingVelocity4;
                            animationSpec3 = animationSpec;
                            remainingVelocity = remainingVelocity2;
                            state2 = state3;
                            animationSpec2 = animationSpec3;
                            if (animationSpec2 != null) {
                                animationStateAnimationState$default = AnimationStateKt.AnimationState$default(state2.getHeightOffset(), 0.0f, 0L, 0L, false, 30, null);
                                if (state2.getCollapsedFraction() >= 0.5f) {
                                }
                                fBoxFloat = Boxing.boxFloat(heightOffsetLimit);
                                function1 = new Function1<AnimationScope<Float, AnimationVector1D>, Unit>() { // from class: androidx.compose.material3.AppBarKt.settleAppBarBottom.3
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Unit invoke(AnimationScope<Float, AnimationVector1D> animationScope) {
                                        invoke2(animationScope);
                                        return Unit.INSTANCE;
                                    }

                                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                                    public final void invoke2(AnimationScope<Float, AnimationVector1D> animationScope) {
                                        state2.setHeightOffset(animationScope.getValue().floatValue());
                                    }
                                };
                                c040612.L$0 = remainingVelocity;
                                c040612.L$1 = null;
                                c040612.L$2 = null;
                                c040612.label = 2;
                                if (SuspendAnimationKt.animateTo(animationStateAnimationState$default, fBoxFloat, (4 & 2) != 0 ? AnimationSpecKt.spring$default(0.0f, 0.0f, null, 7, null) : animationSpec2, (4 & 4) != 0 ? false : false, (4 & 8) != 0 ? new Function1() { // from class: androidx.compose.animation.core.SuspendAnimationKt$$ExternalSyntheticLambda9
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj2) {
                                        return Unit.INSTANCE;
                                    }
                                } : function1, c040612) != coroutine_suspended) {
                                }
                            }
                            return Velocity.m7734boximpl(VelocityKt.Velocity(0.0f, remainingVelocity.element));
                        }
                        remainingVelocity = remainingVelocity4;
                        state2 = state;
                        animationSpec2 = animationSpec;
                        if (animationSpec2 != null && state2.getHeightOffset() < 0.0f && state2.getHeightOffset() > state2.getHeightOffsetLimit()) {
                            animationStateAnimationState$default = AnimationStateKt.AnimationState$default(state2.getHeightOffset(), 0.0f, 0L, 0L, false, 30, null);
                            if (state2.getCollapsedFraction() >= 0.5f) {
                                heightOffsetLimit = 0.0f;
                            } else {
                                heightOffsetLimit = state2.getHeightOffsetLimit();
                            }
                            fBoxFloat = Boxing.boxFloat(heightOffsetLimit);
                            function1 = new Function1<AnimationScope<Float, AnimationVector1D>, Unit>() { // from class: androidx.compose.material3.AppBarKt.settleAppBarBottom.3
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(AnimationScope<Float, AnimationVector1D> animationScope) {
                                    invoke2(animationScope);
                                    return Unit.INSTANCE;
                                }

                                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                                public final void invoke2(AnimationScope<Float, AnimationVector1D> animationScope) {
                                    state2.setHeightOffset(animationScope.getValue().floatValue());
                                }
                            };
                            c040612.L$0 = remainingVelocity;
                            c040612.L$1 = null;
                            c040612.L$2 = null;
                            c040612.label = 2;
                            if (SuspendAnimationKt.animateTo(animationStateAnimationState$default, fBoxFloat, (4 & 2) != 0 ? AnimationSpecKt.spring$default(0.0f, 0.0f, null, 7, null) : animationSpec2, (4 & 4) != 0 ? false : false, (4 & 8) != 0 ? new Function1() { // from class: androidx.compose.animation.core.SuspendAnimationKt$$ExternalSyntheticLambda9
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj2) {
                                    return Unit.INSTANCE;
                                }
                            } : function1, c040612) != coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            remainingVelocity3 = remainingVelocity;
                            remainingVelocity = remainingVelocity3;
                        }
                        return Velocity.m7734boximpl(VelocityKt.Velocity(0.0f, remainingVelocity.element));
                    }
                }
                return Velocity.m7734boximpl(Velocity.INSTANCE.m7754getZero9UxMQ8M());
            case 1:
                remainingVelocity2 = (Ref.FloatRef) c040612.L$2;
                animationSpec3 = (AnimationSpec) c040612.L$1;
                state3 = (BottomAppBarState) c040612.L$0;
                ResultKt.throwOnFailure($result);
                remainingVelocity = remainingVelocity2;
                state2 = state3;
                animationSpec2 = animationSpec3;
                if (animationSpec2 != null) {
                }
                return Velocity.m7734boximpl(VelocityKt.Velocity(0.0f, remainingVelocity.element));
            case 2:
                remainingVelocity3 = (Ref.FloatRef) c040612.L$0;
                ResultKt.throwOnFailure($result);
                remainingVelocity = remainingVelocity3;
                return Velocity.m7734boximpl(VelocityKt.Velocity(0.0f, remainingVelocity.element));
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    static {
        float arg0$iv = Dp.m7505constructorimpl(16);
        float other$iv = Dp.m7505constructorimpl(12);
        BottomAppBarHorizontalPadding = Dp.m7505constructorimpl(arg0$iv - other$iv);
        float arg0$iv2 = Dp.m7505constructorimpl(16);
        float other$iv2 = Dp.m7505constructorimpl(12);
        BottomAppBarVerticalPadding = Dp.m7505constructorimpl(arg0$iv2 - other$iv2);
        float arg0$iv3 = Dp.m7505constructorimpl(16);
        float other$iv3 = BottomAppBarHorizontalPadding;
        FABHorizontalPadding = Dp.m7505constructorimpl(arg0$iv3 - other$iv3);
        float arg0$iv4 = Dp.m7505constructorimpl(12);
        float other$iv4 = BottomAppBarVerticalPadding;
        FABVerticalPadding = Dp.m7505constructorimpl(arg0$iv4 - other$iv4);
        TopTitleAlphaEasing = new CubicBezierEasing(0.8f, 0.0f, 0.8f, 0.15f);
        MediumTitleBottomPadding = Dp.m7505constructorimpl(24);
        LargeTitleBottomPadding = Dp.m7505constructorimpl(28);
        TopAppBarHorizontalPadding = Dp.m7505constructorimpl(4);
        float arg0$iv5 = Dp.m7505constructorimpl(16);
        float other$iv5 = TopAppBarHorizontalPadding;
        TopAppBarTitleInset = Dp.m7505constructorimpl(arg0$iv5 - other$iv5);
    }

    public static final float getBottomAppBarVerticalPadding() {
        return BottomAppBarVerticalPadding;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0206  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0208  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x031c  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0368  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0372  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0391  */
    /* JADX WARN: Removed duplicated region for block: B:192:? A[RETURN, SYNTHETIC] */
    /* JADX INFO: renamed from: SingleRowTopAppBar-cJHQLPU, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void m2056SingleRowTopAppBarcJHQLPU(Modifier modifier, final Function2<? super Composer, ? super Integer, Unit> function2, final TextStyle titleTextStyle, final boolean centeredTitle, final Function2<? super Composer, ? super Integer, Unit> function22, final Function3<? super RowScope, ? super Composer, ? super Integer, Unit> function3, final float expandedHeight, final WindowInsets windowInsets, final TopAppBarColors colors, final TopAppBarScrollBehavior scrollBehavior, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        int $dirty;
        boolean z;
        int $dirty2;
        boolean invalid$iv;
        Object value$iv;
        Modifier.Companion appBarDragModifier;
        Composer $composer2;
        final Modifier modifier3;
        Object value$iv2;
        AppBarKt$SingleRowTopAppBar$appBarDragModifier$2$1 value$iv3;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        int i2;
        Composer $composer3 = $composer.startRestartGroup(-342194911);
        ComposerKt.sourceInformation($composer3, "C(SingleRowTopAppBar)P(4,7,8,1,5!1,3:c#ui.unit.Dp,9)*1865@85622L7,1866@85690L284,1866@85679L295,1879@86382L321,1887@86744L178,1894@87005L197,1926@88369L1014,1926@88285L1098:AppBar.kt#uh7d8r");
        int $dirty3 = $changed;
        int i3 = i & 1;
        if (i3 != 0) {
            $dirty3 |= 6;
            modifier2 = modifier;
        } else if (($changed & 6) == 0) {
            modifier2 = modifier;
            $dirty3 |= $composer3.changed(modifier2) ? 4 : 2;
        } else {
            modifier2 = modifier;
        }
        if ((i & 2) != 0) {
            $dirty3 |= 48;
        } else if (($changed & 48) == 0) {
            $dirty3 |= $composer3.changedInstance(function2) ? 32 : 16;
        }
        if ((i & 4) != 0) {
            $dirty3 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty3 |= $composer3.changed(titleTextStyle) ? 256 : 128;
        }
        if ((i & 8) != 0) {
            $dirty3 |= 3072;
        } else if (($changed & 3072) == 0) {
            $dirty3 |= $composer3.changed(centeredTitle) ? 2048 : 1024;
        }
        if ((i & 16) != 0) {
            $dirty3 |= 24576;
        } else if (($changed & 24576) == 0) {
            $dirty3 |= $composer3.changedInstance(function22) ? 16384 : 8192;
        }
        if ((i & 32) != 0) {
            $dirty3 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            $dirty3 |= $composer3.changedInstance(function3) ? 131072 : 65536;
        }
        if ((i & 64) != 0) {
            $dirty3 |= 1572864;
        } else if (($changed & 1572864) == 0) {
            $dirty3 |= $composer3.changed(expandedHeight) ? 1048576 : 524288;
        }
        if ((i & 128) != 0) {
            $dirty3 |= 12582912;
        } else if (($changed & 12582912) == 0) {
            $dirty3 |= $composer3.changed(windowInsets) ? 8388608 : 4194304;
        }
        if ((i & 256) != 0) {
            $dirty3 |= 100663296;
        } else if (($changed & 100663296) == 0) {
            $dirty3 |= $composer3.changed(colors) ? 67108864 : 33554432;
        }
        if ((i & 512) == 0) {
            i2 = (805306368 & $changed) == 0 ? $composer3.changed(scrollBehavior) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456 : 805306368;
            $dirty = $dirty3;
            if ((306783379 & $dirty) == 306783378 || !$composer3.getSkipping()) {
                Modifier.Companion modifier4 = i3 == 0 ? Modifier.INSTANCE : modifier2;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-342194911, $dirty, -1, "androidx.compose.material3.SingleRowTopAppBar (AppBar.kt:1861)");
                }
                if (Float.isNaN(expandedHeight)) {
                    z = false;
                    if (z) {
                        throw new IllegalArgumentException("The expandedHeight is expected to be specified and finite".toString());
                    }
                    ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
                    ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC:CompositionLocal.kt#9igjgp");
                    Object objConsume = $composer3.consume(localDensity);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    Density $this$SingleRowTopAppBar_cJHQLPU_u24lambda_u246 = (Density) objConsume;
                    final float expandedHeightPx = RangesKt.coerceAtLeast($this$SingleRowTopAppBar_cJHQLPU_u24lambda_u246.mo405toPx0680j_4(expandedHeight), 0.0f);
                    ComposerKt.sourceInformationMarkerStart($composer3, -1193658092, "CC(remember):AppBar.kt#9igjgp");
                    boolean invalid$iv2 = (($dirty & C.ENCODING_PCM_DOUBLE) == 536870912) | $composer3.changed(expandedHeightPx);
                    Object value$iv4 = $composer3.rememberedValue();
                    if (invalid$iv2) {
                        $dirty2 = $dirty;
                    } else {
                        $dirty2 = $dirty;
                        if (value$iv4 == Composer.INSTANCE.getEmpty()) {
                        }
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        EffectsKt.SideEffect((Function0) value$iv4, $composer3, 0);
                        ComposerKt.sourceInformationMarkerStart($composer3, -1193635911, "CC(remember):AppBar.kt#9igjgp");
                        invalid$iv = ($dirty2 & C.ENCODING_PCM_DOUBLE) != 536870912;
                        Object it$iv = $composer3.rememberedValue();
                        if (!invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                            value$iv = SnapshotStateKt.derivedStateOf(new Function0<Float>() { // from class: androidx.compose.material3.AppBarKt$SingleRowTopAppBar$colorTransitionFraction$2$1
                                {
                                    super(0);
                                }

                                /* JADX WARN: Can't rename method to resolve collision */
                                @Override // kotlin.jvm.functions.Function0
                                public final Float invoke() {
                                    TopAppBarState state;
                                    TopAppBarScrollBehavior topAppBarScrollBehavior = scrollBehavior;
                                    float overlappingFraction = (topAppBarScrollBehavior == null || (state = topAppBarScrollBehavior.getState()) == null) ? 0.0f : state.getOverlappedFraction();
                                    return Float.valueOf(overlappingFraction > 0.01f ? 1.0f : 0.0f);
                                }
                            });
                            $composer3.updateRememberedValue(value$iv);
                        } else {
                            value$iv = it$iv;
                        }
                        State colorTransitionFraction$delegate = (State) value$iv;
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        State<Color> stateM134animateColorAsStateeuL9pac = SingleValueAnimationKt.m134animateColorAsStateeuL9pac(colors.m3132containerColorvNxB06k$material3_release(SingleRowTopAppBar_cJHQLPU$lambda$9(colorTransitionFraction$delegate)), AnimationSpecKt.spring$default(0.0f, 400.0f, null, 5, null), null, null, $composer3, 48, 12);
                        Function2 actionsRow = ComposableLambdaKt.rememberComposableLambda(1370231018, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.AppBarKt$SingleRowTopAppBar$actionsRow$1
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
                                ComposerKt.sourceInformation($composer4, "C1895@87019L173:AppBar.kt#uh7d8r");
                                if (($changed2 & 3) != 2 || !$composer4.getSkipping()) {
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(1370231018, $changed2, -1, "androidx.compose.material3.SingleRowTopAppBar.<anonymous> (AppBar.kt:1895)");
                                    }
                                    Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.getEnd();
                                    Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getCenterVertically();
                                    Function3<RowScope, Composer, Integer, Unit> function32 = function3;
                                    ComposerKt.sourceInformationMarkerStart($composer4, 693286680, "CC(Row)P(2,1,3)98@4939L58,99@5002L130:Row.kt#2w3rfo");
                                    Modifier modifier$iv = Modifier.INSTANCE;
                                    MeasurePolicy measurePolicy$iv = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer4, ((432 >> 3) & 14) | ((432 >> 3) & 112));
                                    int $changed$iv$iv = (432 << 3) & 112;
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
                                        $composer4.createNode(constructor);
                                    } else {
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
                                    int i4 = ($changed$iv$iv$iv >> 6) & 14;
                                    ComposerKt.sourceInformationMarkerStart($composer4, -407918630, "C100@5047L9:Row.kt#2w3rfo");
                                    function32.invoke(RowScopeInstance.INSTANCE, $composer4, Integer.valueOf(((432 >> 6) & 112) | 6));
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
                        }, $composer3, 54);
                        $composer3.startReplaceGroup(-1193605157);
                        ComposerKt.sourceInformation($composer3, "1908@87542L55,1908@87519L78,1909@87631L283");
                        if (scrollBehavior != null || scrollBehavior.getIsPinned()) {
                            appBarDragModifier = Modifier.INSTANCE;
                        } else {
                            Modifier.Companion companion = Modifier.INSTANCE;
                            Orientation orientation = Orientation.Vertical;
                            ComposerKt.sourceInformationMarkerStart($composer3, -1193599057, "CC(remember):AppBar.kt#9igjgp");
                            boolean invalid$iv3 = ($dirty2 & C.ENCODING_PCM_DOUBLE) == 536870912;
                            Object it$iv2 = $composer3.rememberedValue();
                            if (invalid$iv3 || it$iv2 == Composer.INSTANCE.getEmpty()) {
                                value$iv2 = (Function1) new Function1<Float, Unit>() { // from class: androidx.compose.material3.AppBarKt$SingleRowTopAppBar$appBarDragModifier$1$1
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Unit invoke(Float f) {
                                        invoke(f.floatValue());
                                        return Unit.INSTANCE;
                                    }

                                    public final void invoke(float delta) {
                                        TopAppBarState state = scrollBehavior.getState();
                                        state.setHeightOffset(state.getHeightOffset() + delta);
                                    }
                                };
                                $composer3.updateRememberedValue(value$iv2);
                            } else {
                                value$iv2 = it$iv2;
                            }
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            DraggableState draggableStateRememberDraggableState = DraggableKt.rememberDraggableState((Function1) value$iv2, $composer3, 0);
                            Modifier.Companion companion2 = companion;
                            ComposerKt.sourceInformationMarkerStart($composer3, -1193595981, "CC(remember):AppBar.kt#9igjgp");
                            boolean invalid$iv4 = ($dirty2 & C.ENCODING_PCM_DOUBLE) == 536870912;
                            Object it$iv3 = $composer3.rememberedValue();
                            if (invalid$iv4 || it$iv3 == Composer.INSTANCE.getEmpty()) {
                                value$iv3 = new AppBarKt$SingleRowTopAppBar$appBarDragModifier$2$1(scrollBehavior, null);
                                $composer3.updateRememberedValue(value$iv3);
                            } else {
                                value$iv3 = it$iv3;
                            }
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            appBarDragModifier = DraggableKt.draggable(companion2, draggableStateRememberDraggableState, orientation, (TsExtractor.TS_PACKET_SIZE & 4) != 0, (TsExtractor.TS_PACKET_SIZE & 8) != 0 ? null : null, (TsExtractor.TS_PACKET_SIZE & 16) != 0 ? false : false, (TsExtractor.TS_PACKET_SIZE & 32) != 0 ? DraggableKt.NoOpOnDragStarted : null, (TsExtractor.TS_PACKET_SIZE & 64) != 0 ? DraggableKt.NoOpOnDragStopped : (Function3) value$iv3, (TsExtractor.TS_PACKET_SIZE & 128) != 0 ? false : false);
                        }
                        $composer3.endReplaceGroup();
                        SurfaceKt.m2826SurfaceT9BRK9s(modifier4.then(appBarDragModifier), null, SingleRowTopAppBar_cJHQLPU$lambda$10(stateM134animateColorAsStateeuL9pac), 0L, 0.0f, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(-1943739546, true, new AppBarKt$SingleRowTopAppBar$3(windowInsets, expandedHeight, scrollBehavior, colors, function2, titleTextStyle, centeredTitle, function22, actionsRow), $composer3, 54), $composer3, 12582912, 122);
                        $composer2 = $composer3;
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        modifier3 = modifier4;
                    }
                    value$iv4 = (Function0) new Function0<Unit>() { // from class: androidx.compose.material3.AppBarKt$SingleRowTopAppBar$2$1
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
                            TopAppBarState state;
                            TopAppBarScrollBehavior topAppBarScrollBehavior = scrollBehavior;
                            if (!Intrinsics.areEqual((topAppBarScrollBehavior == null || (state = topAppBarScrollBehavior.getState()) == null) ? null : Float.valueOf(state.getHeightOffsetLimit()), -expandedHeightPx)) {
                                TopAppBarScrollBehavior topAppBarScrollBehavior2 = scrollBehavior;
                                TopAppBarState state2 = topAppBarScrollBehavior2 != null ? topAppBarScrollBehavior2.getState() : null;
                                if (state2 == null) {
                                    return;
                                }
                                state2.setHeightOffsetLimit(-expandedHeightPx);
                            }
                        }
                    };
                    $composer3.updateRememberedValue(value$iv4);
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    EffectsKt.SideEffect((Function0) value$iv4, $composer3, 0);
                    ComposerKt.sourceInformationMarkerStart($composer3, -1193635911, "CC(remember):AppBar.kt#9igjgp");
                    if (($dirty2 & C.ENCODING_PCM_DOUBLE) != 536870912) {
                    }
                    Object it$iv4 = $composer3.rememberedValue();
                    if (invalid$iv) {
                    }
                    value$iv = SnapshotStateKt.derivedStateOf(new Function0<Float>() { // from class: androidx.compose.material3.AppBarKt$SingleRowTopAppBar$colorTransitionFraction$2$1
                        {
                            super(0);
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // kotlin.jvm.functions.Function0
                        public final Float invoke() {
                            TopAppBarState state;
                            TopAppBarScrollBehavior topAppBarScrollBehavior = scrollBehavior;
                            float overlappingFraction = (topAppBarScrollBehavior == null || (state = topAppBarScrollBehavior.getState()) == null) ? 0.0f : state.getOverlappedFraction();
                            return Float.valueOf(overlappingFraction > 0.01f ? 1.0f : 0.0f);
                        }
                    });
                    $composer3.updateRememberedValue(value$iv);
                    State colorTransitionFraction$delegate2 = (State) value$iv;
                    ComposerKt.sourceInformationMarkerEnd($composer3);
                    State<Color> stateM134animateColorAsStateeuL9pac2 = SingleValueAnimationKt.m134animateColorAsStateeuL9pac(colors.m3132containerColorvNxB06k$material3_release(SingleRowTopAppBar_cJHQLPU$lambda$9(colorTransitionFraction$delegate2)), AnimationSpecKt.spring$default(0.0f, 400.0f, null, 5, null), null, null, $composer3, 48, 12);
                    Function2 actionsRow2 = ComposableLambdaKt.rememberComposableLambda(1370231018, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.AppBarKt$SingleRowTopAppBar$actionsRow$1
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
                            ComposerKt.sourceInformation($composer4, "C1895@87019L173:AppBar.kt#uh7d8r");
                            if (($changed2 & 3) != 2 || !$composer4.getSkipping()) {
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(1370231018, $changed2, -1, "androidx.compose.material3.SingleRowTopAppBar.<anonymous> (AppBar.kt:1895)");
                                }
                                Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.getEnd();
                                Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getCenterVertically();
                                Function3<RowScope, Composer, Integer, Unit> function32 = function3;
                                ComposerKt.sourceInformationMarkerStart($composer4, 693286680, "CC(Row)P(2,1,3)98@4939L58,99@5002L130:Row.kt#2w3rfo");
                                Modifier modifier$iv = Modifier.INSTANCE;
                                MeasurePolicy measurePolicy$iv = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer4, ((432 >> 3) & 14) | ((432 >> 3) & 112));
                                int $changed$iv$iv = (432 << 3) & 112;
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
                                    $composer4.createNode(constructor);
                                } else {
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
                                int i4 = ($changed$iv$iv$iv >> 6) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer4, -407918630, "C100@5047L9:Row.kt#2w3rfo");
                                function32.invoke(RowScopeInstance.INSTANCE, $composer4, Integer.valueOf(((432 >> 6) & 112) | 6));
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
                    }, $composer3, 54);
                    $composer3.startReplaceGroup(-1193605157);
                    ComposerKt.sourceInformation($composer3, "1908@87542L55,1908@87519L78,1909@87631L283");
                    if (scrollBehavior != null) {
                        appBarDragModifier = Modifier.INSTANCE;
                        $composer3.endReplaceGroup();
                        SurfaceKt.m2826SurfaceT9BRK9s(modifier4.then(appBarDragModifier), null, SingleRowTopAppBar_cJHQLPU$lambda$10(stateM134animateColorAsStateeuL9pac2), 0L, 0.0f, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(-1943739546, true, new AppBarKt$SingleRowTopAppBar$3(windowInsets, expandedHeight, scrollBehavior, colors, function2, titleTextStyle, centeredTitle, function22, actionsRow2), $composer3, 54), $composer3, 12582912, 122);
                        $composer2 = $composer3;
                        if (ComposerKt.isTraceInProgress()) {
                        }
                        modifier3 = modifier4;
                    }
                } else {
                    if (!(expandedHeight == Float.POSITIVE_INFINITY)) {
                        z = true;
                    }
                    if (z) {
                    }
                }
            } else {
                $composer3.skipToGroupEnd();
                $composer2 = $composer3;
                modifier3 = modifier2;
            }
            scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup == null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.AppBarKt$SingleRowTopAppBar$4
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

                    public final void invoke(Composer composer, int i4) {
                        AppBarKt.m2056SingleRowTopAppBarcJHQLPU(modifier3, function2, titleTextStyle, centeredTitle, function22, function3, expandedHeight, windowInsets, colors, scrollBehavior, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                    }
                });
                return;
            }
            return;
        }
        $dirty3 |= i2;
        $dirty = $dirty3;
        if ((306783379 & $dirty) == 306783378) {
            if (i3 == 0) {
            }
            if (ComposerKt.isTraceInProgress()) {
            }
            if (Float.isNaN(expandedHeight)) {
            }
        }
        scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup == null) {
        }
    }

    private static final float SingleRowTopAppBar_cJHQLPU$lambda$9(State<Float> state) {
        return state.getValue().floatValue();
    }

    private static final long SingleRowTopAppBar_cJHQLPU$lambda$10(State<Color> state) {
        return state.getValue().m4707unboximpl();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x01c0  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x01c7  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x01d8  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x020b  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x020e  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x0371  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x0373  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x038c  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x041b  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x0457  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x0467  */
    /* JADX WARN: Removed duplicated region for block: B:243:? A[RETURN, SYNTHETIC] */
    /* JADX INFO: renamed from: TwoRowsTopAppBar-nS6u9G4, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void m2059TwoRowsTopAppBarnS6u9G4(Modifier modifier, final Function2<? super Composer, ? super Integer, Unit> function2, final TextStyle titleTextStyle, final float titleBottomPadding, final Function2<? super Composer, ? super Integer, Unit> function22, final TextStyle smallTitleTextStyle, final Function2<? super Composer, ? super Integer, Unit> function23, final Function3<? super RowScope, ? super Composer, ? super Integer, Unit> function3, final float collapsedHeight, final float expandedHeight, final WindowInsets windowInsets, final TopAppBarColors colors, final TopAppBarScrollBehavior scrollBehavior, Composer $composer, final int $changed, final int $changed1, final int i) {
        Modifier modifier2;
        Function2<? super Composer, ? super Integer, Unit> function24;
        int $dirty;
        final Modifier.Companion modifier3;
        boolean z;
        boolean z2;
        float topTitleAlpha;
        Modifier.Companion appBarDragModifier;
        Composer $composer2;
        boolean invalid$iv;
        AppBarKt$TwoRowsTopAppBar$appBarDragModifier$2$1 value$iv;
        TopAppBarState state;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        int i2;
        Composer $composer3 = $composer.startRestartGroup(1169193376);
        ComposerKt.sourceInformation($composer3, "C(TwoRowsTopAppBar)P(4,9,11,10:c#ui.unit.Dp,7,8,5!1,1:c#ui.unit.Dp,3:c#ui.unit.Dp,12)*1984@90586L7,1992@90915L205,1992@90904L216,2008@91751L197,2042@93233L2309,2042@93149L2393:AppBar.kt#uh7d8r");
        int $dirty2 = $changed;
        int $dirty1 = $changed1;
        int i3 = i & 1;
        if (i3 != 0) {
            $dirty2 |= 6;
            modifier2 = modifier;
        } else if (($changed & 6) == 0) {
            modifier2 = modifier;
            $dirty2 |= $composer3.changed(modifier2) ? 4 : 2;
        } else {
            modifier2 = modifier;
        }
        if ((i & 2) != 0) {
            $dirty2 |= 48;
            function24 = function2;
        } else if (($changed & 48) == 0) {
            function24 = function2;
            $dirty2 |= $composer3.changedInstance(function24) ? 32 : 16;
        } else {
            function24 = function2;
        }
        if ((i & 4) != 0) {
            $dirty2 |= RendererCapabilities.DECODER_SUPPORT_MASK;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty2 |= $composer3.changed(titleTextStyle) ? 256 : 128;
        }
        if ((i & 8) != 0) {
            $dirty2 |= 3072;
        } else if (($changed & 3072) == 0) {
            $dirty2 |= $composer3.changed(titleBottomPadding) ? 2048 : 1024;
        }
        if ((i & 16) != 0) {
            $dirty2 |= 24576;
        } else if (($changed & 24576) == 0) {
            $dirty2 |= $composer3.changedInstance(function22) ? 16384 : 8192;
        }
        if ((i & 32) != 0) {
            $dirty2 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            $dirty2 |= $composer3.changed(smallTitleTextStyle) ? 131072 : 65536;
        }
        if ((i & 64) != 0) {
            $dirty2 |= 1572864;
        } else if (($changed & 1572864) == 0) {
            $dirty2 |= $composer3.changedInstance(function23) ? 1048576 : 524288;
        }
        if ((i & 128) != 0) {
            $dirty2 |= 12582912;
        } else if (($changed & 12582912) == 0) {
            $dirty2 |= $composer3.changedInstance(function3) ? 8388608 : 4194304;
        }
        if ((i & 256) != 0) {
            $dirty2 |= 100663296;
        } else if (($changed & 100663296) == 0) {
            $dirty2 |= $composer3.changed(collapsedHeight) ? 67108864 : 33554432;
        }
        if ((i & 512) == 0) {
            i2 = ($changed & 805306368) == 0 ? $composer3.changed(expandedHeight) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456 : 805306368;
            $dirty = $dirty2;
            if ((i & 1024) == 0) {
                $dirty1 |= 6;
            } else if (($changed1 & 6) == 0) {
                $dirty1 |= $composer3.changed(windowInsets) ? 4 : 2;
            }
            if ((i & 2048) == 0) {
                $dirty1 |= 48;
            } else if (($changed1 & 48) == 0) {
                $dirty1 |= $composer3.changed(colors) ? 32 : 16;
            }
            if ((i & 4096) == 0) {
                $dirty1 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            } else if (($changed1 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
                $dirty1 |= $composer3.changed(scrollBehavior) ? 256 : 128;
            }
            int $dirty12 = $dirty1;
            if ((306783379 & $dirty) != 306783378 && ($dirty12 & 147) == 146 && $composer3.getSkipping()) {
                $composer3.skipToGroupEnd();
                $composer2 = $composer3;
                modifier3 = modifier2;
            } else {
                modifier3 = i3 == 0 ? Modifier.INSTANCE : modifier2;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1169193376, $dirty, $dirty12, "androidx.compose.material3.TwoRowsTopAppBar (AppBar.kt:1971)");
                }
                if (Float.isNaN(collapsedHeight)) {
                    z = false;
                    if (z) {
                        throw new IllegalArgumentException("The collapsedHeight is expected to be specified and finite".toString());
                    }
                    if (Float.isNaN(expandedHeight)) {
                        z2 = false;
                        if (z2) {
                            throw new IllegalArgumentException("The expandedHeight is expected to be specified and finite".toString());
                        }
                        if (!(Dp.m7504compareTo0680j_4(expandedHeight, collapsedHeight) >= 0)) {
                            throw new IllegalArgumentException("The expandedHeight is expected to be greater or equal to the collapsedHeight".toString());
                        }
                        final Ref.FloatRef expandedHeightPx = new Ref.FloatRef();
                        final Ref.FloatRef collapsedHeightPx = new Ref.FloatRef();
                        Ref.IntRef titleBottomPaddingPx = new Ref.IntRef();
                        ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
                        ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC:CompositionLocal.kt#9igjgp");
                        Object objConsume = $composer3.consume(localDensity);
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        Density $this$TwoRowsTopAppBar_nS6u9G4_u24lambda_u2416 = (Density) objConsume;
                        expandedHeightPx.element = $this$TwoRowsTopAppBar_nS6u9G4_u24lambda_u2416.mo405toPx0680j_4(expandedHeight);
                        collapsedHeightPx.element = $this$TwoRowsTopAppBar_nS6u9G4_u24lambda_u2416.mo405toPx0680j_4(collapsedHeight);
                        titleBottomPaddingPx.element = $this$TwoRowsTopAppBar_nS6u9G4_u24lambda_u2416.mo399roundToPx0680j_4(titleBottomPadding);
                        Unit unit = Unit.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart($composer3, 1641215730, "CC(remember):AppBar.kt#9igjgp");
                        boolean invalid$iv2 = (($dirty12 & 896) == 256) | $composer3.changed(collapsedHeightPx.element) | $composer3.changed(expandedHeightPx.element);
                        Object value$iv2 = $composer3.rememberedValue();
                        if (invalid$iv2 || value$iv2 == Composer.INSTANCE.getEmpty()) {
                            value$iv2 = (Function0) new Function0<Unit>() { // from class: androidx.compose.material3.AppBarKt$TwoRowsTopAppBar$5$1
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
                                    TopAppBarState state2;
                                    TopAppBarScrollBehavior topAppBarScrollBehavior = scrollBehavior;
                                    if (!Intrinsics.areEqual((topAppBarScrollBehavior == null || (state2 = topAppBarScrollBehavior.getState()) == null) ? null : Float.valueOf(state2.getHeightOffsetLimit()), collapsedHeightPx.element - expandedHeightPx.element)) {
                                        TopAppBarScrollBehavior topAppBarScrollBehavior2 = scrollBehavior;
                                        TopAppBarState state3 = topAppBarScrollBehavior2 != null ? topAppBarScrollBehavior2.getState() : null;
                                        if (state3 == null) {
                                            return;
                                        }
                                        state3.setHeightOffsetLimit(collapsedHeightPx.element - expandedHeightPx.element);
                                    }
                                }
                            };
                            $composer3.updateRememberedValue(value$iv2);
                        }
                        ComposerKt.sourceInformationMarkerEnd($composer3);
                        EffectsKt.SideEffect((Function0) value$iv2, $composer3, 0);
                        float colorTransitionFraction = (scrollBehavior == null || (state = scrollBehavior.getState()) == null) ? 0.0f : state.getCollapsedFraction();
                        long appBarContainerColor = colors.m3132containerColorvNxB06k$material3_release(colorTransitionFraction);
                        Function2 actionsRow = ComposableLambdaKt.rememberComposableLambda(-89435287, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.AppBarKt$TwoRowsTopAppBar$actionsRow$1
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
                                ComposerKt.sourceInformation($composer4, "C2009@91765L173:AppBar.kt#uh7d8r");
                                if (($changed2 & 3) != 2 || !$composer4.getSkipping()) {
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-89435287, $changed2, -1, "androidx.compose.material3.TwoRowsTopAppBar.<anonymous> (AppBar.kt:2009)");
                                    }
                                    Arrangement.Horizontal horizontalArrangement$iv = Arrangement.INSTANCE.getEnd();
                                    Alignment.Vertical verticalAlignment$iv = Alignment.INSTANCE.getCenterVertically();
                                    Function3<RowScope, Composer, Integer, Unit> function32 = function3;
                                    ComposerKt.sourceInformationMarkerStart($composer4, 693286680, "CC(Row)P(2,1,3)98@4939L58,99@5002L130:Row.kt#2w3rfo");
                                    Modifier modifier$iv = Modifier.INSTANCE;
                                    MeasurePolicy measurePolicy$iv = RowKt.rowMeasurePolicy(horizontalArrangement$iv, verticalAlignment$iv, $composer4, ((432 >> 3) & 14) | ((432 >> 3) & 112));
                                    int $changed$iv$iv = (432 << 3) & 112;
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
                                        $composer4.createNode(constructor);
                                    } else {
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
                                    int i4 = ($changed$iv$iv$iv >> 6) & 14;
                                    ComposerKt.sourceInformationMarkerStart($composer4, -407918630, "C100@5047L9:Row.kt#2w3rfo");
                                    function32.invoke(RowScopeInstance.INSTANCE, $composer4, Integer.valueOf(((432 >> 6) & 112) | 6));
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
                        }, $composer3, 54);
                        float topTitleAlpha2 = TopTitleAlphaEasing.transform(colorTransitionFraction);
                        float bottomTitleAlpha = 1.0f - colorTransitionFraction;
                        boolean hideTopRowSemantics = colorTransitionFraction < 0.5f;
                        boolean hideBottomRowSemantics = !hideTopRowSemantics;
                        $composer3.startReplaceGroup(1641266888);
                        ComposerKt.sourceInformation($composer3, "2028@92709L55,2028@92686L78,2029@92798L283");
                        if (scrollBehavior == null || scrollBehavior.getIsPinned()) {
                            topTitleAlpha = topTitleAlpha2;
                            appBarDragModifier = Modifier.INSTANCE;
                        } else {
                            Modifier.Companion companion = Modifier.INSTANCE;
                            Orientation orientation = Orientation.Vertical;
                            ComposerKt.sourceInformationMarkerStart($composer3, 1641272988, "CC(remember):AppBar.kt#9igjgp");
                            boolean invalid$iv3 = ($dirty12 & 896) == 256;
                            Object value$iv3 = $composer3.rememberedValue();
                            if (invalid$iv3) {
                                topTitleAlpha = topTitleAlpha2;
                            } else {
                                topTitleAlpha = topTitleAlpha2;
                                if (value$iv3 == Composer.INSTANCE.getEmpty()) {
                                }
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                DraggableState draggableStateRememberDraggableState = DraggableKt.rememberDraggableState((Function1) value$iv3, $composer3, 0);
                                Modifier.Companion companion2 = companion;
                                ComposerKt.sourceInformationMarkerStart($composer3, 1641276064, "CC(remember):AppBar.kt#9igjgp");
                                invalid$iv = ($dirty12 & 896) != 256;
                                Object it$iv = $composer3.rememberedValue();
                                if (!invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                                    value$iv = new AppBarKt$TwoRowsTopAppBar$appBarDragModifier$2$1(scrollBehavior, null);
                                    $composer3.updateRememberedValue(value$iv);
                                } else {
                                    value$iv = it$iv;
                                }
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                appBarDragModifier = DraggableKt.draggable(companion2, draggableStateRememberDraggableState, orientation, (TsExtractor.TS_PACKET_SIZE & 4) != 0, (TsExtractor.TS_PACKET_SIZE & 8) != 0 ? null : null, (TsExtractor.TS_PACKET_SIZE & 16) != 0 ? false : false, (TsExtractor.TS_PACKET_SIZE & 32) != 0 ? DraggableKt.NoOpOnDragStarted : null, (TsExtractor.TS_PACKET_SIZE & 64) != 0 ? DraggableKt.NoOpOnDragStopped : (Function3) value$iv, (TsExtractor.TS_PACKET_SIZE & 128) != 0 ? false : false);
                            }
                            value$iv3 = (Function1) new Function1<Float, Unit>() { // from class: androidx.compose.material3.AppBarKt$TwoRowsTopAppBar$appBarDragModifier$1$1
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(Float f) {
                                    invoke(f.floatValue());
                                    return Unit.INSTANCE;
                                }

                                public final void invoke(float delta) {
                                    TopAppBarState state2 = scrollBehavior.getState();
                                    state2.setHeightOffset(state2.getHeightOffset() + delta);
                                }
                            };
                            $composer3.updateRememberedValue(value$iv3);
                            ComposerKt.sourceInformationMarkerEnd($composer3);
                            DraggableState draggableStateRememberDraggableState2 = DraggableKt.rememberDraggableState((Function1) value$iv3, $composer3, 0);
                            Modifier.Companion companion22 = companion;
                            ComposerKt.sourceInformationMarkerStart($composer3, 1641276064, "CC(remember):AppBar.kt#9igjgp");
                            if (($dirty12 & 896) != 256) {
                            }
                            Object it$iv2 = $composer3.rememberedValue();
                            if (invalid$iv) {
                                value$iv = new AppBarKt$TwoRowsTopAppBar$appBarDragModifier$2$1(scrollBehavior, null);
                                $composer3.updateRememberedValue(value$iv);
                                ComposerKt.sourceInformationMarkerEnd($composer3);
                                appBarDragModifier = DraggableKt.draggable(companion22, draggableStateRememberDraggableState2, orientation, (TsExtractor.TS_PACKET_SIZE & 4) != 0, (TsExtractor.TS_PACKET_SIZE & 8) != 0 ? null : null, (TsExtractor.TS_PACKET_SIZE & 16) != 0 ? false : false, (TsExtractor.TS_PACKET_SIZE & 32) != 0 ? DraggableKt.NoOpOnDragStarted : null, (TsExtractor.TS_PACKET_SIZE & 64) != 0 ? DraggableKt.NoOpOnDragStopped : (Function3) value$iv, (TsExtractor.TS_PACKET_SIZE & 128) != 0 ? false : false);
                            }
                        }
                        $composer3.endReplaceGroup();
                        $composer2 = $composer3;
                        SurfaceKt.m2826SurfaceT9BRK9s(modifier3.then(appBarDragModifier), null, appBarContainerColor, 0L, 0.0f, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(-1350062619, true, new AppBarKt$TwoRowsTopAppBar$6(windowInsets, collapsedHeight, colors, function22, smallTitleTextStyle, topTitleAlpha, hideTopRowSemantics, function23, actionsRow, expandedHeight, scrollBehavior, function24, titleTextStyle, bottomTitleAlpha, titleBottomPaddingPx, hideBottomRowSemantics), $composer3, 54), $composer2, 12582912, 122);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    } else {
                        if (!(expandedHeight == Float.POSITIVE_INFINITY)) {
                            z2 = true;
                        }
                        if (z2) {
                        }
                    }
                } else {
                    if (!(collapsedHeight == Float.POSITIVE_INFINITY)) {
                        z = true;
                    }
                    if (z) {
                    }
                }
            }
            scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup == null) {
                scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.AppBarKt$TwoRowsTopAppBar$7
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

                    public final void invoke(Composer composer, int i4) {
                        AppBarKt.m2059TwoRowsTopAppBarnS6u9G4(modifier3, function2, titleTextStyle, titleBottomPadding, function22, smallTitleTextStyle, function23, function3, collapsedHeight, expandedHeight, windowInsets, colors, scrollBehavior, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), RecomposeScopeImplKt.updateChangedFlags($changed1), i);
                    }
                });
                return;
            }
            return;
        }
        $dirty2 |= i2;
        $dirty = $dirty2;
        if ((i & 1024) == 0) {
        }
        if ((i & 2048) == 0) {
        }
        if ((i & 4096) == 0) {
        }
        int $dirty122 = $dirty1;
        if ((306783379 & $dirty) != 306783378) {
            if (i3 == 0) {
            }
            if (ComposerKt.isTraceInProgress()) {
            }
            if (Float.isNaN(collapsedHeight)) {
            }
        }
        scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup == null) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0226  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0238  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x026b  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0281  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x032d  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0339  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x033f  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0372  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0388 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:182:0x041e  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x04ae  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x04ba  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x04c0  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x04f3  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0509 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:200:0x05f3  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x05ff  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x0605  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x0636  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x064c  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x06dd  */
    /* JADX INFO: renamed from: TopAppBarLayout-kXwM9vE, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void m2058TopAppBarLayoutkXwM9vE(final Modifier modifier, final ScrolledOffset scrolledOffset, long navigationIconContentColor, final long titleContentColor, final long actionIconContentColor, final Function2<? super Composer, ? super Integer, Unit> function2, final TextStyle titleTextStyle, final float titleAlpha, final Arrangement.Vertical titleVerticalArrangement, final Arrangement.Horizontal titleHorizontalArrangement, final int titleBottomPadding, final boolean hideTitleSemantics, final Function2<? super Composer, ? super Integer, Unit> function22, final Function2<? super Composer, ? super Integer, Unit> function23, Composer $composer, final int $changed, final int $changed1) {
        long j;
        int $dirty;
        int $dirty1;
        final Arrangement.Vertical vertical;
        int $dirty2;
        Function0<ComposeUiNode> function0;
        Composer $this$Layout_u24lambda_u240$iv;
        Composer $composer2;
        int $dirty12;
        int compositeKeyHash$iv$iv;
        Function0<ComposeUiNode> function02;
        Composer $this$Layout_u24lambda_u240$iv$iv;
        int compositeKeyHash$iv$iv2;
        Function0<ComposeUiNode> function03;
        Composer $this$Layout_u24lambda_u240$iv$iv2;
        Function0<ComposeUiNode> function04;
        Composer $this$Layout_u24lambda_u240$iv$iv3;
        Composer $composer3;
        Composer $composer4 = $composer.startRestartGroup(-742442296);
        ComposerKt.sourceInformation($composer4, "C(TopAppBarLayout)P(3,6,5:c#ui.graphics.Color,10:c#ui.graphics.Color,0:c#ui.graphics.Color,7,12,8,13,11,9,2,4)2163@98873L5882,2135@97725L7030:AppBar.kt#uh7d8r");
        int $dirty3 = $changed;
        if (($changed & 6) == 0) {
            $dirty3 |= $composer4.changed(modifier) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty3 |= ($changed & 64) == 0 ? $composer4.changed(scrolledOffset) : $composer4.changedInstance(scrolledOffset) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            j = navigationIconContentColor;
            $dirty3 |= $composer4.changed(j) ? 256 : 128;
        } else {
            j = navigationIconContentColor;
        }
        if (($changed & 3072) == 0) {
            $dirty1 = $changed1;
            $dirty = $dirty3 | ($composer4.changed(titleContentColor) ? 2048 : 1024);
        } else {
            $dirty = $dirty3;
            $dirty1 = $changed1;
        }
        if (($changed & 24576) == 0) {
            $dirty |= $composer4.changed(actionIconContentColor) ? 16384 : 8192;
        }
        if ((196608 & $changed) == 0) {
            $dirty |= $composer4.changedInstance(function2) ? 131072 : 65536;
        }
        if (($changed & 1572864) == 0) {
            $dirty |= $composer4.changed(titleTextStyle) ? 1048576 : 524288;
        }
        if (($changed & 12582912) == 0) {
            $dirty |= $composer4.changed(titleAlpha) ? 8388608 : 4194304;
        }
        if (($changed & 100663296) == 0) {
            vertical = titleVerticalArrangement;
            $dirty |= $composer4.changed(vertical) ? 67108864 : 33554432;
        } else {
            vertical = titleVerticalArrangement;
        }
        if (($changed & 805306368) == 0) {
            $dirty |= $composer4.changed(titleHorizontalArrangement) ? C.BUFFER_FLAG_LAST_SAMPLE : 268435456;
        }
        int $dirty4 = $dirty;
        if (($changed1 & 6) == 0) {
            $dirty1 |= $composer4.changed(titleBottomPadding) ? 4 : 2;
        }
        if (($changed1 & 48) == 0) {
            $dirty1 |= $composer4.changed(hideTitleSemantics) ? 32 : 16;
        }
        if (($changed1 & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty1 |= $composer4.changedInstance(function22) ? 256 : 128;
        }
        if (($changed1 & 3072) == 0) {
            $dirty1 |= $composer4.changedInstance(function23) ? 2048 : 1024;
        }
        int $dirty13 = $dirty1;
        if ((306783379 & $dirty4) != 306783378 || ($dirty13 & 1171) != 1170 || !$composer4.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-742442296, $dirty4, $dirty13, "androidx.compose.material3.TopAppBarLayout (AppBar.kt:2134)");
            }
            ComposerKt.sourceInformationMarkerStart($composer4, 1539011656, "CC(remember):AppBar.kt#9igjgp");
            boolean invalid$iv = ((1879048192 & $dirty4) == 536870912) | (($dirty4 & 112) == 32 || (($dirty4 & 64) != 0 && $composer4.changedInstance(scrolledOffset))) | ((234881024 & $dirty4) == 67108864) | (($dirty13 & 14) == 4);
            MeasurePolicy value$iv = $composer4.rememberedValue();
            if (!invalid$iv) {
                $dirty2 = $dirty4;
                if (value$iv == Composer.INSTANCE.getEmpty()) {
                }
                MeasurePolicy measurePolicy$iv = (MeasurePolicy) value$iv;
                ComposerKt.sourceInformationMarkerEnd($composer4);
                int $changed$iv = ($dirty2 << 3) & 112;
                ComposerKt.sourceInformationMarkerStart($composer4, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                int compositeKeyHash$iv = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
                CompositionLocalMap localMap$iv = $composer4.getCurrentCompositionLocalMap();
                Modifier materialized$iv = ComposedModifierKt.materializeModifier($composer4, modifier);
                Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
                int $changed$iv$iv = (($changed$iv << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart($composer4, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!($composer4.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                $composer4.startReusableNode();
                if (!$composer4.getInserting()) {
                    function0 = constructor;
                    $composer4.createNode(function0);
                } else {
                    function0 = constructor;
                    $composer4.useNode();
                }
                $this$Layout_u24lambda_u240$iv = Updater.m3967constructorimpl($composer4);
                $composer2 = $composer4;
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv, localMap$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if ($this$Layout_u24lambda_u240$iv.getInserting()) {
                    $dirty12 = $dirty13;
                    if (!Intrinsics.areEqual($this$Layout_u24lambda_u240$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv))) {
                    }
                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv, materialized$iv, ComposeUiNode.INSTANCE.getSetModifier());
                    int i = ($changed$iv$iv >> 6) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer2, 9049318, "C2137@97755L280,2143@98048L502,2155@98563L264:AppBar.kt#uh7d8r");
                    Modifier modifier$iv = PaddingKt.m822paddingqDBjuR0$default(LayoutIdKt.layoutId(Modifier.INSTANCE, "navigationIcon"), TopAppBarHorizontalPadding, 0.0f, 0.0f, 0.0f, 14, null);
                    ComposerKt.sourceInformationMarkerStart($composer2, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                    Alignment contentAlignment$iv = Alignment.INSTANCE.getTopStart();
                    MeasurePolicy measurePolicy$iv2 = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv, false);
                    int $changed$iv$iv2 = (6 << 3) & 112;
                    ComposerKt.sourceInformationMarkerStart($composer2, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                    compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer2, 0);
                    CompositionLocalMap localMap$iv$iv = $composer2.getCurrentCompositionLocalMap();
                    Modifier materialized$iv$iv = ComposedModifierKt.materializeModifier($composer2, modifier$iv);
                    Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
                    int $changed$iv$iv$iv = (($changed$iv$iv2 << 6) & 896) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer2, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                    if (!($composer2.getApplier() instanceof Applier)) {
                        ComposablesKt.invalidApplier();
                    }
                    $composer2.startReusableNode();
                    if ($composer2.getInserting()) {
                        function02 = constructor2;
                        $composer2.createNode(function02);
                    } else {
                        function02 = constructor2;
                        $composer2.useNode();
                    }
                    $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer2);
                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash2 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                    if ($this$Layout_u24lambda_u240$iv$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv))) {
                        $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                        $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), setCompositeKeyHash2);
                    }
                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv, ComposeUiNode.INSTANCE.getSetModifier());
                    int i2 = ($changed$iv$iv$iv >> 6) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer2, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                    int i3 = ((6 >> 6) & 112) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer2, 249765716, "C2138@97858L163:AppBar.kt#uh7d8r");
                    CompositionLocalKt.CompositionLocalProvider(ContentColorKt.getLocalContentColor().provides(Color.m4687boximpl(j)), function22, $composer2, ProvidedValue.$stable | (($dirty12 >> 3) & 112));
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    $composer2.endNode();
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    Modifier modifierM820paddingVpY3zN4$default = PaddingKt.m820paddingVpY3zN4$default(LayoutIdKt.layoutId(Modifier.INSTANCE, "title"), TopAppBarHorizontalPadding, 0.0f, 2, null);
                    Modifier.Companion companionClearAndSetSemantics = Modifier.INSTANCE;
                    if (hideTitleSemantics) {
                        companionClearAndSetSemantics = SemanticsModifierKt.clearAndSetSemantics(companionClearAndSetSemantics, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.AppBarKt$TopAppBarLayout$1$2
                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                                invoke2(semanticsPropertyReceiver);
                                return Unit.INSTANCE;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(SemanticsPropertyReceiver $this$clearAndSetSemantics) {
                            }
                        });
                    }
                    Modifier modifier$iv2 = GraphicsLayerModifierKt.m4859graphicsLayerAp8cVGQ(modifierM820paddingVpY3zN4$default.then(companionClearAndSetSemantics), (131067 & 1) != 0 ? 1.0f : 0.0f, (131067 & 2) != 0 ? 1.0f : 0.0f, (131067 & 4) == 0 ? titleAlpha : 1.0f, (131067 & 8) != 0 ? 0.0f : 0.0f, (131067 & 16) != 0 ? 0.0f : 0.0f, (131067 & 32) != 0 ? 0.0f : 0.0f, (131067 & 64) != 0 ? 0.0f : 0.0f, (131067 & 128) != 0 ? 0.0f : 0.0f, (131067 & 256) == 0 ? 0.0f : 0.0f, (131067 & 512) != 0 ? 8.0f : 0.0f, (131067 & 1024) != 0 ? TransformOrigin.INSTANCE.m5110getCenterSzJe1aQ() : 0L, (131067 & 2048) != 0 ? RectangleShapeKt.getRectangleShape() : null, (131067 & 4096) != 0 ? false : false, (131067 & 8192) != 0 ? null : null, (131067 & 16384) != 0 ? GraphicsLayerScopeKt.getDefaultShadowColor() : 0L, (32768 & 131067) != 0 ? GraphicsLayerScopeKt.getDefaultShadowColor() : 0L, (131067 & 65536) != 0 ? CompositingStrategy.INSTANCE.m4786getAutoNrFUSI() : 0);
                    ComposerKt.sourceInformationMarkerStart($composer2, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                    Alignment contentAlignment$iv2 = Alignment.INSTANCE.getTopStart();
                    MeasurePolicy measurePolicy$iv3 = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv2, false);
                    int $changed$iv$iv3 = (0 << 3) & 112;
                    ComposerKt.sourceInformationMarkerStart($composer2, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                    compositeKeyHash$iv$iv2 = ComposablesKt.getCurrentCompositeKeyHash($composer2, 0);
                    CompositionLocalMap localMap$iv$iv2 = $composer2.getCurrentCompositionLocalMap();
                    Modifier materialized$iv$iv2 = ComposedModifierKt.materializeModifier($composer2, modifier$iv2);
                    Function0<ComposeUiNode> constructor3 = ComposeUiNode.INSTANCE.getConstructor();
                    int $changed$iv$iv$iv2 = (($changed$iv$iv3 << 6) & 896) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer2, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                    if (!($composer2.getApplier() instanceof Applier)) {
                        ComposablesKt.invalidApplier();
                    }
                    $composer2.startReusableNode();
                    if ($composer2.getInserting()) {
                        function03 = constructor3;
                        $composer2.createNode(function03);
                    } else {
                        function03 = constructor3;
                        $composer2.useNode();
                    }
                    $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3967constructorimpl($composer2);
                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash3 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                    if ($this$Layout_u24lambda_u240$iv$iv2.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv2.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv2))) {
                        $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv2));
                        $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv2), setCompositeKeyHash3);
                    }
                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, materialized$iv$iv2, ComposeUiNode.INSTANCE.getSetModifier());
                    int i4 = ($changed$iv$iv$iv2 >> 6) & 14;
                    ComposerKt.sourceInformationMarkerStart($composer2, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                    BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                    int i5 = ((0 >> 6) & 112) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer2, 250255454, "C2149@98351L185:AppBar.kt#uh7d8r");
                    ProvideContentColorTextStyleKt.m3185ProvideContentColorTextStyle3JVO9M(titleContentColor, titleTextStyle, function2, $composer2, (($dirty2 >> 9) & 14) | (($dirty2 >> 15) & 112) | (($dirty2 >> 9) & 896));
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    $composer2.endNode();
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    Modifier modifier$iv3 = PaddingKt.m822paddingqDBjuR0$default(LayoutIdKt.layoutId(Modifier.INSTANCE, "actionIcons"), 0.0f, 0.0f, TopAppBarHorizontalPadding, 0.0f, 11, null);
                    ComposerKt.sourceInformationMarkerStart($composer2, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                    Alignment contentAlignment$iv3 = Alignment.INSTANCE.getTopStart();
                    MeasurePolicy measurePolicy$iv4 = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv3, false);
                    int $changed$iv$iv4 = (6 << 3) & 112;
                    ComposerKt.sourceInformationMarkerStart($composer2, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                    int compositeKeyHash$iv$iv3 = ComposablesKt.getCurrentCompositeKeyHash($composer2, 0);
                    CompositionLocalMap localMap$iv$iv3 = $composer2.getCurrentCompositionLocalMap();
                    Modifier materialized$iv$iv3 = ComposedModifierKt.materializeModifier($composer2, modifier$iv3);
                    Function0<ComposeUiNode> constructor4 = ComposeUiNode.INSTANCE.getConstructor();
                    int $changed$iv$iv$iv3 = (($changed$iv$iv4 << 6) & 896) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer2, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                    if (!($composer2.getApplier() instanceof Applier)) {
                        ComposablesKt.invalidApplier();
                    }
                    $composer2.startReusableNode();
                    if ($composer2.getInserting()) {
                        function04 = constructor4;
                        $composer2.createNode(function04);
                    } else {
                        function04 = constructor4;
                        $composer2.useNode();
                    }
                    $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3967constructorimpl($composer2);
                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv4, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                    Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash4 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                    if ($this$Layout_u24lambda_u240$iv$iv3.getInserting()) {
                        $composer3 = $composer2;
                    } else {
                        $composer3 = $composer2;
                        if (!Intrinsics.areEqual($this$Layout_u24lambda_u240$iv$iv3.rememberedValue(), Integer.valueOf(compositeKeyHash$iv$iv3))) {
                        }
                        Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, materialized$iv$iv3, ComposeUiNode.INSTANCE.getSetModifier());
                        int i6 = ($changed$iv$iv$iv3 >> 6) & 14;
                        Composer $composer$iv = $composer3;
                        ComposerKt.sourceInformationMarkerStart($composer$iv, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                        BoxScopeInstance boxScopeInstance3 = BoxScopeInstance.INSTANCE;
                        int i7 = ((6 >> 6) & 112) | 6;
                        ComposerKt.sourceInformationMarkerStart($composer$iv, 250561951, "C2156@98661L152:AppBar.kt#uh7d8r");
                        CompositionLocalKt.CompositionLocalProvider(ContentColorKt.getLocalContentColor().provides(Color.m4687boximpl(actionIconContentColor)), function23, $composer$iv, ProvidedValue.$stable | (($dirty12 >> 6) & 112));
                        ComposerKt.sourceInformationMarkerEnd($composer$iv);
                        ComposerKt.sourceInformationMarkerEnd($composer$iv);
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
                    }
                    $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv3));
                    $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv3), setCompositeKeyHash4);
                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, materialized$iv$iv3, ComposeUiNode.INSTANCE.getSetModifier());
                    int i62 = ($changed$iv$iv$iv3 >> 6) & 14;
                    Composer $composer$iv2 = $composer3;
                    ComposerKt.sourceInformationMarkerStart($composer$iv2, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                    BoxScopeInstance boxScopeInstance32 = BoxScopeInstance.INSTANCE;
                    int i72 = ((6 >> 6) & 112) | 6;
                    ComposerKt.sourceInformationMarkerStart($composer$iv2, 250561951, "C2156@98661L152:AppBar.kt#uh7d8r");
                    CompositionLocalKt.CompositionLocalProvider(ContentColorKt.getLocalContentColor().provides(Color.m4687boximpl(actionIconContentColor)), function23, $composer$iv2, ProvidedValue.$stable | (($dirty12 >> 6) & 112));
                    ComposerKt.sourceInformationMarkerEnd($composer$iv2);
                    ComposerKt.sourceInformationMarkerEnd($composer$iv2);
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
                    $dirty12 = $dirty13;
                }
                $this$Layout_u24lambda_u240$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv));
                $this$Layout_u24lambda_u240$iv.apply(Integer.valueOf(compositeKeyHash$iv), setCompositeKeyHash);
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv, materialized$iv, ComposeUiNode.INSTANCE.getSetModifier());
                int i8 = ($changed$iv$iv >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer2, 9049318, "C2137@97755L280,2143@98048L502,2155@98563L264:AppBar.kt#uh7d8r");
                Modifier modifier$iv4 = PaddingKt.m822paddingqDBjuR0$default(LayoutIdKt.layoutId(Modifier.INSTANCE, "navigationIcon"), TopAppBarHorizontalPadding, 0.0f, 0.0f, 0.0f, 14, null);
                ComposerKt.sourceInformationMarkerStart($composer2, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                Alignment contentAlignment$iv4 = Alignment.INSTANCE.getTopStart();
                MeasurePolicy measurePolicy$iv22 = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv4, false);
                int $changed$iv$iv22 = (6 << 3) & 112;
                ComposerKt.sourceInformationMarkerStart($composer2, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer2, 0);
                CompositionLocalMap localMap$iv$iv4 = $composer2.getCurrentCompositionLocalMap();
                Modifier materialized$iv$iv4 = ComposedModifierKt.materializeModifier($composer2, modifier$iv4);
                Function0<ComposeUiNode> constructor22 = ComposeUiNode.INSTANCE.getConstructor();
                int $changed$iv$iv$iv4 = (($changed$iv$iv22 << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart($composer2, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!($composer2.getApplier() instanceof Applier)) {
                }
                $composer2.startReusableNode();
                if ($composer2.getInserting()) {
                }
                $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer2);
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv22, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv4, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash22 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if ($this$Layout_u24lambda_u240$iv$iv.getInserting()) {
                }
                $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
                $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), setCompositeKeyHash22);
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv4, ComposeUiNode.INSTANCE.getSetModifier());
                int i22 = ($changed$iv$iv$iv4 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer2, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                BoxScopeInstance boxScopeInstance4 = BoxScopeInstance.INSTANCE;
                int i32 = ((6 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer2, 249765716, "C2138@97858L163:AppBar.kt#uh7d8r");
                CompositionLocalKt.CompositionLocalProvider(ContentColorKt.getLocalContentColor().provides(Color.m4687boximpl(j)), function22, $composer2, ProvidedValue.$stable | (($dirty12 >> 3) & 112));
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                $composer2.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                Modifier modifierM820paddingVpY3zN4$default2 = PaddingKt.m820paddingVpY3zN4$default(LayoutIdKt.layoutId(Modifier.INSTANCE, "title"), TopAppBarHorizontalPadding, 0.0f, 2, null);
                Modifier.Companion companionClearAndSetSemantics2 = Modifier.INSTANCE;
                if (hideTitleSemantics) {
                }
                Modifier modifier$iv22 = GraphicsLayerModifierKt.m4859graphicsLayerAp8cVGQ(modifierM820paddingVpY3zN4$default2.then(companionClearAndSetSemantics2), (131067 & 1) != 0 ? 1.0f : 0.0f, (131067 & 2) != 0 ? 1.0f : 0.0f, (131067 & 4) == 0 ? titleAlpha : 1.0f, (131067 & 8) != 0 ? 0.0f : 0.0f, (131067 & 16) != 0 ? 0.0f : 0.0f, (131067 & 32) != 0 ? 0.0f : 0.0f, (131067 & 64) != 0 ? 0.0f : 0.0f, (131067 & 128) != 0 ? 0.0f : 0.0f, (131067 & 256) == 0 ? 0.0f : 0.0f, (131067 & 512) != 0 ? 8.0f : 0.0f, (131067 & 1024) != 0 ? TransformOrigin.INSTANCE.m5110getCenterSzJe1aQ() : 0L, (131067 & 2048) != 0 ? RectangleShapeKt.getRectangleShape() : null, (131067 & 4096) != 0 ? false : false, (131067 & 8192) != 0 ? null : null, (131067 & 16384) != 0 ? GraphicsLayerScopeKt.getDefaultShadowColor() : 0L, (32768 & 131067) != 0 ? GraphicsLayerScopeKt.getDefaultShadowColor() : 0L, (131067 & 65536) != 0 ? CompositingStrategy.INSTANCE.m4786getAutoNrFUSI() : 0);
                ComposerKt.sourceInformationMarkerStart($composer2, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                Alignment contentAlignment$iv22 = Alignment.INSTANCE.getTopStart();
                MeasurePolicy measurePolicy$iv32 = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv22, false);
                int $changed$iv$iv32 = (0 << 3) & 112;
                ComposerKt.sourceInformationMarkerStart($composer2, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                compositeKeyHash$iv$iv2 = ComposablesKt.getCurrentCompositeKeyHash($composer2, 0);
                CompositionLocalMap localMap$iv$iv22 = $composer2.getCurrentCompositionLocalMap();
                Modifier materialized$iv$iv22 = ComposedModifierKt.materializeModifier($composer2, modifier$iv22);
                Function0<ComposeUiNode> constructor32 = ComposeUiNode.INSTANCE.getConstructor();
                int $changed$iv$iv$iv22 = (($changed$iv$iv32 << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart($composer2, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!($composer2.getApplier() instanceof Applier)) {
                }
                $composer2.startReusableNode();
                if ($composer2.getInserting()) {
                }
                $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3967constructorimpl($composer2);
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv32, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv22, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash32 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if ($this$Layout_u24lambda_u240$iv$iv2.getInserting()) {
                }
                $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv2));
                $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv2), setCompositeKeyHash32);
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, materialized$iv$iv22, ComposeUiNode.INSTANCE.getSetModifier());
                int i42 = ($changed$iv$iv$iv22 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer2, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                BoxScopeInstance boxScopeInstance22 = BoxScopeInstance.INSTANCE;
                int i52 = ((0 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer2, 250255454, "C2149@98351L185:AppBar.kt#uh7d8r");
                ProvideContentColorTextStyleKt.m3185ProvideContentColorTextStyle3JVO9M(titleContentColor, titleTextStyle, function2, $composer2, (($dirty2 >> 9) & 14) | (($dirty2 >> 15) & 112) | (($dirty2 >> 9) & 896));
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                $composer2.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                Modifier modifier$iv32 = PaddingKt.m822paddingqDBjuR0$default(LayoutIdKt.layoutId(Modifier.INSTANCE, "actionIcons"), 0.0f, 0.0f, TopAppBarHorizontalPadding, 0.0f, 11, null);
                ComposerKt.sourceInformationMarkerStart($composer2, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                Alignment contentAlignment$iv32 = Alignment.INSTANCE.getTopStart();
                MeasurePolicy measurePolicy$iv42 = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv32, false);
                int $changed$iv$iv42 = (6 << 3) & 112;
                ComposerKt.sourceInformationMarkerStart($composer2, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
                int compositeKeyHash$iv$iv32 = ComposablesKt.getCurrentCompositeKeyHash($composer2, 0);
                CompositionLocalMap localMap$iv$iv32 = $composer2.getCurrentCompositionLocalMap();
                Modifier materialized$iv$iv32 = ComposedModifierKt.materializeModifier($composer2, modifier$iv32);
                Function0<ComposeUiNode> constructor42 = ComposeUiNode.INSTANCE.getConstructor();
                int $changed$iv$iv$iv32 = (($changed$iv$iv42 << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart($composer2, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!($composer2.getApplier() instanceof Applier)) {
                }
                $composer2.startReusableNode();
                if ($composer2.getInserting()) {
                }
                $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3967constructorimpl($composer2);
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv42, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv32, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash42 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if ($this$Layout_u24lambda_u240$iv$iv3.getInserting()) {
                }
                $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv32));
                $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv32), setCompositeKeyHash42);
                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, materialized$iv$iv32, ComposeUiNode.INSTANCE.getSetModifier());
                int i622 = ($changed$iv$iv$iv32 >> 6) & 14;
                Composer $composer$iv22 = $composer3;
                ComposerKt.sourceInformationMarkerStart($composer$iv22, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                BoxScopeInstance boxScopeInstance322 = BoxScopeInstance.INSTANCE;
                int i722 = ((6 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer$iv22, 250561951, "C2156@98661L152:AppBar.kt#uh7d8r");
                CompositionLocalKt.CompositionLocalProvider(ContentColorKt.getLocalContentColor().provides(Color.m4687boximpl(actionIconContentColor)), function23, $composer$iv22, ProvidedValue.$stable | (($dirty12 >> 6) & 112));
                ComposerKt.sourceInformationMarkerEnd($composer$iv22);
                ComposerKt.sourceInformationMarkerEnd($composer$iv22);
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
                $dirty2 = $dirty4;
            }
            value$iv = new MeasurePolicy() { // from class: androidx.compose.material3.AppBarKt$TopAppBarLayout$2$1
                @Override // androidx.compose.ui.layout.MeasurePolicy
                /* JADX INFO: renamed from: measure-3p2s80s */
                public final MeasureResult mo41measure3p2s80s(final MeasureScope $this$Layout, List<? extends Measurable> list, final long constraints) {
                    int size = list.size();
                    for (int index$iv$iv = 0; index$iv$iv < size; index$iv$iv++) {
                        Object item$iv$iv = list.get(index$iv$iv);
                        Measurable it = (Measurable) item$iv$iv;
                        if (Intrinsics.areEqual(LayoutIdKt.getLayoutId(it), "navigationIcon")) {
                            final Placeable navigationIconPlaceable = ((Measurable) item$iv$iv).mo6141measureBRTryo0(Constraints.m7447copyZbe2FdA(constraints, (11 & 1) != 0 ? Constraints.m7460getMinWidthimpl(constraints) : 0, (11 & 2) != 0 ? Constraints.m7458getMaxWidthimpl(constraints) : 0, (11 & 4) != 0 ? Constraints.m7459getMinHeightimpl(constraints) : 0, (11 & 8) != 0 ? Constraints.m7457getMaxHeightimpl(constraints) : 0));
                            int size2 = list.size();
                            for (int index$iv$iv2 = 0; index$iv$iv2 < size2; index$iv$iv2++) {
                                Object item$iv$iv2 = list.get(index$iv$iv2);
                                Measurable it2 = (Measurable) item$iv$iv2;
                                if (Intrinsics.areEqual(LayoutIdKt.getLayoutId(it2), "actionIcons")) {
                                    final Placeable actionIconsPlaceable = ((Measurable) item$iv$iv2).mo6141measureBRTryo0(Constraints.m7447copyZbe2FdA(constraints, (11 & 1) != 0 ? Constraints.m7460getMinWidthimpl(constraints) : 0, (11 & 2) != 0 ? Constraints.m7458getMaxWidthimpl(constraints) : 0, (11 & 4) != 0 ? Constraints.m7459getMinHeightimpl(constraints) : 0, (11 & 8) != 0 ? Constraints.m7457getMaxHeightimpl(constraints) : 0));
                                    int maxTitleWidth = Constraints.m7458getMaxWidthimpl(constraints) == Integer.MAX_VALUE ? Constraints.m7458getMaxWidthimpl(constraints) : RangesKt.coerceAtLeast((Constraints.m7458getMaxWidthimpl(constraints) - navigationIconPlaceable.getWidth()) - actionIconsPlaceable.getWidth(), 0);
                                    int size3 = list.size();
                                    for (int index$iv$iv3 = 0; index$iv$iv3 < size3; index$iv$iv3++) {
                                        Object item$iv$iv3 = list.get(index$iv$iv3);
                                        Measurable it3 = (Measurable) item$iv$iv3;
                                        if (Intrinsics.areEqual(LayoutIdKt.getLayoutId(it3), "title")) {
                                            final Placeable titlePlaceable = ((Measurable) item$iv$iv3).mo6141measureBRTryo0(Constraints.m7447copyZbe2FdA(constraints, (11 & 1) != 0 ? Constraints.m7460getMinWidthimpl(constraints) : 0, (11 & 2) != 0 ? Constraints.m7458getMaxWidthimpl(constraints) : maxTitleWidth, (11 & 4) != 0 ? Constraints.m7459getMinHeightimpl(constraints) : 0, (11 & 8) != 0 ? Constraints.m7457getMaxHeightimpl(constraints) : 0));
                                            int titleBaseline = titlePlaceable.get(AlignmentLineKt.getLastBaseline()) != Integer.MIN_VALUE ? titlePlaceable.get(AlignmentLineKt.getLastBaseline()) : 0;
                                            float scrolledOffsetValue = scrolledOffset.offset();
                                            int heightOffset = Float.isNaN(scrolledOffsetValue) ? 0 : MathKt.roundToInt(scrolledOffsetValue);
                                            final int layoutHeight = Constraints.m7457getMaxHeightimpl(constraints) == Integer.MAX_VALUE ? Constraints.m7457getMaxHeightimpl(constraints) : Constraints.m7457getMaxHeightimpl(constraints) + heightOffset;
                                            int iM7458getMaxWidthimpl = Constraints.m7458getMaxWidthimpl(constraints);
                                            final Arrangement.Horizontal horizontal = titleHorizontalArrangement;
                                            final Arrangement.Vertical vertical2 = vertical;
                                            final int i9 = titleBottomPadding;
                                            final int titleBaseline2 = titleBaseline;
                                            return MeasureScope.layout$default($this$Layout, iM7458getMaxWidthimpl, layoutHeight, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material3.AppBarKt$TopAppBarLayout$2$1.1
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
                                                    int iMax;
                                                    int height;
                                                    int adjustedBottomPadding;
                                                    Placeable.PlacementScope.placeRelative$default($this$layout, navigationIconPlaceable, 0, (layoutHeight - navigationIconPlaceable.getHeight()) / 2, 0.0f, 4, null);
                                                    Placeable placeable = titlePlaceable;
                                                    Arrangement.Horizontal horizontal2 = horizontal;
                                                    if (Intrinsics.areEqual(horizontal2, Arrangement.INSTANCE.getCenter())) {
                                                        int baseX = (Constraints.m7458getMaxWidthimpl(constraints) - titlePlaceable.getWidth()) / 2;
                                                        if (baseX < navigationIconPlaceable.getWidth()) {
                                                            baseX += navigationIconPlaceable.getWidth() - baseX;
                                                        } else if (titlePlaceable.getWidth() + baseX > Constraints.m7458getMaxWidthimpl(constraints) - actionIconsPlaceable.getWidth()) {
                                                            baseX += (Constraints.m7458getMaxWidthimpl(constraints) - actionIconsPlaceable.getWidth()) - (titlePlaceable.getWidth() + baseX);
                                                        }
                                                        iMax = baseX;
                                                    } else if (!Intrinsics.areEqual(horizontal2, Arrangement.INSTANCE.getEnd())) {
                                                        iMax = Math.max($this$Layout.mo399roundToPx0680j_4(AppBarKt.TopAppBarTitleInset), navigationIconPlaceable.getWidth());
                                                    } else {
                                                        iMax = (Constraints.m7458getMaxWidthimpl(constraints) - titlePlaceable.getWidth()) - actionIconsPlaceable.getWidth();
                                                    }
                                                    Arrangement.Vertical vertical3 = vertical2;
                                                    if (Intrinsics.areEqual(vertical3, Arrangement.INSTANCE.getCenter())) {
                                                        height = (layoutHeight - titlePlaceable.getHeight()) / 2;
                                                    } else if (Intrinsics.areEqual(vertical3, Arrangement.INSTANCE.getBottom())) {
                                                        if (i9 == 0) {
                                                            height = layoutHeight - titlePlaceable.getHeight();
                                                        } else {
                                                            int paddingFromBottom = i9 - (titlePlaceable.getHeight() - titleBaseline2);
                                                            int heightWithPadding = titlePlaceable.getHeight() + paddingFromBottom;
                                                            if (heightWithPadding > Constraints.m7457getMaxHeightimpl(constraints)) {
                                                                adjustedBottomPadding = paddingFromBottom - (heightWithPadding - Constraints.m7457getMaxHeightimpl(constraints));
                                                            } else {
                                                                adjustedBottomPadding = paddingFromBottom;
                                                            }
                                                            height = (layoutHeight - titlePlaceable.getHeight()) - Math.max(0, adjustedBottomPadding);
                                                        }
                                                    } else {
                                                        height = 0;
                                                    }
                                                    Placeable.PlacementScope.placeRelative$default($this$layout, placeable, iMax, height, 0.0f, 4, null);
                                                    Placeable.PlacementScope.placeRelative$default($this$layout, actionIconsPlaceable, Constraints.m7458getMaxWidthimpl(constraints) - actionIconsPlaceable.getWidth(), (layoutHeight - actionIconsPlaceable.getHeight()) / 2, 0.0f, 4, null);
                                                }
                                            }, 4, null);
                                        }
                                    }
                                    throw new NoSuchElementException("Collection contains no element matching the predicate.");
                                }
                            }
                            throw new NoSuchElementException("Collection contains no element matching the predicate.");
                        }
                    }
                    throw new NoSuchElementException("Collection contains no element matching the predicate.");
                }
            };
            $composer4.updateRememberedValue(value$iv);
            MeasurePolicy measurePolicy$iv5 = (MeasurePolicy) value$iv;
            ComposerKt.sourceInformationMarkerEnd($composer4);
            int $changed$iv2 = ($dirty2 << 3) & 112;
            ComposerKt.sourceInformationMarkerStart($composer4, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
            int compositeKeyHash$iv2 = ComposablesKt.getCurrentCompositeKeyHash($composer4, 0);
            CompositionLocalMap localMap$iv2 = $composer4.getCurrentCompositionLocalMap();
            Modifier materialized$iv2 = ComposedModifierKt.materializeModifier($composer4, modifier);
            Function0<ComposeUiNode> constructor5 = ComposeUiNode.INSTANCE.getConstructor();
            int $changed$iv$iv5 = (($changed$iv2 << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer4, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
            if (!($composer4.getApplier() instanceof Applier)) {
            }
            $composer4.startReusableNode();
            if (!$composer4.getInserting()) {
            }
            $this$Layout_u24lambda_u240$iv = Updater.m3967constructorimpl($composer4);
            $composer2 = $composer4;
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv, measurePolicy$iv5, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv, localMap$iv2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash5 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if ($this$Layout_u24lambda_u240$iv.getInserting()) {
            }
            $this$Layout_u24lambda_u240$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv2));
            $this$Layout_u24lambda_u240$iv.apply(Integer.valueOf(compositeKeyHash$iv2), setCompositeKeyHash5);
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv, materialized$iv2, ComposeUiNode.INSTANCE.getSetModifier());
            int i82 = ($changed$iv$iv5 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer2, 9049318, "C2137@97755L280,2143@98048L502,2155@98563L264:AppBar.kt#uh7d8r");
            Modifier modifier$iv42 = PaddingKt.m822paddingqDBjuR0$default(LayoutIdKt.layoutId(Modifier.INSTANCE, "navigationIcon"), TopAppBarHorizontalPadding, 0.0f, 0.0f, 0.0f, 14, null);
            ComposerKt.sourceInformationMarkerStart($composer2, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
            Alignment contentAlignment$iv42 = Alignment.INSTANCE.getTopStart();
            MeasurePolicy measurePolicy$iv222 = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv42, false);
            int $changed$iv$iv222 = (6 << 3) & 112;
            ComposerKt.sourceInformationMarkerStart($composer2, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
            compositeKeyHash$iv$iv = ComposablesKt.getCurrentCompositeKeyHash($composer2, 0);
            CompositionLocalMap localMap$iv$iv42 = $composer2.getCurrentCompositionLocalMap();
            Modifier materialized$iv$iv42 = ComposedModifierKt.materializeModifier($composer2, modifier$iv42);
            Function0<ComposeUiNode> constructor222 = ComposeUiNode.INSTANCE.getConstructor();
            int $changed$iv$iv$iv42 = (($changed$iv$iv222 << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer2, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
            if (!($composer2.getApplier() instanceof Applier)) {
            }
            $composer2.startReusableNode();
            if ($composer2.getInserting()) {
            }
            $this$Layout_u24lambda_u240$iv$iv = Updater.m3967constructorimpl($composer2);
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, measurePolicy$iv222, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, localMap$iv$iv42, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash222 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if ($this$Layout_u24lambda_u240$iv$iv.getInserting()) {
            }
            $this$Layout_u24lambda_u240$iv$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv));
            $this$Layout_u24lambda_u240$iv$iv.apply(Integer.valueOf(compositeKeyHash$iv$iv), setCompositeKeyHash222);
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv, materialized$iv$iv42, ComposeUiNode.INSTANCE.getSetModifier());
            int i222 = ($changed$iv$iv$iv42 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer2, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
            BoxScopeInstance boxScopeInstance42 = BoxScopeInstance.INSTANCE;
            int i322 = ((6 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer2, 249765716, "C2138@97858L163:AppBar.kt#uh7d8r");
            CompositionLocalKt.CompositionLocalProvider(ContentColorKt.getLocalContentColor().provides(Color.m4687boximpl(j)), function22, $composer2, ProvidedValue.$stable | (($dirty12 >> 3) & 112));
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            $composer2.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            Modifier modifierM820paddingVpY3zN4$default22 = PaddingKt.m820paddingVpY3zN4$default(LayoutIdKt.layoutId(Modifier.INSTANCE, "title"), TopAppBarHorizontalPadding, 0.0f, 2, null);
            Modifier.Companion companionClearAndSetSemantics22 = Modifier.INSTANCE;
            if (hideTitleSemantics) {
            }
            Modifier modifier$iv222 = GraphicsLayerModifierKt.m4859graphicsLayerAp8cVGQ(modifierM820paddingVpY3zN4$default22.then(companionClearAndSetSemantics22), (131067 & 1) != 0 ? 1.0f : 0.0f, (131067 & 2) != 0 ? 1.0f : 0.0f, (131067 & 4) == 0 ? titleAlpha : 1.0f, (131067 & 8) != 0 ? 0.0f : 0.0f, (131067 & 16) != 0 ? 0.0f : 0.0f, (131067 & 32) != 0 ? 0.0f : 0.0f, (131067 & 64) != 0 ? 0.0f : 0.0f, (131067 & 128) != 0 ? 0.0f : 0.0f, (131067 & 256) == 0 ? 0.0f : 0.0f, (131067 & 512) != 0 ? 8.0f : 0.0f, (131067 & 1024) != 0 ? TransformOrigin.INSTANCE.m5110getCenterSzJe1aQ() : 0L, (131067 & 2048) != 0 ? RectangleShapeKt.getRectangleShape() : null, (131067 & 4096) != 0 ? false : false, (131067 & 8192) != 0 ? null : null, (131067 & 16384) != 0 ? GraphicsLayerScopeKt.getDefaultShadowColor() : 0L, (32768 & 131067) != 0 ? GraphicsLayerScopeKt.getDefaultShadowColor() : 0L, (131067 & 65536) != 0 ? CompositingStrategy.INSTANCE.m4786getAutoNrFUSI() : 0);
            ComposerKt.sourceInformationMarkerStart($composer2, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
            Alignment contentAlignment$iv222 = Alignment.INSTANCE.getTopStart();
            MeasurePolicy measurePolicy$iv322 = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv222, false);
            int $changed$iv$iv322 = (0 << 3) & 112;
            ComposerKt.sourceInformationMarkerStart($composer2, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
            compositeKeyHash$iv$iv2 = ComposablesKt.getCurrentCompositeKeyHash($composer2, 0);
            CompositionLocalMap localMap$iv$iv222 = $composer2.getCurrentCompositionLocalMap();
            Modifier materialized$iv$iv222 = ComposedModifierKt.materializeModifier($composer2, modifier$iv222);
            Function0<ComposeUiNode> constructor322 = ComposeUiNode.INSTANCE.getConstructor();
            int $changed$iv$iv$iv222 = (($changed$iv$iv322 << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer2, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
            if (!($composer2.getApplier() instanceof Applier)) {
            }
            $composer2.startReusableNode();
            if ($composer2.getInserting()) {
            }
            $this$Layout_u24lambda_u240$iv$iv2 = Updater.m3967constructorimpl($composer2);
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, measurePolicy$iv322, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, localMap$iv$iv222, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash322 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if ($this$Layout_u24lambda_u240$iv$iv2.getInserting()) {
            }
            $this$Layout_u24lambda_u240$iv$iv2.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv2));
            $this$Layout_u24lambda_u240$iv$iv2.apply(Integer.valueOf(compositeKeyHash$iv$iv2), setCompositeKeyHash322);
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv2, materialized$iv$iv222, ComposeUiNode.INSTANCE.getSetModifier());
            int i422 = ($changed$iv$iv$iv222 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer2, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
            BoxScopeInstance boxScopeInstance222 = BoxScopeInstance.INSTANCE;
            int i522 = ((0 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer2, 250255454, "C2149@98351L185:AppBar.kt#uh7d8r");
            ProvideContentColorTextStyleKt.m3185ProvideContentColorTextStyle3JVO9M(titleContentColor, titleTextStyle, function2, $composer2, (($dirty2 >> 9) & 14) | (($dirty2 >> 15) & 112) | (($dirty2 >> 9) & 896));
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            $composer2.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            Modifier modifier$iv322 = PaddingKt.m822paddingqDBjuR0$default(LayoutIdKt.layoutId(Modifier.INSTANCE, "actionIcons"), 0.0f, 0.0f, TopAppBarHorizontalPadding, 0.0f, 11, null);
            ComposerKt.sourceInformationMarkerStart($composer2, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
            Alignment contentAlignment$iv322 = Alignment.INSTANCE.getTopStart();
            MeasurePolicy measurePolicy$iv422 = BoxKt.maybeCachedBoxMeasurePolicy(contentAlignment$iv322, false);
            int $changed$iv$iv422 = (6 << 3) & 112;
            ComposerKt.sourceInformationMarkerStart($composer2, -1323940314, "CC(Layout)P(!1,2)78@3182L23,81@3333L411:Layout.kt#80mrfh");
            int compositeKeyHash$iv$iv322 = ComposablesKt.getCurrentCompositeKeyHash($composer2, 0);
            CompositionLocalMap localMap$iv$iv322 = $composer2.getCurrentCompositionLocalMap();
            Modifier materialized$iv$iv322 = ComposedModifierKt.materializeModifier($composer2, modifier$iv322);
            Function0<ComposeUiNode> constructor422 = ComposeUiNode.INSTANCE.getConstructor();
            int $changed$iv$iv$iv322 = (($changed$iv$iv422 << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer2, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
            if (!($composer2.getApplier() instanceof Applier)) {
            }
            $composer2.startReusableNode();
            if ($composer2.getInserting()) {
            }
            $this$Layout_u24lambda_u240$iv$iv3 = Updater.m3967constructorimpl($composer2);
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, measurePolicy$iv422, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, localMap$iv$iv322, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash422 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if ($this$Layout_u24lambda_u240$iv$iv3.getInserting()) {
            }
            $this$Layout_u24lambda_u240$iv$iv3.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv$iv322));
            $this$Layout_u24lambda_u240$iv$iv3.apply(Integer.valueOf(compositeKeyHash$iv$iv322), setCompositeKeyHash422);
            Updater.m3975setimpl($this$Layout_u24lambda_u240$iv$iv3, materialized$iv$iv322, ComposeUiNode.INSTANCE.getSetModifier());
            int i6222 = ($changed$iv$iv$iv322 >> 6) & 14;
            Composer $composer$iv222 = $composer3;
            ComposerKt.sourceInformationMarkerStart($composer$iv222, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
            BoxScopeInstance boxScopeInstance3222 = BoxScopeInstance.INSTANCE;
            int i7222 = ((6 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer$iv222, 250561951, "C2156@98661L152:AppBar.kt#uh7d8r");
            CompositionLocalKt.CompositionLocalProvider(ContentColorKt.getLocalContentColor().provides(Color.m4687boximpl(actionIconContentColor)), function23, $composer$iv222, ProvidedValue.$stable | (($dirty12 >> 6) & 112));
            ComposerKt.sourceInformationMarkerEnd($composer$iv222);
            ComposerKt.sourceInformationMarkerEnd($composer$iv222);
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
            $composer4.skipToGroupEnd();
            $composer2 = $composer4;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final long j2 = j;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.AppBarKt$TopAppBarLayout$3
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
                    AppBarKt.m2058TopAppBarLayoutkXwM9vE(modifier, scrolledOffset, j2, titleContentColor, actionIconContentColor, function2, titleTextStyle, titleAlpha, titleVerticalArrangement, titleHorizontalArrangement, titleBottomPadding, hideTitleSemantics, function22, function23, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), RecomposeScopeImplKt.updateChangedFlags($changed1));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0122 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object settleAppBar(final TopAppBarState state, float velocity, DecayAnimationSpec<Float> decayAnimationSpec, AnimationSpec<Float> animationSpec, Continuation<? super Velocity> continuation) {
        C04041 c04041;
        Ref.FloatRef remainingVelocity;
        final TopAppBarState state2;
        AnimationSpec<Float> animationSpec2;
        TopAppBarState state3;
        Ref.FloatRef remainingVelocity2;
        AnimationSpec<Float> animationSpec3;
        AnimationState animationStateAnimationState$default;
        float heightOffsetLimit;
        Float fBoxFloat;
        Function1<AnimationScope<Float, AnimationVector1D>, Unit> function1;
        Ref.FloatRef remainingVelocity3;
        if (continuation instanceof C04041) {
            c04041 = (C04041) continuation;
            if ((c04041.label & Integer.MIN_VALUE) != 0) {
                c04041.label -= Integer.MIN_VALUE;
            } else {
                c04041 = new C04041(continuation);
            }
        }
        C04041 c040412 = c04041;
        Object $result = c040412.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c040412.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                if (state.getCollapsedFraction() >= 0.01f) {
                    if (!(state.getCollapsedFraction() == 1.0f)) {
                        final Ref.FloatRef remainingVelocity4 = new Ref.FloatRef();
                        remainingVelocity4.element = velocity;
                        if (decayAnimationSpec != null && Math.abs(velocity) > 1.0f) {
                            final Ref.FloatRef lastValue = new Ref.FloatRef();
                            AnimationState animationStateAnimationState$default2 = AnimationStateKt.AnimationState$default(0.0f, velocity, 0L, 0L, false, 28, null);
                            Function1<AnimationScope<Float, AnimationVector1D>, Unit> function12 = new Function1<AnimationScope<Float, AnimationVector1D>, Unit>() { // from class: androidx.compose.material3.AppBarKt.settleAppBar.2
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(AnimationScope<Float, AnimationVector1D> animationScope) {
                                    invoke2(animationScope);
                                    return Unit.INSTANCE;
                                }

                                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                                public final void invoke2(AnimationScope<Float, AnimationVector1D> animationScope) {
                                    float delta = animationScope.getValue().floatValue() - lastValue.element;
                                    float initialHeightOffset = state.getHeightOffset();
                                    state.setHeightOffset(initialHeightOffset + delta);
                                    float consumed = Math.abs(initialHeightOffset - state.getHeightOffset());
                                    lastValue.element = animationScope.getValue().floatValue();
                                    remainingVelocity4.element = animationScope.getVelocity().floatValue();
                                    if (Math.abs(delta - consumed) > 0.5f) {
                                        animationScope.cancelAnimation();
                                    }
                                }
                            };
                            c040412.L$0 = state;
                            c040412.L$1 = animationSpec;
                            c040412.L$2 = remainingVelocity4;
                            c040412.label = 1;
                            if (SuspendAnimationKt.animateDecay$default(animationStateAnimationState$default2, decayAnimationSpec, false, function12, c040412, 2, null) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            state3 = state;
                            remainingVelocity2 = remainingVelocity4;
                            animationSpec3 = animationSpec;
                            remainingVelocity = remainingVelocity2;
                            state2 = state3;
                            animationSpec2 = animationSpec3;
                            if (animationSpec2 != null) {
                                animationStateAnimationState$default = AnimationStateKt.AnimationState$default(state2.getHeightOffset(), 0.0f, 0L, 0L, false, 30, null);
                                if (state2.getCollapsedFraction() >= 0.5f) {
                                }
                                fBoxFloat = Boxing.boxFloat(heightOffsetLimit);
                                function1 = new Function1<AnimationScope<Float, AnimationVector1D>, Unit>() { // from class: androidx.compose.material3.AppBarKt.settleAppBar.3
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Unit invoke(AnimationScope<Float, AnimationVector1D> animationScope) {
                                        invoke2(animationScope);
                                        return Unit.INSTANCE;
                                    }

                                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                                    public final void invoke2(AnimationScope<Float, AnimationVector1D> animationScope) {
                                        state2.setHeightOffset(animationScope.getValue().floatValue());
                                    }
                                };
                                c040412.L$0 = remainingVelocity;
                                c040412.L$1 = null;
                                c040412.L$2 = null;
                                c040412.label = 2;
                                if (SuspendAnimationKt.animateTo(animationStateAnimationState$default, fBoxFloat, (4 & 2) != 0 ? AnimationSpecKt.spring$default(0.0f, 0.0f, null, 7, null) : animationSpec2, (4 & 4) != 0 ? false : false, (4 & 8) != 0 ? new Function1() { // from class: androidx.compose.animation.core.SuspendAnimationKt$$ExternalSyntheticLambda9
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj2) {
                                        return Unit.INSTANCE;
                                    }
                                } : function1, c040412) != coroutine_suspended) {
                                }
                            }
                            return Velocity.m7734boximpl(VelocityKt.Velocity(0.0f, remainingVelocity.element));
                        }
                        remainingVelocity = remainingVelocity4;
                        state2 = state;
                        animationSpec2 = animationSpec;
                        if (animationSpec2 != null && state2.getHeightOffset() < 0.0f && state2.getHeightOffset() > state2.getHeightOffsetLimit()) {
                            animationStateAnimationState$default = AnimationStateKt.AnimationState$default(state2.getHeightOffset(), 0.0f, 0L, 0L, false, 30, null);
                            if (state2.getCollapsedFraction() >= 0.5f) {
                                heightOffsetLimit = 0.0f;
                            } else {
                                heightOffsetLimit = state2.getHeightOffsetLimit();
                            }
                            fBoxFloat = Boxing.boxFloat(heightOffsetLimit);
                            function1 = new Function1<AnimationScope<Float, AnimationVector1D>, Unit>() { // from class: androidx.compose.material3.AppBarKt.settleAppBar.3
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(AnimationScope<Float, AnimationVector1D> animationScope) {
                                    invoke2(animationScope);
                                    return Unit.INSTANCE;
                                }

                                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                                public final void invoke2(AnimationScope<Float, AnimationVector1D> animationScope) {
                                    state2.setHeightOffset(animationScope.getValue().floatValue());
                                }
                            };
                            c040412.L$0 = remainingVelocity;
                            c040412.L$1 = null;
                            c040412.L$2 = null;
                            c040412.label = 2;
                            if (SuspendAnimationKt.animateTo(animationStateAnimationState$default, fBoxFloat, (4 & 2) != 0 ? AnimationSpecKt.spring$default(0.0f, 0.0f, null, 7, null) : animationSpec2, (4 & 4) != 0 ? false : false, (4 & 8) != 0 ? new Function1() { // from class: androidx.compose.animation.core.SuspendAnimationKt$$ExternalSyntheticLambda9
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj2) {
                                    return Unit.INSTANCE;
                                }
                            } : function1, c040412) != coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            remainingVelocity3 = remainingVelocity;
                            remainingVelocity = remainingVelocity3;
                        }
                        return Velocity.m7734boximpl(VelocityKt.Velocity(0.0f, remainingVelocity.element));
                    }
                }
                return Velocity.m7734boximpl(Velocity.INSTANCE.m7754getZero9UxMQ8M());
            case 1:
                remainingVelocity2 = (Ref.FloatRef) c040412.L$2;
                animationSpec3 = (AnimationSpec) c040412.L$1;
                state3 = (TopAppBarState) c040412.L$0;
                ResultKt.throwOnFailure($result);
                remainingVelocity = remainingVelocity2;
                state2 = state3;
                animationSpec2 = animationSpec3;
                if (animationSpec2 != null) {
                }
                return Velocity.m7734boximpl(VelocityKt.Velocity(0.0f, remainingVelocity.element));
            case 2:
                remainingVelocity3 = (Ref.FloatRef) c040412.L$0;
                ResultKt.throwOnFailure($result);
                remainingVelocity = remainingVelocity3;
                return Velocity.m7734boximpl(VelocityKt.Velocity(0.0f, remainingVelocity.element));
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public static final CubicBezierEasing getTopTitleAlphaEasing() {
        return TopTitleAlphaEasing;
    }
}
