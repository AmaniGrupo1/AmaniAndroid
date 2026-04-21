package androidx.compose.animation;

import androidx.compose.animation.core.MutableTransitionState;
import androidx.compose.animation.core.Transition;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutModifierKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntSize;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.profileinstaller.ProfileVerifier;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: compiled from: AnimatedVisibility.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000h\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\u001a[\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\u001c\u0010\f\u001a\u0018\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00010\r¢\u0006\u0002\b\u000f¢\u0006\u0002\b\u0010H\u0007¢\u0006\u0002\u0010\u0011\u001a_\u0010\u0000\u001a\u00020\u0001*\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\u001c\u0010\f\u001a\u0018\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00010\r¢\u0006\u0002\b\u000f¢\u0006\u0002\b\u0010H\u0007¢\u0006\u0002\u0010\u0013\u001a_\u0010\u0000\u001a\u00020\u0001*\u00020\u00142\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\u001c\u0010\f\u001a\u0018\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00010\r¢\u0006\u0002\b\u000f¢\u0006\u0002\b\u0010H\u0007¢\u0006\u0002\u0010\u0015\u001aa\u0010\u0000\u001a\u00020\u00012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00030\u00172\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\u001c\u0010\f\u001a\u0018\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00010\r¢\u0006\u0002\b\u000f¢\u0006\u0002\b\u0010H\u0007¢\u0006\u0002\u0010\u0018\u001ae\u0010\u0000\u001a\u00020\u0001*\u00020\u00122\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00030\u00172\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\u001c\u0010\f\u001a\u0018\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00010\r¢\u0006\u0002\b\u000f¢\u0006\u0002\b\u0010H\u0007¢\u0006\u0002\u0010\u0019\u001ae\u0010\u0000\u001a\u00020\u0001*\u00020\u00142\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00030\u00172\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\u001c\u0010\f\u001a\u0018\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00010\r¢\u0006\u0002\b\u000f¢\u0006\u0002\b\u0010H\u0007¢\u0006\u0002\u0010\u001a\u001am\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u001b*\b\u0012\u0004\u0012\u0002H\u001b0\u001c2\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u0002H\u001b\u0012\u0004\u0012\u00020\u00030\r2\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\u001c\u0010\f\u001a\u0018\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00010\r¢\u0006\u0002\b\u000f¢\u0006\u0002\b\u0010H\u0007¢\u0006\u0002\u0010\u001d\u001ak\u0010\u001e\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u001b2\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u0002H\u001b0\u001c2\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u0002H\u001b\u0012\u0004\u0012\u00020\u00030\r2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u001c\u0010\f\u001a\u0018\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00010\r¢\u0006\u0002\b\u000f¢\u0006\u0002\b\u0010H\u0001¢\u0006\u0002\u0010 \u001a\u0091\u0001\u0010!\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u001b2\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u0002H\u001b0\u001c2\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u0002H\u001b\u0012\u0004\u0012\u00020\u00030\r2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0018\u0010\"\u001a\u0014\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\u00030#2\n\b\u0002\u0010%\u001a\u0004\u0018\u00010&2\u001c\u0010\f\u001a\u0018\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00010\r¢\u0006\u0002\b\u000f¢\u0006\u0002\b\u0010H\u0001¢\u0006\u0002\u0010'\u001a9\u0010+\u001a\u00020$\"\u0004\b\u0000\u0010\u001b*\b\u0012\u0004\u0012\u0002H\u001b0\u001c2\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u0002H\u001b\u0012\u0004\u0012\u00020\u00030\r2\u0006\u0010,\u001a\u0002H\u001bH\u0003¢\u0006\u0002\u0010-\"\u001e\u0010(\u001a\u00020\u0003*\b\u0012\u0004\u0012\u00020$0\u001c8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b)\u0010*¨\u0006.²\u0006\u001c\u0010/\u001a\u0014\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\u00030#X\u008a\u0084\u0002²\u0006\n\u00100\u001a\u00020\u0003X\u008a\u0084\u0002"}, d2 = {"AnimatedVisibility", "", "visible", "", "modifier", "Landroidx/compose/ui/Modifier;", "enter", "Landroidx/compose/animation/EnterTransition;", "exit", "Landroidx/compose/animation/ExitTransition;", "label", "", "content", "Lkotlin/Function1;", "Landroidx/compose/animation/AnimatedVisibilityScope;", "Landroidx/compose/runtime/Composable;", "Lkotlin/ExtensionFunctionType;", "(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "Landroidx/compose/foundation/layout/RowScope;", "(Landroidx/compose/foundation/layout/RowScope;ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "Landroidx/compose/foundation/layout/ColumnScope;", "(Landroidx/compose/foundation/layout/ColumnScope;ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "visibleState", "Landroidx/compose/animation/core/MutableTransitionState;", "(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/compose/animation/core/Transition;", "(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "AnimatedVisibilityImpl", "transition", "(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V", "AnimatedEnterExitImpl", "shouldDisposeBlock", "Lkotlin/Function2;", "Landroidx/compose/animation/EnterExitState;", "onLookaheadMeasured", "Landroidx/compose/animation/OnLookaheadMeasured;", "(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Lkotlin/jvm/functions/Function2;Landroidx/compose/animation/OnLookaheadMeasured;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "exitFinished", "getExitFinished", "(Landroidx/compose/animation/core/Transition;)Z", "targetEnterExit", "targetState", "(Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/EnterExitState;", "animation", "shouldDisposeBlockUpdated", "shouldDisposeAfterExit"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class AnimatedVisibilityKt {
    public static final void AnimatedVisibility(boolean visible, Modifier modifier, EnterTransition enter, ExitTransition exit, String label, final Function3<? super AnimatedVisibilityScope, ? super Composer, ? super Integer, Unit> function3, Composer $composer, final int $changed, final int i) {
        boolean z;
        Modifier modifier2;
        EnterTransition enterTransition;
        ExitTransition exitTransition;
        Function3<? super AnimatedVisibilityScope, ? super Composer, ? super Integer, Unit> function32;
        final String label2;
        Modifier modifier3;
        final EnterTransition enter2;
        final ExitTransition exit2;
        int i2;
        EnterTransition enter3;
        ExitTransition exit3;
        String label3;
        Composer $composer2 = $composer.startRestartGroup(-1448730565);
        ComposerKt.sourceInformation($composer2, "C(AnimatedVisibility)P(5,4,1,2,3)131@7032L32,132@7104L6,132@7069L84:AnimatedVisibility.kt#xbi5r1");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            z = visible;
            $dirty |= $composer2.changed(z) ? 4 : 2;
        } else {
            z = visible;
        }
        int i3 = i & 2;
        if (i3 != 0) {
            $dirty |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty |= $composer2.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        int i4 = i & 4;
        if (i4 != 0) {
            $dirty |= RendererCapabilities.DECODER_SUPPORT_MASK;
            enterTransition = enter;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            enterTransition = enter;
            $dirty |= $composer2.changed(enterTransition) ? 256 : 128;
        } else {
            enterTransition = enter;
        }
        int i5 = i & 8;
        if (i5 != 0) {
            $dirty |= 3072;
            exitTransition = exit;
        } else if (($changed & 3072) == 0) {
            exitTransition = exit;
            $dirty |= $composer2.changed(exitTransition) ? 2048 : 1024;
        } else {
            exitTransition = exit;
        }
        int i6 = i & 16;
        if (i6 != 0) {
            $dirty |= 24576;
        } else if (($changed & 24576) == 0) {
            $dirty |= $composer2.changed(label) ? 16384 : 8192;
        }
        if ((196608 & $changed) == 0) {
            function32 = function3;
            $dirty |= $composer2.changedInstance(function32) ? 131072 : 65536;
        } else {
            function32 = function3;
        }
        if (!$composer2.shouldExecute((74899 & $dirty) != 74898, $dirty & 1)) {
            $composer2.skipToGroupEnd();
            label2 = label;
            modifier3 = modifier2;
            enter2 = enterTransition;
            exit2 = exitTransition;
        } else {
            if (i3 != 0) {
                modifier3 = Modifier.INSTANCE;
                i2 = i6;
            } else {
                i2 = i6;
                modifier3 = modifier2;
            }
            if (i4 == 0) {
                enter3 = enterTransition;
            } else {
                enter3 = EnterExitTransitionKt.fadeIn$default(null, 0.0f, 3, null).plus(EnterExitTransitionKt.expandIn$default(null, null, false, null, 15, null));
            }
            if (i5 != 0) {
                exit3 = EnterExitTransitionKt.shrinkOut$default(null, null, false, null, 15, null).plus(EnterExitTransitionKt.fadeOut$default(null, 0.0f, 3, null));
            } else {
                exit3 = exitTransition;
            }
            if (i2 == 0) {
                label3 = label;
            } else {
                label3 = "AnimatedVisibility";
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1448730565, $dirty, -1, "androidx.compose.animation.AnimatedVisibility (AnimatedVisibility.kt:130)");
            }
            Transition transition = androidx.compose.animation.core.TransitionKt.updateTransition(Boolean.valueOf(z), label3, $composer2, ($dirty & 14) | (($dirty >> 9) & 112), 0);
            ComposerKt.sourceInformationMarkerStart($composer2, -660656671, "CC(remember):AnimatedVisibility.kt#9igjgp");
            Object it$iv = $composer2.rememberedValue();
            if (it$iv == Composer.INSTANCE.getEmpty()) {
                Object value$iv = (Function1) new Function1<Boolean, Boolean>() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedVisibility$1$1
                    public final Boolean invoke(boolean it) {
                        return Boolean.valueOf(it);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Boolean invoke(Boolean bool) {
                        return invoke(bool.booleanValue());
                    }
                };
                $composer2.updateRememberedValue(value$iv);
                it$iv = value$iv;
            }
            ComposerKt.sourceInformationMarkerEnd($composer2);
            AnimatedVisibilityImpl(transition, (Function1) it$iv, modifier3, enter3, exit3, function32, $composer2, (($dirty << 3) & 896) | 48 | (($dirty << 3) & 7168) | (($dirty << 3) & 57344) | (458752 & $dirty));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            label2 = label3;
            enter2 = enter3;
            exit2 = exit3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier4 = modifier3;
            final boolean z2 = z;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.AnimatedVisibilityKt.AnimatedVisibility.2
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
                    AnimatedVisibilityKt.AnimatedVisibility(z2, modifier4, enter2, exit2, label2, function3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    public static final void AnimatedVisibility(final RowScope $this$AnimatedVisibility, boolean visible, Modifier modifier, EnterTransition enter, ExitTransition exit, String label, final Function3<? super AnimatedVisibilityScope, ? super Composer, ? super Integer, Unit> function3, Composer $composer, final int $changed, final int i) {
        final boolean z;
        Modifier modifier2;
        EnterTransition enter2;
        ExitTransition exitTransition;
        Function3<? super AnimatedVisibilityScope, ? super Composer, ? super Integer, Unit> function32;
        final Modifier modifier3;
        final EnterTransition enter3;
        final ExitTransition exit2;
        final String label2;
        Modifier modifier4;
        ExitTransition exit3;
        String label3;
        Composer $composer2 = $composer.startRestartGroup(234057107);
        ComposerKt.sourceInformation($composer2, "C(AnimatedVisibility)P(5,4,1,2,3)205@11418L32,206@11490L6,206@11455L84:AnimatedVisibility.kt#xbi5r1");
        int $dirty = $changed;
        if (($changed & 48) == 0) {
            z = visible;
            $dirty |= $composer2.changed(z) ? 32 : 16;
        } else {
            z = visible;
        }
        int i2 = i & 2;
        if (i2 != 0) {
            $dirty |= RendererCapabilities.DECODER_SUPPORT_MASK;
            modifier2 = modifier;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            modifier2 = modifier;
            $dirty |= $composer2.changed(modifier2) ? 256 : 128;
        } else {
            modifier2 = modifier;
        }
        int i3 = i & 4;
        if (i3 != 0) {
            $dirty |= 3072;
            enter2 = enter;
        } else if (($changed & 3072) == 0) {
            enter2 = enter;
            $dirty |= $composer2.changed(enter2) ? 2048 : 1024;
        } else {
            enter2 = enter;
        }
        int i4 = i & 8;
        if (i4 != 0) {
            $dirty |= 24576;
            exitTransition = exit;
        } else if (($changed & 24576) == 0) {
            exitTransition = exit;
            $dirty |= $composer2.changed(exitTransition) ? 16384 : 8192;
        } else {
            exitTransition = exit;
        }
        int i5 = i & 16;
        if (i5 != 0) {
            $dirty |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if ((196608 & $changed) == 0) {
            $dirty |= $composer2.changed(label) ? 131072 : 65536;
        }
        if ((1572864 & $changed) == 0) {
            function32 = function3;
            $dirty |= $composer2.changedInstance(function32) ? 1048576 : 524288;
        } else {
            function32 = function3;
        }
        if (!$composer2.shouldExecute((599185 & $dirty) != 599184, $dirty & 1)) {
            $composer2.skipToGroupEnd();
            modifier3 = modifier2;
            enter3 = enter2;
            exit2 = exitTransition;
            label2 = label;
        } else {
            if (i2 != 0) {
                modifier4 = Modifier.INSTANCE;
            } else {
                modifier4 = modifier2;
            }
            if (i3 != 0) {
                enter2 = EnterExitTransitionKt.fadeIn$default(null, 0.0f, 3, null).plus(EnterExitTransitionKt.expandHorizontally$default(null, null, false, null, 15, null));
            }
            if (i4 == 0) {
                exit3 = exitTransition;
            } else {
                exit3 = EnterExitTransitionKt.fadeOut$default(null, 0.0f, 3, null).plus(EnterExitTransitionKt.shrinkHorizontally$default(null, null, false, null, 15, null));
            }
            if (i5 == 0) {
                label3 = label;
            } else {
                label3 = "AnimatedVisibility";
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(234057107, $dirty, -1, "androidx.compose.animation.AnimatedVisibility (AnimatedVisibility.kt:204)");
            }
            Transition transition = androidx.compose.animation.core.TransitionKt.updateTransition(Boolean.valueOf(z), label3, $composer2, (($dirty >> 3) & 14) | (($dirty >> 12) & 112), 0);
            ComposerKt.sourceInformationMarkerStart($composer2, 1590593721, "CC(remember):AnimatedVisibility.kt#9igjgp");
            Object it$iv = $composer2.rememberedValue();
            if (it$iv == Composer.INSTANCE.getEmpty()) {
                Object value$iv = (Function1) new Function1<Boolean, Boolean>() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedVisibility$3$1
                    public final Boolean invoke(boolean it) {
                        return Boolean.valueOf(it);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Boolean invoke(Boolean bool) {
                        return invoke(bool.booleanValue());
                    }
                };
                $composer2.updateRememberedValue(value$iv);
                it$iv = value$iv;
            }
            ComposerKt.sourceInformationMarkerEnd($composer2);
            EnterTransition enter4 = enter2;
            AnimatedVisibilityImpl(transition, (Function1) it$iv, modifier4, enter4, exit3, function32, $composer2, ($dirty & 896) | 48 | ($dirty & 7168) | (57344 & $dirty) | (($dirty >> 3) & 458752));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            label2 = label3;
            modifier3 = modifier4;
            enter3 = enter4;
            exit2 = exit3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.AnimatedVisibilityKt.AnimatedVisibility.4
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
                    AnimatedVisibilityKt.AnimatedVisibility($this$AnimatedVisibility, z, modifier3, enter3, exit2, label2, function3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    public static final void AnimatedVisibility(final ColumnScope $this$AnimatedVisibility, boolean visible, Modifier modifier, EnterTransition enter, ExitTransition exit, String label, final Function3<? super AnimatedVisibilityScope, ? super Composer, ? super Integer, Unit> function3, Composer $composer, final int $changed, final int i) {
        final boolean z;
        Modifier modifier2;
        EnterTransition enter2;
        ExitTransition exitTransition;
        Function3<? super AnimatedVisibilityScope, ? super Composer, ? super Integer, Unit> function32;
        final Modifier modifier3;
        final EnterTransition enter3;
        final ExitTransition exit2;
        final String label2;
        Modifier modifier4;
        ExitTransition exit3;
        String label3;
        Composer $composer2 = $composer.startRestartGroup(1799879339);
        ComposerKt.sourceInformation($composer2, "C(AnimatedVisibility)P(5,4,1,2,3)278@15785L32,279@15857L6,279@15822L84:AnimatedVisibility.kt#xbi5r1");
        int $dirty = $changed;
        if (($changed & 48) == 0) {
            z = visible;
            $dirty |= $composer2.changed(z) ? 32 : 16;
        } else {
            z = visible;
        }
        int i2 = i & 2;
        if (i2 != 0) {
            $dirty |= RendererCapabilities.DECODER_SUPPORT_MASK;
            modifier2 = modifier;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            modifier2 = modifier;
            $dirty |= $composer2.changed(modifier2) ? 256 : 128;
        } else {
            modifier2 = modifier;
        }
        int i3 = i & 4;
        if (i3 != 0) {
            $dirty |= 3072;
            enter2 = enter;
        } else if (($changed & 3072) == 0) {
            enter2 = enter;
            $dirty |= $composer2.changed(enter2) ? 2048 : 1024;
        } else {
            enter2 = enter;
        }
        int i4 = i & 8;
        if (i4 != 0) {
            $dirty |= 24576;
            exitTransition = exit;
        } else if (($changed & 24576) == 0) {
            exitTransition = exit;
            $dirty |= $composer2.changed(exitTransition) ? 16384 : 8192;
        } else {
            exitTransition = exit;
        }
        int i5 = i & 16;
        if (i5 != 0) {
            $dirty |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if ((196608 & $changed) == 0) {
            $dirty |= $composer2.changed(label) ? 131072 : 65536;
        }
        if ((1572864 & $changed) == 0) {
            function32 = function3;
            $dirty |= $composer2.changedInstance(function32) ? 1048576 : 524288;
        } else {
            function32 = function3;
        }
        if (!$composer2.shouldExecute((599185 & $dirty) != 599184, $dirty & 1)) {
            $composer2.skipToGroupEnd();
            modifier3 = modifier2;
            enter3 = enter2;
            exit2 = exitTransition;
            label2 = label;
        } else {
            if (i2 != 0) {
                modifier4 = Modifier.INSTANCE;
            } else {
                modifier4 = modifier2;
            }
            if (i3 != 0) {
                enter2 = EnterExitTransitionKt.fadeIn$default(null, 0.0f, 3, null).plus(EnterExitTransitionKt.expandVertically$default(null, null, false, null, 15, null));
            }
            if (i4 == 0) {
                exit3 = exitTransition;
            } else {
                exit3 = EnterExitTransitionKt.fadeOut$default(null, 0.0f, 3, null).plus(EnterExitTransitionKt.shrinkVertically$default(null, null, false, null, 15, null));
            }
            if (i5 == 0) {
                label3 = label;
            } else {
                label3 = "AnimatedVisibility";
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1799879339, $dirty, -1, "androidx.compose.animation.AnimatedVisibility (AnimatedVisibility.kt:277)");
            }
            Transition transition = androidx.compose.animation.core.TransitionKt.updateTransition(Boolean.valueOf(z), label3, $composer2, (($dirty >> 3) & 14) | (($dirty >> 12) & 112), 0);
            ComposerKt.sourceInformationMarkerStart($composer2, -1187762319, "CC(remember):AnimatedVisibility.kt#9igjgp");
            Object it$iv = $composer2.rememberedValue();
            if (it$iv == Composer.INSTANCE.getEmpty()) {
                Object value$iv = (Function1) new Function1<Boolean, Boolean>() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedVisibility$5$1
                    public final Boolean invoke(boolean it) {
                        return Boolean.valueOf(it);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Boolean invoke(Boolean bool) {
                        return invoke(bool.booleanValue());
                    }
                };
                $composer2.updateRememberedValue(value$iv);
                it$iv = value$iv;
            }
            ComposerKt.sourceInformationMarkerEnd($composer2);
            EnterTransition enter4 = enter2;
            AnimatedVisibilityImpl(transition, (Function1) it$iv, modifier4, enter4, exit3, function32, $composer2, ($dirty & 896) | 48 | ($dirty & 7168) | (57344 & $dirty) | (($dirty >> 3) & 458752));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            label2 = label3;
            modifier3 = modifier4;
            enter3 = enter4;
            exit2 = exit3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.AnimatedVisibilityKt.AnimatedVisibility.6
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
                    AnimatedVisibilityKt.AnimatedVisibility($this$AnimatedVisibility, z, modifier3, enter3, exit2, label2, function3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    public static final void AnimatedVisibility(final MutableTransitionState<Boolean> mutableTransitionState, Modifier modifier, EnterTransition enter, ExitTransition exit, String label, final Function3<? super AnimatedVisibilityScope, ? super Composer, ? super Integer, Unit> function3, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        EnterTransition enterTransition;
        ExitTransition exitTransition;
        Function3<? super AnimatedVisibilityScope, ? super Composer, ? super Integer, Unit> function32;
        final String label2;
        Modifier modifier3;
        final EnterTransition enter2;
        final ExitTransition exit2;
        int i2;
        EnterTransition enter3;
        ExitTransition exit3;
        String label3;
        Composer $composer2 = $composer.startRestartGroup(657024243);
        ComposerKt.sourceInformation($composer2, "C(AnimatedVisibility)P(5,4,1,2,3)377@21247L39,378@21326L6,378@21291L84:AnimatedVisibility.kt#xbi5r1");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= ($changed & 8) == 0 ? $composer2.changed(mutableTransitionState) : $composer2.changedInstance(mutableTransitionState) ? 4 : 2;
        }
        int i3 = i & 2;
        if (i3 != 0) {
            $dirty |= 48;
            modifier2 = modifier;
        } else if (($changed & 48) == 0) {
            modifier2 = modifier;
            $dirty |= $composer2.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        int i4 = i & 4;
        if (i4 != 0) {
            $dirty |= RendererCapabilities.DECODER_SUPPORT_MASK;
            enterTransition = enter;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            enterTransition = enter;
            $dirty |= $composer2.changed(enterTransition) ? 256 : 128;
        } else {
            enterTransition = enter;
        }
        int i5 = i & 8;
        if (i5 != 0) {
            $dirty |= 3072;
            exitTransition = exit;
        } else if (($changed & 3072) == 0) {
            exitTransition = exit;
            $dirty |= $composer2.changed(exitTransition) ? 2048 : 1024;
        } else {
            exitTransition = exit;
        }
        int i6 = i & 16;
        if (i6 != 0) {
            $dirty |= 24576;
        } else if (($changed & 24576) == 0) {
            $dirty |= $composer2.changed(label) ? 16384 : 8192;
        }
        if ((196608 & $changed) == 0) {
            function32 = function3;
            $dirty |= $composer2.changedInstance(function32) ? 131072 : 65536;
        } else {
            function32 = function3;
        }
        if (!$composer2.shouldExecute((74899 & $dirty) != 74898, $dirty & 1)) {
            $composer2.skipToGroupEnd();
            label2 = label;
            modifier3 = modifier2;
            enter2 = enterTransition;
            exit2 = exitTransition;
        } else {
            if (i3 != 0) {
                modifier3 = Modifier.INSTANCE;
                i2 = i6;
            } else {
                i2 = i6;
                modifier3 = modifier2;
            }
            if (i4 == 0) {
                enter3 = enterTransition;
            } else {
                enter3 = EnterExitTransitionKt.fadeIn$default(null, 0.0f, 3, null).plus(EnterExitTransitionKt.expandIn$default(null, null, false, null, 15, null));
            }
            if (i5 == 0) {
                exit3 = exitTransition;
            } else {
                exit3 = EnterExitTransitionKt.fadeOut$default(null, 0.0f, 3, null).plus(EnterExitTransitionKt.shrinkOut$default(null, null, false, null, 15, null));
            }
            if (i2 == 0) {
                label3 = label;
            } else {
                label3 = "AnimatedVisibility";
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(657024243, $dirty, -1, "androidx.compose.animation.AnimatedVisibility (AnimatedVisibility.kt:376)");
            }
            Transition transition = androidx.compose.animation.core.TransitionKt.rememberTransition(mutableTransitionState, label3, $composer2, MutableTransitionState.$stable | ($dirty & 14) | (($dirty >> 9) & 112), 0);
            ComposerKt.sourceInformationMarkerStart($composer2, 40118553, "CC(remember):AnimatedVisibility.kt#9igjgp");
            Object it$iv = $composer2.rememberedValue();
            if (it$iv == Composer.INSTANCE.getEmpty()) {
                Object value$iv = (Function1) new Function1<Boolean, Boolean>() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedVisibility$7$1
                    public final Boolean invoke(boolean it) {
                        return Boolean.valueOf(it);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Boolean invoke(Boolean bool) {
                        return invoke(bool.booleanValue());
                    }
                };
                $composer2.updateRememberedValue(value$iv);
                it$iv = value$iv;
            }
            ComposerKt.sourceInformationMarkerEnd($composer2);
            AnimatedVisibilityImpl(transition, (Function1) it$iv, modifier3, enter3, exit3, function32, $composer2, (($dirty << 3) & 896) | 48 | (($dirty << 3) & 7168) | (($dirty << 3) & 57344) | (458752 & $dirty));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            label2 = label3;
            enter2 = enter3;
            exit2 = exit3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier4 = modifier3;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.AnimatedVisibilityKt.AnimatedVisibility.8
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
                    AnimatedVisibilityKt.AnimatedVisibility(mutableTransitionState, modifier4, enter2, exit2, label2, function3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    public static final void AnimatedVisibility(final RowScope $this$AnimatedVisibility, final MutableTransitionState<Boolean> mutableTransitionState, Modifier modifier, EnterTransition enter, ExitTransition exit, String label, final Function3<? super AnimatedVisibilityScope, ? super Composer, ? super Integer, Unit> function3, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        EnterTransition enter2;
        ExitTransition exitTransition;
        Function3<? super AnimatedVisibilityScope, ? super Composer, ? super Integer, Unit> function32;
        final Modifier modifier3;
        final EnterTransition enter3;
        final ExitTransition exit2;
        final String label2;
        Modifier modifier4;
        ExitTransition exit3;
        String label3;
        Composer $composer2 = $composer.startRestartGroup(1763490971);
        ComposerKt.sourceInformation($composer2, "C(AnimatedVisibility)P(5,4,1,2,3)449@25685L39,450@25764L6,450@25729L84:AnimatedVisibility.kt#xbi5r1");
        int $dirty = $changed;
        if (($changed & 48) == 0) {
            $dirty |= ($changed & 64) == 0 ? $composer2.changed(mutableTransitionState) : $composer2.changedInstance(mutableTransitionState) ? 32 : 16;
        }
        int i2 = i & 2;
        if (i2 != 0) {
            $dirty |= RendererCapabilities.DECODER_SUPPORT_MASK;
            modifier2 = modifier;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            modifier2 = modifier;
            $dirty |= $composer2.changed(modifier2) ? 256 : 128;
        } else {
            modifier2 = modifier;
        }
        int i3 = i & 4;
        if (i3 != 0) {
            $dirty |= 3072;
            enter2 = enter;
        } else if (($changed & 3072) == 0) {
            enter2 = enter;
            $dirty |= $composer2.changed(enter2) ? 2048 : 1024;
        } else {
            enter2 = enter;
        }
        int i4 = i & 8;
        if (i4 != 0) {
            $dirty |= 24576;
            exitTransition = exit;
        } else if (($changed & 24576) == 0) {
            exitTransition = exit;
            $dirty |= $composer2.changed(exitTransition) ? 16384 : 8192;
        } else {
            exitTransition = exit;
        }
        int i5 = i & 16;
        if (i5 != 0) {
            $dirty |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if ((196608 & $changed) == 0) {
            $dirty |= $composer2.changed(label) ? 131072 : 65536;
        }
        if ((1572864 & $changed) == 0) {
            function32 = function3;
            $dirty |= $composer2.changedInstance(function32) ? 1048576 : 524288;
        } else {
            function32 = function3;
        }
        if (!$composer2.shouldExecute((599185 & $dirty) != 599184, $dirty & 1)) {
            $composer2.skipToGroupEnd();
            modifier3 = modifier2;
            enter3 = enter2;
            exit2 = exitTransition;
            label2 = label;
        } else {
            if (i2 != 0) {
                modifier4 = Modifier.INSTANCE;
            } else {
                modifier4 = modifier2;
            }
            if (i3 != 0) {
                enter2 = EnterExitTransitionKt.expandHorizontally$default(null, null, false, null, 15, null).plus(EnterExitTransitionKt.fadeIn$default(null, 0.0f, 3, null));
            }
            if (i4 != 0) {
                exit3 = EnterExitTransitionKt.shrinkHorizontally$default(null, null, false, null, 15, null).plus(EnterExitTransitionKt.fadeOut$default(null, 0.0f, 3, null));
            } else {
                exit3 = exitTransition;
            }
            if (i5 == 0) {
                label3 = label;
            } else {
                label3 = "AnimatedVisibility";
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1763490971, $dirty, -1, "androidx.compose.animation.AnimatedVisibility (AnimatedVisibility.kt:448)");
            }
            Transition transition = androidx.compose.animation.core.TransitionKt.rememberTransition(mutableTransitionState, label3, $composer2, MutableTransitionState.$stable | (($dirty >> 3) & 14) | (($dirty >> 12) & 112), 0);
            ComposerKt.sourceInformationMarkerStart($composer2, -1797244351, "CC(remember):AnimatedVisibility.kt#9igjgp");
            Object it$iv = $composer2.rememberedValue();
            if (it$iv == Composer.INSTANCE.getEmpty()) {
                Object value$iv = (Function1) new Function1<Boolean, Boolean>() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedVisibility$9$1
                    public final Boolean invoke(boolean it) {
                        return Boolean.valueOf(it);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Boolean invoke(Boolean bool) {
                        return invoke(bool.booleanValue());
                    }
                };
                $composer2.updateRememberedValue(value$iv);
                it$iv = value$iv;
            }
            ComposerKt.sourceInformationMarkerEnd($composer2);
            EnterTransition enter4 = enter2;
            AnimatedVisibilityImpl(transition, (Function1) it$iv, modifier4, enter4, exit3, function32, $composer2, ($dirty & 896) | 48 | ($dirty & 7168) | (57344 & $dirty) | (($dirty >> 3) & 458752));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            label2 = label3;
            modifier3 = modifier4;
            enter3 = enter4;
            exit2 = exit3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.AnimatedVisibilityKt.AnimatedVisibility.10
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
                    AnimatedVisibilityKt.AnimatedVisibility($this$AnimatedVisibility, mutableTransitionState, modifier3, enter3, exit2, label2, function3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    public static final void AnimatedVisibility(final ColumnScope $this$AnimatedVisibility, final MutableTransitionState<Boolean> mutableTransitionState, Modifier modifier, EnterTransition enter, ExitTransition exit, String label, final Function3<? super AnimatedVisibilityScope, ? super Composer, ? super Integer, Unit> function3, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        EnterTransition enter2;
        ExitTransition exitTransition;
        Function3<? super AnimatedVisibilityScope, ? super Composer, ? super Integer, Unit> function32;
        final Modifier modifier3;
        final EnterTransition enter3;
        final ExitTransition exit2;
        final String label2;
        Modifier modifier4;
        ExitTransition exit3;
        String label3;
        Composer $composer2 = $composer.startRestartGroup(-1238803325);
        ComposerKt.sourceInformation($composer2, "C(AnimatedVisibility)P(5,4,1,2,3)523@30218L39,524@30297L6,524@30262L84:AnimatedVisibility.kt#xbi5r1");
        int $dirty = $changed;
        if (($changed & 48) == 0) {
            $dirty |= ($changed & 64) == 0 ? $composer2.changed(mutableTransitionState) : $composer2.changedInstance(mutableTransitionState) ? 32 : 16;
        }
        int i2 = i & 2;
        if (i2 != 0) {
            $dirty |= RendererCapabilities.DECODER_SUPPORT_MASK;
            modifier2 = modifier;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            modifier2 = modifier;
            $dirty |= $composer2.changed(modifier2) ? 256 : 128;
        } else {
            modifier2 = modifier;
        }
        int i3 = i & 4;
        if (i3 != 0) {
            $dirty |= 3072;
            enter2 = enter;
        } else if (($changed & 3072) == 0) {
            enter2 = enter;
            $dirty |= $composer2.changed(enter2) ? 2048 : 1024;
        } else {
            enter2 = enter;
        }
        int i4 = i & 8;
        if (i4 != 0) {
            $dirty |= 24576;
            exitTransition = exit;
        } else if (($changed & 24576) == 0) {
            exitTransition = exit;
            $dirty |= $composer2.changed(exitTransition) ? 16384 : 8192;
        } else {
            exitTransition = exit;
        }
        int i5 = i & 16;
        if (i5 != 0) {
            $dirty |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if ((196608 & $changed) == 0) {
            $dirty |= $composer2.changed(label) ? 131072 : 65536;
        }
        if ((1572864 & $changed) == 0) {
            function32 = function3;
            $dirty |= $composer2.changedInstance(function32) ? 1048576 : 524288;
        } else {
            function32 = function3;
        }
        if (!$composer2.shouldExecute((599185 & $dirty) != 599184, $dirty & 1)) {
            $composer2.skipToGroupEnd();
            modifier3 = modifier2;
            enter3 = enter2;
            exit2 = exitTransition;
            label2 = label;
        } else {
            if (i2 != 0) {
                modifier4 = Modifier.INSTANCE;
            } else {
                modifier4 = modifier2;
            }
            if (i3 != 0) {
                enter2 = EnterExitTransitionKt.expandVertically$default(null, null, false, null, 15, null).plus(EnterExitTransitionKt.fadeIn$default(null, 0.0f, 3, null));
            }
            if (i4 != 0) {
                exit3 = EnterExitTransitionKt.shrinkVertically$default(null, null, false, null, 15, null).plus(EnterExitTransitionKt.fadeOut$default(null, 0.0f, 3, null));
            } else {
                exit3 = exitTransition;
            }
            if (i5 == 0) {
                label3 = label;
            } else {
                label3 = "AnimatedVisibility";
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1238803325, $dirty, -1, "androidx.compose.animation.AnimatedVisibility (AnimatedVisibility.kt:522)");
            }
            Transition transition = androidx.compose.animation.core.TransitionKt.rememberTransition(mutableTransitionState, label3, $composer2, MutableTransitionState.$stable | (($dirty >> 3) & 14) | (($dirty >> 12) & 112), 0);
            ComposerKt.sourceInformationMarkerStart($composer2, -784039927, "CC(remember):AnimatedVisibility.kt#9igjgp");
            Object it$iv = $composer2.rememberedValue();
            if (it$iv == Composer.INSTANCE.getEmpty()) {
                Object value$iv = (Function1) new Function1<Boolean, Boolean>() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedVisibility$11$1
                    public final Boolean invoke(boolean it) {
                        return Boolean.valueOf(it);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Boolean invoke(Boolean bool) {
                        return invoke(bool.booleanValue());
                    }
                };
                $composer2.updateRememberedValue(value$iv);
                it$iv = value$iv;
            }
            ComposerKt.sourceInformationMarkerEnd($composer2);
            EnterTransition enter4 = enter2;
            AnimatedVisibilityImpl(transition, (Function1) it$iv, modifier4, enter4, exit3, function32, $composer2, ($dirty & 896) | 48 | ($dirty & 7168) | (57344 & $dirty) | (($dirty >> 3) & 458752));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            label2 = label3;
            modifier3 = modifier4;
            enter3 = enter4;
            exit2 = exit3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.AnimatedVisibilityKt.AnimatedVisibility.12
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
                    AnimatedVisibilityKt.AnimatedVisibility($this$AnimatedVisibility, mutableTransitionState, modifier3, enter3, exit2, label2, function3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    public static final <T> void AnimatedVisibility(final Transition<T> transition, final Function1<? super T, Boolean> function1, Modifier modifier, EnterTransition enter, ExitTransition exit, final Function3<? super AnimatedVisibilityScope, ? super Composer, ? super Integer, Unit> function3, Composer $composer, final int $changed, final int i) {
        Transition<T> transition2;
        Function1<? super T, Boolean> function12;
        final Modifier modifier2;
        EnterTransition enterTransition;
        Function3<? super AnimatedVisibilityScope, ? super Composer, ? super Integer, Unit> function32;
        final EnterTransition enter2;
        final ExitTransition exit2;
        Composer $composer2 = $composer.startRestartGroup(-1699747442);
        ComposerKt.sourceInformation($composer2, "C(AnimatedVisibility)P(4,3,1,2)593@34536L79:AnimatedVisibility.kt#xbi5r1");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            transition2 = transition;
            $dirty |= $composer2.changed(transition2) ? 4 : 2;
        } else {
            transition2 = transition;
        }
        if (($changed & 48) == 0) {
            function12 = function1;
            $dirty |= $composer2.changedInstance(function12) ? 32 : 16;
        } else {
            function12 = function1;
        }
        int i2 = i & 2;
        if (i2 != 0) {
            $dirty |= RendererCapabilities.DECODER_SUPPORT_MASK;
            modifier2 = modifier;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            modifier2 = modifier;
            $dirty |= $composer2.changed(modifier2) ? 256 : 128;
        } else {
            modifier2 = modifier;
        }
        int i3 = i & 4;
        if (i3 != 0) {
            $dirty |= 3072;
            enterTransition = enter;
        } else if (($changed & 3072) == 0) {
            enterTransition = enter;
            $dirty |= $composer2.changed(enterTransition) ? 2048 : 1024;
        } else {
            enterTransition = enter;
        }
        int i4 = i & 8;
        if (i4 != 0) {
            $dirty |= 24576;
        } else if (($changed & 24576) == 0) {
            $dirty |= $composer2.changed(exit) ? 16384 : 8192;
        }
        if ((196608 & $changed) == 0) {
            function32 = function3;
            $dirty |= $composer2.changedInstance(function32) ? 131072 : 65536;
        } else {
            function32 = function3;
        }
        if ($composer2.shouldExecute((74899 & $dirty) != 74898, $dirty & 1)) {
            Modifier modifier3 = i2 != 0 ? Modifier.INSTANCE : modifier2;
            EnterTransition enter3 = i3 != 0 ? EnterExitTransitionKt.fadeIn$default(null, 0.0f, 3, null).plus(EnterExitTransitionKt.expandIn$default(null, null, false, null, 15, null)) : enterTransition;
            ExitTransition exit3 = i4 != 0 ? EnterExitTransitionKt.shrinkOut$default(null, null, false, null, 15, null).plus(EnterExitTransitionKt.fadeOut$default(null, 0.0f, 3, null)) : exit;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1699747442, $dirty, -1, "androidx.compose.animation.AnimatedVisibility (AnimatedVisibility.kt:593)");
            }
            EnterTransition enter4 = enter3;
            AnimatedVisibilityImpl(transition2, function12, modifier3, enter4, exit3, function32, $composer2, ($dirty & 14) | ($dirty & 112) | ($dirty & 896) | ($dirty & 7168) | (57344 & $dirty) | (458752 & $dirty));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier2 = modifier3;
            enter2 = enter4;
            exit2 = exit3;
        } else {
            $composer2.skipToGroupEnd();
            enter2 = enterTransition;
            exit2 = exit;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.AnimatedVisibilityKt.AnimatedVisibility.13
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

                public final void invoke(Composer composer, int i5) {
                    AnimatedVisibilityKt.AnimatedVisibility(transition, function1, modifier2, enter2, exit2, function3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:73:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x014c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> void AnimatedVisibilityImpl(final Transition<T> transition, final Function1<? super T, Boolean> function1, final Modifier modifier, final EnterTransition enter, final ExitTransition exit, final Function3<? super AnimatedVisibilityScope, ? super Composer, ? super Integer, Unit> function3, Composer $composer, final int $changed) {
        EnterTransition enterTransition;
        ExitTransition exitTransition;
        int i;
        Object it$iv;
        Composer $composer2 = $composer.startRestartGroup(1706321816);
        ComposerKt.sourceInformation($composer2, "C(AnimatedVisibilityImpl)P(4,5,3,1,2)682@38821L423,694@39319L62,678@38691L724:AnimatedVisibility.kt#xbi5r1");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changed(transition) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer2.changedInstance(function1) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty |= $composer2.changed(modifier) ? 256 : 128;
        }
        if (($changed & 3072) == 0) {
            enterTransition = enter;
            $dirty |= $composer2.changed(enterTransition) ? 2048 : 1024;
        } else {
            enterTransition = enter;
        }
        if (($changed & 24576) == 0) {
            exitTransition = exit;
            $dirty |= $composer2.changed(exitTransition) ? 16384 : 8192;
        } else {
            exitTransition = exit;
        }
        if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            $dirty |= $composer2.changedInstance(function3) ? 131072 : 65536;
        }
        int $dirty2 = $dirty;
        if (!$composer2.shouldExecute((74899 & $dirty2) != 74898, $dirty2 & 1)) {
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1706321816, $dirty2, -1, "androidx.compose.animation.AnimatedVisibilityImpl (AnimatedVisibility.kt:677)");
            }
            ComposerKt.sourceInformationMarkerStart($composer2, -902229601, "CC(remember):AnimatedVisibility.kt#9igjgp");
            boolean invalid$iv = (($dirty2 & 112) == 32) | (($dirty2 & 14) == 4);
            Object it$iv2 = $composer2.rememberedValue();
            if (!invalid$iv) {
                i = 196608;
                if (it$iv2 == Composer.INSTANCE.getEmpty()) {
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                Modifier modifierLayout = LayoutModifierKt.layout(modifier, (Function3) it$iv2);
                ComposerKt.sourceInformationMarkerStart($composer2, -902214026, "CC(remember):AnimatedVisibility.kt#9igjgp");
                it$iv = $composer2.rememberedValue();
                if (it$iv == Composer.INSTANCE.getEmpty()) {
                    Object value$iv = (Function2) new Function2<EnterExitState, EnterExitState, Boolean>() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedVisibilityImpl$2$1
                        @Override // kotlin.jvm.functions.Function2
                        public final Boolean invoke(EnterExitState current, EnterExitState target) {
                            return Boolean.valueOf(current == target && target == EnterExitState.PostExit);
                        }
                    };
                    $composer2.updateRememberedValue(value$iv);
                    it$iv = value$iv;
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                AnimatedEnterExitImpl(transition, function1, modifierLayout, enterTransition, exitTransition, (Function2) it$iv, null, function3, $composer2, ($dirty2 & 14) | i | ($dirty2 & 112) | ($dirty2 & 7168) | (57344 & $dirty2) | (29360128 & ($dirty2 << 6)), 64);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                i = 196608;
            }
            Object value$iv2 = (Function3) new Function3<MeasureScope, Measurable, Constraints, MeasureResult>() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedVisibilityImpl$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ MeasureResult invoke(MeasureScope measureScope, Measurable measurable, Constraints constraints) {
                    return m72invoke3p2s80s(measureScope, measurable, constraints.getValue());
                }

                /* JADX WARN: Type inference incomplete: some casts might be missing */
                /* JADX INFO: renamed from: invoke-3p2s80s, reason: not valid java name */
                public final MeasureResult m72invoke3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
                    long jM7671constructorimpl;
                    final Placeable placeableMo6141measureBRTryo0 = measurable.mo6141measureBRTryo0(j);
                    if (measureScope.isLookingAhead() && !function1.invoke((T) transition.getTargetState()).booleanValue()) {
                        jM7671constructorimpl = IntSize.INSTANCE.m7681getZeroYbymL2g();
                    } else {
                        jM7671constructorimpl = IntSize.m7671constructorimpl((((long) placeableMo6141measureBRTryo0.getWidth()) << 32) | (((long) placeableMo6141measureBRTryo0.getHeight()) & 4294967295L));
                    }
                    return MeasureScope.layout$default(measureScope, (int) (jM7671constructorimpl >> 32), (int) (jM7671constructorimpl & 4294967295L), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedVisibilityImpl$1$1.1
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
                            Placeable.PlacementScope.place$default($this$layout, placeableMo6141measureBRTryo0, 0, 0, 0.0f, 4, null);
                        }
                    }, 4, null);
                }
            };
            $composer2.updateRememberedValue(value$iv2);
            it$iv2 = value$iv2;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            Modifier modifierLayout2 = LayoutModifierKt.layout(modifier, (Function3) it$iv2);
            ComposerKt.sourceInformationMarkerStart($composer2, -902214026, "CC(remember):AnimatedVisibility.kt#9igjgp");
            it$iv = $composer2.rememberedValue();
            if (it$iv == Composer.INSTANCE.getEmpty()) {
            }
            ComposerKt.sourceInformationMarkerEnd($composer2);
            AnimatedEnterExitImpl(transition, function1, modifierLayout2, enterTransition, exitTransition, (Function2) it$iv, null, function3, $composer2, ($dirty2 & 14) | i | ($dirty2 & 112) | ($dirty2 & 7168) | (57344 & $dirty2) | (29360128 & ($dirty2 << 6)), 64);
            if (ComposerKt.isTraceInProgress()) {
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.AnimatedVisibilityKt.AnimatedVisibilityImpl.3
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

                public final void invoke(Composer composer, int i2) {
                    AnimatedVisibilityKt.AnimatedVisibilityImpl(transition, function1, modifier, enter, exit, function3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1));
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0256  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0260  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0296  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x02ac  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x02af  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x02c3  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x02f5  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0350  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x037d  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x03da  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x03e6  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x03ec  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x015b A[PHI: r7
      0x015b: PHI (r7v36 androidx.compose.animation.core.Transition<T>) = (r7v17 androidx.compose.animation.core.Transition<T>), (r7v37 androidx.compose.animation.core.Transition<T>) binds: [B:93:0x0159, B:89:0x0151] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x016c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> void AnimatedEnterExitImpl(final Transition<T> transition, final Function1<? super T, Boolean> function1, final Modifier modifier, final EnterTransition enter, final ExitTransition exit, final Function2<? super EnterExitState, ? super EnterExitState, Boolean> function2, OnLookaheadMeasured onLookaheadMeasured, final Function3<? super AnimatedVisibilityScope, ? super Composer, ? super Integer, Unit> function3, Composer $composer, final int $changed, final int i) {
        ExitTransition exitTransition;
        final OnLookaheadMeasured onLookaheadMeasured2;
        Transition<T> transition2;
        boolean invalid$iv$iv;
        Object it$iv$iv;
        int $dirty;
        Transition childTransition;
        State shouldDisposeBlockUpdated$delegate;
        boolean invalid$iv;
        Object it$iv;
        boolean invalid$iv2;
        Object it$iv2;
        Modifier.Companion companionLayout;
        Object it$iv3;
        OnLookaheadMeasured onLookaheadMeasured3;
        Function0<ComposeUiNode> function0;
        final OnLookaheadMeasured onLookaheadMeasured4 = onLookaheadMeasured;
        Composer $composer2 = $composer.startRestartGroup(1912839215);
        ComposerKt.sourceInformation($composer2, "C(AnimatedEnterExitImpl)P(6,7,3,1,2,5,4):AnimatedVisibility.kt#xbi5r1");
        int $dirty2 = $changed;
        if (($changed & 6) == 0) {
            $dirty2 |= $composer2.changed(transition) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty2 |= $composer2.changedInstance(function1) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty2 |= $composer2.changed(modifier) ? 256 : 128;
        }
        if (($changed & 3072) == 0) {
            $dirty2 |= $composer2.changed(enter) ? 2048 : 1024;
        }
        if (($changed & 24576) == 0) {
            exitTransition = exit;
            $dirty2 |= $composer2.changed(exitTransition) ? 16384 : 8192;
        } else {
            exitTransition = exit;
        }
        if ((196608 & $changed) == 0) {
            $dirty2 |= $composer2.changedInstance(function2) ? 131072 : 65536;
        }
        int i2 = i & 64;
        int i3 = 1572864;
        if (i2 != 0) {
            $dirty2 |= i3;
        } else if ((1572864 & $changed) == 0) {
            i3 = ($changed & 2097152) == 0 ? $composer2.changed(onLookaheadMeasured4) : $composer2.changedInstance(onLookaheadMeasured4) ? 1048576 : 524288;
            $dirty2 |= i3;
        }
        if ((12582912 & $changed) == 0) {
            $dirty2 |= $composer2.changedInstance(function3) ? 8388608 : 4194304;
        }
        boolean invalid$iv3 = true;
        if ($composer2.shouldExecute((4793491 & $dirty2) != 4793490, $dirty2 & 1)) {
            if (i2 != 0) {
                onLookaheadMeasured4 = null;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1912839215, $dirty2, -1, "androidx.compose.animation.AnimatedEnterExitImpl (AnimatedVisibility.kt:715)");
            }
            if (!function1.invoke(transition.getTargetState()).booleanValue() && !function1.invoke(transition.getCurrentState()).booleanValue() && !transition.isSeeking() && !transition.getHasInitialValueAnimations()) {
                $composer2.startReplaceGroup(-272333293);
                $composer2.endReplaceGroup();
                onLookaheadMeasured3 = onLookaheadMeasured4;
            } else {
                $composer2.startReplaceGroup(-232413539);
                ComposerKt.sourceInformation($composer2, "723@40225L124,727@40392L40,733@40641L529,730@40484L686");
                int $changed$iv = ($dirty2 & 14) | 48;
                ComposerKt.sourceInformationMarkerStart($composer2, -539313577, "CC(createChildTransition)N(label,transformToChildState)1768@75281L36,1769@75341L74,1770@75438L39,1771@75489L63:Transition.kt#pdpnli");
                ComposerKt.sourceInformationMarkerStart($composer2, 1410701659, "CC(remember):Transition.kt#9igjgp");
                if ((($changed$iv & 14) ^ 6) > 4) {
                    transition2 = transition;
                    if ($composer2.changed(transition2)) {
                        invalid$iv$iv = true;
                        it$iv$iv = $composer2.rememberedValue();
                        if (invalid$iv$iv) {
                            $dirty = $dirty2;
                            if (it$iv$iv == Composer.INSTANCE.getEmpty()) {
                            }
                            ComposerKt.sourceInformationMarkerEnd($composer2);
                            Object it = transition2.isSeeking() ? transition2.getCurrentState() : it$iv$iv;
                            int $changed2 = ($changed$iv >> 3) & 112;
                            $composer2.startReplaceGroup(1844425648);
                            ComposerKt.sourceInformation($composer2, "C724@40307L28:AnimatedVisibility.kt#xbi5r1");
                            Transition<T> transition3 = transition2;
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1844425648, $changed2, -1, "androidx.compose.animation.AnimatedEnterExitImpl.<anonymous> (AnimatedVisibility.kt:724)");
                            }
                            Object initialState$iv = targetEnterExit(transition, function1, it, $composer2, ($dirty & 14) | ($dirty & 112) | (($changed2 << 6) & 896));
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            $composer2.endReplaceGroup();
                            Object it2 = transition3.getTargetState();
                            int $changed3 = ($changed$iv >> 3) & 112;
                            $composer2.startReplaceGroup(1844425648);
                            ComposerKt.sourceInformation($composer2, "C724@40307L28:AnimatedVisibility.kt#xbi5r1");
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1844425648, $changed3, -1, "androidx.compose.animation.AnimatedEnterExitImpl.<anonymous> (AnimatedVisibility.kt:724)");
                            }
                            Object targetState$iv = targetEnterExit(transition, function1, it2, $composer2, ($dirty & 14) | ($dirty & 112) | (($changed3 << 6) & 896));
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                            $composer2.endReplaceGroup();
                            childTransition = androidx.compose.animation.core.TransitionKt.createChildTransitionInternal(transition3, initialState$iv, targetState$iv, "EnterExitTransition", $composer2, ($changed$iv & 14) | (($changed$iv << 6) & 7168));
                            ComposerKt.sourceInformationMarkerEnd($composer2);
                            shouldDisposeBlockUpdated$delegate = SnapshotStateKt.rememberUpdatedState(function2, $composer2, ($dirty >> 15) & 14);
                            Boolean boolInvoke = function2.invoke(childTransition.getCurrentState(), childTransition.getTargetState());
                            ComposerKt.sourceInformationMarkerStart($composer2, -7483872, "CC(remember):AnimatedVisibility.kt#9igjgp");
                            invalid$iv = $composer2.changed(childTransition) | $composer2.changed(shouldDisposeBlockUpdated$delegate);
                            it$iv = $composer2.rememberedValue();
                            if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                                Object value$iv = (Function2) new AnimatedVisibilityKt$AnimatedEnterExitImpl$shouldDisposeAfterExit$2$1(childTransition, shouldDisposeBlockUpdated$delegate, null);
                                $composer2.updateRememberedValue(value$iv);
                                it$iv = value$iv;
                            }
                            ComposerKt.sourceInformationMarkerEnd($composer2);
                            State shouldDisposeAfterExit$delegate = SnapshotStateKt.produceState(boolInvoke, (Function2) it$iv, $composer2, 0);
                            if (getExitFinished(childTransition) || !AnimatedEnterExitImpl$lambda$3(shouldDisposeAfterExit$delegate)) {
                                $composer2.startReplaceGroup(-231383533);
                                ComposerKt.sourceInformation($composer2, "749@41268L69,755@41536L47,769@42351L50,750@41350L1066");
                                ComposerKt.sourceInformationMarkerStart($composer2, -7464268, "CC(remember):AnimatedVisibility.kt#9igjgp");
                                invalid$iv2 = ($dirty & 14) != 4;
                                it$iv2 = $composer2.rememberedValue();
                                if (!invalid$iv2 || it$iv2 == Composer.INSTANCE.getEmpty()) {
                                    Object value$iv2 = new AnimatedVisibilityScopeImpl(childTransition);
                                    $composer2.updateRememberedValue(value$iv2);
                                    it$iv2 = value$iv2;
                                }
                                AnimatedVisibilityScopeImpl scope = (AnimatedVisibilityScopeImpl) it$iv2;
                                ComposerKt.sourceInformationMarkerEnd($composer2);
                                Modifier modifierCreateModifier = EnterExitTransitionKt.createModifier(childTransition, enter, exitTransition, null, "Built-in", $composer2, (($dirty >> 6) & 112) | 24576 | (($dirty >> 6) & 896), 4);
                                if (onLookaheadMeasured4 == null) {
                                    $composer2.startReplaceGroup(-230964196);
                                    ComposerKt.sourceInformation($composer2, "758@41738L479");
                                    Modifier.Companion companion = Modifier.INSTANCE;
                                    ComposerKt.sourceInformationMarkerStart($composer2, -7448818, "CC(remember):AnimatedVisibility.kt#9igjgp");
                                    if (($dirty & 3670016) != 1048576 && (($dirty & 2097152) == 0 || !$composer2.changedInstance(onLookaheadMeasured4))) {
                                        invalid$iv3 = false;
                                    }
                                    Object it$iv4 = $composer2.rememberedValue();
                                    if (invalid$iv3 || it$iv4 == Composer.INSTANCE.getEmpty()) {
                                        Object value$iv3 = (Function3) new Function3<MeasureScope, Measurable, Constraints, MeasureResult>() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedEnterExitImpl$2$1
                                            {
                                                super(3);
                                            }

                                            @Override // kotlin.jvm.functions.Function3
                                            public /* bridge */ /* synthetic */ MeasureResult invoke(MeasureScope measureScope, Measurable measurable, Constraints constraints) {
                                                return m71invoke3p2s80s(measureScope, measurable, constraints.getValue());
                                            }

                                            /* JADX INFO: renamed from: invoke-3p2s80s, reason: not valid java name */
                                            public final MeasureResult m71invoke3p2s80s(MeasureScope $this$layout, Measurable measurable, long j) {
                                                final Placeable $this$invoke_3p2s80s_u24lambda_u240 = measurable.mo6141measureBRTryo0(j);
                                                OnLookaheadMeasured onLookaheadMeasured5 = onLookaheadMeasured4;
                                                if ($this$layout.isLookingAhead()) {
                                                    int width$iv = $this$invoke_3p2s80s_u24lambda_u240.getWidth();
                                                    int height$iv = $this$invoke_3p2s80s_u24lambda_u240.getHeight();
                                                    onLookaheadMeasured5.m113invokeozmzZPI(IntSize.m7671constructorimpl((((long) width$iv) << 32) | (((long) height$iv) & 4294967295L)));
                                                }
                                                return MeasureScope.layout$default($this$layout, $this$invoke_3p2s80s_u24lambda_u240.getWidth(), $this$invoke_3p2s80s_u24lambda_u240.getHeight(), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedEnterExitImpl$2$1$1$1
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
                                                        Placeable.PlacementScope.place$default($this$layout2, $this$invoke_3p2s80s_u24lambda_u240, 0, 0, 0.0f, 4, null);
                                                    }
                                                }, 4, null);
                                            }
                                        };
                                        $composer2.updateRememberedValue(value$iv3);
                                        it$iv4 = value$iv3;
                                    }
                                    ComposerKt.sourceInformationMarkerEnd($composer2);
                                    companionLayout = LayoutModifierKt.layout(companion, (Function3) it$iv4);
                                    $composer2.endReplaceGroup();
                                } else {
                                    $composer2.startReplaceGroup(-7432681);
                                    $composer2.endReplaceGroup();
                                    companionLayout = Modifier.INSTANCE;
                                }
                                Modifier modifier$iv = modifier.then(modifierCreateModifier.then(companionLayout));
                                ComposerKt.sourceInformationMarkerStart($composer2, -7429631, "CC(remember):AnimatedVisibility.kt#9igjgp");
                                it$iv3 = $composer2.rememberedValue();
                                if (it$iv3 == Composer.INSTANCE.getEmpty()) {
                                    Object value$iv4 = new AnimatedEnterExitMeasurePolicy(scope);
                                    $composer2.updateRememberedValue(value$iv4);
                                    it$iv3 = value$iv4;
                                }
                                ComposerKt.sourceInformationMarkerEnd($composer2);
                                MeasurePolicy measurePolicy$iv = (AnimatedEnterExitMeasurePolicy) it$iv3;
                                ComposerKt.sourceInformationMarkerStart($composer2, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                                int compositeKeyHash$iv = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer2, 0));
                                CompositionLocalMap localMap$iv = $composer2.getCurrentCompositionLocalMap();
                                Modifier materialized$iv = ComposedModifierKt.materializeModifier($composer2, modifier$iv);
                                Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
                                onLookaheadMeasured3 = onLookaheadMeasured4;
                                int $changed$iv$iv = ((RendererCapabilities.DECODER_SUPPORT_MASK << 6) & 896) | 6;
                                ComposerKt.sourceInformationMarkerStart($composer2, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
                                if (!($composer2.getApplier() instanceof Applier)) {
                                    ComposablesKt.invalidApplier();
                                }
                                $composer2.startReusableNode();
                                if (!$composer2.getInserting()) {
                                    function0 = constructor;
                                    $composer2.createNode(function0);
                                } else {
                                    function0 = constructor;
                                    $composer2.useNode();
                                }
                                Composer $this$Layout_u24lambda_u240$iv = Updater.m3967constructorimpl($composer2);
                                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv, localMap$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                Updater.m3971initimpl($this$Layout_u24lambda_u240$iv, Integer.valueOf(compositeKeyHash$iv), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                                Updater.m3973reconcileimpl($this$Layout_u24lambda_u240$iv, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                                Updater.m3975setimpl($this$Layout_u24lambda_u240$iv, materialized$iv, ComposeUiNode.INSTANCE.getSetModifier());
                                int i4 = ($changed$iv$iv >> 6) & 14;
                                ComposerKt.sourceInformationMarkerStart($composer2, -1766274760, "C751@41392L9:AnimatedVisibility.kt#xbi5r1");
                                function3.invoke(scope, $composer2, Integer.valueOf(($dirty >> 18) & 112));
                                ComposerKt.sourceInformationMarkerEnd($composer2);
                                $composer2.endNode();
                                ComposerKt.sourceInformationMarkerEnd($composer2);
                                ComposerKt.sourceInformationMarkerEnd($composer2);
                                $composer2.endReplaceGroup();
                            } else {
                                $composer2.startReplaceGroup(-272333293);
                                $composer2.endReplaceGroup();
                                onLookaheadMeasured3 = onLookaheadMeasured4;
                            }
                            $composer2.endReplaceGroup();
                        } else {
                            $dirty = $dirty2;
                        }
                        Object value$iv$iv = transition2.getCurrentState();
                        $composer2.updateRememberedValue(value$iv$iv);
                        it$iv$iv = value$iv$iv;
                        ComposerKt.sourceInformationMarkerEnd($composer2);
                        if (transition2.isSeeking()) {
                        }
                        int $changed22 = ($changed$iv >> 3) & 112;
                        $composer2.startReplaceGroup(1844425648);
                        ComposerKt.sourceInformation($composer2, "C724@40307L28:AnimatedVisibility.kt#xbi5r1");
                        Transition<T> transition32 = transition2;
                        if (ComposerKt.isTraceInProgress()) {
                        }
                        Object initialState$iv2 = targetEnterExit(transition, function1, it, $composer2, ($dirty & 14) | ($dirty & 112) | (($changed22 << 6) & 896));
                        if (ComposerKt.isTraceInProgress()) {
                        }
                        $composer2.endReplaceGroup();
                        Object it22 = transition32.getTargetState();
                        int $changed32 = ($changed$iv >> 3) & 112;
                        $composer2.startReplaceGroup(1844425648);
                        ComposerKt.sourceInformation($composer2, "C724@40307L28:AnimatedVisibility.kt#xbi5r1");
                        if (ComposerKt.isTraceInProgress()) {
                        }
                        Object targetState$iv2 = targetEnterExit(transition, function1, it22, $composer2, ($dirty & 14) | ($dirty & 112) | (($changed32 << 6) & 896));
                        if (ComposerKt.isTraceInProgress()) {
                        }
                        $composer2.endReplaceGroup();
                        childTransition = androidx.compose.animation.core.TransitionKt.createChildTransitionInternal(transition32, initialState$iv2, targetState$iv2, "EnterExitTransition", $composer2, ($changed$iv & 14) | (($changed$iv << 6) & 7168));
                        ComposerKt.sourceInformationMarkerEnd($composer2);
                        shouldDisposeBlockUpdated$delegate = SnapshotStateKt.rememberUpdatedState(function2, $composer2, ($dirty >> 15) & 14);
                        Boolean boolInvoke2 = function2.invoke(childTransition.getCurrentState(), childTransition.getTargetState());
                        ComposerKt.sourceInformationMarkerStart($composer2, -7483872, "CC(remember):AnimatedVisibility.kt#9igjgp");
                        invalid$iv = $composer2.changed(childTransition) | $composer2.changed(shouldDisposeBlockUpdated$delegate);
                        it$iv = $composer2.rememberedValue();
                        if (invalid$iv) {
                            Object value$iv5 = (Function2) new AnimatedVisibilityKt$AnimatedEnterExitImpl$shouldDisposeAfterExit$2$1(childTransition, shouldDisposeBlockUpdated$delegate, null);
                            $composer2.updateRememberedValue(value$iv5);
                            it$iv = value$iv5;
                            ComposerKt.sourceInformationMarkerEnd($composer2);
                            State shouldDisposeAfterExit$delegate2 = SnapshotStateKt.produceState(boolInvoke2, (Function2) it$iv, $composer2, 0);
                            if (getExitFinished(childTransition)) {
                                $composer2.startReplaceGroup(-231383533);
                                ComposerKt.sourceInformation($composer2, "749@41268L69,755@41536L47,769@42351L50,750@41350L1066");
                                ComposerKt.sourceInformationMarkerStart($composer2, -7464268, "CC(remember):AnimatedVisibility.kt#9igjgp");
                                if (($dirty & 14) != 4) {
                                }
                                it$iv2 = $composer2.rememberedValue();
                                if (!invalid$iv2) {
                                    Object value$iv22 = new AnimatedVisibilityScopeImpl(childTransition);
                                    $composer2.updateRememberedValue(value$iv22);
                                    it$iv2 = value$iv22;
                                    AnimatedVisibilityScopeImpl scope2 = (AnimatedVisibilityScopeImpl) it$iv2;
                                    ComposerKt.sourceInformationMarkerEnd($composer2);
                                    Modifier modifierCreateModifier2 = EnterExitTransitionKt.createModifier(childTransition, enter, exitTransition, null, "Built-in", $composer2, (($dirty >> 6) & 112) | 24576 | (($dirty >> 6) & 896), 4);
                                    if (onLookaheadMeasured4 == null) {
                                    }
                                    Modifier modifier$iv2 = modifier.then(modifierCreateModifier2.then(companionLayout));
                                    ComposerKt.sourceInformationMarkerStart($composer2, -7429631, "CC(remember):AnimatedVisibility.kt#9igjgp");
                                    it$iv3 = $composer2.rememberedValue();
                                    if (it$iv3 == Composer.INSTANCE.getEmpty()) {
                                    }
                                    ComposerKt.sourceInformationMarkerEnd($composer2);
                                    MeasurePolicy measurePolicy$iv2 = (AnimatedEnterExitMeasurePolicy) it$iv3;
                                    ComposerKt.sourceInformationMarkerStart($composer2, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                                    int compositeKeyHash$iv2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer2, 0));
                                    CompositionLocalMap localMap$iv2 = $composer2.getCurrentCompositionLocalMap();
                                    Modifier materialized$iv2 = ComposedModifierKt.materializeModifier($composer2, modifier$iv2);
                                    Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
                                    onLookaheadMeasured3 = onLookaheadMeasured4;
                                    int $changed$iv$iv2 = ((RendererCapabilities.DECODER_SUPPORT_MASK << 6) & 896) | 6;
                                    ComposerKt.sourceInformationMarkerStart($composer2, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
                                    if (!($composer2.getApplier() instanceof Applier)) {
                                    }
                                    $composer2.startReusableNode();
                                    if (!$composer2.getInserting()) {
                                    }
                                    Composer $this$Layout_u24lambda_u240$iv2 = Updater.m3967constructorimpl($composer2);
                                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv2, measurePolicy$iv2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv2, localMap$iv2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                                    Updater.m3971initimpl($this$Layout_u24lambda_u240$iv2, Integer.valueOf(compositeKeyHash$iv2), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                                    Updater.m3973reconcileimpl($this$Layout_u24lambda_u240$iv2, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                                    Updater.m3975setimpl($this$Layout_u24lambda_u240$iv2, materialized$iv2, ComposeUiNode.INSTANCE.getSetModifier());
                                    int i42 = ($changed$iv$iv2 >> 6) & 14;
                                    ComposerKt.sourceInformationMarkerStart($composer2, -1766274760, "C751@41392L9:AnimatedVisibility.kt#xbi5r1");
                                    function3.invoke(scope2, $composer2, Integer.valueOf(($dirty >> 18) & 112));
                                    ComposerKt.sourceInformationMarkerEnd($composer2);
                                    $composer2.endNode();
                                    ComposerKt.sourceInformationMarkerEnd($composer2);
                                    ComposerKt.sourceInformationMarkerEnd($composer2);
                                    $composer2.endReplaceGroup();
                                    $composer2.endReplaceGroup();
                                }
                            }
                        }
                    }
                } else {
                    transition2 = transition;
                }
                if (($changed$iv & 6) != 4) {
                    invalid$iv$iv = false;
                }
                it$iv$iv = $composer2.rememberedValue();
                if (invalid$iv$iv) {
                }
                Object value$iv$iv2 = transition2.getCurrentState();
                $composer2.updateRememberedValue(value$iv$iv2);
                it$iv$iv = value$iv$iv2;
                ComposerKt.sourceInformationMarkerEnd($composer2);
                if (transition2.isSeeking()) {
                }
                int $changed222 = ($changed$iv >> 3) & 112;
                $composer2.startReplaceGroup(1844425648);
                ComposerKt.sourceInformation($composer2, "C724@40307L28:AnimatedVisibility.kt#xbi5r1");
                Transition<T> transition322 = transition2;
                if (ComposerKt.isTraceInProgress()) {
                }
                Object initialState$iv22 = targetEnterExit(transition, function1, it, $composer2, ($dirty & 14) | ($dirty & 112) | (($changed222 << 6) & 896));
                if (ComposerKt.isTraceInProgress()) {
                }
                $composer2.endReplaceGroup();
                Object it222 = transition322.getTargetState();
                int $changed322 = ($changed$iv >> 3) & 112;
                $composer2.startReplaceGroup(1844425648);
                ComposerKt.sourceInformation($composer2, "C724@40307L28:AnimatedVisibility.kt#xbi5r1");
                if (ComposerKt.isTraceInProgress()) {
                }
                Object targetState$iv22 = targetEnterExit(transition, function1, it222, $composer2, ($dirty & 14) | ($dirty & 112) | (($changed322 << 6) & 896));
                if (ComposerKt.isTraceInProgress()) {
                }
                $composer2.endReplaceGroup();
                childTransition = androidx.compose.animation.core.TransitionKt.createChildTransitionInternal(transition322, initialState$iv22, targetState$iv22, "EnterExitTransition", $composer2, ($changed$iv & 14) | (($changed$iv << 6) & 7168));
                ComposerKt.sourceInformationMarkerEnd($composer2);
                shouldDisposeBlockUpdated$delegate = SnapshotStateKt.rememberUpdatedState(function2, $composer2, ($dirty >> 15) & 14);
                Boolean boolInvoke22 = function2.invoke(childTransition.getCurrentState(), childTransition.getTargetState());
                ComposerKt.sourceInformationMarkerStart($composer2, -7483872, "CC(remember):AnimatedVisibility.kt#9igjgp");
                invalid$iv = $composer2.changed(childTransition) | $composer2.changed(shouldDisposeBlockUpdated$delegate);
                it$iv = $composer2.rememberedValue();
                if (invalid$iv) {
                }
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            onLookaheadMeasured2 = onLookaheadMeasured3;
        } else {
            $composer2.skipToGroupEnd();
            onLookaheadMeasured2 = onLookaheadMeasured4;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.AnimatedVisibilityKt.AnimatedEnterExitImpl.4
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

                public final void invoke(Composer composer, int i5) {
                    AnimatedVisibilityKt.AnimatedEnterExitImpl(transition, function1, modifier, enter, exit, function2, onLookaheadMeasured2, function3, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Function2<EnterExitState, EnterExitState, Boolean> AnimatedEnterExitImpl$lambda$1(State<? extends Function2<? super EnterExitState, ? super EnterExitState, Boolean>> state) {
        Object thisObj$iv = state.getValue();
        return (Function2) thisObj$iv;
    }

    private static final boolean AnimatedEnterExitImpl$lambda$3(State<Boolean> state) {
        Object thisObj$iv = state.getValue();
        return ((Boolean) thisObj$iv).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean getExitFinished(Transition<EnterExitState> transition) {
        return transition.getCurrentState() == EnterExitState.PostExit && transition.getTargetState() == EnterExitState.PostExit;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static final <T> EnterExitState targetEnterExit(Transition<T> transition, Function1<? super T, Boolean> function1, T t, Composer $composer, int $changed) {
        EnterExitState enterExitState;
        ComposerKt.sourceInformationMarkerStart($composer, 361571134, "C(targetEnterExit)P(1):AnimatedVisibility.kt#xbi5r1");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(361571134, $changed, -1, "androidx.compose.animation.targetEnterExit (AnimatedVisibility.kt:833)");
        }
        $composer.startMovableGroup(-422486745, transition);
        ComposerKt.sourceInformation($composer, "");
        if (transition.isSeeking()) {
            $composer.startReplaceGroup(-212166497);
            $composer.endReplaceGroup();
            if (function1.invoke(t).booleanValue()) {
                enterExitState = EnterExitState.Visible;
            } else if (function1.invoke(transition.getCurrentState()).booleanValue()) {
                enterExitState = EnterExitState.PostExit;
            } else {
                enterExitState = EnterExitState.PreEnter;
            }
        } else {
            $composer.startReplaceGroup(-211892364);
            ComposerKt.sourceInformation($composer, "845@44894L34");
            ComposerKt.sourceInformationMarkerStart($composer, -422476640, "CC(remember):AnimatedVisibility.kt#9igjgp");
            Object it$iv = $composer.rememberedValue();
            if (it$iv == Composer.INSTANCE.getEmpty()) {
                Object value$iv = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(false, null, 2, null);
                $composer.updateRememberedValue(value$iv);
                it$iv = value$iv;
            }
            MutableState hasBeenVisible = (MutableState) it$iv;
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (function1.invoke(transition.getCurrentState()).booleanValue()) {
                hasBeenVisible.setValue(true);
            }
            if (function1.invoke(t).booleanValue()) {
                enterExitState = EnterExitState.Visible;
            } else if (((Boolean) hasBeenVisible.getValue()).booleanValue()) {
                enterExitState = EnterExitState.PostExit;
            } else {
                enterExitState = EnterExitState.PreEnter;
            }
            $composer.endReplaceGroup();
        }
        $composer.endMovableGroup();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd($composer);
        return enterExitState;
    }
}
