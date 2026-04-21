package org.ies.tierno.applicationamani.presentation.viewmodels.chat;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.Player;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.window.core.layout.WindowSizeClass;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import org.ies.tierno.applicationamani.data.remoto.ChatFirebaseService;
import org.ies.tierno.applicationamani.data.remoto.FileStorageService;
import org.ies.tierno.applicationamani.domain.models.Message;
import org.ies.tierno.applicationamani.domain.usecases.GetMessagesUseCase;
import org.ies.tierno.applicationamani.domain.usecases.MarkMessageDeliveredUseCase;
import org.ies.tierno.applicationamani.domain.usecases.MarkMessagesAsReadUseCase;
import org.ies.tierno.applicationamani.domain.usecases.ObserveTypingUseCase;
import org.ies.tierno.applicationamani.domain.usecases.ObserveUserOnlineUseCase;
import org.ies.tierno.applicationamani.domain.usecases.SendMessageUseCase;
import org.ies.tierno.applicationamani.domain.usecases.StartTypingUseCase;
import org.ies.tierno.applicationamani.domain.usecases.StopTypingUseCase;
import org.ies.tierno.applicationamani.domain.usecases.UpdateUserOnlineUseCase;

/* JADX INFO: compiled from: ChatViewModel.kt */
/* JADX INFO: loaded from: classes16.dex */
@Metadata(d1 = {"\u0000Ã\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f*\u0001<\b\u0007\u0018\u00002\u00020\u0001Bo\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u0012\u0006\u0010\u0015\u001a\u00020\u0016\u0012\u0006\u0010\u0017\u001a\u00020\u0018\u0012\u0006\u0010\u0019\u001a\u00020\u001a¢\u0006\u0004\b\u001b\u0010\u001cJ\b\u0010>\u001a\u00020?H\u0002J\u000e\u0010@\u001a\u00020?H\u0082@¢\u0006\u0002\u0010AJ\b\u0010B\u001a\u00020?H\u0002J\b\u0010C\u001a\u00020?H\u0002J\b\u0010D\u001a\u00020?H\u0002J\u0006\u0010E\u001a\u00020?J\u0006\u0010F\u001a\u00020?J\u0006\u0010G\u001a\u00020?J\u0006\u0010H\u001a\u00020?J\u0016\u0010I\u001a\u00020?2\u0006\u0010J\u001a\u00020$2\u0006\u0010K\u001a\u00020$J\u0006\u0010L\u001a\u00020?J\u0006\u0010M\u001a\u00020?J\b\u0010N\u001a\u00020?H\u0002J\b\u0010O\u001a\u00020?H\u0002J\u000e\u0010P\u001a\u00020?2\u0006\u0010Q\u001a\u00020$J\u000e\u0010R\u001a\u00020?2\u0006\u0010S\u001a\u00020TJ\u000e\u0010W\u001a\u00020?2\u0006\u0010X\u001a\u00020YJ\u000e\u0010]\u001a\u00020?2\u0006\u0010X\u001a\u00020YJ\u000e\u0010^\u001a\u00020?2\u0006\u0010_\u001a\u00020$J\u0006\u0010`\u001a\u00020?J\u0006\u0010a\u001a\u00020?J\u0006\u0010b\u001a\u00020?J\u0006\u0010c\u001a\u00020?J\b\u0010d\u001a\u00020?H\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u001d\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020 0\u001f0\u001eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010!\u001a\b\u0012\u0004\u0012\u00020\"0\u001eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010#\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010$0\u001eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010%\u001a\b\u0012\u0004\u0012\u00020$0\u001eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010&\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010'0\u001eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010(\u001a\b\u0012\u0004\u0012\u00020\"0\u001eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010)\u001a\b\u0012\u0004\u0012\u00020\"0\u001eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010*\u001a\b\u0012\u0004\u0012\u00020,0+8F¢\u0006\u0006\u001a\u0004\b-\u0010.R\u0017\u0010/\u001a\b\u0012\u0004\u0012\u0002000+¢\u0006\b\n\u0000\u001a\u0004\b1\u0010.R#\u00102\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\"030+¢\u0006\b\n\u0000\u001a\u0004\b4\u0010.R\u0016\u0010\u0019\u001a\n 5*\u0004\u0018\u00010\u001a0\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u00106\u001a\u0004\u0018\u000107X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u00108\u001a\u0004\u0018\u000109X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010:\u001a\b\u0012\u0004\u0012\u00020,0\u001eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010;\u001a\u00020<X\u0082\u0004¢\u0006\u0004\n\u0002\u0010=R\u0014\u0010U\u001a\b\u0012\u0004\u0012\u00020\"0\u001eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010V\u001a\b\u0012\u0004\u0012\u00020\"0+8F¢\u0006\u0006\u001a\u0004\bV\u0010.R\u0016\u0010Z\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010Y0\u001eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0019\u0010[\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010Y0+8F¢\u0006\u0006\u001a\u0004\b\\\u0010.¨\u0006e"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;", "Landroidx/lifecycle/ViewModel;", "currentUserId", "", "otherUserId", "sendMessageUseCase", "Lorg/ies/tierno/applicationamani/domain/usecases/SendMessageUseCase;", "getMessagesUseCase", "Lorg/ies/tierno/applicationamani/domain/usecases/GetMessagesUseCase;", "markMessagesAsReadUseCase", "Lorg/ies/tierno/applicationamani/domain/usecases/MarkMessagesAsReadUseCase;", "markMessageDeliveredUseCase", "Lorg/ies/tierno/applicationamani/domain/usecases/MarkMessageDeliveredUseCase;", "fileStorageService", "Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;", "startTypingUseCase", "Lorg/ies/tierno/applicationamani/domain/usecases/StartTypingUseCase;", "stopTypingUseCase", "Lorg/ies/tierno/applicationamani/domain/usecases/StopTypingUseCase;", "observeTypingUseCase", "Lorg/ies/tierno/applicationamani/domain/usecases/ObserveTypingUseCase;", "observeUserOnlineUseCase", "Lorg/ies/tierno/applicationamani/domain/usecases/ObserveUserOnlineUseCase;", "updateUserOnlineUseCase", "Lorg/ies/tierno/applicationamani/domain/usecases/UpdateUserOnlineUseCase;", "appContext", "Landroid/content/Context;", "<init>", "(JJLorg/ies/tierno/applicationamani/domain/usecases/SendMessageUseCase;Lorg/ies/tierno/applicationamani/domain/usecases/GetMessagesUseCase;Lorg/ies/tierno/applicationamani/domain/usecases/MarkMessagesAsReadUseCase;Lorg/ies/tierno/applicationamani/domain/usecases/MarkMessageDeliveredUseCase;Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;Lorg/ies/tierno/applicationamani/domain/usecases/StartTypingUseCase;Lorg/ies/tierno/applicationamani/domain/usecases/StopTypingUseCase;Lorg/ies/tierno/applicationamani/domain/usecases/ObserveTypingUseCase;Lorg/ies/tierno/applicationamani/domain/usecases/ObserveUserOnlineUseCase;Lorg/ies/tierno/applicationamani/domain/usecases/UpdateUserOnlineUseCase;Landroid/content/Context;)V", "_messages", "Lkotlinx/coroutines/flow/MutableStateFlow;", "", "Lorg/ies/tierno/applicationamani/domain/models/Message;", "_isLoading", "", "_error", "", "_inputText", "_assignedPsychologist", "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;", "_isOtherTyping", "_psychologistOnline", "audioUiState", "Lkotlinx/coroutines/flow/StateFlow;", "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;", "getAudioUiState", "()Lkotlinx/coroutines/flow/StateFlow;", "uiState", "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatUiState;", "getUiState", "typingOnlineState", "Lkotlin/Pair;", "getTypingOnlineState", "kotlin.jvm.PlatformType", "exoPlayer", "Landroidx/media3/exoplayer/ExoPlayer;", "progressJob", "Lkotlinx/coroutines/Job;", "_audioUiState", "playerListener", "org/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$playerListener$1", "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$playerListener$1;", "initPlayer", "", "initChatFeatures", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "initTyping", "initOnlineStatus", "updatePsychologistInfo", "observeMessages", "markMessagesAsDelivered", "startTyping", "stopTyping", "toggleAudioPlayback", "messageId", "remoteUrl", "stopAudioPlayback", "releaseAudioPlayer", "startProgressUpdates", "stopProgressUpdates", "sendTextMessage", "content", "sendAttachment", "uri", "Landroid/net/Uri;", "_isRecording", "isRecording", "startRecording", "file", "Ljava/io/File;", "_recordingFile", "recordingFile", "getRecordingFile", "stopRecordingAndSend", "onInputChanged", "text", "sendMessage", "markMessagesAsRead", "clearError", "cancelRecording", "onCleared", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class ChatViewModel extends ViewModel {
    public static final int $stable = 8;
    private final MutableStateFlow<PsychologistInfo> _assignedPsychologist;
    private final MutableStateFlow<AudioPlaybackUiState> _audioUiState;
    private final MutableStateFlow<String> _error;
    private final MutableStateFlow<String> _inputText;
    private final MutableStateFlow<Boolean> _isLoading;
    private final MutableStateFlow<Boolean> _isOtherTyping;
    private final MutableStateFlow<Boolean> _isRecording;
    private final MutableStateFlow<List<Message>> _messages;
    private final MutableStateFlow<Boolean> _psychologistOnline;
    private final MutableStateFlow<File> _recordingFile;
    private final Context appContext;
    private final long currentUserId;
    private ExoPlayer exoPlayer;
    private final FileStorageService fileStorageService;
    private final GetMessagesUseCase getMessagesUseCase;
    private final MarkMessageDeliveredUseCase markMessageDeliveredUseCase;
    private final MarkMessagesAsReadUseCase markMessagesAsReadUseCase;
    private final ObserveTypingUseCase observeTypingUseCase;
    private final ObserveUserOnlineUseCase observeUserOnlineUseCase;
    private final long otherUserId;
    private final ChatViewModel$playerListener$1 playerListener;
    private Job progressJob;
    private final SendMessageUseCase sendMessageUseCase;
    private final StartTypingUseCase startTypingUseCase;
    private final StopTypingUseCase stopTypingUseCase;
    private final StateFlow<Pair<Boolean, Boolean>> typingOnlineState;
    private final StateFlow<ChatUiState> uiState;
    private final UpdateUserOnlineUseCase updateUserOnlineUseCase;

    /* JADX WARN: Type inference failed for: r1v22, types: [org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModel$playerListener$1] */
    public ChatViewModel(long currentUserId, long otherUserId, SendMessageUseCase sendMessageUseCase, GetMessagesUseCase getMessagesUseCase, MarkMessagesAsReadUseCase markMessagesAsReadUseCase, MarkMessageDeliveredUseCase markMessageDeliveredUseCase, FileStorageService fileStorageService, StartTypingUseCase startTypingUseCase, StopTypingUseCase stopTypingUseCase, ObserveTypingUseCase observeTypingUseCase, ObserveUserOnlineUseCase observeUserOnlineUseCase, UpdateUserOnlineUseCase updateUserOnlineUseCase, Context appContext) {
        Intrinsics.checkNotNullParameter(sendMessageUseCase, "sendMessageUseCase");
        Intrinsics.checkNotNullParameter(getMessagesUseCase, "getMessagesUseCase");
        Intrinsics.checkNotNullParameter(markMessagesAsReadUseCase, "markMessagesAsReadUseCase");
        Intrinsics.checkNotNullParameter(markMessageDeliveredUseCase, "markMessageDeliveredUseCase");
        Intrinsics.checkNotNullParameter(fileStorageService, "fileStorageService");
        Intrinsics.checkNotNullParameter(startTypingUseCase, "startTypingUseCase");
        Intrinsics.checkNotNullParameter(stopTypingUseCase, "stopTypingUseCase");
        Intrinsics.checkNotNullParameter(observeTypingUseCase, "observeTypingUseCase");
        Intrinsics.checkNotNullParameter(observeUserOnlineUseCase, "observeUserOnlineUseCase");
        Intrinsics.checkNotNullParameter(updateUserOnlineUseCase, "updateUserOnlineUseCase");
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        this.currentUserId = currentUserId;
        this.otherUserId = otherUserId;
        this.sendMessageUseCase = sendMessageUseCase;
        this.getMessagesUseCase = getMessagesUseCase;
        this.markMessagesAsReadUseCase = markMessagesAsReadUseCase;
        this.markMessageDeliveredUseCase = markMessageDeliveredUseCase;
        this.fileStorageService = fileStorageService;
        this.startTypingUseCase = startTypingUseCase;
        this.stopTypingUseCase = stopTypingUseCase;
        this.observeTypingUseCase = observeTypingUseCase;
        this.observeUserOnlineUseCase = observeUserOnlineUseCase;
        this.updateUserOnlineUseCase = updateUserOnlineUseCase;
        this._messages = StateFlowKt.MutableStateFlow(CollectionsKt.emptyList());
        this._isLoading = StateFlowKt.MutableStateFlow(false);
        this._error = StateFlowKt.MutableStateFlow(null);
        this._inputText = StateFlowKt.MutableStateFlow("");
        this._assignedPsychologist = StateFlowKt.MutableStateFlow(null);
        this._isOtherTyping = StateFlowKt.MutableStateFlow(false);
        this._psychologistOnline = StateFlowKt.MutableStateFlow(false);
        this.uiState = FlowKt.stateIn(FlowKt.combine(this._messages, this._assignedPsychologist, this._isLoading, this._error, this._inputText, new ChatViewModel$uiState$1(this, null)), ViewModelKt.getViewModelScope(this), SharingStarted.Companion.WhileSubscribed$default(SharingStarted.INSTANCE, 5000L, 0L, 2, null), new ChatUiState(null, null, String.valueOf(this.currentUserId), null, false, null, false, false, 251, null));
        this.typingOnlineState = FlowKt.stateIn(FlowKt.combine(this._isOtherTyping, this._psychologistOnline, new ChatViewModel$typingOnlineState$1(null)), ViewModelKt.getViewModelScope(this), SharingStarted.Companion.WhileSubscribed$default(SharingStarted.INSTANCE, 5000L, 0L, 2, null), new Pair(false, false));
        this.appContext = appContext.getApplicationContext();
        this._audioUiState = StateFlowKt.MutableStateFlow(new AudioPlaybackUiState(null, null, 0L, 0L, null, 31, null));
        this.playerListener = new Player.Listener() { // from class: org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModel$playerListener$1
            @Override // androidx.media3.common.Player.Listener
            public void onPlaybackStateChanged(int playbackState) {
                ExoPlayer player = this.this$0.exoPlayer;
                if (player == null) {
                }
                AudioPlaybackUiState current = (AudioPlaybackUiState) this.this$0._audioUiState.getValue();
                switch (playbackState) {
                    case 2:
                        this.this$0._audioUiState.setValue(AudioPlaybackUiState.copy$default(current, AudioPlaybackStatus.LOADING, null, 0L, 0L, null, 30, null));
                        break;
                    case 3:
                        if (player.isPlaying()) {
                            this.this$0._audioUiState.setValue(AudioPlaybackUiState.copy$default(current, AudioPlaybackStatus.PLAYING, null, 0L, Math.max(player.getDuration(), 0L), null, 22, null));
                            this.this$0.startProgressUpdates();
                        }
                        break;
                    case 4:
                        this.this$0.stopProgressUpdates();
                        this.this$0._audioUiState.setValue(new AudioPlaybackUiState(null, null, 0L, 0L, null, 31, null));
                        break;
                }
            }

            @Override // androidx.media3.common.Player.Listener
            public void onIsPlayingChanged(boolean isPlaying) {
                ExoPlayer player = this.this$0.exoPlayer;
                if (player == null) {
                    return;
                }
                AudioPlaybackUiState current = (AudioPlaybackUiState) this.this$0._audioUiState.getValue();
                if (current.getActiveMessageId() == null) {
                    return;
                }
                if (isPlaying) {
                    this.this$0._audioUiState.setValue(AudioPlaybackUiState.copy$default(current, AudioPlaybackStatus.PLAYING, null, 0L, Math.max(player.getDuration(), 0L), null, 22, null));
                    this.this$0.startProgressUpdates();
                } else if (player.getPlaybackState() != 4) {
                    this.this$0.stopProgressUpdates();
                    this.this$0._audioUiState.setValue(AudioPlaybackUiState.copy$default(current, AudioPlaybackStatus.PAUSED, null, Math.max(player.getCurrentPosition(), 0L), Math.max(player.getDuration(), 0L), null, 18, null));
                }
            }

            @Override // androidx.media3.common.Player.Listener
            public void onPlayerError(PlaybackException error) {
                Intrinsics.checkNotNullParameter(error, "error");
                Log.e("VoiceNote", "Error de reproducción: " + error.getMessage(), error);
                this.this$0.stopProgressUpdates();
                MutableStateFlow mutableStateFlow = this.this$0._audioUiState;
                AudioPlaybackUiState audioPlaybackUiState = (AudioPlaybackUiState) this.this$0._audioUiState.getValue();
                AudioPlaybackStatus audioPlaybackStatus = AudioPlaybackStatus.ERROR;
                String message = error.getMessage();
                if (message == null) {
                    message = "No se pudo reproducir el audio";
                }
                mutableStateFlow.setValue(AudioPlaybackUiState.copy$default(audioPlaybackUiState, audioPlaybackStatus, null, 0L, 0L, message, 14, null));
            }
        };
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new AnonymousClass1(null), 3, null);
        observeMessages();
        this._isRecording = StateFlowKt.MutableStateFlow(false);
        this._recordingFile = StateFlowKt.MutableStateFlow(null);
    }

    public final StateFlow<AudioPlaybackUiState> getAudioUiState() {
        return FlowKt.asStateFlow(this._audioUiState);
    }

    public final StateFlow<ChatUiState> getUiState() {
        return this.uiState;
    }

    public final StateFlow<Pair<Boolean, Boolean>> getTypingOnlineState() {
        return this.typingOnlineState;
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModel$1, reason: invalid class name */
    /* JADX INFO: compiled from: ChatViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModel$1", f = "ChatViewModel.kt", i = {}, l = {197}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ChatViewModel.this.new AnonymousClass1(continuation);
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
                    ChatViewModel.this.initPlayer();
                    this.label = 1;
                    if (ChatViewModel.this.initChatFeatures(this) == coroutine_suspended) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public final void initPlayer() {
        if (this.exoPlayer != null) {
            return;
        }
        AudioAttributes audioAttributes = new AudioAttributes.Builder().setContentType(1).setUsage(1).build();
        Intrinsics.checkNotNullExpressionValue(audioAttributes, "build(...)");
        ExoPlayer exoPlayerBuild = new ExoPlayer.Builder(this.appContext).build();
        exoPlayerBuild.setAudioAttributes(audioAttributes, true);
        exoPlayerBuild.addListener(this.playerListener);
        this.exoPlayer = exoPlayerBuild;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object initChatFeatures(Continuation<? super Unit> continuation) {
        initTyping();
        initOnlineStatus();
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModel$initTyping$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ChatViewModel.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "isTyping", ""}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModel$initTyping$1", f = "ChatViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C08301 extends SuspendLambda implements Function2<Boolean, Continuation<? super Unit>, Object> {
        /* synthetic */ boolean Z$0;
        int label;

        C08301(Continuation<? super C08301> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C08301 c08301 = ChatViewModel.this.new C08301(continuation);
            c08301.Z$0 = ((Boolean) obj).booleanValue();
            return c08301;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Boolean bool, Continuation<? super Unit> continuation) {
            return invoke(bool.booleanValue(), continuation);
        }

        public final Object invoke(boolean z, Continuation<? super Unit> continuation) {
            return ((C08301) create(Boolean.valueOf(z), continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            boolean isTyping = this.Z$0;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    ChatViewModel.this._isOtherTyping.setValue(Boxing.boxBoolean(isTyping));
                    return Unit.INSTANCE;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    private final void initTyping() {
        FlowKt.launchIn(FlowKt.onEach(this.observeTypingUseCase.invoke(this.currentUserId, this.otherUserId), new C08301(null)), ViewModelKt.getViewModelScope(this));
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModel$initOnlineStatus$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ChatViewModel.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "isOnline", ""}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModel$initOnlineStatus$1", f = "ChatViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C08291 extends SuspendLambda implements Function2<Boolean, Continuation<? super Unit>, Object> {
        /* synthetic */ boolean Z$0;
        int label;

        C08291(Continuation<? super C08291> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C08291 c08291 = ChatViewModel.this.new C08291(continuation);
            c08291.Z$0 = ((Boolean) obj).booleanValue();
            return c08291;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Boolean bool, Continuation<? super Unit> continuation) {
            return invoke(bool.booleanValue(), continuation);
        }

        public final Object invoke(boolean z, Continuation<? super Unit> continuation) {
            return ((C08291) create(Boolean.valueOf(z), continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            boolean isOnline = this.Z$0;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    ChatViewModel.this._psychologistOnline.setValue(Boxing.boxBoolean(isOnline));
                    ChatViewModel.this.updatePsychologistInfo();
                    return Unit.INSTANCE;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    private final void initOnlineStatus() {
        FlowKt.launchIn(FlowKt.onEach(this.observeUserOnlineUseCase.invoke(this.otherUserId), new C08291(null)), ViewModelKt.getViewModelScope(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updatePsychologistInfo() {
        PsychologistInfo current = this._assignedPsychologist.getValue();
        if (current != null) {
            this._assignedPsychologist.setValue(PsychologistInfo.copy$default(current, null, null, null, this._psychologistOnline.getValue().booleanValue(), 7, null));
        }
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModel$observeMessages$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ChatViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModel$observeMessages$1", f = "ChatViewModel.kt", i = {}, l = {246}, m = "invokeSuspend", n = {}, s = {})
    static final class C08331 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C08331(Continuation<? super C08331> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ChatViewModel.this.new C08331(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C08331) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    ChatViewModel.this._isLoading.setValue(Boxing.boxBoolean(true));
                    Flow<List<Message>> flowInvoke = ChatViewModel.this.getMessagesUseCase.invoke(ChatViewModel.this.currentUserId, ChatViewModel.this.otherUserId);
                    final ChatViewModel chatViewModel = ChatViewModel.this;
                    this.label = 1;
                    if (flowInvoke.collect(new FlowCollector() { // from class: org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModel.observeMessages.1.1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public /* bridge */ /* synthetic */ Object emit(Object value, Continuation $completion) {
                            return emit((List<Message>) value, (Continuation<? super Unit>) $completion);
                        }

                        public final Object emit(List<Message> list, Continuation<? super Unit> continuation) {
                            chatViewModel._messages.setValue(list);
                            chatViewModel._isLoading.setValue(Boxing.boxBoolean(false));
                            chatViewModel.markMessagesAsRead();
                            chatViewModel.markMessagesAsDelivered();
                            return Unit.INSTANCE;
                        }
                    }, this) == coroutine_suspended) {
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

    public final void observeMessages() {
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C08331(null), 3, null);
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModel$markMessagesAsDelivered$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ChatViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModel$markMessagesAsDelivered$1", f = "ChatViewModel.kt", i = {0, 0, 0, 0, 0}, l = {259}, m = "invokeSuspend", n = {"$this$forEach\\1", "element\\1", "message\\2", "$i$f$forEach\\1\\257", "$i$a$-forEach-ChatViewModel$markMessagesAsDelivered$1$1\\2\\501\\0"}, s = {"L$0", "L$3", "L$4", "I$0", "I$1"})
    static final class C08311 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;

        C08311(Continuation<? super C08311> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ChatViewModel.this.new C08311(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C08311) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x005e  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x00b7  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x006a -> B:18:0x00b3). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x007c -> B:18:0x00b3). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x00af -> B:18:0x00b3). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object $result) {
            C08311 c08311;
            Iterable iterable;
            ChatViewModel chatViewModel;
            int i;
            Iterator it;
            Object obj;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    Iterable iterable2 = (Iterable) ChatViewModel.this._messages.getValue();
                    c08311 = this;
                    iterable = iterable2;
                    chatViewModel = ChatViewModel.this;
                    i = 0;
                    it = iterable2.iterator();
                    obj = coroutine_suspended;
                    if (it.hasNext()) {
                        Object next = it.next();
                        Message message = (Message) next;
                        if (!message.isDelivered() && !Intrinsics.areEqual(message.getSenderId(), String.valueOf(chatViewModel.currentUserId))) {
                            MarkMessageDeliveredUseCase markMessageDeliveredUseCase = chatViewModel.markMessageDeliveredUseCase;
                            long j = Long.parseLong(message.getId());
                            long j2 = chatViewModel.currentUserId;
                            c08311.L$0 = SpillingKt.nullOutSpilledVariable(iterable);
                            c08311.L$1 = chatViewModel;
                            c08311.L$2 = it;
                            c08311.L$3 = SpillingKt.nullOutSpilledVariable(next);
                            c08311.L$4 = SpillingKt.nullOutSpilledVariable(message);
                            c08311.I$0 = i;
                            c08311.I$1 = 0;
                            c08311.label = 1;
                            if (markMessageDeliveredUseCase.m10378invoke0E7RQCE(j, j2, c08311) == obj) {
                                return obj;
                            }
                        }
                        if (it.hasNext()) {
                            return Unit.INSTANCE;
                        }
                    }
                    break;
                case 1:
                    int i2 = this.I$1;
                    i = this.I$0;
                    Object obj2 = this.L$3;
                    it = (Iterator) this.L$2;
                    chatViewModel = (ChatViewModel) this.L$1;
                    iterable = (Iterable) this.L$0;
                    ResultKt.throwOnFailure($result);
                    ((Result) $result).getValue();
                    c08311 = this;
                    obj = coroutine_suspended;
                    if (it.hasNext()) {
                    }
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    public final void markMessagesAsDelivered() {
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C08311(null), 3, null);
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModel$startTyping$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ChatViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModel$startTyping$1", f = "ChatViewModel.kt", i = {}, l = {267}, m = "invokeSuspend", n = {}, s = {})
    static final class C08371 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C08371(Continuation<? super C08371> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ChatViewModel.this.new C08371(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C08371) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    this.label = 1;
                    if (ChatViewModel.this.startTypingUseCase.m10382invoke0E7RQCE(ChatViewModel.this.currentUserId, ChatViewModel.this.otherUserId, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    break;
                case 1:
                    ResultKt.throwOnFailure($result);
                    ((Result) $result).getValue();
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return Unit.INSTANCE;
        }
    }

    public final void startTyping() {
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C08371(null), 3, null);
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModel$stopTyping$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ChatViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModel$stopTyping$1", f = "ChatViewModel.kt", i = {}, l = {273}, m = "invokeSuspend", n = {}, s = {})
    static final class C08391 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C08391(Continuation<? super C08391> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ChatViewModel.this.new C08391(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C08391) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    this.label = 1;
                    if (ChatViewModel.this.stopTypingUseCase.m10383invoke0E7RQCE(ChatViewModel.this.currentUserId, ChatViewModel.this.otherUserId, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    break;
                case 1:
                    ResultKt.throwOnFailure($result);
                    ((Result) $result).getValue();
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return Unit.INSTANCE;
        }
    }

    public final void stopTyping() {
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C08391(null), 3, null);
    }

    public final void toggleAudioPlayback(String messageId, String remoteUrl) {
        String mimeType;
        MediaItem mediaItem;
        Intrinsics.checkNotNullParameter(messageId, "messageId");
        Intrinsics.checkNotNullParameter(remoteUrl, "remoteUrl");
        if (!StringsKt.startsWith$default(remoteUrl, "http", false, 2, (Object) null)) {
            this._audioUiState.setValue(new AudioPlaybackUiState(AudioPlaybackStatus.ERROR, messageId, 0L, 0L, "URL de audio inválida", 12, null));
            return;
        }
        initPlayer();
        ExoPlayer player = this.exoPlayer;
        if (player == null) {
            Log.e("VoiceNote", "ExoPlayer no se pudo inicializar");
            this._audioUiState.setValue(new AudioPlaybackUiState(AudioPlaybackStatus.ERROR, messageId, 0L, 0L, "Error al inicializar el reproductor", 12, null));
            return;
        }
        AudioPlaybackUiState current = this._audioUiState.getValue();
        if (Intrinsics.areEqual(current.getActiveMessageId(), messageId)) {
            if (player.isPlaying()) {
                player.pause();
                return;
            } else {
                player.play();
                return;
            }
        }
        stopProgressUpdates();
        this._audioUiState.setValue(new AudioPlaybackUiState(AudioPlaybackStatus.LOADING, messageId, 0L, 0L, null, 28, null));
        if (StringsKt.contains((CharSequence) remoteUrl, (CharSequence) ".ogg", true)) {
            mimeType = MimeTypes.AUDIO_OGG;
        } else if (StringsKt.contains((CharSequence) remoteUrl, (CharSequence) ".m4a", true)) {
            mimeType = MimeTypes.AUDIO_MP4;
        } else if (StringsKt.contains((CharSequence) remoteUrl, (CharSequence) ".mp3", true)) {
            mimeType = MimeTypes.AUDIO_MPEG;
        } else {
            mimeType = StringsKt.contains((CharSequence) remoteUrl, (CharSequence) ".wav", true) ? MimeTypes.AUDIO_WAV : null;
        }
        if (mimeType != null) {
            mediaItem = new MediaItem.Builder().setUri(remoteUrl).setMimeType(mimeType).build();
        } else {
            mediaItem = MediaItem.fromUri(remoteUrl);
        }
        Intrinsics.checkNotNull(mediaItem);
        Log.d("VoiceNote", "Reproduciendo: " + remoteUrl + " (mime=" + mimeType + ")");
        player.setMediaItem(mediaItem);
        player.setPlayWhenReady(true);
        player.prepare();
    }

    public final void stopAudioPlayback() {
        ExoPlayer exoPlayer = this.exoPlayer;
        if (exoPlayer != null) {
            exoPlayer.stop();
        }
        stopProgressUpdates();
        this._audioUiState.setValue(new AudioPlaybackUiState(null, null, 0L, 0L, null, 31, null));
    }

    public final void releaseAudioPlayer() {
        stopProgressUpdates();
        ExoPlayer exoPlayer = this.exoPlayer;
        if (exoPlayer != null) {
            exoPlayer.removeListener(this.playerListener);
        }
        ExoPlayer exoPlayer2 = this.exoPlayer;
        if (exoPlayer2 != null) {
            exoPlayer2.release();
        }
        this.exoPlayer = null;
        this._audioUiState.setValue(new AudioPlaybackUiState(null, null, 0L, 0L, null, 31, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startProgressUpdates() {
        ExoPlayer player = this.exoPlayer;
        if (player == null) {
            return;
        }
        Job job = this.progressJob;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        this.progressJob = BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C08361(player, null), 3, null);
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModel$startProgressUpdates$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ChatViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModel$startProgressUpdates$1", f = "ChatViewModel.kt", i = {0, 0}, l = {363}, m = "invokeSuspend", n = {"$this$launch", "currentState"}, s = {"L$0", "L$1"})
    static final class C08361 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ ExoPlayer $player;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C08361(ExoPlayer exoPlayer, Continuation<? super C08361> continuation) {
            super(2, continuation);
            this.$player = exoPlayer;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C08361 c08361 = ChatViewModel.this.new C08361(this.$player, continuation);
            c08361.L$0 = obj;
            return c08361;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C08361) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0028  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0043  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0084 -> B:18:0x0086). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object $result) {
            C08361 c08361;
            C08361 c083612;
            CoroutineScope $this$launch = (CoroutineScope) this.L$0;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    c08361 = this;
                    if (CoroutineScopeKt.isActive($this$launch) && ChatViewModel.this.exoPlayer != null) {
                        AudioPlaybackUiState currentState = (AudioPlaybackUiState) ChatViewModel.this._audioUiState.getValue();
                        if (currentState.getActiveMessageId() != null) {
                            ChatViewModel.this._audioUiState.setValue(AudioPlaybackUiState.copy$default(currentState, null, null, Math.max(c08361.$player.getCurrentPosition(), 0L), Math.max(c08361.$player.getDuration(), 0L), null, 19, null));
                            c08361.L$0 = $this$launch;
                            c08361.L$1 = SpillingKt.nullOutSpilledVariable(currentState);
                            c08361.label = 1;
                            if (DelayKt.delay(300L, c08361) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            c083612 = c08361;
                            c08361 = c083612;
                            if (CoroutineScopeKt.isActive($this$launch)) {
                                AudioPlaybackUiState currentState2 = (AudioPlaybackUiState) ChatViewModel.this._audioUiState.getValue();
                                if (currentState2.getActiveMessageId() != null) {
                                }
                            }
                        }
                    }
                    return Unit.INSTANCE;
                case 1:
                    ResultKt.throwOnFailure($result);
                    c083612 = this;
                    c08361 = c083612;
                    if (CoroutineScopeKt.isActive($this$launch)) {
                    }
                    return Unit.INSTANCE;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void stopProgressUpdates() {
        Job job = this.progressJob;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        this.progressJob = null;
    }

    public final void sendTextMessage(String content) {
        Intrinsics.checkNotNullParameter(content, "content");
        if (StringsKt.isBlank(content)) {
            return;
        }
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C08351(content, null), 3, null);
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModel$sendTextMessage$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ChatViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModel$sendTextMessage$1", f = "ChatViewModel.kt", i = {}, l = {380}, m = "invokeSuspend", n = {}, s = {})
    static final class C08351 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $content;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C08351(String str, Continuation<? super C08351> continuation) {
            super(2, continuation);
            this.$content = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ChatViewModel.this.new C08351(this.$content, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C08351) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object value;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    ChatViewModel.this._error.setValue(null);
                    ChatViewModel.this.stopTyping();
                    this.label = 1;
                    Object objM10380invokebMdYcbs$default = SendMessageUseCase.m10380invokebMdYcbs$default(ChatViewModel.this.sendMessageUseCase, ChatViewModel.this.currentUserId, ChatViewModel.this.otherUserId, this.$content, null, null, null, this, 56, null);
                    if (objM10380invokebMdYcbs$default == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    value = objM10380invokebMdYcbs$default;
                    break;
                    break;
                case 1:
                    ResultKt.throwOnFailure($result);
                    value = ((Result) $result).getValue();
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            if (Result.m8549isSuccessimpl(value)) {
            }
            ChatViewModel chatViewModel = ChatViewModel.this;
            Throwable thM8545exceptionOrNullimpl = Result.m8545exceptionOrNullimpl(value);
            if (thM8545exceptionOrNullimpl != null) {
                chatViewModel._error.setValue(thM8545exceptionOrNullimpl.getMessage());
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModel$sendAttachment$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ChatViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModel$sendAttachment$1", f = "ChatViewModel.kt", i = {0, 1, 1}, l = {395, 397}, m = "invokeSuspend", n = {"conversationId", "conversationId", "result"}, s = {"L$0", "L$0", "L$1"})
    static final class C08341 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Uri $uri;
        Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C08341(Uri uri, Continuation<? super C08341> continuation) {
            super(2, continuation);
            this.$uri = uri;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ChatViewModel.this.new C08341(this.$uri, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C08341) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0073  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x00bf  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x00cd  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x00df  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object $result) {
            String conversationId;
            Object objUploadFile;
            FileStorageService.UploadResult result;
            Object value;
            Throwable thM8545exceptionOrNullimpl;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    ChatViewModel.this._error.setValue(null);
                    ChatViewModel.this.stopTyping();
                    conversationId = ChatFirebaseService.INSTANCE.generateRoomId(ChatViewModel.this.currentUserId, ChatViewModel.this.otherUserId);
                    this.L$0 = SpillingKt.nullOutSpilledVariable(conversationId);
                    this.label = 1;
                    objUploadFile = ChatViewModel.this.fileStorageService.uploadFile(this.$uri, conversationId, this);
                    if (objUploadFile == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    result = (FileStorageService.UploadResult) objUploadFile;
                    if (!(result instanceof FileStorageService.UploadResult.Success)) {
                        this.L$0 = SpillingKt.nullOutSpilledVariable(conversationId);
                        this.L$1 = SpillingKt.nullOutSpilledVariable(result);
                        this.label = 2;
                        Object objM10381invokebMdYcbs = ChatViewModel.this.sendMessageUseCase.m10381invokebMdYcbs(ChatViewModel.this.currentUserId, ChatViewModel.this.otherUserId, "", ((FileStorageService.UploadResult.Success) result).getUrl(), ((FileStorageService.UploadResult.Success) result).getType(), ((FileStorageService.UploadResult.Success) result).getFileName(), this);
                        if (objM10381invokebMdYcbs == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        value = objM10381invokebMdYcbs;
                        if (Result.m8549isSuccessimpl(value)) {
                        }
                        ChatViewModel chatViewModel = ChatViewModel.this;
                        thM8545exceptionOrNullimpl = Result.m8545exceptionOrNullimpl(value);
                        if (thM8545exceptionOrNullimpl != null) {
                            chatViewModel._error.setValue(thM8545exceptionOrNullimpl.getMessage());
                        }
                        Result.m8541boximpl(value);
                        return Unit.INSTANCE;
                    }
                    if (result instanceof FileStorageService.UploadResult.Error) {
                        ChatViewModel.this._error.setValue(((FileStorageService.UploadResult.Error) result).getMessage());
                        return Unit.INSTANCE;
                    }
                    throw new NoWhenBranchMatchedException();
                case 1:
                    conversationId = (String) this.L$0;
                    ResultKt.throwOnFailure($result);
                    objUploadFile = $result;
                    result = (FileStorageService.UploadResult) objUploadFile;
                    if (!(result instanceof FileStorageService.UploadResult.Success)) {
                    }
                    break;
                case 2:
                    ResultKt.throwOnFailure($result);
                    value = ((Result) $result).getValue();
                    if (Result.m8549isSuccessimpl(value)) {
                    }
                    ChatViewModel chatViewModel2 = ChatViewModel.this;
                    thM8545exceptionOrNullimpl = Result.m8545exceptionOrNullimpl(value);
                    if (thM8545exceptionOrNullimpl != null) {
                    }
                    Result.m8541boximpl(value);
                    return Unit.INSTANCE;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    public final void sendAttachment(Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C08341(uri, null), 3, null);
    }

    public final StateFlow<Boolean> isRecording() {
        return FlowKt.asStateFlow(this._isRecording);
    }

    public final void startRecording(File file) {
        Intrinsics.checkNotNullParameter(file, "file");
        Log.d("VoiceNote", "Iniciando grabación: " + file.getAbsolutePath());
        this._isRecording.setValue(true);
        this._recordingFile.setValue(file);
        startTyping();
    }

    public final StateFlow<File> getRecordingFile() {
        return FlowKt.asStateFlow(this._recordingFile);
    }

    public final void stopRecordingAndSend(File file) {
        Intrinsics.checkNotNullParameter(file, "file");
        Log.d("VoiceNote", "Deteniendo grabación: " + file.getAbsolutePath() + ", tamaño: " + file.length() + " bytes");
        this._isRecording.setValue(false);
        this._recordingFile.setValue(null);
        stopTyping();
        if (file.length() > 0) {
            BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C08381(file, null), 3, null);
        } else {
            this._error.setValue("La nota de voz está vacía");
        }
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModel$stopRecordingAndSend$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ChatViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModel$stopRecordingAndSend$1", f = "ChatViewModel.kt", i = {0, 1, 1}, l = {444, 446}, m = "invokeSuspend", n = {"conversationId", "conversationId", "result"}, s = {"L$0", "L$0", "L$1"})
    static final class C08381 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ File $file;
        Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C08381(File file, Continuation<? super C08381> continuation) {
            super(2, continuation);
            this.$file = file;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ChatViewModel.this.new C08381(this.$file, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C08381) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x006e  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x00b7  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object $result) {
            String conversationId;
            Object objUploadVoiceNote;
            FileStorageService.UploadResult result;
            Object value;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    ChatViewModel.this._error.setValue(null);
                    conversationId = ChatFirebaseService.INSTANCE.generateRoomId(ChatViewModel.this.currentUserId, ChatViewModel.this.otherUserId);
                    this.L$0 = SpillingKt.nullOutSpilledVariable(conversationId);
                    this.label = 1;
                    objUploadVoiceNote = ChatViewModel.this.fileStorageService.uploadVoiceNote(this.$file, conversationId, this);
                    if (objUploadVoiceNote == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    result = (FileStorageService.UploadResult) objUploadVoiceNote;
                    if (!(result instanceof FileStorageService.UploadResult.Success)) {
                        this.L$0 = SpillingKt.nullOutSpilledVariable(conversationId);
                        this.L$1 = SpillingKt.nullOutSpilledVariable(result);
                        this.label = 2;
                        Object objM10381invokebMdYcbs = ChatViewModel.this.sendMessageUseCase.m10381invokebMdYcbs(ChatViewModel.this.currentUserId, ChatViewModel.this.otherUserId, "", ((FileStorageService.UploadResult.Success) result).getUrl(), ((FileStorageService.UploadResult.Success) result).getType(), ((FileStorageService.UploadResult.Success) result).getFileName(), this);
                        if (objM10381invokebMdYcbs == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        value = objM10381invokebMdYcbs;
                        Result.m8541boximpl(value);
                        return Unit.INSTANCE;
                    }
                    if (result instanceof FileStorageService.UploadResult.Error) {
                        ChatViewModel.this._error.setValue(((FileStorageService.UploadResult.Error) result).getMessage());
                        return Unit.INSTANCE;
                    }
                    throw new NoWhenBranchMatchedException();
                case 1:
                    conversationId = (String) this.L$0;
                    ResultKt.throwOnFailure($result);
                    objUploadVoiceNote = $result;
                    result = (FileStorageService.UploadResult) objUploadVoiceNote;
                    if (!(result instanceof FileStorageService.UploadResult.Success)) {
                    }
                    break;
                case 2:
                    ResultKt.throwOnFailure($result);
                    value = ((Result) $result).getValue();
                    Result.m8541boximpl(value);
                    return Unit.INSTANCE;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    public final void onInputChanged(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        this._inputText.setValue(text);
        if (!StringsKt.isBlank(text)) {
            startTyping();
        } else {
            stopTyping();
        }
    }

    public final void sendMessage() {
        String text = this._inputText.getValue();
        if (StringsKt.isBlank(text)) {
            return;
        }
        sendTextMessage(text);
        this._inputText.setValue("");
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModel$markMessagesAsRead$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ChatViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModel$markMessagesAsRead$1", f = "ChatViewModel.kt", i = {}, l = {WindowSizeClass.HEIGHT_DP_MEDIUM_LOWER_BOUND}, m = "invokeSuspend", n = {}, s = {})
    static final class C08321 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C08321(Continuation<? super C08321> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ChatViewModel.this.new C08321(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C08321) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    this.label = 1;
                    if (ChatViewModel.this.markMessagesAsReadUseCase.m10379invoke0E7RQCE(ChatViewModel.this.currentUserId, ChatViewModel.this.otherUserId, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    break;
                case 1:
                    ResultKt.throwOnFailure($result);
                    ((Result) $result).getValue();
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return Unit.INSTANCE;
        }
    }

    public final void markMessagesAsRead() {
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C08321(null), 3, null);
    }

    public final void clearError() {
        this._error.setValue(null);
    }

    public final void cancelRecording() {
        this._isRecording.setValue(false);
        File value = this._recordingFile.getValue();
        if (value != null) {
            value.delete();
        }
        this._recordingFile.setValue(null);
        stopTyping();
    }

    @Override // androidx.lifecycle.ViewModel
    protected void onCleared() {
        super.onCleared();
        releaseAudioPlayer();
    }
}
