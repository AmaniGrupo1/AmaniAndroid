package org.ies.tierno.applicationamani.presentation.ui.screen.chat

import android.content.Context
import android.media.MediaRecorder
import android.os.Build
import android.util.Log
import java.io.File
import java.io.IOException

class AudioHandler(private val context: Context) {

    private var recorder: MediaRecorder? = null
    private var audioFile: File? = null

    fun startRecording(): File? {
        try {
            val file = File(context.cacheDir, "voice_note_${System.currentTimeMillis()}.m4a")
            recorder = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
                MediaRecorder(context)
            } else {
                MediaRecorder()
            }.apply {
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
            Log.d("VoiceNote", "Iniciando grabación: ${file.absolutePath}, sampleRate=44100, bitRate=128000")
            return file
        } catch (e: IOException) {
            Log.e("VoiceNote", "Error al iniciar grabación", e)
            return null
        }
    }

    fun stopRecording(): File? {
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
        Log.d("VoiceNote", "Grabación detenida. Archivo: ${file?.absolutePath}, Tamaño: ${file?.length()} bytes")
        return file
    }
}