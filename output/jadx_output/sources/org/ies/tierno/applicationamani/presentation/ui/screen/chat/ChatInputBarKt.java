package org.ies.tierno.applicationamani.presentation.ui.screen.chat;

import androidx.compose.animation.AnimatedContentKt;
import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.animation.AnimatedContentTransitionScope;
import androidx.compose.animation.ContentTransform;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.InfiniteRepeatableSpec;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.animation.core.InfiniteTransitionKt;
import androidx.compose.animation.core.RepeatMode;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.foundation.text.BasicTextFieldKt;
import androidx.compose.foundation.text.KeyboardActionScope;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.material3.IconButtonColors;
import androidx.compose.material3.IconButtonDefaults;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.SurfaceKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.text.PlatformTextStyle;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.KeyboardCapitalization;
import androidx.compose.ui.text.input.PlatformImeOptions;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.text.style.TextMotion;
import androidx.compose.ui.unit.Dp;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.profileinstaller.ProfileVerifier;
import com.google.logging.type.LogSeverity;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: ChatInputBar.kt */
/* JADX INFO: loaded from: classes8.dex */
@Metadata(d1 = {"\u00008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0000\u001a{\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00010\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00010\u00072\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00010\u00072\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00010\u00072\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\fH\u0007¢\u0006\u0002\u0010\u0010\u001a\r\u0010\u0011\u001a\u00020\u0001H\u0003¢\u0006\u0002\u0010\u0012\u001aA\u0010\u0013\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00010\u00072\b\b\u0002\u0010\u0014\u001a\u00020\u0015H\u0003¢\u0006\u0002\u0010\u0016\u001a#\u0010\u0017\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u000e2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00010\u0007H\u0003¢\u0006\u0002\u0010\u0019¨\u0006\u001a²\u0006\n\u0010\u001b\u001a\u00020\u001cX\u008a\u0084\u0002²\u0006\n\u0010\u001d\u001a\u00020\u001cX\u008a\u0084\u0002"}, d2 = {"ChatInputBar", "", "text", "", "onTextChange", "Lkotlin/Function1;", "onSend", "Lkotlin/Function0;", "onMicClick", "onAttachFile", "onStopRecording", "isRecording", "", "recordingSeconds", "", "isOtherTyping", "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZIZLandroidx/compose/runtime/Composer;II)V", "TypingIndicator", "(Landroidx/compose/runtime/Composer;I)V", "PillTextField", "modifier", "Landroidx/compose/ui/Modifier;", "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V", "RecordingBar", "onStopClick", "(ILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V", "app", "sendScale", "", "pulseAlpha"}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class ChatInputBarKt {
    static final Unit ChatInputBar$lambda$9(String str, Function1 function1, Function0 function0, Function0 function02, Function0 function03, Function0 function04, boolean z, int i, boolean z2, int i2, int i3, Composer composer, int i4) {
        ChatInputBar(str, function1, function0, function02, function03, function04, z, i, z2, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1), i3);
        return Unit.INSTANCE;
    }

    static final Unit PillTextField$lambda$15(String str, Function1 function1, Function0 function0, Modifier modifier, int i, int i2, Composer composer, int i3) {
        PillTextField(str, function1, function0, modifier, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    static final Unit RecordingBar$lambda$19(int i, Function0 function0, int i2, Composer composer, int i3) {
        RecordingBar(i, function0, composer, RecomposeScopeImplKt.updateChangedFlags(i2 | 1));
        return Unit.INSTANCE;
    }

    static final Unit TypingIndicator$lambda$11(int i, Composer composer, int i2) {
        TypingIndicator(composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    public static final void ChatInputBar(final String text, final Function1<? super String, Unit> onTextChange, final Function0<Unit> onSend, final Function0<Unit> onMicClick, final Function0<Unit> onAttachFile, final Function0<Unit> onStopRecording, final boolean isRecording, final int recordingSeconds, boolean isOtherTyping, Composer $composer, final int $changed, final int i) {
        boolean isOtherTyping2;
        final boolean isOtherTyping3;
        Composer composer;
        Composer composer2;
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(onTextChange, "onTextChange");
        Intrinsics.checkNotNullParameter(onSend, "onSend");
        Intrinsics.checkNotNullParameter(onMicClick, "onMicClick");
        Intrinsics.checkNotNullParameter(onAttachFile, "onAttachFile");
        Intrinsics.checkNotNullParameter(onStopRecording, "onStopRecording");
        Composer $composer2 = $composer.startRestartGroup(-1192785559);
        ComposerKt.sourceInformation($composer2, "C(ChatInputBar)N(text,onTextChange,onSend,onMicClick,onAttachFile,onStopRecording,isRecording,recordingSeconds,isOtherTyping)67@2916L4016:ChatInputBar.kt#5xjsc0");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changed(text) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer2.changedInstance(onTextChange) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty |= $composer2.changedInstance(onSend) ? 256 : 128;
        }
        if (($changed & 3072) == 0) {
            $dirty |= $composer2.changedInstance(onMicClick) ? 2048 : 1024;
        }
        if (($changed & 24576) == 0) {
            $dirty |= $composer2.changedInstance(onAttachFile) ? 16384 : 8192;
        }
        if ((196608 & $changed) == 0) {
            $dirty |= $composer2.changedInstance(onStopRecording) ? 131072 : 65536;
        }
        if ((1572864 & $changed) == 0) {
            $dirty |= $composer2.changed(isRecording) ? 1048576 : 524288;
        }
        if ((12582912 & $changed) == 0) {
            $dirty |= $composer2.changed(recordingSeconds) ? 8388608 : 4194304;
        }
        int i2 = i & 256;
        if (i2 != 0) {
            $dirty |= 100663296;
            isOtherTyping2 = isOtherTyping;
        } else if ((100663296 & $changed) == 0) {
            isOtherTyping2 = isOtherTyping;
            $dirty |= $composer2.changed(isOtherTyping2) ? 67108864 : 33554432;
        } else {
            isOtherTyping2 = isOtherTyping;
        }
        int $dirty2 = $dirty;
        if (!$composer2.shouldExecute((38347923 & $dirty2) != 38347922, $dirty2 & 1)) {
            $composer2.skipToGroupEnd();
            isOtherTyping3 = isOtherTyping2;
        } else {
            if (i2 != 0) {
                isOtherTyping2 = false;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1192785559, $dirty2, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatInputBar (ChatInputBar.kt:65)");
            }
            Modifier modifierImePadding = WindowInsetsPadding_androidKt.imePadding(Modifier.INSTANCE);
            ComposerKt.sourceInformationMarkerStart($composer2, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), $composer2, ((0 >> 3) & 14) | ((0 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer2, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer2, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer2.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer2, modifierImePadding);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i3 = ((((0 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer2, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer2.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer2.startReusableNode();
            if ($composer2.getInserting()) {
                $composer2.createNode(constructor);
            } else {
                $composer2.useNode();
            }
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer2);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i4 = (i3 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer2, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            int i5 = ((0 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer2, -1704049299, "C:ChatInputBar.kt#5xjsc0");
            if (isRecording) {
                $composer2.startReplaceGroup(-1704150515);
                ComposerKt.sourceInformation($composer2, "69@2998L126");
                RecordingBar(recordingSeconds, onStopRecording, $composer2, (($dirty2 >> 21) & 14) | (($dirty2 >> 12) & 112));
                $composer2.endReplaceGroup();
                composer = $composer2;
                composer2 = $composer2;
            } else {
                $composer2.startReplaceGroup(-1703883047);
                ComposerKt.sourceInformation($composer2, "76@3266L6,79@3397L11,81@3512L3322,75@3219L3615");
                composer = $composer2;
                composer2 = $composer2;
                SurfaceKt.m2826SurfaceT9BRK9s(PaddingKt.m819paddingVpY3zN4(Modifier.INSTANCE, Dp.m7505constructorimpl(8), Dp.m7505constructorimpl(4)), MaterialTheme.INSTANCE.getShapes($composer2, MaterialTheme.$stable).getLarge(), MaterialTheme.INSTANCE.getColorScheme($composer2, MaterialTheme.$stable).getSurface(), 0L, Dp.m7505constructorimpl(2), Dp.m7505constructorimpl(4), null, ComposableLambdaKt.rememberComposableLambda(-1594359970, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatInputBarKt$$ExternalSyntheticLambda9
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return ChatInputBarKt.ChatInputBar$lambda$8$lambda$7(text, onTextChange, onSend, onMicClick, onAttachFile, (Composer) obj, ((Integer) obj2).intValue());
                    }
                }, composer2, 54), $composer2, 12804102, 72);
                if (isOtherTyping2) {
                    composer2.startReplaceGroup(-1700301710);
                    ComposerKt.sourceInformation(composer2, "152@6885L17");
                    TypingIndicator(composer2, 0);
                } else {
                    composer2.startReplaceGroup(-1707116285);
                }
                composer2.endReplaceGroup();
                composer2.endReplaceGroup();
            }
            ComposerKt.sourceInformationMarkerEnd(composer2);
            ComposerKt.sourceInformationMarkerEnd(composer);
            $composer2.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            isOtherTyping3 = isOtherTyping2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatInputBarKt$$ExternalSyntheticLambda10
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ChatInputBarKt.ChatInputBar$lambda$9(text, onTextChange, onSend, onMicClick, onAttachFile, onStopRecording, isRecording, recordingSeconds, isOtherTyping3, $changed, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    static final Unit ChatInputBar$lambda$8$lambda$7(String $text, Function1 $onTextChange, Function0 $onSend, final Function0 $onMicClick, final Function0 $onAttachFile, Composer $composer, int $changed) throws Throwable {
        Function0<ComposeUiNode> function0;
        Object obj;
        ComposerKt.sourceInformation($composer, "C82@3530L3290:ChatInputBar.kt#5xjsc0");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1594359970, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatInputBar.<anonymous>.<anonymous> (ChatInputBar.kt:82)");
            }
            Modifier modifierM819paddingVpY3zN4 = PaddingKt.m819paddingVpY3zN4(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(8), Dp.m7505constructorimpl(8));
            Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
            ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, $composer, ((390 >> 3) & 14) | ((390 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifierM819paddingVpY3zN4);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((390 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                function0 = constructor;
                $composer.createNode(function0);
            } else {
                function0 = constructor;
                $composer.useNode();
            }
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyRowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = (i >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            int i3 = ((390 >> 6) & 112) | 6;
            RowScope rowScope = RowScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart($composer, -1022629113, "C90@3904L293,95@4277L922,88@3792L1407,115@5221L222,122@5465L39,124@5543L232,134@6045L11,135@6133L11,136@6233L11,137@6321L11,133@5962L426,141@6518L42,130@5797L1005:ChatInputBar.kt#5xjsc0");
            Boolean boolValueOf = Boolean.valueOf(StringsKt.isBlank($text));
            ComposerKt.sourceInformationMarkerStart($composer, -32987169, "CC(remember):ChatInputBar.kt#9igjgp");
            Object objRememberedValue = $composer.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj2 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatInputBarKt$$ExternalSyntheticLambda4
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj3) {
                        return ChatInputBarKt.ChatInputBar$lambda$8$lambda$7$lambda$6$lambda$1$lambda$0((AnimatedContentTransitionScope) obj3);
                    }
                };
                $composer.updateRememberedValue(obj2);
                obj = obj2;
            } else {
                obj = objRememberedValue;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            AnimatedContentKt.AnimatedContent(boolValueOf, null, (Function1) obj, null, "mic_attach_transition", null, ComposableLambdaKt.rememberComposableLambda(-577303145, true, new Function4() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatInputBarKt$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function4
                public final Object invoke(Object obj3, Object obj4, Object obj5, Object obj6) {
                    return ChatInputBarKt.ChatInputBar$lambda$8$lambda$7$lambda$6$lambda$2($onMicClick, $onAttachFile, (AnimatedContentScope) obj3, ((Boolean) obj4).booleanValue(), (Composer) obj5, ((Integer) obj6).intValue());
                }
            }, $composer, 54), $composer, 1597824, 42);
            PillTextField($text, $onTextChange, $onSend, RowScope.weight$default(rowScope, Modifier.INSTANCE, 1.0f, false, 2, null), $composer, 0, 0);
            SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(4)), $composer, 6);
            final State<Float> stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(!StringsKt.isBlank($text) ? 1.0f : 0.85f, AnimationSpecKt.spring$default(0.6f, 0.0f, null, 6, null), 0.0f, "send_scale", null, $composer, 3120, 20);
            boolean z = !StringsKt.isBlank($text);
            IconButtonDefaults iconButtonDefaults = IconButtonDefaults.INSTANCE;
            long primary = MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable).getPrimary();
            long onSurface = MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable).getOnSurface();
            long jM4695copywmQWz5c = Color.m4695copywmQWz5c(onSurface, (14 & 1) != 0 ? Color.m4699getAlphaimpl(onSurface) : 0.12f, (14 & 2) != 0 ? Color.m4703getRedimpl(onSurface) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(onSurface) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(onSurface) : 0.0f);
            long onPrimary = MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable).getOnPrimary();
            long onSurface2 = MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable).getOnSurface();
            IconButtonColors iconButtonColorsM2423filledIconButtonColorsro_MJ88 = iconButtonDefaults.m2423filledIconButtonColorsro_MJ88(primary, onPrimary, jM4695copywmQWz5c, Color.m4695copywmQWz5c(onSurface2, (14 & 1) != 0 ? Color.m4699getAlphaimpl(onSurface2) : 0.38f, (14 & 2) != 0 ? Color.m4703getRedimpl(onSurface2) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(onSurface2) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(onSurface2) : 0.0f), $composer, IconButtonDefaults.$stable << 12, 0);
            Modifier modifierM864size3ABfNKs = SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(44));
            ComposerKt.sourceInformationMarkerStart($composer, -32903772, "CC(remember):ChatInputBar.kt#9igjgp");
            boolean zChanged = $composer.changed(stateAnimateFloatAsState);
            Object objRememberedValue2 = $composer.rememberedValue();
            if (zChanged || objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                objRememberedValue2 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatInputBarKt$$ExternalSyntheticLambda6
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj3) {
                        return ChatInputBarKt.ChatInputBar$lambda$8$lambda$7$lambda$6$lambda$5$lambda$4(stateAnimateFloatAsState, (GraphicsLayerScope) obj3);
                    }
                };
                $composer.updateRememberedValue(objRememberedValue2);
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            IconButtonKt.FilledIconButton($onSend, GraphicsLayerModifierKt.graphicsLayer(modifierM864size3ABfNKs, (Function1) objRememberedValue2), z, null, iconButtonColorsM2423filledIconButtonColorsro_MJ88, null, ComposableSingletons$ChatInputBarKt.INSTANCE.m10430getLambda$1517561510$app(), $composer, 1572864, 40);
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

    static final ContentTransform ChatInputBar$lambda$8$lambda$7$lambda$6$lambda$1$lambda$0(AnimatedContentTransitionScope AnimatedContent) {
        Intrinsics.checkNotNullParameter(AnimatedContent, "$this$AnimatedContent");
        return AnimatedContentKt.togetherWith(EnterExitTransitionKt.fadeIn$default(AnimationSpecKt.tween$default(200, 0, null, 6, null), 0.0f, 2, null).plus(EnterExitTransitionKt.m86scaleInL8ZKhE$default(AnimationSpecKt.tween$default(200, 0, null, 6, null), 0.8f, 0L, 4, null)), EnterExitTransitionKt.fadeOut$default(AnimationSpecKt.tween$default(200, 0, null, 6, null), 0.0f, 2, null).plus(EnterExitTransitionKt.m88scaleOutL8ZKhE$default(AnimationSpecKt.tween$default(200, 0, null, 6, null), 0.8f, 0L, 4, null)));
    }

    static final Unit ChatInputBar$lambda$8$lambda$7$lambda$6$lambda$2(Function0 $onMicClick, Function0 $onAttachFile, AnimatedContentScope AnimatedContent, boolean isBlank, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(AnimatedContent, "$this$AnimatedContent");
        ComposerKt.sourceInformation($composer, "CN(isBlank):ChatInputBar.kt#5xjsc0");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-577303145, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatInputBar.<anonymous>.<anonymous>.<anonymous>.<anonymous> (ChatInputBar.kt:96)");
        }
        if (isBlank) {
            $composer.startReplaceGroup(-1388876920);
            ComposerKt.sourceInformation($composer, "97@4357L363");
            IconButtonKt.IconButton($onMicClick, null, false, null, null, ComposableSingletons$ChatInputBarKt.INSTANCE.getLambda$1334872975$app(), $composer, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 30);
            $composer.endReplaceGroup();
        } else {
            $composer.startReplaceGroup(-1388455134);
            ComposerKt.sourceInformation($composer, "105@4782L369");
            IconButtonKt.IconButton($onAttachFile, null, false, null, null, ComposableSingletons$ChatInputBarKt.INSTANCE.m10431getLambda$1671831336$app(), $composer, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 30);
            $composer.endReplaceGroup();
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return Unit.INSTANCE;
    }

    private static final float ChatInputBar$lambda$8$lambda$7$lambda$6$lambda$3(State<Float> state) {
        return ((Number) state.getValue()).floatValue();
    }

    static final Unit ChatInputBar$lambda$8$lambda$7$lambda$6$lambda$5$lambda$4(State $sendScale$delegate, GraphicsLayerScope graphicsLayer) {
        Intrinsics.checkNotNullParameter(graphicsLayer, "$this$graphicsLayer");
        graphicsLayer.setScaleX(ChatInputBar$lambda$8$lambda$7$lambda$6$lambda$3($sendScale$delegate));
        graphicsLayer.setScaleY(ChatInputBar$lambda$8$lambda$7$lambda$6$lambda$3($sendScale$delegate));
        return Unit.INSTANCE;
    }

    private static final void TypingIndicator(Composer $composer, final int $changed) {
        Composer $composer2;
        Function0<ComposeUiNode> function0;
        Composer $composer3 = $composer.startRestartGroup(1593053157);
        ComposerKt.sourceInformation($composer3, "C(TypingIndicator)160@6984L381:ChatInputBar.kt#5xjsc0");
        if (!$composer3.shouldExecute($changed != 0, $changed & 1)) {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1593053157, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.TypingIndicator (ChatInputBar.kt:159)");
            }
            Modifier modifierM822paddingqDBjuR0$default = PaddingKt.m822paddingqDBjuR0$default(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(48), 0.0f, 0.0f, Dp.m7505constructorimpl(4), 6, null);
            Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
            ComposerKt.sourceInformationMarkerStart($composer3, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, $composer3, ((390 >> 3) & 14) | ((390 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer3, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer3, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer3.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer3, modifierM822paddingqDBjuR0$default);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            $composer2 = $composer3;
            int i = ((((390 << 3) & 112) << 6) & 896) | 6;
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
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer3);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyRowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = (i >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer3, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
            int i3 = ((390 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, -1973025725, "C168@7245L10,169@7302L11,166@7168L191:ChatInputBar.kt#5xjsc0");
            TextStyle labelSmall = MaterialTheme.INSTANCE.getTypography($composer3, MaterialTheme.$stable).getLabelSmall();
            long onSurfaceVariant = MaterialTheme.INSTANCE.getColorScheme($composer3, MaterialTheme.$stable).getOnSurfaceVariant();
            TextKt.m2976Text4IGK_g("Escribiendo...", (Modifier) null, Color.m4695copywmQWz5c(onSurfaceVariant, (14 & 1) != 0 ? Color.m4699getAlphaimpl(onSurfaceVariant) : 0.6f, (14 & 2) != 0 ? Color.m4703getRedimpl(onSurfaceVariant) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(onSurfaceVariant) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(onSurfaceVariant) : 0.0f), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, labelSmall, $composer3, 6, 0, 65530);
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
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatInputBarKt$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ChatInputBarKt.TypingIndicator$lambda$11($changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    private static final void PillTextField(final String text, final Function1<? super String, Unit> function1, final Function0<Unit> function0, Modifier modifier, Composer $composer, final int $changed, final int i) {
        Modifier modifier2;
        Composer $composer2;
        final Modifier modifier3;
        Composer $composer3 = $composer.startRestartGroup(-277061250);
        ComposerKt.sourceInformation($composer3, "C(PillTextField)N(text,onTextChange,onSend,modifier)186@7687L11,191@7895L11,192@7955L10,194@8044L11,201@8308L35,203@8379L356,181@7528L1213:ChatInputBar.kt#5xjsc0");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer3.changed(text) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer3.changedInstance(function1) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty |= $composer3.changedInstance(function0) ? 256 : 128;
        }
        int i2 = i & 8;
        if (i2 != 0) {
            $dirty |= 3072;
            modifier2 = modifier;
        } else if (($changed & 3072) == 0) {
            modifier2 = modifier;
            $dirty |= $composer3.changed(modifier2) ? 2048 : 1024;
        } else {
            modifier2 = modifier;
        }
        if ($composer3.shouldExecute(($dirty & 1171) != 1170, $dirty & 1)) {
            Modifier.Companion modifier4 = i2 != 0 ? Modifier.INSTANCE : modifier2;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-277061250, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.PillTextField (ChatInputBar.kt:180)");
            }
            Modifier modifierM819paddingVpY3zN4 = PaddingKt.m819paddingVpY3zN4(BackgroundKt.m263backgroundbw27NRU(modifier4, MaterialTheme.INSTANCE.getColorScheme($composer3, MaterialTheme.$stable).getSurfaceVariant(), RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(28))), Dp.m7505constructorimpl(12), Dp.m7505constructorimpl(8));
            TextStyle textStyle = new TextStyle(MaterialTheme.INSTANCE.getColorScheme($composer3, MaterialTheme.$stable).getOnSurface(), MaterialTheme.INSTANCE.getTypography($composer3, MaterialTheme.$stable).getBodyMedium().m6959getFontSizeXSAIIZE(), (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (DrawStyle) null, 0, 0, 0L, (TextIndent) null, (PlatformTextStyle) null, (LineHeightStyle) null, 0, 0, (TextMotion) null, 16777212, (DefaultConstructorMarker) null);
            SolidColor solidColor = new SolidColor(MaterialTheme.INSTANCE.getColorScheme($composer3, MaterialTheme.$stable).getPrimary(), null);
            KeyboardOptions keyboardOptions = new KeyboardOptions(KeyboardCapitalization.INSTANCE.m7143getSentencesIUNYP9k(), (Boolean) null, 0, ImeAction.INSTANCE.m7116getSendeUduSuo(), (PlatformImeOptions) null, (Boolean) null, (LocaleList) null, 118, (DefaultConstructorMarker) null);
            ComposerKt.sourceInformationMarkerStart($composer3, 32141185, "CC(remember):ChatInputBar.kt#9igjgp");
            boolean z = (($dirty & 14) == 4) | (($dirty & 896) == 256);
            Object objRememberedValue = $composer3.rememberedValue();
            if (z || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatInputBarKt$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return ChatInputBarKt.PillTextField$lambda$13$lambda$12(text, function0, (KeyboardActionScope) obj2);
                    }
                };
                $composer3.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer3);
            $composer2 = $composer3;
            Modifier modifier5 = modifier4;
            BasicTextFieldKt.BasicTextField(text, function1, modifierM819paddingVpY3zN4, false, false, textStyle, keyboardOptions, new KeyboardActions(null, null, null, null, null, (Function1) objRememberedValue, 31, null), false, 4, 0, (VisualTransformation) null, (Function1<? super TextLayoutResult, Unit>) null, (MutableInteractionSource) null, (Brush) solidColor, (Function3<? super Function2<? super Composer, ? super Integer, Unit>, ? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(-11619525, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatInputBarKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj2, Object obj3, Object obj4) {
                    return ChatInputBarKt.PillTextField$lambda$14(text, (Function2) obj2, (Composer) obj3, ((Integer) obj4).intValue());
                }
            }, $composer3, 54), $composer2, 806879232 | ($dirty & 14) | ($dirty & 112), ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 15640);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier5;
        } else {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
            modifier3 = modifier2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatInputBarKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    return ChatInputBarKt.PillTextField$lambda$15(text, function1, function0, modifier3, $changed, i, (Composer) obj2, ((Integer) obj3).intValue());
                }
            });
        }
    }

    static final Unit PillTextField$lambda$13$lambda$12(String $text, Function0 $onSend, KeyboardActionScope KeyboardActions) {
        Intrinsics.checkNotNullParameter(KeyboardActions, "$this$KeyboardActions");
        if (!StringsKt.isBlank($text)) {
            $onSend.invoke();
        }
        return Unit.INSTANCE;
    }

    static final Unit PillTextField$lambda$14(String $text, Function2 innerTextField, Composer $composer, int $changed) {
        int $dirty;
        Composer composer = $composer;
        Intrinsics.checkNotNullParameter(innerTextField, "innerTextField");
        ComposerKt.sourceInformation(composer, "CN(innerTextField)211@8709L16:ChatInputBar.kt#5xjsc0");
        int $dirty2 = $changed;
        if (($changed & 6) == 0) {
            $dirty2 |= composer.changedInstance(innerTextField) ? 4 : 2;
        }
        if (composer.shouldExecute(($dirty2 & 19) != 18, $dirty2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-11619525, $dirty2, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.PillTextField.<anonymous> (ChatInputBar.kt:204)");
            }
            if (StringsKt.isBlank($text)) {
                composer.startReplaceGroup(1735141502);
                ComposerKt.sourceInformation(composer, "207@8552L10,208@8617L11,205@8449L233");
                TextStyle bodyMedium = MaterialTheme.INSTANCE.getTypography(composer, MaterialTheme.$stable).getBodyMedium();
                long onSurfaceVariant = MaterialTheme.INSTANCE.getColorScheme(composer, MaterialTheme.$stable).getOnSurfaceVariant();
                $dirty = $dirty2;
                TextKt.m2976Text4IGK_g("Escribe un mensaje…", (Modifier) null, Color.m4695copywmQWz5c(onSurfaceVariant, (14 & 1) != 0 ? Color.m4699getAlphaimpl(onSurfaceVariant) : 0.6f, (14 & 2) != 0 ? Color.m4703getRedimpl(onSurfaceVariant) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(onSurfaceVariant) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(onSurfaceVariant) : 0.0f), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, bodyMedium, $composer, 6, 0, 65530);
                composer = $composer;
            } else {
                $dirty = $dirty2;
                composer.startReplaceGroup(1726768743);
            }
            composer.endReplaceGroup();
            innerTextField.invoke(composer, Integer.valueOf($dirty & 14));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    private static final void RecordingBar(final int recordingSeconds, final Function0<Unit> function0, Composer $composer, final int $changed) {
        Composer $composer2 = $composer.startRestartGroup(1701486762);
        ComposerKt.sourceInformation($composer2, "C(RecordingBar)N(recordingSeconds,onStopClick)221@8871L43,222@8956L239,233@9240L6,236@9347L11,238@9446L1407,232@9201L1652:ChatInputBar.kt#5xjsc0");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changed(recordingSeconds) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer2.changedInstance(function0) ? 32 : 16;
        }
        int $dirty2 = $dirty;
        if ($composer2.shouldExecute(($dirty2 & 19) != 18, $dirty2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1701486762, $dirty2, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.RecordingBar (ChatInputBar.kt:220)");
            }
            InfiniteTransition infiniteTransition = InfiniteTransitionKt.rememberInfiniteTransition("pulse", $composer2, 6, 0);
            final State<Float> stateAnimateFloat = InfiniteTransitionKt.animateFloat(infiniteTransition, 0.4f, 1.0f, AnimationSpecKt.m172infiniteRepeatable9IiC70o$default(AnimationSpecKt.tween$default(LogSeverity.EMERGENCY_VALUE, 0, null, 6, null), RepeatMode.Reverse, 0L, 4, null), "pulse_alpha", $composer2, InfiniteTransition.$stable | 25008 | (InfiniteRepeatableSpec.$stable << 9), 0);
            SurfaceKt.m2826SurfaceT9BRK9s(PaddingKt.m819paddingVpY3zN4(Modifier.INSTANCE, Dp.m7505constructorimpl(8), Dp.m7505constructorimpl(4)), MaterialTheme.INSTANCE.getShapes($composer2, MaterialTheme.$stable).getLarge(), MaterialTheme.INSTANCE.getColorScheme($composer2, MaterialTheme.$stable).getSurface(), 0L, Dp.m7505constructorimpl(2), Dp.m7505constructorimpl(4), null, ComposableLambdaKt.rememberComposableLambda(1185969199, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatInputBarKt$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ChatInputBarKt.RecordingBar$lambda$18(recordingSeconds, function0, stateAnimateFloat, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer2, 54), $composer2, 12804102, 72);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatInputBarKt$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ChatInputBarKt.RecordingBar$lambda$19(recordingSeconds, function0, $changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    private static final float RecordingBar$lambda$16(State<Float> state) {
        return ((Number) state.getValue()).floatValue();
    }

    static final Unit RecordingBar$lambda$18(int $recordingSeconds, Function0 $onStopClick, State $pulseAlpha$delegate, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        ComposerKt.sourceInformation($composer, "C239@9456L1391:ChatInputBar.kt#5xjsc0");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1185969199, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.RecordingBar.<anonymous> (ChatInputBar.kt:239)");
            }
            Modifier modifierM819paddingVpY3zN4 = PaddingKt.m819paddingVpY3zN4(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(12), Dp.m7505constructorimpl(8));
            Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
            ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, $composer, ((390 >> 3) & 14) | ((390 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifierM819paddingVpY3zN4);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((390 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
            if (!($composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            $composer.startReusableNode();
            if ($composer.getInserting()) {
                function0 = constructor;
                $composer.createNode(function0);
            } else {
                function0 = constructor;
                $composer.useNode();
            }
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyRowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = (i >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            int i3 = ((390 >> 6) & 112) | 6;
            RowScope rowScope = RowScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart($composer, -822092286, "C249@9830L11,245@9671L216,251@9900L40,254@10054L10,255@10116L11,252@9953L198,257@10164L38,260@10313L11,258@10215L622:ChatInputBar.kt#5xjsc0");
            Modifier modifierClip = ClipKt.clip(SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(10)), RoundedCornerShapeKt.getCircleShape());
            long error = MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable).getError();
            BoxKt.Box(BackgroundKt.m264backgroundbw27NRU$default(modifierClip, Color.m4695copywmQWz5c(error, (14 & 1) != 0 ? Color.m4699getAlphaimpl(error) : RecordingBar$lambda$16($pulseAlpha$delegate), (14 & 2) != 0 ? Color.m4703getRedimpl(error) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(error) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(error) : 0.0f), null, 2, null), $composer, 0);
            SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(12)), $composer, 6);
            TextKt.m2976Text4IGK_g(ChatUiModelKt.formatDuration($recordingSeconds), (Modifier) null, MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable).getOnSurface(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getTitleMedium(), $composer, 0, 0, 65530);
            SpacerKt.Spacer(RowScope.weight$default(rowScope, Modifier.INSTANCE, 1.0f, false, 2, null), $composer, 0);
            RoundedCornerShape roundedCornerShapeM1126RoundedCornerShape0680j_4 = RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(16));
            long error2 = MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable).getError();
            SurfaceKt.m2829Surfaceo_FOJdg($onStopClick, SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(40)), false, roundedCornerShapeM1126RoundedCornerShape0680j_4, Color.m4695copywmQWz5c(error2, (14 & 1) != 0 ? Color.m4699getAlphaimpl(error2) : 0.12f, (14 & 2) != 0 ? Color.m4703getRedimpl(error2) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(error2) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(error2) : 0.0f), 0L, 0.0f, 0.0f, null, null, ComposableSingletons$ChatInputBarKt.INSTANCE.getLambda$686590238$app(), $composer, 48, 6, 996);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            $composer.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerEnd($composer);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }
}
