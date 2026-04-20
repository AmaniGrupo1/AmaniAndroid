.class public final Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "ChatViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c3\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000c*\u0001<\u0008\u0007\u0018\u00002\u00020\u0001Bo\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u0012\u0006\u0010\u0015\u001a\u00020\u0016\u0012\u0006\u0010\u0017\u001a\u00020\u0018\u0012\u0006\u0010\u0019\u001a\u00020\u001a\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0008\u0010>\u001a\u00020?H\u0002J\u000e\u0010@\u001a\u00020?H\u0082@\u00a2\u0006\u0002\u0010AJ\u0008\u0010B\u001a\u00020?H\u0002J\u0008\u0010C\u001a\u00020?H\u0002J\u0008\u0010D\u001a\u00020?H\u0002J\u0006\u0010E\u001a\u00020?J\u0006\u0010F\u001a\u00020?J\u0006\u0010G\u001a\u00020?J\u0006\u0010H\u001a\u00020?J\u0016\u0010I\u001a\u00020?2\u0006\u0010J\u001a\u00020$2\u0006\u0010K\u001a\u00020$J\u0006\u0010L\u001a\u00020?J\u0006\u0010M\u001a\u00020?J\u0008\u0010N\u001a\u00020?H\u0002J\u0008\u0010O\u001a\u00020?H\u0002J\u000e\u0010P\u001a\u00020?2\u0006\u0010Q\u001a\u00020$J\u000e\u0010R\u001a\u00020?2\u0006\u0010S\u001a\u00020TJ\u000e\u0010W\u001a\u00020?2\u0006\u0010X\u001a\u00020YJ\u000e\u0010]\u001a\u00020?2\u0006\u0010X\u001a\u00020YJ\u000e\u0010^\u001a\u00020?2\u0006\u0010_\u001a\u00020$J\u0006\u0010`\u001a\u00020?J\u0006\u0010a\u001a\u00020?J\u0006\u0010b\u001a\u00020?J\u0006\u0010c\u001a\u00020?J\u0008\u0010d\u001a\u00020?H\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001d\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020 0\u001f0\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\"0\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010#\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010$0\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010%\u001a\u0008\u0012\u0004\u0012\u00020$0\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010&\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\'0\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\"0\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\"0\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010*\u001a\u0008\u0012\u0004\u0012\u00020,0+8F\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010.R\u0017\u0010/\u001a\u0008\u0012\u0004\u0012\u0002000+\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u0010.R#\u00102\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\"030+\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u0010.R\u0016\u0010\u0019\u001a\n 5*\u0004\u0018\u00010\u001a0\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u00106\u001a\u0004\u0018\u000107X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00108\u001a\u0004\u0018\u000109X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010:\u001a\u0008\u0012\u0004\u0012\u00020,0\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010;\u001a\u00020<X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010=R\u0014\u0010U\u001a\u0008\u0012\u0004\u0012\u00020\"0\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010V\u001a\u0008\u0012\u0004\u0012\u00020\"0+8F\u00a2\u0006\u0006\u001a\u0004\u0008V\u0010.R\u0016\u0010Z\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010Y0\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010[\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010Y0+8F\u00a2\u0006\u0006\u001a\u0004\u0008\\\u0010.\u00a8\u0006e"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "currentUserId",
        "",
        "otherUserId",
        "sendMessageUseCase",
        "Lorg/ies/tierno/applicationamani/domain/usecases/SendMessageUseCase;",
        "getMessagesUseCase",
        "Lorg/ies/tierno/applicationamani/domain/usecases/GetMessagesUseCase;",
        "markMessagesAsReadUseCase",
        "Lorg/ies/tierno/applicationamani/domain/usecases/MarkMessagesAsReadUseCase;",
        "markMessageDeliveredUseCase",
        "Lorg/ies/tierno/applicationamani/domain/usecases/MarkMessageDeliveredUseCase;",
        "fileStorageService",
        "Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;",
        "startTypingUseCase",
        "Lorg/ies/tierno/applicationamani/domain/usecases/StartTypingUseCase;",
        "stopTypingUseCase",
        "Lorg/ies/tierno/applicationamani/domain/usecases/StopTypingUseCase;",
        "observeTypingUseCase",
        "Lorg/ies/tierno/applicationamani/domain/usecases/ObserveTypingUseCase;",
        "observeUserOnlineUseCase",
        "Lorg/ies/tierno/applicationamani/domain/usecases/ObserveUserOnlineUseCase;",
        "updateUserOnlineUseCase",
        "Lorg/ies/tierno/applicationamani/domain/usecases/UpdateUserOnlineUseCase;",
        "appContext",
        "Landroid/content/Context;",
        "<init>",
        "(JJLorg/ies/tierno/applicationamani/domain/usecases/SendMessageUseCase;Lorg/ies/tierno/applicationamani/domain/usecases/GetMessagesUseCase;Lorg/ies/tierno/applicationamani/domain/usecases/MarkMessagesAsReadUseCase;Lorg/ies/tierno/applicationamani/domain/usecases/MarkMessageDeliveredUseCase;Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;Lorg/ies/tierno/applicationamani/domain/usecases/StartTypingUseCase;Lorg/ies/tierno/applicationamani/domain/usecases/StopTypingUseCase;Lorg/ies/tierno/applicationamani/domain/usecases/ObserveTypingUseCase;Lorg/ies/tierno/applicationamani/domain/usecases/ObserveUserOnlineUseCase;Lorg/ies/tierno/applicationamani/domain/usecases/UpdateUserOnlineUseCase;Landroid/content/Context;)V",
        "_messages",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "",
        "Lorg/ies/tierno/applicationamani/domain/models/Message;",
        "_isLoading",
        "",
        "_error",
        "",
        "_inputText",
        "_assignedPsychologist",
        "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;",
        "_isOtherTyping",
        "_psychologistOnline",
        "audioUiState",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;",
        "getAudioUiState",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "uiState",
        "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatUiState;",
        "getUiState",
        "typingOnlineState",
        "Lkotlin/Pair;",
        "getTypingOnlineState",
        "kotlin.jvm.PlatformType",
        "exoPlayer",
        "Landroidx/media3/exoplayer/ExoPlayer;",
        "progressJob",
        "Lkotlinx/coroutines/Job;",
        "_audioUiState",
        "playerListener",
        "org/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$playerListener$1",
        "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$playerListener$1;",
        "initPlayer",
        "",
        "initChatFeatures",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "initTyping",
        "initOnlineStatus",
        "updatePsychologistInfo",
        "observeMessages",
        "markMessagesAsDelivered",
        "startTyping",
        "stopTyping",
        "toggleAudioPlayback",
        "messageId",
        "remoteUrl",
        "stopAudioPlayback",
        "releaseAudioPlayer",
        "startProgressUpdates",
        "stopProgressUpdates",
        "sendTextMessage",
        "content",
        "sendAttachment",
        "uri",
        "Landroid/net/Uri;",
        "_isRecording",
        "isRecording",
        "startRecording",
        "file",
        "Ljava/io/File;",
        "_recordingFile",
        "recordingFile",
        "getRecordingFile",
        "stopRecordingAndSend",
        "onInputChanged",
        "text",
        "sendMessage",
        "markMessagesAsRead",
        "clearError",
        "cancelRecording",
        "onCleared",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final _assignedPsychologist:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final _audioUiState:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;",
            ">;"
        }
    .end annotation
