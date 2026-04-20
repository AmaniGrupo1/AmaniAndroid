package org.ies.tierno.applicationamani.presentation.ui.screen.chat;

import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.PauseKt;
import androidx.compose.material.icons.filled.PlayArrowKt;
import androidx.compose.material.icons.filled.RefreshKt;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.ProgressIndicatorKt;
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
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Dp;
import androidx.core.app.NotificationCompat;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.extractor.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import org.ies.tierno.applicationamani.domain.models.Message;
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.AudioPlaybackStatus;
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.AudioPlaybackUiState;

/* JADX INFO: compiled from: AudioBubble.kt */
/* JADX INFO: loaded from: classes8.dex */
@Metadata(d1 = {"\u0000<\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a?\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0018\u0010\b\u001a\u0014\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00010\tH\u0007¢\u0006\u0002\u0010\u000b\u001a1\u0010\f\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u0013H\u0003¢\u0006\u0004\b\u0014\u0010\u0015¨\u0006\u0016²\u0006\n\u0010\u0017\u001a\u00020\u000eX\u008a\u0084\u0002"}, d2 = {"AudioBubble", "", "message", "Lorg/ies/tierno/applicationamani/domain/models/Message;", "isOwn", "", "audioUiState", "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;", "onPlayPause", "Lkotlin/Function2;", "", "(Lorg/ies/tierno/applicationamani/domain/models/Message;ZLorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "RoundedAudioProgressBar", NotificationCompat.CATEGORY_PROGRESS, "", TtmlNode.ATTR_TTS_COLOR, "Landroidx/compose/ui/graphics/Color;", "trackColor", "modifier", "Landroidx/compose/ui/Modifier;", "RoundedAudioProgressBar-eopBjH0", "(FJJLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V", "app", "animatedProgress"}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class AudioBubbleKt {
    static final Unit AudioBubble$lambda$5(Message message, boolean z, AudioPlaybackUiState audioPlaybackUiState, Function2 function2, int i, Composer composer, int i2) {
        AudioBubble(message, z, audioPlaybackUiState, function2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    static final Unit RoundedAudioProgressBar_eopBjH0$lambda$8(float f, long j, long j2, Modifier modifier, int i, int i2, Composer composer, int i3) {
        m10429RoundedAudioProgressBareopBjH0(f, j, j2, modifier, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    public static final void AudioBubble(final Message message, final boolean isOwn, final AudioPlaybackUiState audioUiState, final Function2<? super String, ? super String, Unit> onPlayPause, Composer $composer, final int $changed) {
        long onSurfaceVariant;
        Function0<ComposeUiNode> function0;
        Composer composer;
        Composer composer2;
        Composer composer3;
        Composer composer4;
        RowScope rowScope;
        long j;
        float fCoerceIn;
        String duration;
        long j2;
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(audioUiState, "audioUiState");
        Intrinsics.checkNotNullParameter(onPlayPause, "onPlayPause");
        Composer $composer2 = $composer.startRestartGroup(138937453);
        ComposerKt.sourceInformation($composer2, "C(AudioBubble)N(message,isOwn,audioUiState,onPlayPause)53@2362L3110:AudioBubble.kt#5xjsc0");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changedInstance(message) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer2.changed(isOwn) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty |= $composer2.changed(audioUiState) ? 256 : 128;
        }
        if (($changed & 3072) == 0) {
            $dirty |= $composer2.changedInstance(onPlayPause) ? 2048 : 1024;
        }
        int $dirty2 = $dirty;
        if (!$composer2.shouldExecute(($dirty2 & 1171) != 1170, $dirty2 & 1)) {
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(138937453, $dirty2, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.AudioBubble (AudioBubble.kt:42)");
            }
            boolean isCurrentMessage = Intrinsics.areEqual(audioUiState.getActiveMessageId(), message.getId());
            final boolean isPlaying = isCurrentMessage && audioUiState.getStatus() == AudioPlaybackStatus.PLAYING;
            boolean isLoading = isCurrentMessage && audioUiState.getStatus() == AudioPlaybackStatus.LOADING;
            final boolean isError = isCurrentMessage && audioUiState.getStatus() == AudioPlaybackStatus.ERROR;
            if (isOwn) {
                $composer2.startReplaceGroup(374924255);
                ComposerKt.sourceInformation($composer2, "49@2266L11");
                onSurfaceVariant = MaterialTheme.INSTANCE.getColorScheme($composer2, MaterialTheme.$stable).getOnPrimaryContainer();
                $composer2.endReplaceGroup();
            } else {
                $composer2.startReplaceGroup(374926237);
                ComposerKt.sourceInformation($composer2, "51@2328L11");
                onSurfaceVariant = MaterialTheme.INSTANCE.getColorScheme($composer2, MaterialTheme.$stable).getOnSurfaceVariant();
                $composer2.endReplaceGroup();
            }
            final long contentColor = onSurfaceVariant;
            Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
            Modifier modifierM820paddingVpY3zN4$default = PaddingKt.m820paddingVpY3zN4$default(Modifier.INSTANCE, 0.0f, Dp.m7505constructorimpl(4), 1, null);
            ComposerKt.sourceInformationMarkerStart($composer2, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, $composer2, ((390 >> 3) & 14) | ((390 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer2, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer2, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer2.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer2, modifierM820paddingVpY3zN4$default);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((390 << 3) & 112) << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer2, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
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
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer2);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyRowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = (i >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer2, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            int i3 = ((390 >> 6) & 112) | 6;
            RowScope rowScope2 = RowScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart($composer2, -411780236, "C86@3607L39,116@4764L39,131@5351L10,129@5282L184:AudioBubble.kt#5xjsc0");
            if (!isLoading) {
                $composer2.startReplaceGroup(-411639249);
                ComposerKt.sourceInformation($composer2, "68@2879L708,64@2713L874");
                composer = $composer2;
                composer2 = $composer2;
                composer3 = $composer2;
                SurfaceKt.m2826SurfaceT9BRK9s(SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(36)), RoundedCornerShapeKt.getCircleShape(), Color.m4695copywmQWz5c(contentColor, (14 & 1) != 0 ? Color.m4699getAlphaimpl(contentColor) : 0.15f, (14 & 2) != 0 ? Color.m4703getRedimpl(contentColor) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(contentColor) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(contentColor) : 0.0f), 0L, 0.0f, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(-1074893808, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.AudioBubbleKt$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return AudioBubbleKt.AudioBubble$lambda$4$lambda$3(message, onPlayPause, isPlaying, isError, contentColor, (Composer) obj, ((Integer) obj2).intValue());
                    }
                }, $composer2, 54), $composer2, 12582918, 120);
                composer4 = $composer2;
                composer4.endReplaceGroup();
            } else {
                $composer2.startReplaceGroup(-411851785);
                ComposerKt.sourceInformation($composer2, "58@2521L162");
                ProgressIndicatorKt.m2650CircularProgressIndicatorLxG7B9w(SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(32)), contentColor, Dp.m7505constructorimpl(2), 0L, 0, $composer2, 390, 24);
                contentColor = contentColor;
                composer4 = $composer2;
                composer4.endReplaceGroup();
                composer = $composer2;
                composer2 = $composer2;
                composer3 = $composer2;
            }
            SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(8)), composer4, 6);
            if (!isError || audioUiState.getErrorMessage() == null) {
                rowScope = rowScope2;
                j = 0;
                composer4.startReplaceGroup(-410101339);
                ComposerKt.sourceInformation(composer4, "103@4276L468");
                if (isCurrentMessage && audioUiState.getDurationMs() > 0) {
                    fCoerceIn = RangesKt.coerceIn(audioUiState.getPositionMs() / audioUiState.getDurationMs(), 0.0f, 1.0f);
                } else {
                    fCoerceIn = 0.0f;
                }
                long contentColor2 = contentColor;
                m10429RoundedAudioProgressBareopBjH0(fCoerceIn, contentColor2, Color.m4695copywmQWz5c(contentColor, (14 & 1) != 0 ? Color.m4699getAlphaimpl(contentColor) : 0.2f, (14 & 2) != 0 ? Color.m4703getRedimpl(contentColor) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(contentColor) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(contentColor) : 0.0f), RowScope.weight$default(rowScope, Modifier.INSTANCE, 1.0f, false, 2, null), composer4, 0, 0);
                contentColor = contentColor2;
                composer4.endReplaceGroup();
            } else {
                composer4.startReplaceGroup(-410651093);
                ComposerKt.sourceInformation(composer4, "92@3867L11,89@3720L227,95@3960L39,98@4106L10,99@4167L11,96@4012L234");
                j = 0;
                IconKt.m2433Iconww6aTOc(RefreshKt.getRefresh(Icons.INSTANCE.getDefault()), "Reintentar", SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(20)), MaterialTheme.INSTANCE.getColorScheme(composer4, MaterialTheme.$stable).getError(), composer4, 432, 0);
                SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(4)), composer4, 6);
                String errorMessage = audioUiState.getErrorMessage();
                TextStyle labelSmall = MaterialTheme.INSTANCE.getTypography(composer4, MaterialTheme.$stable).getLabelSmall();
                long error = MaterialTheme.INSTANCE.getColorScheme(composer4, MaterialTheme.$stable).getError();
                Modifier modifierWeight$default = RowScope.weight$default(rowScope2, Modifier.INSTANCE, 1.0f, false, 2, null);
                rowScope = rowScope2;
                TextKt.m2976Text4IGK_g(errorMessage, modifierWeight$default, error, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, labelSmall, composer4, 0, 0, 65528);
                composer4.endReplaceGroup();
            }
            SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(8)), composer4, 6);
            if (isCurrentMessage && audioUiState.getStatus() != AudioPlaybackStatus.IDLE) {
                long j3 = 1000;
                int positionMs = (int) (audioUiState.getPositionMs() / j3);
                if (audioUiState.getDurationMs() > j) {
                    duration = ChatUiModelKt.formatDuration(positionMs) + " / " + ChatUiModelKt.formatDuration((int) (audioUiState.getDurationMs() / j3));
                } else {
                    duration = ChatUiModelKt.formatDuration(positionMs);
                }
            } else {
                duration = ChatUiModelKt.formatDuration(0);
            }
            TextStyle labelSmall2 = MaterialTheme.INSTANCE.getTypography(composer4, MaterialTheme.$stable).getLabelSmall();
            if (isError) {
                composer4.startReplaceGroup(540997238);
                ComposerKt.sourceInformation(composer4, "132@5421L11");
                long error2 = MaterialTheme.INSTANCE.getColorScheme(composer4, MaterialTheme.$stable).getError();
                composer4.endReplaceGroup();
                j2 = error2;
            } else {
                composer4.startReplaceGroup(540997597);
                composer4.endReplaceGroup();
                j2 = contentColor;
            }
            TextKt.m2976Text4IGK_g(duration, (Modifier) null, j2, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, labelSmall2, composer4, 0, 0, 65530);
            ComposerKt.sourceInformationMarkerEnd(composer4);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            $composer2.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd(composer3);
            ComposerKt.sourceInformationMarkerEnd(composer);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.AudioBubbleKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return AudioBubbleKt.AudioBubble$lambda$5(message, isOwn, audioUiState, onPlayPause, $changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    static final Unit AudioBubble$lambda$4$lambda$3(final Message $message, final Function2 $onPlayPause, final boolean $isPlaying, final boolean $isError, final long $contentColor, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C70@2939L153,75@3164L409,69@2897L676:AudioBubble.kt#5xjsc0");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1074893808, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.AudioBubble.<anonymous>.<anonymous> (AudioBubble.kt:69)");
            }
            ComposerKt.sourceInformationMarkerStart($composer, 2114170921, "CC(remember):AudioBubble.kt#9igjgp");
            boolean zChangedInstance = $composer.changedInstance($message) | $composer.changed($onPlayPause);
            Object objRememberedValue = $composer.rememberedValue();
            if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.AudioBubbleKt$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return AudioBubbleKt.AudioBubble$lambda$4$lambda$3$lambda$1$lambda$0($message, $onPlayPause);
                    }
                };
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            IconButtonKt.IconButton((Function0) objRememberedValue, SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(36)), false, null, null, ComposableLambdaKt.rememberComposableLambda(435448787, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.AudioBubbleKt$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    return AudioBubbleKt.AudioBubble$lambda$4$lambda$3$lambda$2($isPlaying, $isError, $contentColor, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer, 54), $composer, 196656, 28);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit AudioBubble$lambda$4$lambda$3$lambda$1$lambda$0(Message $message, Function2 $onPlayPause) {
        String url = $message.getAttachmentUrl();
        if (url == null) {
            return Unit.INSTANCE;
        }
        $onPlayPause.invoke($message.getId(), url);
        return Unit.INSTANCE;
    }

    static final Unit AudioBubble$lambda$4$lambda$3$lambda$2(boolean $isPlaying, boolean $isError, long $contentColor, Composer $composer, int $changed) {
        long j;
        ComposerKt.sourceInformation($composer, "C76@3186L369:AudioBubble.kt#5xjsc0");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(435448787, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.AudioBubble.<anonymous>.<anonymous>.<anonymous> (AudioBubble.kt:76)");
            }
            Icons.Filled filled = Icons.INSTANCE.getDefault();
            ImageVector pause = $isPlaying ? PauseKt.getPause(filled) : PlayArrowKt.getPlayArrow(filled);
            String str = $isPlaying ? "Pausar" : "Reproducir";
            if ($isError) {
                $composer.startReplaceGroup(1854465848);
                ComposerKt.sourceInformation($composer, "79@3441L11");
                long error = MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable).getError();
                $composer.endReplaceGroup();
                j = error;
            } else {
                $composer.startReplaceGroup(1854466207);
                $composer.endReplaceGroup();
                j = $contentColor;
            }
            IconKt.m2433Iconww6aTOc(pause, str, SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(20)), j, $composer, RendererCapabilities.DECODER_SUPPORT_MASK, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: RoundedAudioProgressBar-eopBjH0, reason: not valid java name */
    private static final void m10429RoundedAudioProgressBareopBjH0(final float progress, final long color, final long trackColor, Modifier modifier, Composer $composer, final int $changed, final int i) {
        long j;
        Modifier modifier2;
        final Modifier modifier3;
        Modifier.Companion modifier4;
        Function0<ComposeUiNode> function0;
        Composer composer;
        Composer composer2;
        Composer $composer2 = $composer.startRestartGroup(319879794);
        ComposerKt.sourceInformation($composer2, "C(RoundedAudioProgressBar)N(progress,color:c#ui.graphics.Color,trackColor:c#ui.graphics.Color,modifier)144@5653L161,150@5820L569:AudioBubble.kt#5xjsc0");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changed(progress) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer2.changed(color) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            j = trackColor;
            $dirty |= $composer2.changed(j) ? 256 : 128;
        } else {
            j = trackColor;
        }
        int i2 = i & 8;
        if (i2 != 0) {
            $dirty |= 3072;
            modifier2 = modifier;
        } else if (($changed & 3072) == 0) {
            modifier2 = modifier;
            $dirty |= $composer2.changed(modifier2) ? 2048 : 1024;
        } else {
            modifier2 = modifier;
        }
        if ($composer2.shouldExecute(($dirty & 1171) != 1170, $dirty & 1)) {
            if (i2 != 0) {
                modifier4 = Modifier.INSTANCE;
            } else {
                modifier4 = modifier2;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(319879794, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.RoundedAudioProgressBar (AudioBubble.kt:143)");
            }
            Modifier modifier5 = modifier4;
            State<Float> stateAnimateFloatAsState = AnimateAsStateKt.animateFloatAsState(RangesKt.coerceIn(progress, 0.0f, 1.0f), AnimationSpecKt.tween$default(200, 0, null, 6, null), 0.0f, "audio_progress", null, $composer2, 3120, 20);
            Modifier modifierM264backgroundbw27NRU$default = BackgroundKt.m264backgroundbw27NRU$default(ClipKt.clip(SizeKt.m850height3ABfNKs(modifier5, Dp.m7505constructorimpl(6)), RoundedCornerShapeKt.m1126RoundedCornerShape0680j_4(Dp.m7505constructorimpl(3))), j, null, 2, null);
            Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
            ComposerKt.sourceInformationMarkerStart($composer2, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, $composer2, ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 112));
            int i3 = (RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 112;
            ComposerKt.sourceInformationMarkerStart($composer2, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer2, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer2.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer2, modifierM264backgroundbw27NRU$default);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i4 = ((i3 << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart($composer2, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
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
            Composer composerM3967constructorimpl = Updater.m3967constructorimpl($composer2);
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyRowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i5 = (i4 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer2, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            RowScope rowScope = RowScopeInstance.INSTANCE;
            int i6 = ((RendererCapabilities.DECODER_SUPPORT_MASK >> 6) & 112) | 6;
            RowScope rowScope2 = rowScope;
            ComposerKt.sourceInformationMarkerStart($composer2, -1140528691, "C:AudioBubble.kt#5xjsc0");
            if (RoundedAudioProgressBar_eopBjH0$lambda$6(stateAnimateFloatAsState) > 0.001f) {
                $composer2.startReplaceGroup(-1140502652);
                ComposerKt.sourceInformation($composer2, "158@6076L176");
                composer = $composer2;
                composer2 = $composer2;
                BoxKt.Box(BackgroundKt.m264backgroundbw27NRU$default(RowScope.weight$default(rowScope2, SizeKt.fillMaxHeight$default(Modifier.INSTANCE, 0.0f, 1, null), RoundedAudioProgressBar_eopBjH0$lambda$6(stateAnimateFloatAsState), false, 2, null), color, null, 2, null), $composer2, 0);
            } else {
                composer = $composer2;
                composer2 = $composer2;
                $composer2.startReplaceGroup(-1146523348);
            }
            $composer2.endReplaceGroup();
            if (RoundedAudioProgressBar_eopBjH0$lambda$6(stateAnimateFloatAsState) < 0.999f) {
                $composer2.startReplaceGroup(-1140268261);
                ComposerKt.sourceInformation($composer2, "166@6316L57");
                SpacerKt.Spacer(RowScope.weight$default(rowScope2, Modifier.INSTANCE, 1.0f - RoundedAudioProgressBar_eopBjH0$lambda$6(stateAnimateFloatAsState), false, 2, null), $composer2, 0);
            } else {
                $composer2.startReplaceGroup(-1146523348);
            }
            $composer2.endReplaceGroup();
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            composer.endNode();
            ComposerKt.sourceInformationMarkerEnd(composer);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier3 = modifier5;
        } else {
            $composer2.skipToGroupEnd();
            modifier3 = modifier2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.AudioBubbleKt$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return AudioBubbleKt.RoundedAudioProgressBar_eopBjH0$lambda$8(progress, color, trackColor, modifier3, $changed, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    private static final float RoundedAudioProgressBar_eopBjH0$lambda$6(State<Float> state) {
        return ((Number) state.getValue()).floatValue();
    }
}
