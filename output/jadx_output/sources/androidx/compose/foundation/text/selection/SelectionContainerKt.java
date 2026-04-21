package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.ComposeFoundationFlags;
import androidx.compose.foundation.internal.ClipboardUtils_androidKt;
import androidx.compose.foundation.text.ClipboardEventsHandler_jvmKt;
import androidx.compose.foundation.text.ContextMenu_androidKt;
import androidx.compose.foundation.text.LongPressTextDragObserverKt;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.platform.Clipboard;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.TextToolbar;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.media3.exoplayer.RendererCapabilities;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;

/* JADX INFO: compiled from: SelectionContainer.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000(\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a*\u0010\u0000\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u0011\u0010\u0004\u001a\r\u0012\u0004\u0012\u00020\u00010\u0005¢\u0006\u0002\b\u0006H\u0007¢\u0006\u0002\u0010\u0007\u001a \u0010\b\u001a\u00020\u00012\u0011\u0010\u0004\u001a\r\u0012\u0004\u0012\u00020\u00010\u0005¢\u0006\u0002\b\u0006H\u0007¢\u0006\u0002\u0010\t\u001aJ\u0010\u0000\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0014\u0010\f\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0012\u0004\u0012\u00020\u00010\r2\u0011\u0010\u000e\u001a\r\u0012\u0004\u0012\u00020\u00010\u0005¢\u0006\u0002\b\u0006H\u0001¢\u0006\u0002\u0010\u000f¨\u0006\u0010²\u0006\f\u0010\n\u001a\u0004\u0018\u00010\u000bX\u008a\u008e\u0002"}, d2 = {"SelectionContainer", "", "modifier", "Landroidx/compose/ui/Modifier;", "content", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V", "DisableSelection", "(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "selection", "Landroidx/compose/foundation/text/selection/Selection;", "onSelectionChange", "Lkotlin/Function1;", "children", "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/Selection;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V", "foundation"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class SelectionContainerKt {
    static final Unit DisableSelection$lambda$0(Function2 function2, int i, Composer composer, int i2) {
        DisableSelection(function2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    static final Unit SelectionContainer$lambda$11(Modifier modifier, Selection selection, Function1 function1, Function2 function2, int i, int i2, Composer composer, int i3) {
        SelectionContainer(modifier, selection, function1, function2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    static final Unit SelectionContainer$lambda$4(Modifier modifier, Function2 function2, int i, int i2, Composer composer, int i3) {
        SelectionContainer(modifier, function2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    public static final void SelectionContainer(final Modifier modifier, Function2<? super Composer, ? super Integer, Unit> function2, Composer $composer, final int $changed, final int i) {
        final Function2<? super Composer, ? super Integer, Unit> function22;
        Composer $composer2 = $composer.startRestartGroup(1949207773);
        ComposerKt.sourceInformation($composer2, "C(SelectionContainer)N(modifier,content)57@2606L45,61@2764L18,58@2656L161:SelectionContainer.kt#eksfi3");
        int $dirty = $changed;
        int i2 = i & 1;
        if (i2 != 0) {
            $dirty |= 6;
        } else if (($changed & 6) == 0) {
            $dirty |= $composer2.changed(modifier) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer2.changedInstance(function2) ? 32 : 16;
        }
        if (!$composer2.shouldExecute(($dirty & 19) != 18, $dirty & 1)) {
            function22 = function2;
            $composer2.skipToGroupEnd();
        } else {
            if (i2 != 0) {
                modifier = Modifier.INSTANCE;
            }
            Modifier modifier2 = modifier;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1949207773, $dirty, -1, "androidx.compose.foundation.text.selection.SelectionContainer (SelectionContainer.kt:56)");
            }
            ComposerKt.sourceInformationMarkerStart($composer2, 582932362, "CC(remember):SelectionContainer.kt#9igjgp");
            Object it$iv = $composer2.rememberedValue();
            if (it$iv == Composer.INSTANCE.getEmpty()) {
                Object value$iv = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
                $composer2.updateRememberedValue(value$iv);
                it$iv = value$iv;
            }
            final MutableState selection$delegate = (MutableState) it$iv;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            Selection selectionSelectionContainer$lambda$1 = SelectionContainer$lambda$1(selection$delegate);
            ComposerKt.sourceInformationMarkerStart($composer2, 582937391, "CC(remember):SelectionContainer.kt#9igjgp");
            Object it$iv2 = $composer2.rememberedValue();
            if (it$iv2 == Composer.INSTANCE.getEmpty()) {
                Object value$iv2 = new Function1() { // from class: androidx.compose.foundation.text.selection.SelectionContainerKt$$ExternalSyntheticLambda7
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return SelectionContainerKt.SelectionContainer$lambda$3$0(selection$delegate, (Selection) obj);
                    }
                };
                $composer2.updateRememberedValue(value$iv2);
                it$iv2 = value$iv2;
            }
            ComposerKt.sourceInformationMarkerEnd($composer2);
            function22 = function2;
            SelectionContainer(modifier2, selectionSelectionContainer$lambda$1, (Function1) it$iv2, function22, $composer2, ($dirty & 14) | RendererCapabilities.DECODER_SUPPORT_MASK | (($dirty << 6) & 7168), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier = modifier2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: androidx.compose.foundation.text.selection.SelectionContainerKt$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return SelectionContainerKt.SelectionContainer$lambda$4(modifier, function22, $changed, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    private static final Selection SelectionContainer$lambda$1(MutableState<Selection> mutableState) {
        MutableState<Selection> $this$getValue$iv = mutableState;
        return $this$getValue$iv.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit SelectionContainer$lambda$3$0(MutableState $selection$delegate, Selection it) {
        $selection$delegate.setValue(it);
        return Unit.INSTANCE;
    }

    public static final void DisableSelection(final Function2<? super Composer, ? super Integer, Unit> function2, Composer $composer, final int $changed) {
        Composer $composer2 = $composer.startRestartGroup(-1162635549);
        ComposerKt.sourceInformation($composer2, "C(DisableSelection)N(content)74@3108L82:SelectionContainer.kt#eksfi3");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changedInstance(function2) ? 4 : 2;
        }
        if (!$composer2.shouldExecute(($dirty & 3) != 2, $dirty & 1)) {
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1162635549, $dirty, -1, "androidx.compose.foundation.text.selection.DisableSelection (SelectionContainer.kt:73)");
            }
            CompositionLocalKt.CompositionLocalProvider(SelectionRegistrarKt.getLocalSelectionRegistrar().provides(null), function2, $composer2, ProvidedValue.$stable | (($dirty << 3) & 112));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: androidx.compose.foundation.text.selection.SelectionContainerKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return SelectionContainerKt.DisableSelection$lambda$0(function2, $changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    public static final void SelectionContainer(Modifier modifier, final Selection selection, final Function1<? super Selection, Unit> function1, final Function2<? super Composer, ? super Integer, Unit> function2, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        final Modifier.Companion modifier3;
        Composer $composer2 = $composer.startRestartGroup(-917932944);
        ComposerKt.sourceInformation($composer2, "C(SelectionContainer)N(modifier,selection,onSelectionChange,children)95@3856L28,95@3801L83,97@3904L44,99@3985L7,100@4018L24,101@4092L7,103@4136L345,112@4525L7,122@4906L136,134@5420L2468,134@5363L2525,190@7920L106,190@7894L132:SelectionContainer.kt#eksfi3");
        int $dirty = $changed;
        int i2 = i & 1;
        if (i2 != 0) {
            $dirty |= 6;
            modifier2 = modifier;
        } else if (($changed & 6) == 0) {
            modifier2 = modifier;
            $dirty |= $composer2.changed(modifier2) ? 4 : 2;
        } else {
            modifier2 = modifier;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer2.changed(selection) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty |= $composer2.changedInstance(function1) ? 256 : 128;
        }
        if (($changed & 3072) == 0) {
            $dirty |= $composer2.changedInstance(function2) ? 2048 : 1024;
        }
        int $dirty2 = $dirty;
        if ($composer2.shouldExecute(($dirty2 & 1171) != 1170, $dirty2 & 1)) {
            modifier3 = i2 != 0 ? Modifier.INSTANCE : modifier2;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-917932944, $dirty2, -1, "androidx.compose.foundation.text.selection.SelectionContainer (SelectionContainer.kt:93)");
            }
            Object[] objArr = new Object[0];
            Saver<SelectionRegistrarImpl, Long> saver = SelectionRegistrarImpl.INSTANCE.getSaver();
            ComposerKt.sourceInformationMarkerStart($composer2, -1665249940, "CC(remember):SelectionContainer.kt#9igjgp");
            Object it$iv = $composer2.rememberedValue();
            if (it$iv == Composer.INSTANCE.getEmpty()) {
                Object value$iv = new Function0() { // from class: androidx.compose.foundation.text.selection.SelectionContainerKt$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return SelectionContainerKt.SelectionContainer$lambda$5$0();
                    }
                };
                $composer2.updateRememberedValue(value$iv);
                it$iv = value$iv;
            }
            ComposerKt.sourceInformationMarkerEnd($composer2);
            final SelectionRegistrarImpl registrarImpl = (SelectionRegistrarImpl) RememberSaveableKt.m4138rememberSaveable(objArr, (Saver) saver, (Function0) it$iv, $composer2, RendererCapabilities.DECODER_SUPPORT_MASK);
            ComposerKt.sourceInformationMarkerStart($composer2, -1665248388, "CC(remember):SelectionContainer.kt#9igjgp");
            Object it$iv2 = $composer2.rememberedValue();
            if (it$iv2 == Composer.INSTANCE.getEmpty()) {
                Object value$iv2 = new SelectionManager(registrarImpl);
                $composer2.updateRememberedValue(value$iv2);
                it$iv2 = value$iv2;
            }
            final SelectionManager manager = (SelectionManager) it$iv2;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ProvidableCompositionLocal<Clipboard> localClipboard = CompositionLocalsKt.getLocalClipboard();
            ComposerKt.sourceInformationMarkerStart($composer2, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume = $composer2.consume(localClipboard);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            final Clipboard clipboard = (Clipboard) objConsume;
            ComposerKt.sourceInformationMarkerStart($composer2, 773894976, "CC(rememberCoroutineScope)N(getContext)600@27430L68:Effects.kt#9igjgp");
            ComposerKt.sourceInformationMarkerStart($composer2, 683736516, "CC(remember):Effects.kt#9igjgp");
            Object value$iv$iv = $composer2.rememberedValue();
            if (value$iv$iv == Composer.INSTANCE.getEmpty()) {
                value$iv$iv = EffectsKt.createCompositionCoroutineScope(EmptyCoroutineContext.INSTANCE, $composer2);
                $composer2.updateRememberedValue(value$iv$iv);
            }
            final CoroutineScope coroutineScope = (CoroutineScope) value$iv$iv;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ProvidableCompositionLocal<HapticFeedback> localHapticFeedback = CompositionLocalsKt.getLocalHapticFeedback();
            ComposerKt.sourceInformationMarkerStart($composer2, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume2 = $composer2.consume(localHapticFeedback);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            manager.setHapticFeedBack((HapticFeedback) objConsume2);
            ComposerKt.sourceInformationMarkerStart($composer2, -1665240663, "CC(remember):SelectionContainer.kt#9igjgp");
            boolean invalid$iv = $composer2.changed(coroutineScope) | $composer2.changed(clipboard);
            Object it$iv3 = $composer2.rememberedValue();
            if (invalid$iv || it$iv3 == Composer.INSTANCE.getEmpty()) {
                Object value$iv3 = ClipboardUtils_androidKt.isWriteSupported(clipboard) ? new Function1() { // from class: androidx.compose.foundation.text.selection.SelectionContainerKt$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return SelectionContainerKt.SelectionContainer$lambda$7$0(coroutineScope, clipboard, (AnnotatedString) obj);
                    }
                } : null;
                $composer2.updateRememberedValue(value$iv3);
                it$iv3 = value$iv3;
            }
            ComposerKt.sourceInformationMarkerEnd($composer2);
            manager.setOnCopyHandler((Function1) it$iv3);
            ProvidableCompositionLocal<TextToolbar> localTextToolbar = CompositionLocalsKt.getLocalTextToolbar();
            ComposerKt.sourceInformationMarkerStart($composer2, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume3 = $composer2.consume(localTextToolbar);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            manager.setTextToolbar((TextToolbar) objConsume3);
            manager.setOnSelectionChange(function1);
            manager.setSelection(selection);
            if (ComposeFoundationFlags.isSmartSelectionEnabled) {
                $composer2.startReplaceGroup(-82280708);
                ComposerKt.sourceInformation($composer2, "118@4777L69");
                manager.setPlatformSelectionBehaviors$foundation(PlatformSelectionBehaviors_androidKt.rememberPlatformSelectionBehaviors(SelectedTextType.StaticText, null, $composer2, 54));
                manager.setCoroutineScope$foundation(coroutineScope);
            } else {
                $composer2.startReplaceGroup(-86967598);
            }
            $composer2.endReplaceGroup();
            new Function0() { // from class: androidx.compose.foundation.text.selection.SelectionContainerKt$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return manager.getSelectedText$foundation();
                }
            };
            manager.isNonEmptySelection$foundation();
            ComposerKt.sourceInformationMarkerStart($composer2, 1197772674, "CC(rememberClipboardEventsHandler)N(onPaste,onCopy,onCut,isEnabled):ClipboardEventsHandler.jvm.kt#423gt5");
            ClipboardEventsHandler_jvmKt.AnonymousClass1 anonymousClass1 = ClipboardEventsHandler_jvmKt.AnonymousClass1.INSTANCE;
            ClipboardEventsHandler_jvmKt.AnonymousClass3 anonymousClass3 = ClipboardEventsHandler_jvmKt.AnonymousClass3.INSTANCE;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            SimpleLayoutKt.SimpleLayout(modifier3.then(manager.getModifier()), ComposableLambdaKt.rememberComposableLambda(-1799563674, true, new Function2() { // from class: androidx.compose.foundation.text.selection.SelectionContainerKt$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return SelectionContainerKt.SelectionContainer$lambda$9(manager, registrarImpl, function2, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer2, 54), $composer2, 48, 0);
            ComposerKt.sourceInformationMarkerStart($composer2, -1665119814, "CC(remember):SelectionContainer.kt#9igjgp");
            boolean invalid$iv2 = $composer2.changedInstance(manager);
            Object it$iv4 = $composer2.rememberedValue();
            if (invalid$iv2 || it$iv4 == Composer.INSTANCE.getEmpty()) {
                Object value$iv4 = new Function1() { // from class: androidx.compose.foundation.text.selection.SelectionContainerKt$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return SelectionContainerKt.SelectionContainer$lambda$10$0(manager, (DisposableEffectScope) obj);
                    }
                };
                $composer2.updateRememberedValue(value$iv4);
                it$iv4 = value$iv4;
            }
            ComposerKt.sourceInformationMarkerEnd($composer2);
            EffectsKt.DisposableEffect(manager, (Function1<? super DisposableEffectScope, ? extends DisposableEffectResult>) it$iv4, $composer2, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer2.skipToGroupEnd();
            modifier3 = modifier2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: androidx.compose.foundation.text.selection.SelectionContainerKt$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return SelectionContainerKt.SelectionContainer$lambda$11(modifier3, selection, function1, function2, $changed, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SelectionRegistrarImpl SelectionContainer$lambda$5$0() {
        return new SelectionRegistrarImpl();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit SelectionContainer$lambda$7$0(CoroutineScope $coroutineScope, Clipboard $clipboard, AnnotatedString textToCopy) {
        BuildersKt__Builders_commonKt.launch$default($coroutineScope, null, CoroutineStart.UNDISPATCHED, new SelectionContainerKt$SelectionContainer$3$1$1($clipboard, textToCopy, null), 1, null);
        return Unit.INSTANCE;
    }

    static final Unit SelectionContainer$lambda$9(final SelectionManager $manager, final SelectionRegistrarImpl $registrarImpl, final Function2 $children, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C135@5455L2427,135@5430L2452:SelectionContainer.kt#eksfi3");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1799563674, $changed, -1, "androidx.compose.foundation.text.selection.SelectionContainer.<anonymous> (SelectionContainer.kt:135)");
            }
            ContextMenu_androidKt.ContextMenuArea($manager, ComposableLambdaKt.rememberComposableLambda(-284825865, true, new Function2() { // from class: androidx.compose.foundation.text.selection.SelectionContainerKt$$ExternalSyntheticLambda9
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return SelectionContainerKt.SelectionContainer$lambda$9$0($registrarImpl, $children, $manager, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer, 54), $composer, 48);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit SelectionContainer$lambda$9$0(SelectionRegistrarImpl $registrarImpl, final Function2 $children, final SelectionManager $manager, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C136@5542L2330,136@5469L2403:SelectionContainer.kt#eksfi3");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-284825865, $changed, -1, "androidx.compose.foundation.text.selection.SelectionContainer.<anonymous>.<anonymous> (SelectionContainer.kt:136)");
            }
            CompositionLocalKt.CompositionLocalProvider(SelectionRegistrarKt.getLocalSelectionRegistrar().provides($registrarImpl), ComposableLambdaKt.rememberComposableLambda(610483127, true, new Function2() { // from class: androidx.compose.foundation.text.selection.SelectionContainerKt$$ExternalSyntheticLambda12
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return SelectionContainerKt.SelectionContainer$lambda$9$0$0($children, $manager, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer, 54), $composer, ProvidedValue.$stable | 48);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0175  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Unit SelectionContainer$lambda$9$0$0(Function2 $children, SelectionManager $manager, Composer $composer, int $changed) {
        List $this$fastForEach$iv;
        boolean invalid$iv;
        int index$iv;
        ResolvedTextDirection direction;
        float lineHeight;
        boolean invalid$iv2;
        boolean isStartHandle;
        final SelectionManager selectionManager = $manager;
        ComposerKt.sourceInformation($composer, "C137@5560L10:SelectionContainer.kt#eksfi3");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(610483127, $changed, -1, "androidx.compose.foundation.text.selection.SelectionContainer.<anonymous>.<anonymous>.<anonymous> (SelectionContainer.kt:137)");
            }
            $children.invoke($composer, 0);
            if (selectionManager.isInTouchMode() && selectionManager.getHasFocus() && !selectionManager.isTriviallyCollapsedSelection$foundation()) {
                $composer.startReplaceGroup(-1736224054);
                ComposerKt.sourceInformation($composer, "");
                Selection it = selectionManager.getSelection();
                if (it == null) {
                    $composer.startReplaceGroup(2011629175);
                } else {
                    $composer.startReplaceGroup(2011629176);
                    ComposerKt.sourceInformation($composer, "");
                    $composer.startReplaceGroup(-1736222526);
                    ComposerKt.sourceInformation($composer, "*146@5961L137,151@6197L385,179@7634L127,172@7196L596");
                    List $this$fastForEach$iv2 = CollectionsKt.listOf((Object[]) new Boolean[]{true, false});
                    int index$iv2 = 0;
                    int size = $this$fastForEach$iv2.size();
                    while (index$iv2 < size) {
                        Object item$iv = $this$fastForEach$iv2.get(index$iv2);
                        boolean isStartHandle2 = ((Boolean) item$iv).booleanValue();
                        ComposerKt.sourceInformationMarkerStart($composer, -465225385, "CC(remember):SelectionContainer.kt#9igjgp");
                        boolean invalid$iv3 = $composer.changed(isStartHandle2);
                        Object it$iv = $composer.rememberedValue();
                        if (!invalid$iv3) {
                            $this$fastForEach$iv = $this$fastForEach$iv2;
                            if (it$iv == Composer.INSTANCE.getEmpty()) {
                            }
                            final TextDragObserver observer = (TextDragObserver) it$iv;
                            ComposerKt.sourceInformationMarkerEnd($composer);
                            ComposerKt.sourceInformationMarkerStart($composer, -465217585, "CC(remember):SelectionContainer.kt#9igjgp");
                            invalid$iv = $composer.changed(isStartHandle2);
                            Object it$iv2 = $composer.rememberedValue();
                            if (invalid$iv) {
                                index$iv = index$iv2;
                                if (it$iv2 == Composer.INSTANCE.getEmpty()) {
                                }
                                Function0 positionProvider = (Function0) it$iv2;
                                ComposerKt.sourceInformationMarkerEnd($composer);
                                if (isStartHandle2) {
                                    direction = it.getStart().getDirection();
                                } else {
                                    direction = it.getEnd().getDirection();
                                }
                                if (isStartHandle2) {
                                    lineHeight = selectionManager.getStartHandleLineHeight();
                                } else {
                                    lineHeight = selectionManager.getEndHandleLineHeight();
                                }
                                SelectionContainerKt$sam$androidx_compose_foundation_text_selection_OffsetProvider$0 selectionContainerKt$sam$androidx_compose_foundation_text_selection_OffsetProvider$0 = new SelectionContainerKt$sam$androidx_compose_foundation_text_selection_OffsetProvider$0(positionProvider);
                                boolean isStartHandle3 = it.getHandlesCrossed();
                                Modifier.Companion companion = Modifier.INSTANCE;
                                ComposerKt.sourceInformationMarkerStart($composer, -465171859, "CC(remember):SelectionContainer.kt#9igjgp");
                                invalid$iv2 = $composer.changedInstance(observer);
                                PointerInputEventHandler value$iv = $composer.rememberedValue();
                                if (!invalid$iv2) {
                                    isStartHandle = isStartHandle2;
                                    if (value$iv == Composer.INSTANCE.getEmpty()) {
                                    }
                                    ComposerKt.sourceInformationMarkerEnd($composer);
                                    AndroidSelectionHandles_androidKt.m1579SelectionHandlewLIcFTc(selectionContainerKt$sam$androidx_compose_foundation_text_selection_OffsetProvider$0, isStartHandle, direction, isStartHandle3, 0L, lineHeight, SuspendingPointerInputFilterKt.pointerInput(companion, observer, (PointerInputEventHandler) value$iv), $composer, 0, 16);
                                    index$iv2 = index$iv + 1;
                                    size = size;
                                    $this$fastForEach$iv2 = $this$fastForEach$iv;
                                    selectionManager = $manager;
                                } else {
                                    isStartHandle = isStartHandle2;
                                }
                                value$iv = new PointerInputEventHandler() { // from class: androidx.compose.foundation.text.selection.SelectionContainerKt$SelectionContainer$5$1$1$1$1$1$1
                                    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                    public final Object invoke(PointerInputScope $this$pointerInput, Continuation<? super Unit> continuation) {
                                        Object objDetectDownAndDragGesturesWithObserver = LongPressTextDragObserverKt.detectDownAndDragGesturesWithObserver($this$pointerInput, observer, continuation);
                                        return objDetectDownAndDragGesturesWithObserver == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objDetectDownAndDragGesturesWithObserver : Unit.INSTANCE;
                                    }
                                };
                                $composer.updateRememberedValue(value$iv);
                                ComposerKt.sourceInformationMarkerEnd($composer);
                                AndroidSelectionHandles_androidKt.m1579SelectionHandlewLIcFTc(selectionContainerKt$sam$androidx_compose_foundation_text_selection_OffsetProvider$0, isStartHandle, direction, isStartHandle3, 0L, lineHeight, SuspendingPointerInputFilterKt.pointerInput(companion, observer, (PointerInputEventHandler) value$iv), $composer, 0, 16);
                                index$iv2 = index$iv + 1;
                                size = size;
                                $this$fastForEach$iv2 = $this$fastForEach$iv;
                                selectionManager = $manager;
                            } else {
                                index$iv = index$iv2;
                            }
                            Object value$iv2 = !isStartHandle2 ? new Function0() { // from class: androidx.compose.foundation.text.selection.SelectionContainerKt$$ExternalSyntheticLambda10
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    return SelectionContainerKt.SelectionContainer$lambda$9$0$0$0$0$1$0(selectionManager);
                                }
                            } : new Function0() { // from class: androidx.compose.foundation.text.selection.SelectionContainerKt$$ExternalSyntheticLambda11
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    return SelectionContainerKt.SelectionContainer$lambda$9$0$0$0$0$1$1(selectionManager);
                                }
                            };
                            $composer.updateRememberedValue(value$iv2);
                            it$iv2 = value$iv2;
                            Function0 positionProvider2 = (Function0) it$iv2;
                            ComposerKt.sourceInformationMarkerEnd($composer);
                            if (isStartHandle2) {
                            }
                            if (isStartHandle2) {
                            }
                            SelectionContainerKt$sam$androidx_compose_foundation_text_selection_OffsetProvider$0 selectionContainerKt$sam$androidx_compose_foundation_text_selection_OffsetProvider$02 = new SelectionContainerKt$sam$androidx_compose_foundation_text_selection_OffsetProvider$0(positionProvider2);
                            boolean isStartHandle32 = it.getHandlesCrossed();
                            Modifier.Companion companion2 = Modifier.INSTANCE;
                            ComposerKt.sourceInformationMarkerStart($composer, -465171859, "CC(remember):SelectionContainer.kt#9igjgp");
                            invalid$iv2 = $composer.changedInstance(observer);
                            PointerInputEventHandler value$iv3 = $composer.rememberedValue();
                            if (!invalid$iv2) {
                            }
                            value$iv3 = new PointerInputEventHandler() { // from class: androidx.compose.foundation.text.selection.SelectionContainerKt$SelectionContainer$5$1$1$1$1$1$1
                                @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                public final Object invoke(PointerInputScope $this$pointerInput, Continuation<? super Unit> continuation) {
                                    Object objDetectDownAndDragGesturesWithObserver = LongPressTextDragObserverKt.detectDownAndDragGesturesWithObserver($this$pointerInput, observer, continuation);
                                    return objDetectDownAndDragGesturesWithObserver == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objDetectDownAndDragGesturesWithObserver : Unit.INSTANCE;
                                }
                            };
                            $composer.updateRememberedValue(value$iv3);
                            ComposerKt.sourceInformationMarkerEnd($composer);
                            AndroidSelectionHandles_androidKt.m1579SelectionHandlewLIcFTc(selectionContainerKt$sam$androidx_compose_foundation_text_selection_OffsetProvider$02, isStartHandle, direction, isStartHandle32, 0L, lineHeight, SuspendingPointerInputFilterKt.pointerInput(companion2, observer, (PointerInputEventHandler) value$iv3), $composer, 0, 16);
                            index$iv2 = index$iv + 1;
                            size = size;
                            $this$fastForEach$iv2 = $this$fastForEach$iv;
                            selectionManager = $manager;
                        } else {
                            $this$fastForEach$iv = $this$fastForEach$iv2;
                        }
                        Object value$iv4 = selectionManager.handleDragObserver(isStartHandle2);
                        $composer.updateRememberedValue(value$iv4);
                        it$iv = value$iv4;
                        final TextDragObserver observer2 = (TextDragObserver) it$iv;
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        ComposerKt.sourceInformationMarkerStart($composer, -465217585, "CC(remember):SelectionContainer.kt#9igjgp");
                        invalid$iv = $composer.changed(isStartHandle2);
                        Object it$iv22 = $composer.rememberedValue();
                        if (invalid$iv) {
                        }
                        if (!isStartHandle2) {
                        }
                        $composer.updateRememberedValue(value$iv2);
                        it$iv22 = value$iv2;
                        Function0 positionProvider22 = (Function0) it$iv22;
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        if (isStartHandle2) {
                        }
                        if (isStartHandle2) {
                        }
                        SelectionContainerKt$sam$androidx_compose_foundation_text_selection_OffsetProvider$0 selectionContainerKt$sam$androidx_compose_foundation_text_selection_OffsetProvider$022 = new SelectionContainerKt$sam$androidx_compose_foundation_text_selection_OffsetProvider$0(positionProvider22);
                        boolean isStartHandle322 = it.getHandlesCrossed();
                        Modifier.Companion companion22 = Modifier.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart($composer, -465171859, "CC(remember):SelectionContainer.kt#9igjgp");
                        invalid$iv2 = $composer.changedInstance(observer2);
                        PointerInputEventHandler value$iv32 = $composer.rememberedValue();
                        if (!invalid$iv2) {
                        }
                        value$iv32 = new PointerInputEventHandler() { // from class: androidx.compose.foundation.text.selection.SelectionContainerKt$SelectionContainer$5$1$1$1$1$1$1
                            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                            public final Object invoke(PointerInputScope $this$pointerInput, Continuation<? super Unit> continuation) {
                                Object objDetectDownAndDragGesturesWithObserver = LongPressTextDragObserverKt.detectDownAndDragGesturesWithObserver($this$pointerInput, observer2, continuation);
                                return objDetectDownAndDragGesturesWithObserver == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objDetectDownAndDragGesturesWithObserver : Unit.INSTANCE;
                            }
                        };
                        $composer.updateRememberedValue(value$iv32);
                        ComposerKt.sourceInformationMarkerEnd($composer);
                        AndroidSelectionHandles_androidKt.m1579SelectionHandlewLIcFTc(selectionContainerKt$sam$androidx_compose_foundation_text_selection_OffsetProvider$022, isStartHandle, direction, isStartHandle322, 0L, lineHeight, SuspendingPointerInputFilterKt.pointerInput(companion22, observer2, (PointerInputEventHandler) value$iv32), $composer, 0, 16);
                        index$iv2 = index$iv + 1;
                        size = size;
                        $this$fastForEach$iv2 = $this$fastForEach$iv;
                        selectionManager = $manager;
                    }
                    $composer.endReplaceGroup();
                }
                $composer.endReplaceGroup();
            } else {
                $composer.startReplaceGroup(2005806539);
            }
            $composer.endReplaceGroup();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Offset SelectionContainer$lambda$9$0$0$0$0$1$0(SelectionManager $manager) {
        Offset offsetM1628getStartHandlePosition_m7T9E = $manager.m1628getStartHandlePosition_m7T9E();
        return Offset.m4441boximpl(offsetM1628getStartHandlePosition_m7T9E != null ? offsetM1628getStartHandlePosition_m7T9E.m4462unboximpl() : Offset.INSTANCE.m4467getUnspecifiedF1C5BW0());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Offset SelectionContainer$lambda$9$0$0$0$0$1$1(SelectionManager $manager) {
        Offset offsetM1627getEndHandlePosition_m7T9E = $manager.m1627getEndHandlePosition_m7T9E();
        return Offset.m4441boximpl(offsetM1627getEndHandlePosition_m7T9E != null ? offsetM1627getEndHandlePosition_m7T9E.m4462unboximpl() : Offset.INSTANCE.m4467getUnspecifiedF1C5BW0());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DisposableEffectResult SelectionContainer$lambda$10$0(final SelectionManager $manager, DisposableEffectScope $this$DisposableEffect) {
        return new DisposableEffectResult() { // from class: androidx.compose.foundation.text.selection.SelectionContainerKt$SelectionContainer$lambda$10$0$$inlined$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void dispose() {
                $manager.onRelease();
                $manager.setHasFocus(false);
            }
        };
    }
}