.end field

.field private final _error:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _inputText:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _isLoading:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final _isOtherTyping:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final _isRecording:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final _messages:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/domain/models/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _psychologistOnline:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final _recordingFile:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final appContext:Landroid/content/Context;

.field private final currentUserId:J

.field private exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

.field private final fileStorageService:Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;

.field private final getMessagesUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/GetMessagesUseCase;

.field private final markMessageDeliveredUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/MarkMessageDeliveredUseCase;

.field private final markMessagesAsReadUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/MarkMessagesAsReadUseCase;

.field private final observeTypingUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/ObserveTypingUseCase;

.field private final observeUserOnlineUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/ObserveUserOnlineUseCase;

.field private final otherUserId:J

.field private final playerListener:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$playerListener$1;

.field private progressJob:Lkotlinx/coroutines/Job;

.field private final sendMessageUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/SendMessageUseCase;

.field private final startTypingUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/StartTypingUseCase;

.field private final stopTypingUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/StopTypingUseCase;

.field private final typingOnlineState:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final uiState:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatUiState;",
            ">;"
        }
    .end annotation
.end field

.field private final updateUserOnlineUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/UpdateUserOnlineUseCase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->$stable:I

    return-void
.end method

.method public constructor <init>(JJLorg/ies/tierno/applicationamani/domain/usecases/SendMessageUseCase;Lorg/ies/tierno/applicationamani/domain/usecases/GetMessagesUseCase;Lorg/ies/tierno/applicationamani/domain/usecases/MarkMessagesAsReadUseCase;Lorg/ies/tierno/applicationamani/domain/usecases/MarkMessageDeliveredUseCase;Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;Lorg/ies/tierno/applicationamani/domain/usecases/StartTypingUseCase;Lorg/ies/tierno/applicationamani/domain/usecases/StopTypingUseCase;Lorg/ies/tierno/applicationamani/domain/usecases/ObserveTypingUseCase;Lorg/ies/tierno/applicationamani/domain/usecases/ObserveUserOnlineUseCase;Lorg/ies/tierno/applicationamani/domain/usecases/UpdateUserOnlineUseCase;Landroid/content/Context;)V
    .locals 28
    .param p1, "currentUserId"    # J
    .param p3, "otherUserId"    # J
    .param p5, "sendMessageUseCase"    # Lorg/ies/tierno/applicationamani/domain/usecases/SendMessageUseCase;
    .param p6, "getMessagesUseCase"    # Lorg/ies/tierno/applicationamani/domain/usecases/GetMessagesUseCase;
    .param p7, "markMessagesAsReadUseCase"    # Lorg/ies/tierno/applicationamani/domain/usecases/MarkMessagesAsReadUseCase;
    .param p8, "markMessageDeliveredUseCase"    # Lorg/ies/tierno/applicationamani/domain/usecases/MarkMessageDeliveredUseCase;
    .param p9, "fileStorageService"    # Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;
    .param p10, "startTypingUseCase"    # Lorg/ies/tierno/applicationamani/domain/usecases/StartTypingUseCase;
    .param p11, "stopTypingUseCase"    # Lorg/ies/tierno/applicationamani/domain/usecases/StopTypingUseCase;
    .param p12, "observeTypingUseCase"    # Lorg/ies/tierno/applicationamani/domain/usecases/ObserveTypingUseCase;
    .param p13, "observeUserOnlineUseCase"    # Lorg/ies/tierno/applicationamani/domain/usecases/ObserveUserOnlineUseCase;
    .param p14, "updateUserOnlineUseCase"    # Lorg/ies/tierno/applicationamani/domain/usecases/UpdateUserOnlineUseCase;
    .param p15, "appContext"    # Landroid/content/Context;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move-object/from16 v8, p12

    move-object/from16 v9, p13

    move-object/from16 v10, p14

    const-string v11, "sendMessageUseCase"

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "getMessagesUseCase"

    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "markMessagesAsReadUseCase"

    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "markMessageDeliveredUseCase"

    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "fileStorageService"

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "startTypingUseCase"

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "stopTypingUseCase"

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "observeTypingUseCase"

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "observeUserOnlineUseCase"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "updateUserOnlineUseCase"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "appContext"

    move-object/from16 v12, p15

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-direct {v0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 76
    move-wide/from16 v13, p1

    iput-wide v13, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->currentUserId:J

    .line 77
    move-wide/from16 v11, p3

    iput-wide v11, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->otherUserId:J

    .line 78
    iput-object v1, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->sendMessageUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/SendMessageUseCase;

    .line 79
    iput-object v2, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->getMessagesUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/GetMessagesUseCase;

    .line 80
    iput-object v3, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->markMessagesAsReadUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/MarkMessagesAsReadUseCase;

    .line 81
    iput-object v4, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->markMessageDeliveredUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/MarkMessageDeliveredUseCase;

    .line 82
    iput-object v5, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->fileStorageService:Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;

    .line 83
    iput-object v6, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->startTypingUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/StartTypingUseCase;

    .line 84
    iput-object v7, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->stopTypingUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/StopTypingUseCase;

    .line 85
    iput-object v8, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->observeTypingUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/ObserveTypingUseCase;

    .line 86
    iput-object v9, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->observeUserOnlineUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/ObserveUserOnlineUseCase;

    .line 87
    iput-object v10, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->updateUserOnlineUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/UpdateUserOnlineUseCase;

    .line 91
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    invoke-static {v15}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v15

    iput-object v15, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->_messages:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 92
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-static {v15}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->_isLoading:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 93
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->_error:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 94
    const-string v1, ""

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->_inputText:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 95
    invoke-static/range {v16 .. v16}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->_assignedPsychologist:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 96
    invoke-static {v15}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->_isOtherTyping:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 97
    invoke-static {v15}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->_psychologistOnline:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 116
    nop

    .line 102
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->_messages:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 v17, v1

    check-cast v17, Lkotlinx/coroutines/flow/Flow;

    .line 103
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->_assignedPsychologist:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 v18, v1

    check-cast v18, Lkotlinx/coroutines/flow/Flow;

    .line 104
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->_isLoading:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 v19, v1

    check-cast v19, Lkotlinx/coroutines/flow/Flow;

    .line 105
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->_error:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 v20, v1

    check-cast v20, Lkotlinx/coroutines/flow/Flow;

    .line 106
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->_inputText:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 v21, v1

    check-cast v21, Lkotlinx/coroutines/flow/Flow;

    .line 101
    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$uiState$1;

    move-object/from16 v2, v16

    invoke-direct {v1, v0, v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$uiState$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v22, v1

    check-cast v22, Lkotlin/jvm/functions/Function6;

    invoke-static/range {v17 .. v22}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function6;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    .line 117
    move-object v2, v0

    check-cast v2, Landroidx/lifecycle/ViewModel;

    invoke-static {v2}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    .line 118
    sget-object v17, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/16 v22, 0x2

    const/16 v23, 0x0

    const-wide/16 v18, 0x1388

    const-wide/16 v20, 0x0

    invoke-static/range {v17 .. v23}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;JJILjava/lang/Object;)Lkotlinx/coroutines/flow/SharingStarted;

    move-result-object v3

    .line 119
    new-instance v17, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatUiState;

    iget-wide v4, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->currentUserId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    const/16 v26, 0xfb

    const/16 v27, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v17 .. v27}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatUiState;-><init>(Ljava/util/List;Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 116
    move-object/from16 v4, v17

    invoke-static {v1, v2, v3, v4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->uiState:Lkotlinx/coroutines/flow/StateFlow;

    .line 125
    nop

    .line 123
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->_isOtherTyping:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    iget-object v2, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->_psychologistOnline:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v2, Lkotlinx/coroutines/flow/Flow;

    new-instance v3, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$typingOnlineState$1;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$typingOnlineState$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function3;

    invoke-static {v1, v2, v3}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    .line 126
    move-object v2, v0

    check-cast v2, Landroidx/lifecycle/ViewModel;

    invoke-static {v2}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    .line 127
    sget-object v17, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/16 v22, 0x2

    const-wide/16 v18, 0x1388

    const-wide/16 v20, 0x0

    invoke-static/range {v17 .. v23}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;JJILjava/lang/Object;)Lkotlinx/coroutines/flow/SharingStarted;

    move-result-object v3

    .line 128
    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v15, v15}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    invoke-static {v1, v2, v3, v4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->typingOnlineState:Lkotlinx/coroutines/flow/StateFlow;

    .line 131
    invoke-virtual/range {p15 .. p15}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->appContext:Landroid/content/Context;

    .line 134
    new-instance v17, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;

    const/16 v25, 0x1f

    const/16 v26, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v17 .. v26}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;Ljava/lang/String;JJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static/range {v17 .. v17}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->_audioUiState:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 136
    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$playerListener$1;

    invoke-direct {v1, v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$playerListener$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)V

    iput-object v1, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->playerListener:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$playerListener$1;

    .line 194
    nop

    .line 195
    move-object v1, v0

    check-cast v1, Landroidx/lifecycle/ViewModel;

    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v17

    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v20, v1

    check-cast v20, Lkotlin/jvm/functions/Function2;

    const/16 v21, 0x3

    const/16 v22, 0x0

    invoke-static/range {v17 .. v22}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 199
    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->observeMessages()V

    .line 200
    nop

    .line 416
    invoke-static {v15}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->_isRecording:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 426
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->_recordingFile:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 75
    return-void
