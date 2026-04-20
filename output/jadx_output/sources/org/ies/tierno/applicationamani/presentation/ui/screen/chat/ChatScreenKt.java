package org.ies.tierno.applicationamani.presentation.ui.screen.chat;

import android.content.Context;
import android.net.Uri;
import androidx.activity.compose.ActivityResultRegistryKt;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.foundation.shape.CornerBasedShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.outlined.ChatBubbleOutlineKt;
import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.ChipColors;
import androidx.compose.material3.ChipElevation;
import androidx.compose.material3.ChipKt;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.ProgressIndicatorKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.TopAppBarDefaults;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
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
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Dp;
import androidx.core.content.ContextCompat;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.compose.FlowExtKt;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.ViewModelKt;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.extractor.WavUtil;
import androidx.profileinstaller.ProfileVerifier;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.KFunction;
import kotlinx.coroutines.CoroutineScope;
import org.ies.tierno.applicationamani.domain.models.Message;
import org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatListItem;
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.AudioPlaybackUiState;
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatUiState;
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModel;
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.PsychologistInfo;
import org.ies.tierno.applicationamani.ui.theme.AmaniExtraColors;
import org.ies.tierno.applicationamani.ui.theme.ThemeKt;

/* JADX INFO: compiled from: ChatScreen.kt */
/* JADX INFO: loaded from: classes8.dex */
@Metadata(d1 = {"\u0000:\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\u001a/\u0010\u0000\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007H\u0007¢\u0006\u0002\u0010\b\u001a/\u0010\t\u001a\u00020\u00012\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007H\u0003¢\u0006\u0002\u0010\f\u001a\u0015\u0010\r\u001a\u00020\u00012\u0006\u0010\u000e\u001a\u00020\u0007H\u0003¢\u0006\u0002\u0010\u000f¨\u0006\u0010²\u0006\n\u0010\u0011\u001a\u00020\u0012X\u008a\u0084\u0002²\u0006\n\u0010\u0013\u001a\u00020\u0014X\u008a\u0084\u0002²\u0006\n\u0010\u0015\u001a\u00020\u0016X\u008a\u0084\u0002²\u0006\n\u0010\u0017\u001a\u00020\u0018X\u008a\u0084\u0002"}, d2 = {"ChatScreen", "", "viewModel", "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;", "onNavigateBack", "Lkotlin/Function0;", "otherUserName", "", "(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)V", "ChatTopBar", "psychologistInfo", "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;", "(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)V", "DateSeparatorChip", "label", "(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V", "app", "uiState", "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatUiState;", "audioUiState", "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;", "isRecording", "", "recordingSeconds", ""}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class ChatScreenKt {
    static final Unit ChatScreen$lambda$39(ChatViewModel chatViewModel, Function0 function0, String str, int i, int i2, Composer composer, int i3) {
        ChatScreen(chatViewModel, function0, str, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    static final Unit ChatTopBar$lambda$46(PsychologistInfo psychologistInfo, Function0 function0, String str, int i, int i2, Composer composer, int i3) {
        ChatTopBar(psychologistInfo, function0, str, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    static final Unit DateSeparatorChip$lambda$51(String str, int i, Composer composer, int i2) {
        DateSeparatorChip(str, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x02f7  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x033f  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x03df  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void ChatScreen(ChatViewModel viewModel, final Function0<Unit> onNavigateBack, String otherUserName, Composer $composer, final int $changed, final int i) {
        ChatViewModel viewModel2;
        String str;
        final ChatViewModel viewModel3;
        final String otherUserName2;
        final ChatViewModel viewModel4;
        int $dirty;
        final String otherUserName3;
        AudioHandler audioHandler;
        boolean zChangedInstance;
        Object objRememberedValue;
        boolean zChanged;
        Object objRememberedValue2;
        List chatItems;
        Intrinsics.checkNotNullParameter(onNavigateBack, "onNavigateBack");
        Composer $composer2 = $composer.startRestartGroup(-143923073);
        ComposerKt.sourceInformation($composer2, "C(ChatScreen)N(viewModel,onNavigateBack,otherUserName)64@2988L29,65@3065L29,66@3115L23,67@3167L32,69@3232L7,70@3263L34,71@3346L29,72@3434L29,74@3500L52,74@3469L83,78@3574L98,84@3812L163,82@3708L267,93@4097L70,91@4000L167,97@4204L76,97@4173L107,101@4316L140,101@4286L170,109@4489L209,116@4720L1291,146@6036L35,147@6078L3318,108@4462L4934:ChatScreen.kt#5xjsc0");
        int $dirty2 = $changed;
        if (($changed & 6) == 0) {
            if ((i & 1) == 0) {
                viewModel2 = viewModel;
                int i2 = $composer2.changedInstance(viewModel2) ? 4 : 2;
                $dirty2 |= i2;
            } else {
                viewModel2 = viewModel;
            }
            $dirty2 |= i2;
        } else {
            viewModel2 = viewModel;
        }
        if (($changed & 48) == 0) {
            $dirty2 |= $composer2.changedInstance(onNavigateBack) ? 32 : 16;
        }
        int i3 = i & 4;
        if (i3 != 0) {
            $dirty2 |= RendererCapabilities.DECODER_SUPPORT_MASK;
            str = otherUserName;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            str = otherUserName;
            $dirty2 |= $composer2.changed(str) ? 256 : 128;
        } else {
            str = otherUserName;
        }
        if ($composer2.shouldExecute(($dirty2 & 147) != 146, $dirty2 & 1)) {
            $composer2.startDefaults();
            ComposerKt.sourceInformation($composer2, "60@2871L11");
            if (($changed & 1) == 0 || $composer2.getDefaultsInvalid()) {
                if ((i & 1) != 0) {
                    ComposerKt.sourceInformationMarkerStart($composer2, 1729797275, "CC(viewModel)N(viewModelStoreOwner,key,factory,extras)56@2573L7,67@2981L63:ViewModel.kt#3tja67");
                    ViewModelStoreOwner current = LocalViewModelStoreOwner.INSTANCE.getCurrent($composer2, 6);
                    if (current == null) {
                        throw new IllegalStateException("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner".toString());
                    }
                    ViewModel viewModel5 = ViewModelKt.viewModel((KClass<ViewModel>) Reflection.getOrCreateKotlinClass(ChatViewModel.class), current, (String) null, (ViewModelProvider.Factory) null, current instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) current).getDefaultViewModelCreationExtras() : CreationExtras.Empty.INSTANCE, $composer2, ((0 << 3) & 112) | ((0 << 3) & 896) | ((0 << 3) & 7168) | ((0 << 3) & 57344), 0);
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    viewModel2 = (ChatViewModel) viewModel5;
                    $dirty2 &= -15;
                }
                if (i3 != 0) {
                    viewModel4 = viewModel2;
                    $dirty = $dirty2;
                    otherUserName3 = "";
                } else {
                    viewModel4 = viewModel2;
                    $dirty = $dirty2;
                    otherUserName3 = str;
                }
            } else {
                $composer2.skipToGroupEnd();
                if ((i & 1) != 0) {
                    $dirty2 &= -15;
                }
                viewModel4 = viewModel2;
                $dirty = $dirty2;
                otherUserName3 = str;
            }
            $composer2.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-143923073, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatScreen (ChatScreen.kt:63)");
            }
            final State uiState$delegate = FlowExtKt.collectAsStateWithLifecycle(viewModel4.getUiState(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            final State audioUiState$delegate = FlowExtKt.collectAsStateWithLifecycle(viewModel4.getAudioUiState(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            final LazyListState listState = LazyListStateKt.rememberLazyListState(0, 0, $composer2, 0, 3);
            ComposerKt.sourceInformationMarkerStart($composer2, -871107009, "CC(remember):ChatScreen.kt#9igjgp");
            Object objRememberedValue3 = $composer2.rememberedValue();
            if (objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                Object snackbarHostState = new SnackbarHostState();
                $composer2.updateRememberedValue(snackbarHostState);
                objRememberedValue3 = snackbarHostState;
            }
            final SnackbarHostState snackbarHostState2 = (SnackbarHostState) objRememberedValue3;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ProvidableCompositionLocal<Context> localContext = AndroidCompositionLocals_androidKt.getLocalContext();
            ComposerKt.sourceInformationMarkerStart($composer2, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume = $composer2.consume(localContext);
            ComposerKt.sourceInformationMarkerEnd($composer2);
            final Context context = (Context) objConsume;
            ComposerKt.sourceInformationMarkerStart($composer2, -871103935, "CC(remember):ChatScreen.kt#9igjgp");
            Object objRememberedValue4 = $composer2.rememberedValue();
            if (objRememberedValue4 == Composer.INSTANCE.getEmpty()) {
                Object audioHandler2 = new AudioHandler(context);
                $composer2.updateRememberedValue(audioHandler2);
                objRememberedValue4 = audioHandler2;
            }
            final AudioHandler audioHandler3 = (AudioHandler) objRememberedValue4;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            final State isRecording$delegate = FlowExtKt.collectAsStateWithLifecycle(audioHandler3.isRecording(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            final State recordingSeconds$delegate = FlowExtKt.collectAsStateWithLifecycle(audioHandler3.getRecordingSeconds(), (LifecycleOwner) null, (Lifecycle.State) null, (CoroutineContext) null, $composer2, 0, 7);
            ComposerKt.sourceInformationMarkerStart($composer2, -871096333, "CC(remember):ChatScreen.kt#9igjgp");
            boolean zChangedInstance2 = $composer2.changedInstance(audioHandler3);
            Object objRememberedValue5 = $composer2.rememberedValue();
            if (zChangedInstance2 || objRememberedValue5 == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatScreenKt$$ExternalSyntheticLambda8
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return ChatScreenKt.ChatScreen$lambda$8$lambda$7(audioHandler3, (DisposableEffectScope) obj2);
                    }
                };
                $composer2.updateRememberedValue(obj);
                objRememberedValue5 = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer2);
            EffectsKt.DisposableEffect(audioHandler3, (Function1<? super DisposableEffectScope, ? extends DisposableEffectResult>) objRememberedValue5, $composer2, 0);
            List<Message> messages = ChatScreen$lambda$0(uiState$delegate).getMessages();
            ComposerKt.sourceInformationMarkerStart($composer2, -871093919, "CC(remember):ChatScreen.kt#9igjgp");
            boolean zChanged2 = $composer2.changed(messages);
            Object objRememberedValue6 = $composer2.rememberedValue();
            if (zChanged2 || objRememberedValue6 == Composer.INSTANCE.getEmpty()) {
                Object objBuildChatItems = ChatUiModelKt.buildChatItems(ChatScreen$lambda$0(uiState$delegate).getMessages(), ChatScreen$lambda$0(uiState$delegate).getCurrentUserId());
                $composer2.updateRememberedValue(objBuildChatItems);
                objRememberedValue6 = objBuildChatItems;
            }
            List chatItems2 = (List) objRememberedValue6;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            ActivityResultContracts.RequestPermission requestPermission = new ActivityResultContracts.RequestPermission();
            ComposerKt.sourceInformationMarkerStart($composer2, -871086238, "CC(remember):ChatScreen.kt#9igjgp");
            boolean zChangedInstance3 = $composer2.changedInstance(audioHandler3) | $composer2.changedInstance(viewModel4);
            Object objRememberedValue7 = $composer2.rememberedValue();
            if (zChangedInstance3 || objRememberedValue7 == Composer.INSTANCE.getEmpty()) {
                Object obj2 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatScreenKt$$ExternalSyntheticLambda9
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj3) {
                        return ChatScreenKt.ChatScreen$lambda$12$lambda$11(audioHandler3, viewModel4, ((Boolean) obj3).booleanValue());
                    }
                };
                $composer2.updateRememberedValue(obj2);
                objRememberedValue7 = obj2;
            }
            ComposerKt.sourceInformationMarkerEnd($composer2);
            final ManagedActivityResultLauncher audioPermissionLauncher = ActivityResultRegistryKt.rememberLauncherForActivityResult(requestPermission, (Function1) objRememberedValue7, $composer2, 0);
            ActivityResultContracts.GetContent getContent = new ActivityResultContracts.GetContent();
            ComposerKt.sourceInformationMarkerStart($composer2, -871077211, "CC(remember):ChatScreen.kt#9igjgp");
            boolean zChangedInstance4 = $composer2.changedInstance(viewModel4);
            Object objRememberedValue8 = $composer2.rememberedValue();
            if (zChangedInstance4) {
                audioHandler = audioHandler3;
            } else {
                audioHandler = audioHandler3;
                if (objRememberedValue8 == Composer.INSTANCE.getEmpty()) {
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                final ManagedActivityResultLauncher fileLauncher = ActivityResultRegistryKt.rememberLauncherForActivityResult(getContent, (Function1) objRememberedValue8, $composer2, 0);
                Integer numValueOf = Integer.valueOf(chatItems2.size());
                ComposerKt.sourceInformationMarkerStart($composer2, -871073781, "CC(remember):ChatScreen.kt#9igjgp");
                zChangedInstance = $composer2.changedInstance(chatItems2) | $composer2.changed(listState);
                objRememberedValue = $composer2.rememberedValue();
                if (!zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    Object obj3 = (Function2) new ChatScreenKt$ChatScreen$2$1(chatItems2, listState, null);
                    $composer2.updateRememberedValue(obj3);
                    objRememberedValue = obj3;
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                EffectsKt.LaunchedEffect(numValueOf, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) objRememberedValue, $composer2, 0);
                String error = ChatScreen$lambda$0(uiState$delegate).getError();
                ComposerKt.sourceInformationMarkerStart($composer2, -871070133, "CC(remember):ChatScreen.kt#9igjgp");
                zChanged = $composer2.changed(uiState$delegate) | $composer2.changedInstance(viewModel4);
                objRememberedValue2 = $composer2.rememberedValue();
                if (!zChanged || objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                    chatItems = chatItems2;
                    Object obj4 = (Function2) new ChatScreenKt$ChatScreen$3$1(uiState$delegate, snackbarHostState2, viewModel4, null);
                    $composer2.updateRememberedValue(obj4);
                    objRememberedValue2 = obj4;
                } else {
                    chatItems = chatItems2;
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                EffectsKt.LaunchedEffect(error, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) objRememberedValue2, $composer2, 0);
                final AudioHandler audioHandler4 = audioHandler;
                final ChatViewModel viewModel6 = viewModel4;
                final List chatItems3 = chatItems;
                ScaffoldKt.m2691ScaffoldTvnljyQ(null, ComposableLambdaKt.rememberComposableLambda(-65651901, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatScreenKt$$ExternalSyntheticLambda11
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj5, Object obj6) {
                        return ChatScreenKt.ChatScreen$lambda$18(onNavigateBack, otherUserName3, uiState$delegate, (Composer) obj5, ((Integer) obj6).intValue());
                    }
                }, $composer2, 54), ComposableLambdaKt.rememberComposableLambda(127279300, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatScreenKt$$ExternalSyntheticLambda12
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj5, Object obj6) {
                        return ChatScreenKt.ChatScreen$lambda$28(viewModel4, context, audioHandler4, audioPermissionLauncher, fileLauncher, uiState$delegate, isRecording$delegate, recordingSeconds$delegate, (Composer) obj5, ((Integer) obj6).intValue());
                    }
                }, $composer2, 54), ComposableLambdaKt.rememberComposableLambda(320210501, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatScreenKt$$ExternalSyntheticLambda13
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj5, Object obj6) {
                        return ChatScreenKt.ChatScreen$lambda$29(snackbarHostState2, (Composer) obj5, ((Integer) obj6).intValue());
                    }
                }, $composer2, 54), null, 0, 0L, 0L, null, ComposableLambdaKt.rememberComposableLambda(-282149746, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatScreenKt$$ExternalSyntheticLambda14
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj5, Object obj6, Object obj7) {
                        return ChatScreenKt.ChatScreen$lambda$38(chatItems3, listState, uiState$delegate, audioUiState$delegate, viewModel6, (PaddingValues) obj5, (Composer) obj6, ((Integer) obj7).intValue());
                    }
                }, $composer2, 54), $composer2, 805309872, 497);
                $composer2 = $composer2;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                otherUserName2 = otherUserName3;
                viewModel3 = viewModel6;
            }
            Object obj5 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatScreenKt$$ExternalSyntheticLambda10
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj6) {
                    return ChatScreenKt.ChatScreen$lambda$15$lambda$14(viewModel4, (Uri) obj6);
                }
            };
            $composer2.updateRememberedValue(obj5);
            objRememberedValue8 = obj5;
            ComposerKt.sourceInformationMarkerEnd($composer2);
            final ManagedActivityResultLauncher fileLauncher2 = ActivityResultRegistryKt.rememberLauncherForActivityResult(getContent, (Function1) objRememberedValue8, $composer2, 0);
            Integer numValueOf2 = Integer.valueOf(chatItems2.size());
            ComposerKt.sourceInformationMarkerStart($composer2, -871073781, "CC(remember):ChatScreen.kt#9igjgp");
            zChangedInstance = $composer2.changedInstance(chatItems2) | $composer2.changed(listState);
            objRememberedValue = $composer2.rememberedValue();
            if (!zChangedInstance) {
                Object obj32 = (Function2) new ChatScreenKt$ChatScreen$2$1(chatItems2, listState, null);
                $composer2.updateRememberedValue(obj32);
                objRememberedValue = obj32;
                ComposerKt.sourceInformationMarkerEnd($composer2);
                EffectsKt.LaunchedEffect(numValueOf2, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) objRememberedValue, $composer2, 0);
                String error2 = ChatScreen$lambda$0(uiState$delegate).getError();
                ComposerKt.sourceInformationMarkerStart($composer2, -871070133, "CC(remember):ChatScreen.kt#9igjgp");
                zChanged = $composer2.changed(uiState$delegate) | $composer2.changedInstance(viewModel4);
                objRememberedValue2 = $composer2.rememberedValue();
                if (zChanged) {
                    chatItems = chatItems2;
                    Object obj42 = (Function2) new ChatScreenKt$ChatScreen$3$1(uiState$delegate, snackbarHostState2, viewModel4, null);
                    $composer2.updateRememberedValue(obj42);
                    objRememberedValue2 = obj42;
                    ComposerKt.sourceInformationMarkerEnd($composer2);
                    EffectsKt.LaunchedEffect(error2, (Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object>) objRememberedValue2, $composer2, 0);
                    final AudioHandler audioHandler42 = audioHandler;
                    final ChatViewModel viewModel62 = viewModel4;
                    final List chatItems32 = chatItems;
                    ScaffoldKt.m2691ScaffoldTvnljyQ(null, ComposableLambdaKt.rememberComposableLambda(-65651901, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatScreenKt$$ExternalSyntheticLambda11
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj52, Object obj6) {
                            return ChatScreenKt.ChatScreen$lambda$18(onNavigateBack, otherUserName3, uiState$delegate, (Composer) obj52, ((Integer) obj6).intValue());
                        }
                    }, $composer2, 54), ComposableLambdaKt.rememberComposableLambda(127279300, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatScreenKt$$ExternalSyntheticLambda12
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj52, Object obj6) {
                            return ChatScreenKt.ChatScreen$lambda$28(viewModel4, context, audioHandler42, audioPermissionLauncher, fileLauncher2, uiState$delegate, isRecording$delegate, recordingSeconds$delegate, (Composer) obj52, ((Integer) obj6).intValue());
                        }
                    }, $composer2, 54), ComposableLambdaKt.rememberComposableLambda(320210501, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatScreenKt$$ExternalSyntheticLambda13
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj52, Object obj6) {
                            return ChatScreenKt.ChatScreen$lambda$29(snackbarHostState2, (Composer) obj52, ((Integer) obj6).intValue());
                        }
                    }, $composer2, 54), null, 0, 0L, 0L, null, ComposableLambdaKt.rememberComposableLambda(-282149746, true, new Function3() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatScreenKt$$ExternalSyntheticLambda14
                        @Override // kotlin.jvm.functions.Function3
                        public final Object invoke(Object obj52, Object obj6, Object obj7) {
                            return ChatScreenKt.ChatScreen$lambda$38(chatItems32, listState, uiState$delegate, audioUiState$delegate, viewModel62, (PaddingValues) obj52, (Composer) obj6, ((Integer) obj7).intValue());
                        }
                    }, $composer2, 54), $composer2, 805309872, 497);
                    $composer2 = $composer2;
                    if (ComposerKt.isTraceInProgress()) {
                    }
                    otherUserName2 = otherUserName3;
                    viewModel3 = viewModel62;
                }
            }
        } else {
            $composer2.skipToGroupEnd();
            viewModel3 = viewModel2;
            otherUserName2 = str;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatScreenKt$$ExternalSyntheticLambda15
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj6, Object obj7) {
                    return ChatScreenKt.ChatScreen$lambda$39(viewModel3, onNavigateBack, otherUserName2, $changed, i, (Composer) obj6, ((Integer) obj7).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ChatUiState ChatScreen$lambda$0(State<ChatUiState> state) {
        return (ChatUiState) state.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AudioPlaybackUiState ChatScreen$lambda$1(State<AudioPlaybackUiState> state) {
        return (AudioPlaybackUiState) state.getValue();
    }

    private static final boolean ChatScreen$lambda$4(State<Boolean> state) {
        return ((Boolean) state.getValue()).booleanValue();
    }

    private static final int ChatScreen$lambda$5(State<Integer> state) {
        return ((Number) state.getValue()).intValue();
    }

    static final DisposableEffectResult ChatScreen$lambda$8$lambda$7(final AudioHandler $audioHandler, DisposableEffectScope DisposableEffect) {
        Intrinsics.checkNotNullParameter(DisposableEffect, "$this$DisposableEffect");
        return new DisposableEffectResult() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatScreenKt$ChatScreen$lambda$8$lambda$7$$inlined$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void dispose() {
                $audioHandler.release();
            }
        };
    }

    static final Unit ChatScreen$lambda$12$lambda$11(AudioHandler $audioHandler, ChatViewModel $viewModel, boolean isGranted) {
        File file;
        if (isGranted && (file = $audioHandler.startRecording()) != null) {
            $viewModel.startRecording(file);
        }
        return Unit.INSTANCE;
    }

    static final Unit ChatScreen$lambda$15$lambda$14(ChatViewModel $viewModel, Uri uri) {
        if (uri != null) {
            $viewModel.sendAttachment(uri);
        }
        return Unit.INSTANCE;
    }

    static final Unit ChatScreen$lambda$18(Function0 $onNavigateBack, String $otherUserName, State $uiState$delegate, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C110@4503L185:ChatScreen.kt#5xjsc0");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-65651901, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatScreen.<anonymous> (ChatScreen.kt:110)");
            }
            ChatTopBar(ChatScreen$lambda$0($uiState$delegate).getAssignedPsychologist(), $onNavigateBack, $otherUserName, $composer, 0, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit ChatScreen$lambda$28(final ChatViewModel $viewModel, final Context $context, final AudioHandler $audioHandler, final ManagedActivityResultLauncher $audioPermissionLauncher, final ManagedActivityResultLauncher $fileLauncher, State $uiState$delegate, State $isRecording$delegate, State $recordingSeconds$delegate, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C119@4821L25,120@4873L22,121@4926L507,132@5466L30,133@5532L304,117@4734L1267:ChatScreen.kt#5xjsc0");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(127279300, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatScreen.<anonymous> (ChatScreen.kt:117)");
            }
            String inputText = ChatScreen$lambda$0($uiState$delegate).getInputText();
            ComposerKt.sourceInformationMarkerStart($composer, 2056326269, "CC(remember):ChatScreen.kt#9igjgp");
            boolean zChangedInstance = $composer.changedInstance($viewModel);
            Object objRememberedValue = $composer.rememberedValue();
            if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = (KFunction) new ChatScreenKt$ChatScreen$5$1$1($viewModel);
                $composer.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            Function1 function1 = (Function1) ((KFunction) objRememberedValue);
            ComposerKt.sourceInformationMarkerStart($composer, 2056327930, "CC(remember):ChatScreen.kt#9igjgp");
            boolean zChangedInstance2 = $composer.changedInstance($viewModel);
            Object objRememberedValue2 = $composer.rememberedValue();
            if (zChangedInstance2 || objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                Object obj2 = (KFunction) new ChatScreenKt$ChatScreen$5$2$1($viewModel);
                $composer.updateRememberedValue(obj2);
                objRememberedValue2 = obj2;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            Function0 function0 = (Function0) ((KFunction) objRememberedValue2);
            ComposerKt.sourceInformationMarkerStart($composer, 2056330111, "CC(remember):ChatScreen.kt#9igjgp");
            boolean zChangedInstance3 = $composer.changedInstance($context) | $composer.changedInstance($audioHandler) | $composer.changedInstance($viewModel) | $composer.changedInstance($audioPermissionLauncher);
            Object objRememberedValue3 = $composer.rememberedValue();
            if (zChangedInstance3 || objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                Object obj3 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatScreenKt$$ExternalSyntheticLambda16
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return ChatScreenKt.ChatScreen$lambda$28$lambda$23$lambda$22($context, $audioHandler, $audioPermissionLauncher, $viewModel);
                    }
                };
                $composer.updateRememberedValue(obj3);
                objRememberedValue3 = obj3;
            }
            Function0 function02 = (Function0) objRememberedValue3;
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerStart($composer, 2056346914, "CC(remember):ChatScreen.kt#9igjgp");
            boolean zChangedInstance4 = $composer.changedInstance($fileLauncher);
            Object objRememberedValue4 = $composer.rememberedValue();
            if (zChangedInstance4 || objRememberedValue4 == Composer.INSTANCE.getEmpty()) {
                Object obj4 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatScreenKt$$ExternalSyntheticLambda17
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return ChatScreenKt.ChatScreen$lambda$28$lambda$25$lambda$24($fileLauncher);
                    }
                };
                $composer.updateRememberedValue(obj4);
                objRememberedValue4 = obj4;
            }
            Function0 function03 = (Function0) objRememberedValue4;
            ComposerKt.sourceInformationMarkerEnd($composer);
            ComposerKt.sourceInformationMarkerStart($composer, 2056349300, "CC(remember):ChatScreen.kt#9igjgp");
            boolean zChangedInstance5 = $composer.changedInstance($audioHandler) | $composer.changedInstance($viewModel);
            Object objRememberedValue5 = $composer.rememberedValue();
            if (zChangedInstance5 || objRememberedValue5 == Composer.INSTANCE.getEmpty()) {
                Object obj5 = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatScreenKt$$ExternalSyntheticLambda18
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return ChatScreenKt.ChatScreen$lambda$28$lambda$27$lambda$26($audioHandler, $viewModel);
                    }
                };
                $composer.updateRememberedValue(obj5);
                objRememberedValue5 = obj5;
            }
            ComposerKt.sourceInformationMarkerEnd($composer);
            ChatInputBarKt.ChatInputBar(inputText, function1, function0, function02, function03, (Function0) objRememberedValue5, ChatScreen$lambda$4($isRecording$delegate), ChatScreen$lambda$5($recordingSeconds$delegate), ChatScreen$lambda$0($uiState$delegate).isOtherTyping(), $composer, 0, 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit ChatScreen$lambda$28$lambda$23$lambda$22(Context $context, AudioHandler $audioHandler, ManagedActivityResultLauncher $audioPermissionLauncher, ChatViewModel $viewModel) {
        if (ContextCompat.checkSelfPermission($context, "android.permission.RECORD_AUDIO") == 0) {
            File file = $audioHandler.startRecording();
            if (file != null) {
                $viewModel.startRecording(file);
            }
        } else {
            $audioPermissionLauncher.launch("android.permission.RECORD_AUDIO");
        }
        return Unit.INSTANCE;
    }

    static final Unit ChatScreen$lambda$28$lambda$25$lambda$24(ManagedActivityResultLauncher $fileLauncher) {
        $fileLauncher.launch("*/*");
        return Unit.INSTANCE;
    }

    static final Unit ChatScreen$lambda$28$lambda$27$lambda$26(AudioHandler $audioHandler, ChatViewModel $viewModel) {
        File file = $audioHandler.stopRecording();
        if (file != null && file.length() > 0) {
            $viewModel.stopRecordingAndSend(file);
        } else {
            $viewModel.cancelRecording();
        }
        return Unit.INSTANCE;
    }

    static final Unit ChatScreen$lambda$29(SnackbarHostState $snackbarHostState, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C146@6038L31:ChatScreen.kt#5xjsc0");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(320210501, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatScreen.<anonymous> (ChatScreen.kt:146)");
            }
            SnackbarHostKt.SnackbarHost($snackbarHostState, null, null, $composer, 6, 6);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    static final Unit ChatScreen$lambda$38(final List $chatItems, LazyListState $listState, final State $uiState$delegate, final State $audioUiState$delegate, final ChatViewModel $viewModel, PaddingValues paddingValues, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        Function0<ComposeUiNode> function02;
        Function0<ComposeUiNode> function03;
        Intrinsics.checkNotNullParameter(paddingValues, "paddingValues");
        ComposerKt.sourceInformation($composer, "CN(paddingValues)151@6215L11,148@6105L3285:ChatScreen.kt#5xjsc0");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer.changed(paddingValues) ? 4 : 2;
        }
        if ($composer.shouldExecute(($dirty & 19) != 18, $dirty & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-282149746, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatScreen.<anonymous> (ChatScreen.kt:148)");
            }
            Modifier modifierM822paddingqDBjuR0$default = PaddingKt.m822paddingqDBjuR0$default(PaddingKt.padding(BackgroundKt.m264backgroundbw27NRU$default(SizeKt.fillMaxSize$default(Modifier.INSTANCE, 0.0f, 1, null), MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable).getBackground(), null, 2, null), paddingValues), 0.0f, 0.0f, 0.0f, Dp.m7505constructorimpl(8), 7, null);
            ComposerKt.sourceInformationMarkerStart($composer, 1042775818, "CC(Box)N(modifier,contentAlignment,propagateMinConstraints,content)71@3424L131:Box.kt#2w3rfo");
            MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.INSTANCE.getTopStart(), false);
            ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifierM822paddingqDBjuR0$default);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((0 << 3) & 112) << 6) & 896) | 6;
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
            int i3 = ((0 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer, -1268691138, "C:ChatScreen.kt#5xjsc0");
            if (ChatScreen$lambda$0($uiState$delegate).isLoading()) {
                $composer.startReplaceGroup(-1268733547);
                ComposerKt.sourceInformation($composer, "157@6409L221");
                Modifier modifierFillMaxSize$default = SizeKt.fillMaxSize$default(Modifier.INSTANCE, 0.0f, 1, null);
                Alignment center = Alignment.INSTANCE.getCenter();
                ComposerKt.sourceInformationMarkerStart($composer, 1042775818, "CC(Box)N(modifier,contentAlignment,propagateMinConstraints,content)71@3424L131:Box.kt#2w3rfo");
                MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(center, false);
                ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                int iHashCode2 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
                CompositionLocalMap currentCompositionLocalMap2 = $composer.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier($composer, modifierFillMaxSize$default);
                Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
                int i4 = ((((54 << 3) & 112) << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
                if (!($composer.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                $composer.startReusableNode();
                if ($composer.getInserting()) {
                    function03 = constructor2;
                    $composer.createNode(function03);
                } else {
                    function03 = constructor2;
                    $composer.useNode();
                }
                Composer composerM3967constructorimpl2 = Updater.m3967constructorimpl($composer);
                Updater.m3975setimpl(composerM3967constructorimpl2, measurePolicyMaybeCachedBoxMeasurePolicy2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl(composerM3967constructorimpl2, currentCompositionLocalMap2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Updater.m3971initimpl(composerM3967constructorimpl2, Integer.valueOf(iHashCode2), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                Updater.m3973reconcileimpl(composerM3967constructorimpl2, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                Updater.m3975setimpl(composerM3967constructorimpl2, modifierMaterializeModifier2, ComposeUiNode.INSTANCE.getSetModifier());
                int i5 = (i4 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer, 1833054614, "C72@3469L9:Box.kt#2w3rfo");
                BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                int i6 = ((54 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer, -849588802, "C161@6581L27:ChatScreen.kt#5xjsc0");
                ProgressIndicatorKt.m2650CircularProgressIndicatorLxG7B9w(null, 0L, 0.0f, 0L, 0, $composer, 0, 31);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                $composer.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                $composer.endReplaceGroup();
            } else if ($chatItems.isEmpty()) {
                $composer.startReplaceGroup(-1268411984);
                ComposerKt.sourceInformation($composer, "166@6711L930");
                Modifier modifierFillMaxSize$default2 = SizeKt.fillMaxSize$default(Modifier.INSTANCE, 0.0f, 1, null);
                Alignment.Horizontal centerHorizontally = Alignment.INSTANCE.getCenterHorizontally();
                Arrangement.Vertical center2 = Arrangement.INSTANCE.getCenter();
                ComposerKt.sourceInformationMarkerStart($composer, 1341605231, "CC(Column)N(modifier,verticalArrangement,horizontalAlignment,content)87@4443L61,88@4509L134:Column.kt#2w3rfo");
                MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(center2, centerHorizontally, $composer, ((438 >> 3) & 14) | ((438 >> 3) & 112));
                ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                int iHashCode3 = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
                CompositionLocalMap currentCompositionLocalMap3 = $composer.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier($composer, modifierFillMaxSize$default2);
                Function0<ComposeUiNode> constructor3 = ComposeUiNode.INSTANCE.getConstructor();
                int i7 = ((((438 << 3) & 112) << 6) & 896) | 6;
                ComposerKt.sourceInformationMarkerStart($composer, -553112988, "CC(ReusableComposeNode)N(factory,update,content)399@15590L9:Composables.kt#9igjgp");
                if (!($composer.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                $composer.startReusableNode();
                if ($composer.getInserting()) {
                    function02 = constructor3;
                    $composer.createNode(function02);
                } else {
                    function02 = constructor3;
                    $composer.useNode();
                }
                Composer composerM3967constructorimpl3 = Updater.m3967constructorimpl($composer);
                Updater.m3975setimpl(composerM3967constructorimpl3, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3975setimpl(composerM3967constructorimpl3, currentCompositionLocalMap3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Updater.m3971initimpl(composerM3967constructorimpl3, Integer.valueOf(iHashCode3), ComposeUiNode.INSTANCE.getSetCompositeKeyHash());
                Updater.m3973reconcileimpl(composerM3967constructorimpl3, ComposeUiNode.INSTANCE.getApplyOnDeactivatedNodeAssertion());
                Updater.m3975setimpl(composerM3967constructorimpl3, modifierMaterializeModifier3, ComposeUiNode.INSTANCE.getSetModifier());
                int i8 = (i7 >> 6) & 14;
                ComposerKt.sourceInformationMarkerStart($composer, 2093002350, "C89@4557L9:Column.kt#2w3rfo");
                ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                int i9 = ((438 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer, -1206879162, "C175@7214L11,171@6967L320,177@7312L41,180@7492L10,181@7565L11,178@7378L241:ChatScreen.kt#5xjsc0");
                ImageVector chatBubbleOutline = ChatBubbleOutlineKt.getChatBubbleOutline(Icons.Outlined.INSTANCE);
                Modifier modifierM864size3ABfNKs = SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(64));
                long onSurfaceVariant = MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable).getOnSurfaceVariant();
                IconKt.m2433Iconww6aTOc(chatBubbleOutline, (String) null, modifierM864size3ABfNKs, Color.m4695copywmQWz5c(onSurfaceVariant, (14 & 1) != 0 ? Color.m4699getAlphaimpl(onSurfaceVariant) : 0.4f, (14 & 2) != 0 ? Color.m4703getRedimpl(onSurfaceVariant) : 0.0f, (14 & 4) != 0 ? Color.m4702getGreenimpl(onSurfaceVariant) : 0.0f, (14 & 8) != 0 ? Color.m4700getBlueimpl(onSurfaceVariant) : 0.0f), $composer, 432, 0);
                SpacerKt.Spacer(SizeKt.m850height3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(24)), $composer, 6);
                TextKt.m2976Text4IGK_g("Aún no hay mensajes", (Modifier) null, MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable).getOnSurfaceVariant(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getBodyMedium(), $composer, 6, 0, 65530);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                $composer.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                $composer.endReplaceGroup();
            } else {
                $composer.startReplaceGroup(-1267401911);
                ComposerKt.sourceInformation($composer, "192@7963L1385,187@7707L1641");
                Modifier modifierFillMaxSize$default3 = SizeKt.fillMaxSize$default(Modifier.INSTANCE, 0.0f, 1, null);
                PaddingValues paddingValuesM813PaddingValuesYgX7TsA$default = PaddingKt.m813PaddingValuesYgX7TsA$default(Dp.m7505constructorimpl(8), 0.0f, 2, null);
                ComposerKt.sourceInformationMarkerStart($composer, 1760239985, "CC(remember):ChatScreen.kt#9igjgp");
                boolean zChangedInstance = $composer.changedInstance($chatItems) | $composer.changed($uiState$delegate) | $composer.changed($audioUiState$delegate) | $composer.changedInstance($viewModel);
                Object objRememberedValue = $composer.rememberedValue();
                if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    Object obj = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatScreenKt$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            return ChatScreenKt.ChatScreen$lambda$38$lambda$37$lambda$36$lambda$35($chatItems, $viewModel, $uiState$delegate, $audioUiState$delegate, (LazyListScope) obj2);
                        }
                    };
                    $composer.updateRememberedValue(obj);
                    objRememberedValue = obj;
                }
                ComposerKt.sourceInformationMarkerEnd($composer);
                LazyDslKt.LazyColumn(modifierFillMaxSize$default3, $listState, paddingValuesM813PaddingValuesYgX7TsA$default, true, null, null, null, false, null, (Function1) objRememberedValue, $composer, 3462, 496);
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

    static final Unit ChatScreen$lambda$38$lambda$37$lambda$36$lambda$35(final List $chatItems, final ChatViewModel $viewModel, final State $uiState$delegate, final State $audioUiState$delegate, LazyListScope LazyColumn) {
        Intrinsics.checkNotNullParameter(LazyColumn, "$this$LazyColumn");
        final Function1 function1 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatScreenKt$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ChatScreenKt.ChatScreen$lambda$38$lambda$37$lambda$36$lambda$35$lambda$32((ChatListItem) obj);
            }
        };
        final Function1 function12 = new Function1() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatScreenKt$ChatScreen$lambda$38$lambda$37$lambda$36$lambda$35$$inlined$items$default$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object p1) {
                return invoke((ChatListItem) p1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Void invoke(ChatListItem chatListItem) {
                return null;
            }
        };
        LazyColumn.items($chatItems.size(), new Function1<Integer, Object>() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatScreenKt$ChatScreen$lambda$38$lambda$37$lambda$36$lambda$35$$inlined$items$default$2
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Integer num) {
                return invoke(num.intValue());
            }

            public final Object invoke(int index) {
                return function1.invoke($chatItems.get(index));
            }
        }, new Function1<Integer, Object>() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatScreenKt$ChatScreen$lambda$38$lambda$37$lambda$36$lambda$35$$inlined$items$default$3
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Integer num) {
                return invoke(num.intValue());
            }

            public final Object invoke(int index) {
                return function12.invoke($chatItems.get(index));
            }
        }, ComposableLambdaKt.composableLambdaInstance(802480018, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatScreenKt$ChatScreen$lambda$38$lambda$37$lambda$36$lambda$35$$inlined$items$default$4
            @Override // kotlin.jvm.functions.Function4
            public /* bridge */ /* synthetic */ Unit invoke(LazyItemScope lazyItemScope, Integer num, Composer composer, Integer num2) {
                invoke(lazyItemScope, num.intValue(), composer, num2.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(LazyItemScope $this$items, int it, Composer $composer, int $changed) {
                Composer composer;
                ComposerKt.sourceInformation($composer, "CN(it)178@8834L22:LazyDsl.kt#428nma");
                int $dirty = $changed;
                if (($changed & 6) == 0) {
                    $dirty |= $composer.changed($this$items) ? 4 : 2;
                }
                if (($changed & 48) == 0) {
                    $dirty |= $composer.changed(it) ? 32 : 16;
                }
                if (!$composer.shouldExecute(($dirty & 147) != 146, $dirty & 1)) {
                    $composer.skipToGroupEnd();
                    return;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(802480018, $dirty, -1, "androidx.compose.foundation.lazy.items.<anonymous> (LazyDsl.kt:178)");
                }
                int i = $dirty & 14;
                ChatListItem chatListItem = (ChatListItem) $chatItems.get(it);
                $composer.startReplaceGroup(-1670775707);
                ComposerKt.sourceInformation($composer, "CN(item):ChatScreen.kt#5xjsc0");
                if (chatListItem instanceof ChatListItem.DateSeparator) {
                    $composer.startReplaceGroup(638842356);
                    ComposerKt.sourceInformation($composer, "203@8508L29");
                    ChatScreenKt.DateSeparatorChip(((ChatListItem.DateSeparator) chatListItem).getLabel(), $composer, 0);
                    $composer.endReplaceGroup();
                    composer = $composer;
                } else {
                    if (!(chatListItem instanceof ChatListItem.MessageItem)) {
                        $composer.startReplaceGroup(638840670);
                        $composer.endReplaceGroup();
                        throw new NoWhenBranchMatchedException();
                    }
                    $composer.startReplaceGroup(638845972);
                    ComposerKt.sourceInformation($composer, "211@9093L143,204@8601L669");
                    Message msg = ((ChatListItem.MessageItem) chatListItem).getMsg();
                    boolean zIsFirstInGroup = ((ChatListItem.MessageItem) chatListItem).isFirstInGroup();
                    boolean zIsLastInGroup = ((ChatListItem.MessageItem) chatListItem).isLastInGroup();
                    String currentUserId = ChatScreenKt.ChatScreen$lambda$0($uiState$delegate).getCurrentUserId();
                    PsychologistInfo assignedPsychologist = ChatScreenKt.ChatScreen$lambda$0($uiState$delegate).getAssignedPsychologist();
                    AudioPlaybackUiState audioPlaybackUiStateChatScreen$lambda$1 = ChatScreenKt.ChatScreen$lambda$1($audioUiState$delegate);
                    ComposerKt.sourceInformationMarkerStart($composer, 638861190, "CC(remember):ChatScreen.kt#9igjgp");
                    boolean zChangedInstance = $composer.changedInstance($viewModel);
                    Object objRememberedValue = $composer.rememberedValue();
                    if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                        final ChatViewModel chatViewModel = $viewModel;
                        objRememberedValue = (Function2) new Function2<String, String, Unit>() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatScreenKt$ChatScreen$7$1$3$1$2$1$1
                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Unit invoke(String str, String str2) {
                                invoke2(str, str2);
                                return Unit.INSTANCE;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(String messageId, String url) {
                                Intrinsics.checkNotNullParameter(messageId, "messageId");
                                Intrinsics.checkNotNullParameter(url, "url");
                                chatViewModel.toggleAudioPlayback(messageId, url);
                            }
                        };
                        $composer.updateRememberedValue(objRememberedValue);
                    }
                    ComposerKt.sourceInformationMarkerEnd($composer);
                    MessageBubbleKt.MessageBubble(msg, zIsFirstInGroup, zIsLastInGroup, currentUserId, assignedPsychologist, audioPlaybackUiStateChatScreen$lambda$1, (Function2) objRememberedValue, $composer, 0);
                    composer = $composer;
                    composer.endReplaceGroup();
                }
                composer.endReplaceGroup();
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            }
        }));
        return Unit.INSTANCE;
    }

    static final Object ChatScreen$lambda$38$lambda$37$lambda$36$lambda$35$lambda$32(ChatListItem item) {
        Intrinsics.checkNotNullParameter(item, "item");
        if (item instanceof ChatListItem.MessageItem) {
            return ((ChatListItem.MessageItem) item).getMsg().getId();
        }
        if (!(item instanceof ChatListItem.DateSeparator)) {
            throw new NoWhenBranchMatchedException();
        }
        return "sep_" + ((ChatListItem.DateSeparator) item).getLabel();
    }

    private static final void ChatTopBar(final PsychologistInfo psychologistInfo, final Function0<Unit> function0, String otherUserName, Composer $composer, final int $changed, final int i) {
        String str;
        Composer $composer2;
        String otherUserName2;
        final String otherUserName3;
        Composer $composer3 = $composer.startRestartGroup(-979564727);
        ComposerKt.sourceInformation($composer3, "C(ChatTopBar)N(psychologistInfo,onNavigateBack,otherUserName)231@9623L7,234@9676L1635,271@11338L237,280@11685L11,281@11752L11,279@11612L171,233@9636L2153:ChatScreen.kt#5xjsc0");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer3.changed(psychologistInfo) ? 4 : 2;
        }
        if (($changed & 48) == 0) {
            $dirty |= $composer3.changedInstance(function0) ? 32 : 16;
        }
        int i2 = i & 4;
        if (i2 != 0) {
            $dirty |= RendererCapabilities.DECODER_SUPPORT_MASK;
            str = otherUserName;
        } else if (($changed & RendererCapabilities.DECODER_SUPPORT_MASK) == 0) {
            str = otherUserName;
            $dirty |= $composer3.changed(str) ? 256 : 128;
        } else {
            str = otherUserName;
        }
        if (!$composer3.shouldExecute(($dirty & 147) != 146, $dirty & 1)) {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
            otherUserName2 = str;
        } else {
            if (i2 != 0) {
                otherUserName3 = "";
            } else {
                otherUserName3 = str;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-979564727, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatTopBar (ChatScreen.kt:230)");
            }
            ProvidableCompositionLocal<AmaniExtraColors> localAmaniColors = ThemeKt.getLocalAmaniColors();
            ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC(<get-current>):CompositionLocal.kt#9igjgp");
            Object objConsume = $composer3.consume(localAmaniColors);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            final AmaniExtraColors amaniColors = (AmaniExtraColors) objConsume;
            $composer2 = $composer3;
            otherUserName2 = otherUserName3;
            AppBarKt.m2053CenterAlignedTopAppBarGHTll3U(ComposableLambdaKt.rememberComposableLambda(-508458492, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatScreenKt$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ChatScreenKt.ChatTopBar$lambda$44(psychologistInfo, otherUserName3, amaniColors, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer3, 54), null, ComposableLambdaKt.rememberComposableLambda(320322, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatScreenKt$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ChatScreenKt.ChatTopBar$lambda$45(function0, (Composer) obj, ((Integer) obj2).intValue());
                }
            }, $composer3, 54), null, 0.0f, null, TopAppBarDefaults.INSTANCE.m3139centerAlignedTopAppBarColorszjMxDiM(MaterialTheme.INSTANCE.getColorScheme($composer3, MaterialTheme.$stable).getSurface(), 0L, 0L, MaterialTheme.INSTANCE.getColorScheme($composer3, MaterialTheme.$stable).getOnSurface(), 0L, $composer2, TopAppBarDefaults.$stable << 15, 22), null, $composer2, 390, 186);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final String otherUserName4 = otherUserName2;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatScreenKt$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ChatScreenKt.ChatTopBar$lambda$46(psychologistInfo, function0, otherUserName4, $changed, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    static final Unit ChatTopBar$lambda$44(PsychologistInfo $psychologistInfo, String $otherUserName, AmaniExtraColors $amaniColors, Composer $composer, int $changed) {
        Function0<ComposeUiNode> function0;
        long jM10503getCitaLibre0d7_KjU;
        ComposerKt.sourceInformation($composer, "C:ChatScreen.kt#5xjsc0");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-508458492, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatTopBar.<anonymous> (ChatScreen.kt:235)");
            }
            if ($psychologistInfo != null) {
                $composer.startReplaceGroup(862804560);
                ComposerKt.sourceInformation($composer, "239@9924L3,236@9738L1358");
                Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
                Arrangement.Horizontal start = Arrangement.INSTANCE.getStart();
                Modifier.Companion companion = Modifier.INSTANCE;
                ComposerKt.sourceInformationMarkerStart($composer, 997668871, "CC(remember):ChatScreen.kt#9igjgp");
                Object objRememberedValue = $composer.rememberedValue();
                if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatScreenKt$$ExternalSyntheticLambda19
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return Unit.INSTANCE;
                        }
                    };
                    $composer.updateRememberedValue(obj);
                    objRememberedValue = obj;
                }
                ComposerKt.sourceInformationMarkerEnd($composer);
                Modifier modifierM299clickableoSLSa3U$default = ClickableKt.m299clickableoSLSa3U$default(companion, false, null, null, null, (Function0) objRememberedValue, 15, null);
                ComposerKt.sourceInformationMarkerStart($composer, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
                MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(start, centerVertically, $composer, ((432 >> 3) & 14) | ((432 >> 3) & 112));
                ComposerKt.sourceInformationMarkerStart($composer, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
                int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer, 0));
                CompositionLocalMap currentCompositionLocalMap = $composer.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer, modifierM299clickableoSLSa3U$default);
                Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
                int i = ((((432 << 3) & 112) << 6) & 896) | 6;
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
                RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                int i3 = ((432 >> 6) & 112) | 6;
                ComposerKt.sourceInformationMarkerStart($composer, 436743848, "C241@9968L69,242@10058L39,245@10224L10,243@10118L149,247@10288L39,248@10348L384,257@10753L39,260@10959L10,261@11028L11,258@10813L265:ChatScreen.kt#5xjsc0");
                MessageBubbleKt.m10432PsychologistAvatarziNgDLE($psychologistInfo, Dp.m7505constructorimpl(24), $composer, 48);
                SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(6)), $composer, 6);
                TextKt.m2976Text4IGK_g($psychologistInfo.getName(), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getTitleSmall(), $composer, 0, 0, WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
                SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(2)), $composer, 6);
                Modifier modifierClip = ClipKt.clip(SizeKt.m864size3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(4)), RoundedCornerShapeKt.getCircleShape());
                if ($psychologistInfo.isOnline()) {
                    $composer.startReplaceGroup(-124439698);
                    $composer.endReplaceGroup();
                    jM10503getCitaLibre0d7_KjU = $amaniColors.m10503getCitaLibre0d7_KjU();
                } else {
                    $composer.startReplaceGroup(-124437364);
                    ComposerKt.sourceInformation($composer, "254@10661L11");
                    long outline = MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable).getOutline();
                    $composer.endReplaceGroup();
                    jM10503getCitaLibre0d7_KjU = outline;
                }
                BoxKt.Box(BackgroundKt.m264backgroundbw27NRU$default(modifierClip, jM10503getCitaLibre0d7_KjU, null, 2, null), $composer, 0);
                SpacerKt.Spacer(SizeKt.m869width3ABfNKs(Modifier.INSTANCE, Dp.m7505constructorimpl(2)), $composer, 6);
                TextKt.m2976Text4IGK_g($psychologistInfo.isOnline() ? "En línea" : "Desconectado", (Modifier) null, MaterialTheme.INSTANCE.getColorScheme($composer, MaterialTheme.$stable).getOnSurfaceVariant(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getLabelSmall(), $composer, 0, 0, 65530);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                $composer.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                ComposerKt.sourceInformationMarkerEnd($composer);
                $composer.endReplaceGroup();
            } else {
                $composer.startReplaceGroup(864152037);
                ComposerKt.sourceInformation($composer, "267@11248L10,265@11134L153");
                String str = $otherUserName;
                if (str.length() == 0) {
                    str = "Psicólogo";
                }
                TextKt.m2976Text4IGK_g(str, (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getTitleSmall(), $composer, 0, 0, WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
                $composer.endReplaceGroup();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit ChatTopBar$lambda$45(Function0 $onNavigateBack, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C272@11352L213:ChatScreen.kt#5xjsc0");
        if ($composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(320322, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatTopBar.<anonymous> (ChatScreen.kt:272)");
            }
            IconButtonKt.IconButton($onNavigateBack, null, false, null, null, ComposableSingletons$ChatScreenKt.INSTANCE.getLambda$1858986821$app(), $composer, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 30);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            $composer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void DateSeparatorChip(final String label, Composer $composer, final int $changed) {
        Composer $composer2;
        Function0<ComposeUiNode> function0;
        Composer $composer3 = $composer.startRestartGroup(-1927816536);
        ComposerKt.sourceInformation($composer3, "C(DateSeparatorChip)N(label)288@11856L447:ChatScreen.kt#5xjsc0");
        int $dirty = $changed;
        if (($changed & 6) == 0) {
            $dirty |= $composer3.changed(label) ? 4 : 2;
        }
        if (!$composer3.shouldExecute(($dirty & 3) != 2, $dirty & 1)) {
            $composer2 = $composer3;
            $composer2.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1927816536, $dirty, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.DateSeparatorChip (ChatScreen.kt:287)");
            }
            Modifier modifierM820paddingVpY3zN4$default = PaddingKt.m820paddingVpY3zN4$default(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null), 0.0f, Dp.m7505constructorimpl(8), 1, null);
            Arrangement.Horizontal center = Arrangement.INSTANCE.getCenter();
            ComposerKt.sourceInformationMarkerStart($composer3, 844473419, "CC(Row)N(modifier,horizontalArrangement,verticalAlignment,content)99@5125L58,100@5188L131:Row.kt#2w3rfo");
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(center, Alignment.INSTANCE.getTop(), $composer3, ((54 >> 3) & 14) | ((54 >> 3) & 112));
            ComposerKt.sourceInformationMarkerStart($composer3, -1159599143, "CC(Layout)P(!1,2)81@3355L27,84@3521L416:Layout.kt#80mrfh");
            int iHashCode = Long.hashCode(ComposablesKt.getCurrentCompositeKeyHashCode($composer3, 0));
            CompositionLocalMap currentCompositionLocalMap = $composer3.getCurrentCompositionLocalMap();
            $composer2 = $composer3;
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier($composer3, modifierM820paddingVpY3zN4$default);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i = ((((54 << 3) & 112) << 6) & 896) | 6;
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
            int i3 = ((54 >> 6) & 112) | 6;
            ComposerKt.sourceInformationMarkerStart($composer3, 1106824621, "C296@12100L6,295@12061L3,297@12134L153,294@12023L274:ChatScreen.kt#5xjsc0");
            CornerBasedShape small = MaterialTheme.INSTANCE.getShapes($composer3, MaterialTheme.$stable).getSmall();
            ComposerKt.sourceInformationMarkerStart($composer3, -2042505017, "CC(remember):ChatScreen.kt#9igjgp");
            Object objRememberedValue = $composer3.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Object obj = new Function0() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatScreenKt$$ExternalSyntheticLambda2
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return Unit.INSTANCE;
                    }
                };
                $composer3.updateRememberedValue(obj);
                objRememberedValue = obj;
            }
            ComposerKt.sourceInformationMarkerEnd($composer3);
            ChipKt.SuggestionChip((Function0<Unit>) objRememberedValue, (Function2<? super Composer, ? super Integer, Unit>) ComposableLambdaKt.rememberComposableLambda(38884998, true, new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatScreenKt$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    return ChatScreenKt.DateSeparatorChip$lambda$50$lambda$49(label, (Composer) obj2, ((Integer) obj3).intValue());
                }
            }, $composer3, 54), (Modifier) null, false, (Function2<? super Composer, ? super Integer, Unit>) null, (Shape) small, (ChipColors) null, (ChipElevation) null, (BorderStroke) null, (MutableInteractionSource) null, $composer3, 54, 988);
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
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: org.ies.tierno.applicationamani.presentation.ui.screen.chat.ChatScreenKt$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    return ChatScreenKt.DateSeparatorChip$lambda$51(label, $changed, (Composer) obj2, ((Integer) obj3).intValue());
                }
            });
        }
    }

    static final Unit DateSeparatorChip$lambda$50$lambda$49(String $label, Composer $composer, int $changed) {
        ComposerKt.sourceInformation($composer, "C300@12234L10,298@12152L121:ChatScreen.kt#5xjsc0");
        if (!$composer.shouldExecute(($changed & 3) != 2, $changed & 1)) {
            $composer.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(38884998, $changed, -1, "org.ies.tierno.applicationamani.presentation.ui.screen.chat.DateSeparatorChip.<anonymous>.<anonymous> (ChatScreen.kt:298)");
            }
            TextKt.m2976Text4IGK_g($label, (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1<? super TextLayoutResult, Unit>) null, MaterialTheme.INSTANCE.getTypography($composer, MaterialTheme.$stable).getLabelSmall(), $composer, 0, 0, WavUtil.TYPE_WAVE_FORMAT_EXTENSIBLE);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        return Unit.INSTANCE;
    }
}
