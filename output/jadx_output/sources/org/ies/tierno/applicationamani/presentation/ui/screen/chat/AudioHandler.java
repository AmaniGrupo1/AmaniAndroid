package org.ies.tierno.applicationamani.presentation.ui.screen.chat;

import android.content.Context;
import android.media.MediaRecorder;
import android.os.Build;
import android.util.Log;
import androidx.media3.container.OpusUtil;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: AudioHandler.kt */
/* JADX INFO: loaded from: classes8.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u001a\u001a\u0004\u0018\u00010\tJ\b\u0010\u001b\u001a\u00020\tH\u0002J\b\u0010\u001c\u001a\u00020\tH\u0002J\b\u0010\u001d\u001a\u0004\u0018\u00010\tJ\u0006\u0010\u001e\u001a\u00020\u001fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u000e\u001a\u00020\u000f8F¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u0010R\u0014\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0014¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0015R\u0014\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00170\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u0014¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0015¨\u0006 "}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/ui/screen/chat/AudioHandler;", "", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "recorder", "Landroid/media/MediaRecorder;", "audioFile", "Ljava/io/File;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "timerJob", "Lkotlinx/coroutines/Job;", "isUsingOggFormat", "", "()Z", "_isRecording", "Lkotlinx/coroutines/flow/MutableStateFlow;", "isRecording", "Lkotlinx/coroutines/flow/StateFlow;", "()Lkotlinx/coroutines/flow/StateFlow;", "_recordingSeconds", "", "recordingSeconds", "getRecordingSeconds", "startRecording", "startRecordingOgg", "startRecordingM4a", "stopRecording", "release", "", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class AudioHandler {
    public static final int $stable = 8;
    private final MutableStateFlow<Boolean> _isRecording;
    private final MutableStateFlow<Integer> _recordingSeconds;
    private File audioFile;
    private final Context context;
    private final StateFlow<Boolean> isRecording;
    private MediaRecorder recorder;
    private final StateFlow<Integer> recordingSeconds;
    private final CoroutineScope scope;
    private Job timerJob;

    public AudioHandler(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this.scope = CoroutineScopeKt.CoroutineScope(Dispatchers.getMain());
        this._isRecording = StateFlowKt.MutableStateFlow(false);
        this.isRecording = FlowKt.asStateFlow(this._isRecording);
        this._recordingSeconds = StateFlowKt.MutableStateFlow(0);
        this.recordingSeconds = FlowKt.asStateFlow(this._recordingSeconds);
    }

    public final boolean isUsingOggFormat() {
        return Build.VERSION.SDK_INT >= 26;
    }

    public final StateFlow<Boolean> isRecording() {
        return this.isRecording;
    }

    public final StateFlow<Integer> getRecordingSeconds() {
        return this.recordingSeconds;
    }

    public final File startRecording() {
        File file;
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                file = startRecordingOgg();
            } else {
                file = startRecordingM4a();
            }
            this._recordingSeconds.setValue(0);
            this.timerJob = BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new AnonymousClass1(null), 3, null);
            return file;
        } catch (IOException e) {
            Log.e("VoiceNote", "Error al iniciar grabación", e);
            return null;
        }
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.ui.screen.chat.AudioHandler$startRecording$1, reason: invalid class name */
    /* JADX INFO: compiled from: AudioHandler.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.ui.screen.chat.AudioHandler$startRecording$1", f = "AudioHandler.kt", i = {0}, l = {48}, m = "invokeSuspend", n = {"$this$launch"}, s = {"L$0"})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = AudioHandler.this.new AnonymousClass1(continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x004e  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0032 -> B:13:0x0035). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object $result) {
            AnonymousClass1 anonymousClass1;
            CoroutineScope $this$launch = (CoroutineScope) this.L$0;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    anonymousClass1 = this;
                    if (CoroutineScopeKt.isActive($this$launch)) {
                        anonymousClass1.L$0 = $this$launch;
                        anonymousClass1.label = 1;
                        if (DelayKt.delay(1000L, anonymousClass1) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        MutableStateFlow mutableStateFlow = AudioHandler.this._recordingSeconds;
                        mutableStateFlow.setValue(Boxing.boxInt(((Number) mutableStateFlow.getValue()).intValue() + 1));
                        if (CoroutineScopeKt.isActive($this$launch)) {
                            return Unit.INSTANCE;
                        }
                    }
                    break;
                case 1:
                    ResultKt.throwOnFailure($result);
                    anonymousClass1 = this;
                    MutableStateFlow mutableStateFlow2 = AudioHandler.this._recordingSeconds;
                    mutableStateFlow2.setValue(Boxing.boxInt(((Number) mutableStateFlow2.getValue()).intValue() + 1));
                    if (CoroutineScopeKt.isActive($this$launch)) {
                    }
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    private final File startRecordingOgg() throws IOException {
        MediaRecorder mediaRecorder;
        File file = new File(this.context.getCacheDir(), "voice_note_" + System.currentTimeMillis() + ".ogg");
        if (Build.VERSION.SDK_INT >= 31) {
            mediaRecorder = new MediaRecorder(this.context);
        } else {
            mediaRecorder = new MediaRecorder();
        }
        MediaRecorder mediaRecorder2 = mediaRecorder;
        mediaRecorder2.setAudioSource(1);
        mediaRecorder2.setOutputFormat(11);
        mediaRecorder2.setAudioEncoder(7);
        mediaRecorder2.setAudioSamplingRate(OpusUtil.SAMPLE_RATE);
        mediaRecorder2.setAudioEncodingBitRate(64000);
        mediaRecorder2.setOutputFile(file.getAbsolutePath());
        mediaRecorder2.prepare();
        mediaRecorder2.start();
        this.recorder = mediaRecorder;
        this.audioFile = file;
        this._isRecording.setValue(true);
        Log.d("VoiceNote", "Iniciando grabación OGG/Opus: " + file.getAbsolutePath());
        return file;
    }

    private final File startRecordingM4a() throws IOException {
        File file = new File(this.context.getCacheDir(), "voice_note_" + System.currentTimeMillis() + ".m4a");
        MediaRecorder mediaRecorder = new MediaRecorder();
        mediaRecorder.setAudioSource(1);
        mediaRecorder.setOutputFormat(2);
        mediaRecorder.setAudioEncoder(3);
        mediaRecorder.setAudioSamplingRate(44100);
        mediaRecorder.setAudioEncodingBitRate(128000);
        mediaRecorder.setOutputFile(file.getAbsolutePath());
        mediaRecorder.prepare();
        mediaRecorder.start();
        this.recorder = mediaRecorder;
        this.audioFile = file;
        this._isRecording.setValue(true);
        Log.d("VoiceNote", "Iniciando grabación M4A/AAC: " + file.getAbsolutePath());
        return file;
    }

    public final File stopRecording() {
        Job job = this.timerJob;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        this.timerJob = null;
        this._recordingSeconds.setValue(0);
        File file = this.audioFile;
        try {
            try {
                MediaRecorder mediaRecorder = this.recorder;
                if (mediaRecorder != null) {
                    mediaRecorder.stop();
                    mediaRecorder.release();
                }
            } catch (RuntimeException e) {
                Log.e("VoiceNote", "RuntimeException en stopRecording (sin audio grabado)", e);
                MediaRecorder mediaRecorder2 = this.recorder;
                if (mediaRecorder2 != null) {
                    mediaRecorder2.release();
                }
            }
            this._isRecording.setValue(false);
            Log.d("VoiceNote", "Grabación detenida. Archivo: " + (file != null ? file.getAbsolutePath() : null) + ", Tamaño: " + (file != null ? Long.valueOf(file.length()) : null) + " bytes");
            return file;
        } finally {
            this.recorder = null;
        }
    }

    public final void release() {
        Job job = this.timerJob;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        CoroutineScopeKt.cancel$default(this.scope, null, 1, null);
        try {
            MediaRecorder mediaRecorder = this.recorder;
            if (mediaRecorder != null) {
                mediaRecorder.stop();
                mediaRecorder.release();
            }
        } catch (Exception e) {
            MediaRecorder mediaRecorder2 = this.recorder;
            if (mediaRecorder2 != null) {
                mediaRecorder2.release();
            }
        }
        this.recorder = null;
        this._isRecording.setValue(false);
    }
}