.end method

.method public static final synthetic access$getCurrentUserId$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)J
    .locals 2
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    .line 75
    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->currentUserId:J

    return-wide v0
.end method

.method public static final synthetic access$getExoPlayer$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)Landroidx/media3/exoplayer/ExoPlayer;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    .line 75
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    return-object v0
.end method

.method public static final synthetic access$getFileStorageService$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    .line 75
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->fileStorageService:Lorg/ies/tierno/applicationamani/data/remoto/FileStorageService;

    return-object v0
.end method

.method public static final synthetic access$getGetMessagesUseCase$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)Lorg/ies/tierno/applicationamani/domain/usecases/GetMessagesUseCase;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    .line 75
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->getMessagesUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/GetMessagesUseCase;

    return-object v0
.end method

.method public static final synthetic access$getMarkMessageDeliveredUseCase$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)Lorg/ies/tierno/applicationamani/domain/usecases/MarkMessageDeliveredUseCase;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    .line 75
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->markMessageDeliveredUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/MarkMessageDeliveredUseCase;

    return-object v0
.end method

.method public static final synthetic access$getMarkMessagesAsReadUseCase$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)Lorg/ies/tierno/applicationamani/domain/usecases/MarkMessagesAsReadUseCase;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    .line 75
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->markMessagesAsReadUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/MarkMessagesAsReadUseCase;

    return-object v0
