package org.ies.tierno.applicationamani.presentation.ui.screen.chat



import android.content.Context
import android.media.MediaRecorder
import android.os.Build
import android.util.Log
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.cancel
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.isActive
import kotlinx.coroutines.launch
import java.io.File
import java.io.IOException

class AudioHandler(private val context: Context) {

    private var recorder: MediaRecorder? = null
    private var audioFile: File? = null
    private val scope = CoroutineScope(Dispatchers.Main)
    private var timerJob: Job? = null

    val isUsingOggFormat: Boolean
        get() = Build.VERSION.SDK_INT >= Build.VERSION_CODES.O

    private val _isRecording = MutableStateFlow(false)
    val isRecording: StateFlow<Boolean> = _isRecording.asStateFlow()

    private val _recordingSeconds = MutableStateFlow(0)
    val recordingSeconds: StateFlow<Int> = _recordingSeconds.asStateFlow()

    fun startRecording(): File? {
        return try {
            val file = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                startRecordingOgg()
            } else {
                startRecordingM4a()
            }
            _recordingSeconds.value = 0
            timerJob = scope.launch {
                while (isActive) {
                    delay(1000)
                    _recordingSeconds.value++
                }
            }
            file
        } catch (e: IOException) {
            Log.e("VoiceNote", "Error al iniciar grabación", e)
            null
        }
    }

    private fun startRecordingOgg(): File {
        val file = File(context.cacheDir, "voice_note_${System.currentTimeMillis()}.ogg")
        recorder = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
            MediaRecorder(context)
        } else {
            @Suppress("DEPRECATION")
            MediaRecorder()
        }.apply {
            setAudioSource(MediaRecorder.AudioSource.MIC)
            setOutputFormat(MediaRecorder.OutputFormat.OGG)
            setAudioEncoder(MediaRecorder.AudioEncoder.OPUS)
            setAudioSamplingRate(48000)
            setAudioEncodingBitRate(64000)
            setOutputFile(file.absolutePath)
            prepare()
            start()
        }
        audioFile = file
        _isRecording.value = true
        Log.d("VoiceNote", "Iniciando grabación OGG/Opus: ${file.absolutePath}")
        return file
    }

    @Suppress("DEPRECATION")
    private fun startRecordingM4a(): File {
        val file = File(context.cacheDir, "voice_note_${System.currentTimeMillis()}.m4a")
        recorder = MediaRecorder().apply {
            setAudioSource(MediaRecorder.AudioSource.MIC)
            setOutputFormat(MediaRecorder.OutputFormat.MPEG_4)
            setAudioEncoder(MediaRecorder.AudioEncoder.AAC)
            setAudioSamplingRate(44100)
            setAudioEncodingBitRate(128000)
            setOutputFile(file.absolutePath)
            prepare()
            start()
        }
        audioFile = file
        _isRecording.value = true
        Log.d("VoiceNote", "Iniciando grabación M4A/AAC: ${file.absolutePath}")
        return file
    }

    fun stopRecording(): File? {
        timerJob?.cancel()
        timerJob = null
        _recordingSeconds.value = 0

        val file = audioFile
        try {
            recorder?.apply {
                stop()
                release()
            }
        } catch (e: RuntimeException) {
            Log.e("VoiceNote", "RuntimeException en stopRecording (sin audio grabado)", e)
            recorder?.release()
        } finally {
            recorder = null
        }
        _isRecording.value = false
        Log.d("VoiceNote", "Grabación detenida. Archivo: ${file?.absolutePath}, Tamaño: ${file?.length()} bytes")
        return file
    }

    fun release() {
        timerJob?.cancel()
        scope.cancel()
        // Llamada directa para limpiar recorder sin resetear _recordingSeconds de nuevo
        try { recorder?.apply { stop(); release() } } catch (_: Exception) { recorder?.release() }
        recorder = null
        _isRecording.value = false
    }
}
