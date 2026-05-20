package org.ies.tierno.applicationamani.data.remoto

import android.content.Context
import androidx.work.CoroutineWorker
import androidx.work.WorkerParameters
import timber.log.Timber

/**
 * Worker de fondo que ejecuta la sincronización bidireccional del diario emocional.
 *
 * Se encola mediante [DiarioSyncManager.enqueueImmediateSync] como un
 * [androidx.work.OneTimeWorkRequest] con restricción de red.
 *
 * Inyecta [DiarioSyncManager] vía constructor gracias a la factory de Koin
 * para WorkManager ([org.koin.androidx.workmanager.dsl.workerOf]).
 */
class SyncDiarioWorker(
    context: Context,
    params: WorkerParameters,
    private val syncManager: DiarioSyncManager,
) : CoroutineWorker(context, params) {
    override suspend fun doWork(): Result {
        Timber.d("SyncDiarioWorker: iniciando sincronización")

        val pushResult = syncManager.pushPendingEntries()
        if (pushResult.isFailure) {
            Timber.w("SyncDiarioWorker: pushPendingEntries falló, se reintentará")
            return Result.retry()
        }

        val pullResult = syncManager.pullRemoteEntries()
        if (pullResult.isFailure) {
            Timber.w("SyncDiarioWorker: pullRemoteEntries falló, se reintentará")
            return Result.retry()
        }

        Timber.d("SyncDiarioWorker: sincronización completada con éxito")
        return Result.success()
    }
}