.end method

.method public static final synthetic access$getOtherUserId$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)J
    .locals 2
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    .line 75
    iget-wide v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->otherUserId:J

    return-wide v0
.end method

.method public static final synthetic access$getSendMessageUseCase$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)Lorg/ies/tierno/applicationamani/domain/usecases/SendMessageUseCase;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    .line 75
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->sendMessageUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/SendMessageUseCase;

    return-object v0
.end method

.method public static final synthetic access$getStartTypingUseCase$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)Lorg/ies/tierno/applicationamani/domain/usecases/StartTypingUseCase;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    .line 75
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->startTypingUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/StartTypingUseCase;

    return-object v0
.end method

.method public static final synthetic access$getStopTypingUseCase$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)Lorg/ies/tierno/applicationamani/domain/usecases/StopTypingUseCase;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    .line 75
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->stopTypingUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/StopTypingUseCase;

    return-object v0
.end method

.method public static final synthetic access$get_audioUiState$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    .line 75
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->_audioUiState:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$get_error$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    .line 75
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->_error:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$get_isLoading$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    .line 75
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->_isLoading:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$get_isOtherTyping$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    .line 75
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->_isOtherTyping:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$get_messages$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    .line 75
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->_messages:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$get_psychologistOnline$p(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    .line 75
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->_psychologistOnline:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$initChatFeatures(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 75
    invoke-direct {p0, p1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->initChatFeatures(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$initPlayer(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)V
    .locals 0
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    .line 75
    invoke-direct {p0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->initPlayer()V

    return-void
.end method

.method public static final synthetic access$startProgressUpdates(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)V
    .locals 0
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    .line 75
    invoke-direct {p0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->startProgressUpdates()V

    return-void
.end method

.method public static final synthetic access$stopProgressUpdates(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)V
    .locals 0
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    .line 75
    invoke-direct {p0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->stopProgressUpdates()V

    return-void
.end method

.method public static final synthetic access$updatePsychologistInfo(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;)V
    .locals 0
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    .line 75
    invoke-direct {p0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->updatePsychologistInfo()V

    return-void
.end method

.method private final initChatFeatures(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 215
    invoke-direct {p0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->initTyping()V

    .line 216
    invoke-direct {p0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->initOnlineStatus()V

    .line 217
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private final initOnlineStatus()V
    .locals 3

    .line 228
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->observeUserOnlineUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/ObserveUserOnlineUseCase;

    iget-wide v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->otherUserId:J

    invoke-virtual {v0, v1, v2}, Lorg/ies/tierno/applicationamani/domain/usecases/ObserveUserOnlineUseCase;->invoke(J)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 229
    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$initOnlineStatus$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$initOnlineStatus$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 233
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/ViewModel;

    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    .line 234
    return-void
.end method

.method private final initPlayer()V
    .locals 5

    .line 203
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    return-void

    .line 204
    :cond_0
    new-instance v0, Landroidx/media3/common/AudioAttributes$Builder;

    invoke-direct {v0}, Landroidx/media3/common/AudioAttributes$Builder;-><init>()V

    .line 205
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/common/AudioAttributes$Builder;->setContentType(I)Landroidx/media3/common/AudioAttributes$Builder;

    move-result-object v0

    .line 206
    invoke-virtual {v0, v1}, Landroidx/media3/common/AudioAttributes$Builder;->setUsage(I)Landroidx/media3/common/AudioAttributes$Builder;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Landroidx/media3/common/AudioAttributes$Builder;->build()Landroidx/media3/common/AudioAttributes;

    move-result-object v0

    const-string v2, "build(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    nop

    .line 208
    .local v0, "audioAttributes":Landroidx/media3/common/AudioAttributes;
    new-instance v2, Landroidx/media3/exoplayer/ExoPlayer$Builder;

    iget-object v3, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->appContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->build()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v2

    move-object v3, v2

    .local v3, "$this$initPlayer_u24lambda_u240\\1":Landroidx/media3/exoplayer/ExoPlayer;
    const/4 v4, 0x0

    .line 209
    .local v4, "$i$a$-apply-ChatViewModel$initPlayer$1\\1\\208\\0":I
    invoke-interface {v3, v0, v1}, Landroidx/media3/exoplayer/ExoPlayer;->setAudioAttributes(Landroidx/media3/common/AudioAttributes;Z)V

    .line 210
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->playerListener:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$playerListener$1;

    check-cast v1, Landroidx/media3/common/Player$Listener;

    invoke-interface {v3, v1}, Landroidx/media3/exoplayer/ExoPlayer;->addListener(Landroidx/media3/common/Player$Listener;)V

    .line 211
    nop

    .line 208
    .end local v3    # "$this$initPlayer_u24lambda_u240\\1":Landroidx/media3/exoplayer/ExoPlayer;
    .end local v4    # "$i$a$-apply-ChatViewModel$initPlayer$1\\1\\208\\0":I
    iput-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 212
    return-void
.end method

.method private final initTyping()V
    .locals 5

    .line 220
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->observeTypingUseCase:Lorg/ies/tierno/applicationamani/domain/usecases/ObserveTypingUseCase;

    iget-wide v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->currentUserId:J

    iget-wide v3, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->otherUserId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/ies/tierno/applicationamani/domain/usecases/ObserveTypingUseCase;->invoke(JJ)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 221
    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$initTyping$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$initTyping$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 224
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/ViewModel;

    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    .line 225
    return-void
.end method

.method private final startProgressUpdates()V
    .locals 9

    .line 352
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 353
    .local v0, "player":Landroidx/media3/exoplayer/ExoPlayer;
    :cond_0
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->progressJob:Lkotlinx/coroutines/Job;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 354
    :cond_1
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/ViewModel;

    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$startProgressUpdates$1;

    invoke-direct {v1, p0, v0, v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$startProgressUpdates$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;Landroidx/media3/exoplayer/ExoPlayer;Lkotlin/coroutines/Continuation;)V

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v1

    iput-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->progressJob:Lkotlinx/coroutines/Job;

    .line 366
    return-void
.end method

.method private final stopProgressUpdates()V
    .locals 3

    .line 369
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->progressJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 370
    :cond_0
    iput-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->progressJob:Lkotlinx/coroutines/Job;

    .line 371
    return-void
.end method

.method private final updatePsychologistInfo()V
    .locals 10

    .line 237
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->_assignedPsychologist:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;

    .line 238
    .local v0, "current":Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;
    if-eqz v0, :cond_0

    move-object v1, v0

    .local v1, "it\\1":Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;
    const/4 v8, 0x0

    .line 239
    .local v8, "$i$a$-let-ChatViewModel$updatePsychologistInfo$1\\1\\238\\0":I
    iget-object v9, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->_assignedPsychologist:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->_psychologistOnline:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;->copy$default(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;

    move-result-object v2

    invoke-interface {v9, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 240
    nop

    .line 238
    .end local v1    # "it\\1":Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/PsychologistInfo;
    .end local v8    # "$i$a$-let-ChatViewModel$updatePsychologistInfo$1\\1\\238\\0":I
    nop

    .line 241
    :cond_0
    return-void
.end method


# virtual methods
.method public final cancelRecording()V
    .locals 2

    .line 489
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->_isRecording:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 490
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->_recordingFile:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 491
    :cond_0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->_recordingFile:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 492
    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->stopTyping()V

    .line 493
    return-void
.end method

.method public final clearError()V
    .locals 2

    .line 485
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->_error:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 486
    return-void
.end method

.method public final getAudioUiState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->_audioUiState:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    return-object v0
.end method

.method public final getRecordingFile()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 427
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->_recordingFile:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    return-object v0
.end method

.method public final getTypingOnlineState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->typingOnlineState:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getUiState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatUiState;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->uiState:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final isRecording()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 417
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->_isRecording:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    return-object v0
.end method

.method public final markMessagesAsDelivered()V
    .locals 7

    .line 256
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$markMessagesAsDelivered$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$markMessagesAsDelivered$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 263
    return-void
.end method

.method public final markMessagesAsRead()V
    .locals 7

    .line 479
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$markMessagesAsRead$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$markMessagesAsRead$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 482
    return-void
.end method

.method public final observeMessages()V
    .locals 7

    .line 244
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$observeMessages$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$observeMessages$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 253
    return-void
.end method

.method protected onCleared()V
    .locals 0

    .line 496
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 497
    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->releaseAudioPlayer()V

    .line 498
    return-void
.end method

.method public final onInputChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->_inputText:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 464
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 465
    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->startTyping()V

    goto :goto_0

    .line 467
    :cond_0
    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->stopTyping()V

    .line 469
    :goto_0
    return-void
.end method

.method public final releaseAudioPlayer()V
    .locals 11

    .line 344
    invoke-direct {p0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->stopProgressUpdates()V

    .line 345
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->playerListener:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$playerListener$1;

    check-cast v1, Landroidx/media3/common/Player$Listener;

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer;->removeListener(Landroidx/media3/common/Player$Listener;)V

    .line 346
    :cond_0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->release()V

    .line 347
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    .line 348
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->_audioUiState:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;

    const/16 v9, 0x1f

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;Ljava/lang/String;JJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 349
    return-void
.end method

.method public final sendAttachment(Landroid/net/Uri;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$sendAttachment$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$sendAttachment$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 414
    return-void
.end method

.method public final sendMessage()V
    .locals 3

    .line 472
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->_inputText:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 473
    .local v0, "text":Ljava/lang/String;
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 474
    :cond_0
    invoke-virtual {p0, v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->sendTextMessage(Ljava/lang/String;)V

    .line 475
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->_inputText:Lkotlinx/coroutines/flow/MutableStateFlow;

    const-string v2, ""

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 476
    return-void
.end method

.method public final sendTextMessage(Ljava/lang/String;)V
    .locals 7
    .param p1, "content"    # Ljava/lang/String;

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 376
    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$sendTextMessage$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$sendTextMessage$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 387
    return-void
.end method

.method public final startRecording(Ljava/io/File;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 420
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Iniciando grabaci\u00f3n: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceNote"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->_isRecording:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 422
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->_recordingFile:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 423
    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->startTyping()V

    .line 424
    return-void
.end method

.method public final startTyping()V
    .locals 7

    .line 266
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$startTyping$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$startTyping$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 269
    return-void
.end method

.method public final stopAudioPlayback()V
    .locals 11

    .line 338
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->stop()V

    .line 339
    :cond_0
    invoke-direct {p0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->stopProgressUpdates()V

    .line 340
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->_audioUiState:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;

    const/16 v9, 0x1f

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;Ljava/lang/String;JJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 341
    return-void
.end method

.method public final stopRecordingAndSend(Ljava/io/File;)V
    .locals 8
    .param p1, "file"    # Ljava/io/File;

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deteniendo grabaci\u00f3n: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", tama\u00f1o: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceNote"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->_isRecording:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 432
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->_recordingFile:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 433
    invoke-virtual {p0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->stopTyping()V

    .line 435
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    .line 436
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->_error:Lkotlinx/coroutines/flow/MutableStateFlow;

    const-string v1, "La nota de voz est\u00e1 vac\u00eda"

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 437
    return-void

    .line 440
    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$stopRecordingAndSend$1;

    invoke-direct {v0, p0, p1, v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$stopRecordingAndSend$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 460
    return-void
.end method

.method public final stopTyping()V
    .locals 7

    .line 272
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$stopTyping$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel$stopTyping$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 275
    return-void
.end method

.method public final toggleAudioPlayback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "remoteUrl"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v11, p2

    const-string v1, "messageId"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "remoteUrl"

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    const-string v1, "http"

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v12, 0x0

    invoke-static {v11, v1, v2, v4, v12}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 279
    iget-object v12, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->_audioUiState:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;

    .line 280
    sget-object v2, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;->ERROR:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;

    .line 281
    nop

    .line 279
    nop

    .line 282
    nop

    .line 279
    const/16 v9, 0xc

    const/4 v10, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-string v8, "URL de audio inv\u00e1lida"

    invoke-direct/range {v1 .. v10}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;Ljava/lang/String;JJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v12, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 284
    return-void

    .line 287
    :cond_0
    invoke-direct {v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->initPlayer()V

    .line 288
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->exoPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    const-string v13, "VoiceNote"

    if-nez v1, :cond_1

    move-object v12, v0

    check-cast v12, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;

    .local v12, "$this$toggleAudioPlayback_u24lambda_u242\\1":Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;
    const/4 v14, 0x0

    .line 289
    .local v14, "$i$a$-run-ChatViewModel$toggleAudioPlayback$player$1\\1\\288\\0":I
    const-string v1, "ExoPlayer no se pudo inicializar"

    invoke-static {v13, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v13, v12, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->_audioUiState:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;

    .line 291
    sget-object v2, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;->ERROR:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;

    .line 292
    nop

    .line 290
    nop

    .line 293
    nop

    .line 290
    const/16 v9, 0xc

    const/4 v10, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-string v8, "Error al inicializar el reproductor"

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v10}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;Ljava/lang/String;JJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v13, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 295
    return-void

    .end local v12    # "$this$toggleAudioPlayback_u24lambda_u242\\1":Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;
    .end local v14    # "$i$a$-run-ChatViewModel$toggleAudioPlayback$player$1\\1\\288\\0":I
    :cond_1
    move-object/from16 v3, p1

    move-object v14, v1

    .line 297
    .local v14, "player":Landroidx/media3/exoplayer/ExoPlayer;
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->_audioUiState:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;

    .line 299
    .local v15, "current":Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;
    invoke-virtual {v15}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;->getActiveMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 300
    invoke-interface {v14}, Landroidx/media3/exoplayer/ExoPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 301
    invoke-interface {v14}, Landroidx/media3/exoplayer/ExoPlayer;->pause()V

    goto :goto_0

    .line 303
    :cond_2
    invoke-interface {v14}, Landroidx/media3/exoplayer/ExoPlayer;->play()V

    .line 305
    :goto_0
    return-void

    .line 308
    :cond_3
    invoke-direct {v0}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->stopProgressUpdates()V

    .line 309
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/ChatViewModel;->_audioUiState:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object v2, v1

    new-instance v1, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;

    .line 310
    move-object v4, v2

    sget-object v2, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;->LOADING:Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;

    .line 311
    nop

    .line 309
    const/16 v9, 0x1c

    const/4 v10, 0x0

    move-object v6, v4

    const-wide/16 v4, 0x0

    move-object v8, v6

    const-wide/16 v6, 0x0

    move-object/from16 v16, v8

    const/4 v8, 0x0

    move-object/from16 v12, v16

    invoke-direct/range {v1 .. v10}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackUiState;-><init>(Lorg/ies/tierno/applicationamani/presentation/viewmodels/chat/AudioPlaybackStatus;Ljava/lang/String;JJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v12, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 314
    nop

    .line 315
    move-object v1, v11

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, ".ogg"

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v12, "audio/ogg"

    goto :goto_1

    .line 316
    :cond_4
    move-object v1, v11

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, ".m4a"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v12, "audio/mp4"

    goto :goto_1

    .line 317
    :cond_5
    move-object v1, v11

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, ".mp3"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v12, "audio/mpeg"

    goto :goto_1

    .line 318
    :cond_6
    move-object v1, v11

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, ".wav"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v12, "audio/wav"

    goto :goto_1

    .line 319
    :cond_7
    const/4 v12, 0x0

    .line 314
    :goto_1
    nop

    .line 322
    .local v12, "mimeType":Ljava/lang/String;
    if-eqz v12, :cond_8

    .line 323
    new-instance v1, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v1}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    .line 324
    invoke-virtual {v1, v11}, Landroidx/media3/common/MediaItem$Builder;->setUri(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v1

    .line 325
    invoke-virtual {v1, v12}, Landroidx/media3/common/MediaItem$Builder;->setMimeType(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v1

    .line 326
    invoke-virtual {v1}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object v1

    goto :goto_2

    .line 328
    :cond_8
    invoke-static {v11}, Landroidx/media3/common/MediaItem;->fromUri(Ljava/lang/String;)Landroidx/media3/common/MediaItem;

    move-result-object v1

    .line 322
    :goto_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 331
    .local v1, "mediaItem":Landroidx/media3/common/MediaItem;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reproduciendo: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (mime="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-interface {v14, v1}, Landroidx/media3/exoplayer/ExoPlayer;->setMediaItem(Landroidx/media3/common/MediaItem;)V

    .line 333
    invoke-interface {v14, v3}, Landroidx/media3/exoplayer/ExoPlayer;->setPlayWhenReady(Z)V

    .line 334
    invoke-interface {v14}, Landroidx/media3/exoplayer/ExoPlayer;->prepare()V

    .line 335
    return-void
.end method
