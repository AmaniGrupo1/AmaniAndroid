package org.ies.tierno.applicationamani.presentation.ui.screen.chat;

import android.content.res.Configuration;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.foundation.text.InlineTextContent;
import androidx.compose.foundation.text.InlineTextContentKt;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.CheckKt;
import androidx.compose.material.icons.filled.DoneAllKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.SurfaceKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.Placeholder;
import androidx.compose.ui.text.PlaceholderVerticalAlign;
import androidx.compose.ui.text.PlatformSpanStyle;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.core.location.LocationRequestCompat;
import androidx.media3.exoplayer.RendererCapabilities;
import coil.compose.SingletonAsyncImageKt;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.ies.tierno.applicationamani.domain.models.AttachmentType;
import org.ies.tierno.applicationamani.domain.models.Message;
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.AudioPlaybackUiState;
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.PsychologistInfo;

/* JADX INFO: compiled from: MessageBubble.kt */
/* JADX INFO: loaded from: classes8.dex */
@Metadata(d1 = {"\u0000H\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\u001aY\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\f2\u0018\u0010\r\u001a\u0014\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00010\u000eH\u0007¢\u0006\u0002\u0010\u000f\u001a\u001d\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0005H\u0003¢\u0006\u0002\u0010\u0012\u001a \u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u001a!\u0010\u0015\u001a\u00020\u00012\b\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0016\u001a\u00020\u0017H\u0007¢\u0006\u0004\b\u0018\u0010\u0019\u001a+\u0010\u001a\u001a\u00020\u00012\u0006\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u00052\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0007¢\u0006\u0004\b\u001f\u0010 ¨\u0006!"}, d2 = {"MessageBubble", "", "message", "Lorg/ies/tierno/applicationamani/domain/models/Message;", "isFirstInGroup", "", "isLastInGroup", "currentUserId", "", "psychologistInfo", "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;", "audioUiState", "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;", "onPlayPause", "Lkotlin/Function2;", "(Lorg/ies/tierno/applicationamani/domain/models/Message;ZZLjava/lang/String;Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "MessageWithTimestamp", "isOwn", "(Lorg/ies/tierno/applicationamani/domain/models/Message;ZLandroidx/compose/runtime/Composer;I)V", "messageBubbleShape", "Landroidx/compose/foundation/shape/RoundedCornerShape;", "PsychologistAvatar", "size", "Landroidx/compose/ui/unit/Dp;", "PsychologistAvatar-ziNgDLE", "(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;FLandroidx/compose/runtime/Composer;I)V", "StatusIcon", "isRead", "isDelivered", "tint", "Landroidx/compose/ui/graphics/Color;", "StatusIcon-gKt5lHk", "(ZZLandroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;II)V", "app"}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class MessageBubbleKt {

    /* JADX INFO: compiled from: MessageBubble.kt */
    @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AttachmentType.values().length];
            try {
                iArr[AttachmentType.AUDIO.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static final Unit MessageBubble$lambda$3(Message message, boolean z, boolean z2, String str, PsychologistInfo psychologistInfo, AudioPlaybackUiState audioPlaybackUiState, Function2 function2, int i, Composer composer, int i2) {
        MessageBubble(message, z, z2, str, psychologistInfo, audioPlaybackUiState, function2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    static final Unit MessageWithTimestamp$lambda$9(Message message, boolean z, int i, Composer composer, int i2) {
        MessageWithTimestamp(message, z, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    static final Unit PsychologistAvatar_ziNgDLE$lambda$12(PsychologistInfo psychologistInfo, float f, int i, Composer composer, int i2) {
        m10432PsychologistAvatarziNgDLE(psychologistInfo, f, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    static final Unit StatusIcon_gKt5lHk$lambda$13(boolean z, boolean z2, Color color, int i, int i2, Composer composer, int i3) {
        m10433StatusIcongKt5lHk(z, z2, color, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    public static final void MessageBubble(final Message message, final boolean isFirstInGroup, final boolean isLastInGroup, final String currentUserId, final PsychologistInfo psychologistInfo, final AudioPlaybackUiState audioUiState, final Function2<? super String, ? super String, Unit> onPlayPause, Composer $composer, final int $changed) {
        Composer $composer2;
        Function0<ComposeUiNode> function0;
        long j;
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(currentUserId, "currentUserId");
        Intrinsics.checkNotNullParameter(audioUiState, "audioUiState");
        Intrinsics.checkNotNullParameter(onPlayPause, "onPlayPause");
        Composer $composer3 = $composer.startRestartGroup(-375128096);
        ComposerKt.sourceInformation($composer3, "C(MessageBubble)N(message,isFirstInGroup,isLastInGroup,currentUserId,psychologistInfo,audioUiState,onPlayPause)54@2396L7,58@2482L1829:MessageBubble.kt#5xjsc0");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer3.changedInstance(message) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer3.changed(isFirstInGroup) ? 32 : 16;
        }
        if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            $dirty |= $composer3.changed(isLastInGroup) ? 256 : 128;
        }
        if (($changed & 3072) == 0) {
            $dirty |= $composer3.changed(currentUserId) ? 2048 : 1024;
        }
        if (($changed & 24576) == 0) {
            $dirty |= $composer3.changed(psychologistInfo) ? 16384 : 8192;
        }
        if ((196608 & $changed) == 0) {
            $dirty |= $composer3.changed(audioUiState) ? 131072 : 65536;
        }
        if ((1572864 & $changed) == 0) {
            $dirty |= $composer3.changedInstance(onPlayPause) ? 1048576 : 524288;
        }
        if ($composer3.shouldExecute((599187 & $dirty) != 599186, $dirty & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-375128096, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.MessageBubble (MessageBubble.kt:52)");
            }
            final boolean isOwn = Intrinsics.areEqual(message.getSenderId(), currentUserId);
            ProvidableCompositionLocal<Configuration> localConfiguration = AndroidCompositionLocals_androidKt.getLocalConfiguration();
            ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume = $composer3.consume(localConfiguration);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            int screenWidth = ((Configuration) objConsume).screenWidthDp;
            float bottomPadding = isLastInGroup ? Dp.m7505constructorimpl(8) : Dp.m7505constructorimpl(2);
            Modifier modifierM822paddingqDBjuR0$default = PaddingKt.m822paddingqDBjuR0$default(PaddingKt.m819paddingVpY3zN4(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), Dp.m7505constructorimpl(8), Dp.m7505constructorimpl(0)), 0.0f, 0.0f, 0.0f, bottomPadding, 7, null);
            Arrangement arrangement = Arrangement.INSTANCE;
            Arrangement.Horizontal end = isOwn ? arrangement.getEnd() : arrangement.getStart();
            Alignment.Vertical bottom = Alignment.INSTANCE.getBottom();
            ComposerKt.sourceInformationMarkerStart($composer3, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(end, bottom, $composer3, ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 14) | ((RendererCapabilities.DECODER_SUPPORT_MASK >> 3) & 112));
            int i = (RendererCapabilities.DECODER_SUPPORT_MASK << 3) & 112;
            $composer2 = $composer3;
            ComposerKt.sourceInformationMarkerStart($composer3, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer3, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer3.getCurrentCompositionLocalMap();
            int $dirty2 = $dirty;
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer3, modifierM822paddingqDBjuR0$default);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i2 = ((i << 6) & 896) | 6;
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
            int i3 = (i2 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer3, 1456264949, "C101@5233L9:Row.kt#2w3rfo");
            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
            int i4 = ((RendererCapabilities.DECODER_SUPPORT_MASK >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, -90204044, "C83@3480L825,75@3090L1215:MessageBubble.kt#5xjsc0");
            if (isOwn) {
                $composer3.startReplaceGroup(-93019682);
            } else {
                $composer3.startReplaceGroup(-90230488);
                ComposerKt.sourceInformation($composer3, "");
                if (isLastInGroup) {
                    $composer3.startReplaceGroup(-90201503);
                    ComposerKt.sourceInformation($composer3, "68@2853L69,69@2939L39");
                    m10432PsychologistAvatarziNgDLE(psychologistInfo, Dp.m7505constructorimpl(32), $composer3, (($dirty2 >> 12) & 14) | 48);
                    SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(6)), $composer3, 6);
                    $composer3.endReplaceGroup();
                } else {
                    $composer3.startReplaceGroup(-90042442);
                    ComposerKt.sourceInformation($composer3, "71@3016L40");
                    SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(38)), $composer3, 6);
                    $composer3.endReplaceGroup();
                }
            }
            $composer3.endReplaceGroup();
            RoundedCornerShape roundedCornerShapeMessageBubbleShape = messageBubbleShape(isOwn, isFirstInGroup, isLastInGroup);
            if (isOwn) {
                $composer3.startReplaceGroup(-1111275244);
                ComposerKt.sourceInformation($composer3, "78@3238L11");
                long primaryContainer = MaterialTheme.INSTANCE.getColorScheme($composer3, MaterialTheme.$stable).getPrimaryContainer();
                $composer3.endReplaceGroup();
                j = primaryContainer;
            } else {
                $composer3.startReplaceGroup(-1111272814);
                ComposerKt.sourceInformation($composer3, "80@3314L11");
                long surfaceVariant = MaterialTheme.INSTANCE.getColorScheme($composer3, MaterialTheme.$stable).getSurfaceVariant();
                $composer3.endReplaceGroup();
                j = surfaceVariant;
            }
            SurfaceKt.m2826SurfaceT9BRK9s(SizeKt.m871widthInVpY3zN4$default(Modifier.INSTANCE, 0.0f, Dp.m7505constructorimpl(screenWidth * 0.78f), 1, null), roundedCornerShapeMessageBubbleShape, j, 0L, isOwn ? Dp.m7505constructorimpl(1) : Dp.m7505constructorimpl(0), 0.0f, null, ComposableLambdaKt.rememberComposableLambda(-1304604065, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.MessageBubbleKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return MessageBubbleKt.MessageBubble$lambda$2$lambda$1(message, isOwn, audioUiState, onPlayPause, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer3, 54), $composer3, 12582912, LocationRequestCompat.QUALITY_LOW_POWER);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            $composer3.endNode();
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.MessageBubbleKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return MessageBubbleKt.MessageBubble$lambda$3(message, isFirstInGroup, isLastInGroup, currentUserId, psychologistInfo, audioUiState, onPlayPause, $changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    static final Unit MessageBubble$lambda$2$lambda$1(Message $message, boolean $isOwn, AudioPlaybackUiState $audioUiState, Function2 $onPlayPause, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        ComposerKt.sourceInformation($composer, "C84@3494L801:MessageBubble.kt#5xjsc0");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1304604065, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.MessageBubble.<anonymous>.<anonymous> (MessageBubble.kt:84)");
            }
            Modifier modifierM819paddingVpY3zN4 = PaddingKt.m819paddingVpY3zN4(Modifier.INSTANCE, Dp.m7505constructorimpl(12), Dp.m7505constructorimpl(8));
            ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), $composer, ((6 >> 3) & 14) | ((6 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifierM819paddingVpY3zN4);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((6 << 3) & 112) << 6) & 896) | 6;
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
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = (i >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            int i3 = ((6 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, 107076546, "C:MessageBubble.kt#5xjsc0");
            AttachmentType attachmentType = $message.getAttachmentType();
            if ((attachmentType == null ? -1 : WhenMappings.$EnumSwitchMapping$0[attachmentType.ordinal()]) == 1) {
                $composer.startReplaceGroup(107139258);
                ComposerKt.sourceInformation($composer, "87@3687L239");
                AudioBubbleKt.AudioBubble($message, $isOwn, $audioUiState, $onPlayPause, $composer, 0);
                $composer.endReplaceGroup();
            } else {
                $composer.startReplaceGroup(107452699);
                ComposerKt.sourceInformation($composer, "");
                if (!StringsKt.isBlank($message.getContent())) {
                    $composer.startReplaceGroup(107509677);
                    ComposerKt.sourceInformation($composer, "96@4067L148");
                    MessageWithTimestamp($message, $isOwn, $composer, 0);
                } else {
                    $composer.startReplaceGroup(103497657);
                }
                $composer.endReplaceGroup();
                $composer.endReplaceGroup();
            }
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

    private static final void MessageWithTimestamp(final Message message, final boolean isOwn, Composer $composer, final int $changed) {
        Composer $composer2;
        long contentColor;
        final long timestampColor;
        AnnotatedString.Builder builder;
        int iPushStyle;
        Composer $composer3 = $composer.startRestartGroup(-1300465695);
        ComposerKt.sourceInformation($composer3, "C(MessageWithTimestamp)N(message,isOwn):MessageBubble.kt#5xjsc0");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer3.changedInstance(message) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer3.changed(isOwn) ? 32 : 16;
        }
        if (!$composer3.shouldExecute(($dirty & 19) != 18, $dirty & 1)) {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1300465695, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.MessageWithTimestamp (MessageBubble.kt:112)");
            }
            if (isOwn) {
                $composer3.startReplaceGroup(87955347);
                ComposerKt.sourceInformation($composer3, "114@4462L11");
                contentColor = MaterialTheme.INSTANCE.getColorScheme($composer3, MaterialTheme.$stable).getOnPrimaryContainer();
                $composer3.endReplaceGroup();
            } else {
                $composer3.startReplaceGroup(87957329);
                ComposerKt.sourceInformation($composer3, "116@4524L11");
                contentColor = MaterialTheme.INSTANCE.getColorScheme($composer3, MaterialTheme.$stable).getOnSurfaceVariant();
                $composer3.endReplaceGroup();
            }
            if (isOwn) {
                $composer3.startReplaceGroup(87960755);
                ComposerKt.sourceInformation($composer3, "119@4612L11");
                long onPrimaryContainer = MaterialTheme.INSTANCE.getColorScheme($composer3, MaterialTheme.$stable).getOnPrimaryContainer();
                timestampColor = Color.m4695copywmQWz5c(onPrimaryContainer, (14 & 1) != 0 ? Color.m4699getAlphaimpl(onPrimaryContainer) : 0.6f, (14 & 2) != 0 ? Color.m4703getRedimpl(onPrimaryContainer) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(onPrimaryContainer) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(onPrimaryContainer) : 0.0f);
                $composer3.endReplaceGroup();
            } else {
                $composer3.startReplaceGroup(87963283);
                ComposerKt.sourceInformation($composer3, "121@4693L11");
                long onSurfaceVariant = MaterialTheme.INSTANCE.getColorScheme($composer3, MaterialTheme.$stable).getOnSurfaceVariant();
                timestampColor = Color.m4695copywmQWz5c(onSurfaceVariant, (14 & 1) != 0 ? Color.m4699getAlphaimpl(onSurfaceVariant) : 0.6f, (14 & 2) != 0 ? Color.m4703getRedimpl(onSurfaceVariant) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(onSurfaceVariant) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(onSurfaceVariant) : 0.0f);
                $composer3.endReplaceGroup();
            }
            String timestampText = ChatUiModelKt.formatTimestamp(message.getTimestamp());
            if (isOwn) {
                $composer3.startReplaceGroup(-1567986233);
                ComposerKt.sourceInformation($composer3, "129@4990L125,144@5529L10,142@5455L182");
                Map inlineContent = MapsKt.mapOf(TuplesKt.to("statusIcon", new InlineTextContent(new Placeholder(TextUnitKt.getSp(14), TextUnitKt.getSp(14), PlaceholderVerticalAlign.INSTANCE.m6851getCenterJ6kI3mc(), null), ComposableLambdaKt.rememberComposableLambda(-1683322214, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.MessageBubbleKt$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                        return MessageBubbleKt.MessageWithTimestamp$lambda$4(message, timestampColor, (String) obj, (Composer) obj2, ((Integer) obj3).intValue());
                    }
                }, $composer3, 54))));
                builder = new AnnotatedString.Builder(0, 1, null);
                builder.append(message.getContent());
                builder.append("  ");
                iPushStyle = builder.pushStyle(new SpanStyle(timestampColor, TextUnitKt.getSp(11), (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 65532, (DefaultConstructorMarker) null));
                try {
                    builder.append(timestampText);
                    Unit unit = Unit.INSTANCE;
                    builder.pop(iPushStyle);
                    builder.append(" ");
                    InlineTextContentKt.appendInlineContent$default(builder, "statusIcon", null, 2, null);
                    AnnotatedString annotatedText = builder.toAnnotatedString();
                    $composer2 = $composer3;
                    TextKt.m2977TextIbK3jfQ(annotatedText, null, contentColor, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, inlineContent, null, MaterialTheme.INSTANCE.getTypography($composer3, MaterialTheme.$stable).getBodyMedium(), $composer2, 0, 0, 98298);
                    $composer2.endReplaceGroup();
                } catch (Throwable th) {
                    throw th;
                }
            } else {
                long contentColor2 = contentColor;
                $composer3.startReplaceGroup(-1567173909);
                ComposerKt.sourceInformation($composer3, "158@5984L10,156@5910L139");
                builder = new AnnotatedString.Builder(0, 1, null);
                builder.append(message.getContent());
                builder.append("  ");
                iPushStyle = builder.pushStyle(new SpanStyle(timestampColor, TextUnitKt.getSp(11), (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 65532, (DefaultConstructorMarker) null));
                try {
                    builder.append(timestampText);
                    Unit unit2 = Unit.INSTANCE;
                    builder.pop(iPushStyle);
                    AnnotatedString annotatedText2 = builder.toAnnotatedString();
                    $composer2 = $composer3;
                    TextKt.m2977TextIbK3jfQ(annotatedText2, null, contentColor2, 0L, null, null, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, MaterialTheme.INSTANCE.getTypography($composer3, MaterialTheme.$stable).getBodyMedium(), $composer2, 0, 0, 131066);
                    $composer2.endReplaceGroup();
                } finally {
                    builder.pop(iPushStyle);
                }
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.MessageBubbleKt$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return MessageBubbleKt.MessageWithTimestamp$lambda$9(message, isOwn, $changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    static final Unit MessageWithTimestamp$lambda$4(Message $message, long $timestampColor, String it, Composer $composer, int $changed) {
        Intrinsics.checkNotNullParameter(it, "it");
        ComposerKt.sourceInformation($composer, "CN(it)130@5008L93:MessageBubble.kt#5xjsc0");
        if (!$composer.shouldExecute(($changed & 17) != 16, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1683322214, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.MessageWithTimestamp.<anonymous> (MessageBubble.kt:130)");
            }
            m10433StatusIcongKt5lHk($message.isRead(), $message.isDelivered(), Color.m4687boximpl($timestampColor), $composer, 0, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    private static final RoundedCornerShape messageBubbleShape(boolean isOwn, boolean isFirstInGroup, boolean isLastInGroup) {
        float full = Dp.m7505constructorimpl(18);
        float reduced = Dp.m7505constructorimpl(6);
        float tail = Dp.m7505constructorimpl(4);
        if (isOwn) {
            return RoundedCornerShapeKt.m1127RoundedCornerShapea9UjIt4(isFirstInGroup ? full : reduced, isFirstInGroup ? full : reduced, isLastInGroup ? tail : reduced, full);
        }
        return RoundedCornerShapeKt.m1127RoundedCornerShapea9UjIt4(isLastInGroup ? tail : reduced, isLastInGroup ? full : reduced, full, isFirstInGroup ? full : reduced);
    }

    /* JADX INFO: renamed from: PsychologistAvatar-ziNgDLE, reason: not valid java name */
    public static final void m10432PsychologistAvatarziNgDLE(final PsychologistInfo psychologistInfo, final float size, Composer $composer, final int $changed) {
        String name;
        Character chFirstOrNull;
        Composer $composer2 = $composer.startRestartGroup(-1569964790);
        ComposerKt.sourceInformation($composer2, "C(PsychologistAvatar)N(psychologistInfo,size:c#ui.unit.Dp):MessageBubble.kt#5xjsc0");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changed(psychologistInfo) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer2.changed(size) ? 32 : 16;
        }
        if ($composer2.shouldExecute(($dirty & 19) != 18, $dirty & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1569964790, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.PsychologistAvatar (MessageBubble.kt:194)");
            }
            Modifier modifier = ClipKt.clip(SizeKt.m864size3ABfNKs(Modifier.INSTANCE, size), RoundedCornerShapeKt.getCircleShape());
            if ((psychologistInfo != null ? psychologistInfo.getAvatarUrl() : null) != null) {
                $composer2.startReplaceGroup(1373013598);
                ComposerKt.sourceInformation($composer2, "200@7032L170");
                SingletonAsyncImageKt.m8241AsyncImagegl8XCv8(psychologistInfo.getAvatarUrl(), "Foto de " + psychologistInfo.getName(), modifier, null, null, null, null, 0.0f, null, 0, false, null, $composer2, 0, 0, 4088);
                $composer2 = $composer2;
                $composer2.endReplaceGroup();
            } else {
                $composer2.startReplaceGroup(1373215439);
                ComposerKt.sourceInformation($composer2, "210@7417L11,211@7456L305,207@7308L453");
                final char initial = (psychologistInfo == null || (name = psychologistInfo.getName()) == null || (chFirstOrNull = StringsKt.firstOrNull(name)) == null) ? '?' : Character.toUpperCase(chFirstOrNull.charValue());
                SurfaceKt.m2826SurfaceT9BRK9s(modifier, RoundedCornerShapeKt.getCircleShape(), MaterialTheme.INSTANCE.getColorScheme($composer2, MaterialTheme.$stable).getPrimaryContainer(), 0L, 0.0f, 0.0f, null, ComposableLambdaKt.rememberComposableLambda(-765957303, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.MessageBubbleKt$$ExternalSyntheticLambda4
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return MessageBubbleKt.PsychologistAvatar_ziNgDLE$lambda$11(initial, (Composer) obj, ((Integer) obj2).intValue());
                    }
                }, $composer2, 54), $composer2, 12582912, 120);
                $composer2.endReplaceGroup();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer2.skipToGroupEnd();
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.MessageBubbleKt$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return MessageBubbleKt.PsychologistAvatar_ziNgDLE$lambda$12(psychologistInfo, size, $changed, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    static final Unit PsychologistAvatar_ziNgDLE$lambda$11(char $initial, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        ComposerKt.sourceInformation($composer, "C212@7470L281:MessageBubble.kt#5xjsc0");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-765957303, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.PsychologistAvatar.<anonymous> (MessageBubble.kt:212)");
            }
            Alignment center = Alignment.INSTANCE.getCenter();
            ComposerKt.sourceInformationMarkerStart($composer, 1042775818, "CC(Box)N(modifier,contentAlignment,propagateMinConstraints,content)71@3424L131:Box.kt#2w3rfo");
            Modifier modifier = Modifier.INSTANCE;
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(center, false);
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifier);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((48 << 3) & 112) << 6) & 896) | 6;
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
            Updater.m3975setimpl(composerM3967constructorimpl, measurePolicyMaybeCachedBoxMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3975setimpl(composerM3967constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Updater.m3971initimpl(composerM3967constructorimpl, Integer.valueOf(iHashCode), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
            Updater.m3973reconcileimpl(composerM3967constructorimpl, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
            Updater.m3975setimpl(composerM3967constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i2 = (i >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart($composer, 1833054614, "C72@3469L9:Box.kt#2w3rfo");
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            int i3 = ((48 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -1669662704, "C215@7624L10,216@7689L11,213@7529L208:MessageBubble.kt#5xjsc0");
            TextKt.m2976Text4IGK_g(String.valueOf($initial), (Modifier) null, MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable).getOnPrimaryContainer(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getLabelLarge(), $composer, 0, 0, 65530);
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

    /* JADX WARN: Removed duplicated region for block: B:56:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x013a  */
    /* JADX INFO: renamed from: StatusIcon-gKt5lHk, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void m10433StatusIcongKt5lHk(final boolean isRead, final boolean isDelivered, Color tint, Composer $composer, final int $changed, final int i) {
        Color color;
        final Color tint2;
        ImageVector icon;
        long color2;
        long primary;
        Composer $composer2 = $composer.startRestartGroup(-1104946489);
        ComposerKt.sourceInformation($composer2, "C(StatusIcon)N(isRead,isDelivered,tint:c#ui.graphics.Color)237@8261L200:MessageBubble.kt#5xjsc0");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer2.changed(isRead) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer2.changed(isDelivered) ? 32 : 16;
        }
        int i2 = i & 4;
        if (i2 != 0) {
            $dirty |= RendererCapabilities.DECODER_SUPPORT_MASK;
            color = tint;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            color = tint;
            $dirty |= $composer2.changed(color) ? 256 : 128;
        } else {
            color = tint;
        }
        int $dirty2 = $dirty;
        if (!$composer2.shouldExecute(($dirty2 & 147) != 146, $dirty2 & 1)) {
            $composer2.skipToGroupEnd();
            tint2 = color;
        } else {
            tint2 = i2 != 0 ? null : color;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1104946489, $dirty2, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.StatusIcon (MessageBubble.kt:224)");
            }
            if (isRead) {
                icon = DoneAllKt.getDoneAll(Icons.INSTANCE.getDefault());
            } else {
                icon = isDelivered ? CheckKt.getCheck(Icons.INSTANCE.getDefault()) : CheckKt.getCheck(Icons.INSTANCE.getDefault());
            }
            if (tint2 != null) {
                primary = tint2.m4707unboximpl();
            } else if (isRead) {
                $composer2.startReplaceGroup(-831225910);
                ComposerKt.sourceInformation($composer2, "231@8067L11");
                primary = MaterialTheme.INSTANCE.getColorScheme($composer2, MaterialTheme.$stable).getPrimary();
                $composer2.endReplaceGroup();
            } else {
                if (isDelivered) {
                    $composer2.startReplaceGroup(-831154207);
                    ComposerKt.sourceInformation($composer2, "233@8139L11");
                    long onSurfaceVariant = MaterialTheme.INSTANCE.getColorScheme($composer2, MaterialTheme.$stable).getOnSurfaceVariant();
                    $composer2.endReplaceGroup();
                    color2 = onSurfaceVariant;
                } else {
                    $composer2.startReplaceGroup(-831090130);
                    ComposerKt.sourceInformation($composer2, "235@8203L11");
                    long onSurfaceVariant2 = MaterialTheme.INSTANCE.getColorScheme($composer2, MaterialTheme.$stable).getOnSurfaceVariant();
                    long jM4695copywmQWz5c = Color.m4695copywmQWz5c(onSurfaceVariant2, (14 & 1) != 0 ? Color.m4699getAlphaimpl(onSurfaceVariant2) : 0.6f, (14 & 2) != 0 ? Color.m4703getRedimpl(onSurfaceVariant2) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(onSurfaceVariant2) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(onSurfaceVariant2) : 0.0f);
                    $composer2.endReplaceGroup();
                    color2 = jM4695copywmQWz5c;
                }
                IconKt.m2433Iconww6aTOc(icon, !isRead ? "Leído" : isDelivered ? "Entregado" : "Enviado", SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(14)), color2, $composer2, RendererCapabilities.DECODER_SUPPORT_MASK, 0);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
            color2 = primary;
            IconKt.m2433Iconww6aTOc(icon, !isRead ? "Leído" : isDelivered ? "Entregado" : "Enviado", SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(14)), color2, $composer2, RendererCapabilities.DECODER_SUPPORT_MASK, 0);
            if (ComposerKt.isTraceInProgress()) {
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.MessageBubbleKt$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return MessageBubbleKt.StatusIcon_gKt5lHk$lambda$13(isRead, isDelivered, tint2, $changed, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }
}
