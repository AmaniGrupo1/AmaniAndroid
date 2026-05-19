package org.ies.tierno.applicationamani.data.remoto

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.net.Uri
import android.webkit.MimeTypeMap
import com.google.firebase.auth.FirebaseAuth
import com.google.firebase.storage.StorageReference
import com.google.firebase.storage.UploadTask
import com.google.firebase.storage.storageMetadata
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.tasks.await
import kotlinx.coroutines.withContext
import org.ies.tierno.applicationamani.domain.models.AttachmentType
import timber.log.Timber
import java.io.ByteArrayOutputStream
import java.io.File
import java.io.FileOutputStream
import java.util.UUID

class FileStorageService(
    private val firebaseInstance: FirebaseInstance,
    private val context: Context,
) {
    private val storageRef: StorageReference = firebaseInstance.getStorage().reference

    sealed class UploadResult {
        data class Success(
            val url: String,
            val type: AttachmentType,
            val fileName: String,
        ) : UploadResult()

        data class Error(
            val message: String,
        ) : UploadResult()
    }

    suspend fun uploadFile(
        uri: Uri,
        conversationId: String,
    ): UploadResult =
        withContext(Dispatchers.IO) {
            try {
                val user = FirebaseAuth.getInstance().currentUser
                val bucketName = storageRef.bucket
                Timber.d("🪣 Firebase Storage Bucket: $bucketName")
                Timber.d("👤 Firebase Auth UID: ${user?.uid}")

                if (user == null) {
                    return@withContext UploadResult.Error("Usuario no autenticado en Firebase")
                }

                val mimeType = context.contentResolver.getType(uri) ?: "application/octet-stream"
                val attachmentType =
                    when {
                        mimeType.startsWith("image/") -> AttachmentType.IMAGE
                        mimeType.startsWith("audio/") -> AttachmentType.AUDIO
                        else -> AttachmentType.DOCUMENT
                    }

                val extension = MimeTypeMap.getSingleton().getExtensionFromMimeType(mimeType) ?: "bin"
                val fileName = "${UUID.randomUUID()}.$extension"
                val path = "amani-chat/attachments/$conversationId/$fileName"

                Timber.d("📁 Intentando subir a path: $path")

                val fileRef = storageRef.child(path)

                val metadata =
                    storageMetadata {
                        this.contentType = mimeType
                        setCustomMetadata("uploadedBy", user.uid)
                    }

                val uploadTask: UploadTask =
                    if (attachmentType == AttachmentType.IMAGE) {
                        val compressedUri = compressImage(uri)
                        val inputStream =
                            context.contentResolver.openInputStream(compressedUri)
                                ?: return@withContext UploadResult.Error("No se pudo leer el archivo")

                        fileRef.putStream(inputStream, metadata)
                    } else {
                        val inputStream =
                            context.contentResolver.openInputStream(uri)
                                ?: return@withContext UploadResult.Error("No se pudo leer el archivo")

                        fileRef.putStream(inputStream, metadata)
                    }

                val taskSnapshot = uploadTask.await()

                if (taskSnapshot.task.isSuccessful) {
                    val downloadUrl = fileRef.downloadUrl.await().toString() + "?alt=media"
                    UploadResult.Success(downloadUrl, attachmentType, fileName)
                } else {
                    UploadResult.Error("Error al subir archivo")
                }
            } catch (e: Exception) {
                UploadResult.Error(e.message ?: "Error desconocido")
            }
        }

    suspend fun uploadVoiceNote(
        audioFile: File,
        conversationId: String,
    ): UploadResult =
        withContext(Dispatchers.IO) {
            try {
                val user = FirebaseAuth.getInstance().currentUser
                if (user == null) {
                    return@withContext UploadResult.Error("Usuario no autenticado en Firebase")
                }

                if (!audioFile.exists() || audioFile.length() <= 0L) {
                    return@withContext UploadResult.Error("La nota de voz está vacía o no se encontró")
                }

                val extension = audioFile.extension
                val fileName = "voice_${UUID.randomUUID()}.$extension"
                val path = "amani-chat/attachments/$conversationId/$fileName"

                Timber.d("🎙️ Intentando subir nota de voz a path: $path")

                val fileRef = storageRef.child(path)
                val contentType =
                    when (extension) {
                        "ogg" -> "audio/ogg"
                        "m4a" -> "audio/mp4"
                        "mp3" -> "audio/mpeg"
                        else -> "audio/mp4"
                    }
                val metadata =
                    storageMetadata {
                        this.contentType = contentType
                        setCustomMetadata("uploadedBy", user.uid)
                    }

                val taskSnapshot =
                    audioFile.inputStream().use { inputStream ->
                        val uploadTask: UploadTask = fileRef.putStream(inputStream, metadata)
                        uploadTask.await()
                    }

                if (taskSnapshot.task.isSuccessful) {
                    val downloadUrl = fileRef.downloadUrl.await().toString() + "?alt=media"
                    UploadResult.Success(downloadUrl, AttachmentType.AUDIO, fileName)
                } else {
                    UploadResult.Error("Error al subir nota de voz")
                }
            } catch (e: Exception) {
                UploadResult.Error(e.message ?: "Error desconocido")
            }
        }

    private fun compressImage(uri: Uri): Uri {
        try {
            val inputStream = context.contentResolver.openInputStream(uri)
            val bitmap = BitmapFactory.decodeStream(inputStream)
            inputStream?.close()

            val maxSize = 1024
            val ratio = minOf(maxSize.toFloat() / bitmap.width, maxSize.toFloat() / bitmap.height)
            val width = (bitmap.width * ratio).toInt()
            val height = (bitmap.height * ratio).toInt()

            val scaledBitmap = Bitmap.createScaledBitmap(bitmap, width, height, true)

            val outputStream = ByteArrayOutputStream()
            scaledBitmap.compress(Bitmap.CompressFormat.JPEG, 80, outputStream)

            val tempFile = File(context.cacheDir, "compressed_${UUID.randomUUID()}.jpg")
            FileOutputStream(tempFile).use { it.write(outputStream.toByteArray()) }

            return Uri.fromFile(tempFile)
        } catch (e: Exception) {
            return uri
        }
    }

    fun getFileNameFromUri(uri: Uri): String {
        var fileName = "file"
        context.contentResolver.query(uri, null, null, null, null)?.use { cursor ->
            val nameIndex = cursor.getColumnIndex(android.provider.OpenableColumns.DISPLAY_NAME)
            if (cursor.moveToFirst() && nameIndex >= 0) {
                fileName = cursor.getString(nameIndex)
            }
        }
        return fileName
    }
}
