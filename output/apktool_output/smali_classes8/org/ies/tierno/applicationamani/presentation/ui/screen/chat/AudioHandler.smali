.class public final Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;
.super Ljava/lang/Object;
.source "AudioHandler.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAudioHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AudioHandler.kt\norg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,132:1\n1#2:133\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u001a\u001a\u0004\u0018\u00010\tJ\u0008\u0010\u001b\u001a\u00020\tH\u0002J\u0008\u0010\u001c\u001a\u00020\tH\u0002J\u0008\u0010\u001d\u001a\u0004\u0018\u00010\tJ\u0006\u0010\u001e\u001a\u00020\u001fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000e\u001a\u00020\u000f8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u0010R\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0014\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0015R\u0014\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0014\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0015\u00a8\u0006 "
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "recorder",
        "Landroid/media/MediaRecorder;",
        "audioFile",
        "Ljava/io/File;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "timerJob",
        "Lkotlinx/coroutines/Job;",
        "isUsingOggFormat",
        "",
        "()Z",
        "_isRecording",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "isRecording",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "_recordingSeconds",
        "",
        "recordingSeconds",
        "getRecordingSeconds",
        "startRecording",
        "startRecordingOgg",
        "startRecordingM4a",
        "stopRecording",
        "release",
        "",
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
.field private final _isRecording:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final _recordingSeconds:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private audioFile:Ljava/io/File;

.field private final context:Landroid/content/Context;

.field private final isRecording:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private recorder:Landroid/media/MediaRecorder;

.field private final recordingSeconds:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private timerJob:Lkotlinx/coroutines/Job;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;->context:Landroid/content/Context;

    .line 26
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    iput-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 32
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;->_isRecording:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 33
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;->_isRecording:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;->isRecording:Lkotlinx/coroutines/flow/StateFlow;

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;->_recordingSeconds:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 36
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;->_recordingSeconds:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;->recordingSeconds:Lkotlinx/coroutines/flow/StateFlow;

    .line 22
    return-void
.end method

.method public static final synthetic access$get_recordingSeconds$p(Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;

    .line 22
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;->_recordingSeconds:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method private final startRecordingM4a()Ljava/io/File;
    .locals 6

    .line 84
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "voice_note_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".m4a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 85
    .local v0, "file":Ljava/io/File;
    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    move-object v2, v1

    .local v2, "$this$startRecordingM4a_u24lambda_u241\\1":Landroid/media/MediaRecorder;
    const/4 v3, 0x0

    .line 86
    .local v3, "$i$a$-apply-AudioHandler$startRecordingM4a$1\\1\\85\\0":I
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 87
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 88
    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 89
    const v5, 0xac44

    invoke-virtual {v2, v5}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 90
    const v5, 0x1f400

    invoke-virtual {v2, v5}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 91
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v2}, Landroid/media/MediaRecorder;->prepare()V

    .line 93
    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V

    .line 94
    nop

    .line 85
    .end local v2    # "$this$startRecordingM4a_u24lambda_u241\\1":Landroid/media/MediaRecorder;
    .end local v3    # "$i$a$-apply-AudioHandler$startRecordingM4a$1\\1\\85\\0":I
    iput-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;->recorder:Landroid/media/MediaRecorder;

    .line 95
    iput-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;->audioFile:Ljava/io/File;

    .line 96
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;->_isRecording:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 97
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Iniciando grabaci\u00f3n M4A/AAC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VoiceNote"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-object v0
.end method

.method private final startRecordingOgg()Ljava/io/File;
    .locals 6

    .line 60
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "voice_note_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".ogg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 61
    .local v0, "file":Ljava/io/File;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_0

    .line 62
    new-instance v1, Landroid/media/MediaRecorder;

    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/media/MediaRecorder;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 65
    :cond_0
    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    .line 66
    :goto_0
    move-object v2, v1

    .local v2, "$this$startRecordingOgg_u24lambda_u240\\1":Landroid/media/MediaRecorder;
    const/4 v3, 0x0

    .line 67
    .local v3, "$i$a$-apply-AudioHandler$startRecordingOgg$1\\1\\66\\0":I
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 68
    const/16 v5, 0xb

    invoke-virtual {v2, v5}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 69
    const/4 v5, 0x7

    invoke-virtual {v2, v5}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 70
    const v5, 0xbb80

    invoke-virtual {v2, v5}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 71
    const v5, 0xfa00

    invoke-virtual {v2, v5}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 72
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v2}, Landroid/media/MediaRecorder;->prepare()V

    .line 74
    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V

    .line 75
    nop

    .line 66
    .end local v2    # "$this$startRecordingOgg_u24lambda_u240\\1":Landroid/media/MediaRecorder;
    .end local v3    # "$i$a$-apply-AudioHandler$startRecordingOgg$1\\1\\66\\0":I
    nop

    .line 61
    iput-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;->recorder:Landroid/media/MediaRecorder;

    .line 76
    iput-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;->audioFile:Ljava/io/File;

    .line 77
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;->_isRecording:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 78
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Iniciando grabaci\u00f3n OGG/Opus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VoiceNote"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-object v0
.end method


