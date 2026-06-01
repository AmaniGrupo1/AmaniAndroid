// di/ChatModule.kt
package org.ies.tierno.applicationamani.di

import com.google.firebase.database.FirebaseDatabase
import com.google.firebase.storage.FirebaseStorage
import org.ies.tierno.applicationamani.data.repository.ChatRepositoryImpl
import org.ies.tierno.applicationamani.domain.repository.ChatRepository
import org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModelV2
import org.koin.androidx.viewmodel.dsl.viewModel
import org.koin.dsl.module

/*
 * Por qué single<ChatRepository> en lugar de factory:
 * El repositorio mantiene la referencia al listener de Firebase activo.
 * Con factory se crearía una nueva instancia (y un nuevo listener duplicado) en
 * cada recomposición. Con single hay exactamente un listener por sala de chat.
 *
 * Por qué viewModel { (chatId, currentUserId, otherUserId) -> ... }:
 * Koin inyecta parámetros de runtime (IDs dinámicos) mediante parametersOf(),
 * separando los parámetros fijos del grafo (FirebaseDatabase, Storage) de
 * los parámetros de navegación que provienen de la ruta de NavGraph.
 */

/**
 * Módulo Koin para el módulo de chat refactorizado.
 *
 * Registra:
 * - [FirebaseDatabase]: singleton provisto por el módulo raíz de la app (AppModule).
 * - [FirebaseStorage]: singleton provisto por el módulo raíz de la app (AppModule).
 * - [ChatRepository]: implementación concreta con persistencia offline.
 * - [ChatViewModelV2]: ViewModel con parámetros de runtime (chatId, userIds).
 *
 * Para usar este módulo, añádelo en tu Application:
 * ```kotlin
 * startKoin {
 *     modules(appModule, chatModule)
 * }
 * ```
 *
 * Para obtener el ViewModel desde la pantalla:
 * ```kotlin
 * val viewModel: ChatViewModelV2 = koinViewModel(
 *     parameters = { parametersOf(chatId, currentUserId, otherUserId) }
 * )
 * ```
 */
val chatModule = module {

    // ── Firebase instances ────────────────────────────────────────────────────
    // Si ya están registradas en AppModule, elimina estas líneas para evitar conflictos.
    single { FirebaseDatabase.getInstance() }
    single { FirebaseStorage.getInstance() }

    // ── Repository ────────────────────────────────────────────────────────────
    single<ChatRepository> {
        ChatRepositoryImpl(
            database = get(),
            storage = get(),
        )
    }

    // ── ViewModel ─────────────────────────────────────────────────────────────
    viewModel { (chatId: String, currentUserId: String, otherUserId: String) ->
        ChatViewModelV2(
            repo = get(),
            chatId = chatId,
            currentUserId = currentUserId,
            otherUserId = otherUserId,
        )
    }
}