# virtual methods
.method public final getRecordingSeconds()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;->recordingSeconds:Lkotlinx/coroutines/flow/StateFlow;

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

    .line 33
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;->isRecording:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final isUsingOggFormat()Z
    .locals 2

    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final release()V
    .locals 3

    .line 124
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;->timerJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 125
    :cond_0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 127
    :try_start_0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;->recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_1

    .line 133
    .local v0, "$this$release_u24lambda_u243\\1":Landroid/media/MediaRecorder;
    const/4 v1, 0x0

    .line 127
    .local v1, "$i$a$-apply-AudioHandler$release$1\\1\\127\\0":I
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "$this$release_u24lambda_u243\\1":Landroid/media/MediaRecorder;
    .end local v1    # "$i$a$-apply-AudioHandler$release$1\\1\\127\\0":I
    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "<unused var>":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;->recorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    .line 128
    .end local v0    # "<unused var>":Ljava/lang/Exception;
    :cond_1
    :goto_0
    iput-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;->recorder:Landroid/media/MediaRecorder;

    .line 129
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;->_isRecording:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 130
    return-void
.end method

.method public final startRecording()Ljava/io/File;
    .locals 10

    .line 39
    nop

    .line 40
    const/4 v1, 0x0

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    .line 41
    invoke-direct {p0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;->startRecordingOgg()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 43
    :cond_0
    invoke-direct {p0}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;->startRecordingM4a()Ljava/io/File;

    move-result-object v0

    .line 40
    :goto_0
    nop

    .line 45
    .local v0, "file":Ljava/io/File;
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;->_recordingSeconds:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 46
    iget-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler$startRecording$1;

    invoke-direct {v2, p0, v1}, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler$startRecording$1;-><init>(Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;Lkotlin/coroutines/Continuation;)V

    move-object v7, v2

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v2

    iput-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;->timerJob:Lkotlinx/coroutines/Job;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    move-object v1, v0

    .end local v0    # "file":Ljava/io/File;
    goto :goto_1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "Error al iniciar grabaci\u00f3n"

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    const-string v4, "VoiceNote"

    invoke-static {v4, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    nop

    .line 39
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-object v1
.end method

.method public final stopRecording()Ljava/io/File;
    .locals 7

    .line 102
    const-string v0, "VoiceNote"

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;->timerJob:Lkotlinx/coroutines/Job;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 103
    :cond_0
    iput-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;->timerJob:Lkotlinx/coroutines/Job;

    .line 104
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;->_recordingSeconds:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 106
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;->audioFile:Ljava/io/File;

    .line 107
    .local v1, "file":Ljava/io/File;
    nop

    .line 108
    :try_start_0
    iget-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;->recorder:Landroid/media/MediaRecorder;

    if-eqz v4, :cond_1

    .local v4, "$this$stopRecording_u24lambda_u242\\1":Landroid/media/MediaRecorder;
    const/4 v5, 0x0

    .line 109
    .local v5, "$i$a$-apply-AudioHandler$stopRecording$1\\1\\108\\0":I
    invoke-virtual {v4}, Landroid/media/MediaRecorder;->stop()V

    .line 110
    invoke-virtual {v4}, Landroid/media/MediaRecorder;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    nop

    .line 108
    .end local v4    # "$this$stopRecording_u24lambda_u242\\1":Landroid/media/MediaRecorder;
    .end local v5    # "$i$a$-apply-AudioHandler$stopRecording$1\\1\\108\\0":I
    :cond_1
    nop

    .line 116
    :cond_2
    :goto_0
    iput-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;->recorder:Landroid/media/MediaRecorder;

    .line 117
    goto :goto_1

    .line 116
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 112
    :catch_0
    move-exception v4

    .line 113
    .local v4, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string v5, "RuntimeException en stopRecording (sin audio grabado)"

    move-object v6, v4

    check-cast v6, Ljava/lang/Throwable;

    invoke-static {v0, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    iget-object v5, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;->recorder:Landroid/media/MediaRecorder;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 118
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :goto_1
    iget-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;->_isRecording:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v4, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 119
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object v3, v2

    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Grabaci\u00f3n detenida. Archivo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Tama\u00f1o: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-object v1

    .line 116
    :goto_3
    iput-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;->recorder:Landroid/media/MediaRecorder;

    throw v0
.end method
