package org.ies.tierno.applicationamani.di

import org.ies.tierno.applicationamani.data.remoto.CustomerClient
import org.koin.dsl.module
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory

/**
 * Módulo Koin para la configuración de Retrofit.
 *
 * Provee una instancia singleton de [Retrofit] configurada con la URL
 * base del backend local y el convertidor Gson, así como la implementación
 * generada de [CustomerClient].
 *
 * @see appModule
 */

/**
 * Módulo Koin que registra las dependencias de red.
 *
 * Contenido:
 * - `Retrofit` — cliente HTTP singleton apuntando al backend local (`10.0.2.2:8080`).
 * - [CustomerClient] — interfaz de API generada por Retrofit.
 */
val retrofitModule = module {
    /**
     * Instancia singleton de [Retrofit] configurada para comunicarse
     * con el backend en el emulador (localhost mapeado a `10.0.2.2`).
     */
    single {
        Retrofit.Builder()
            .baseUrl("http://10.0.2.2:8080")
            .addConverterFactory(GsonConverterFactory.create())
            .build()
    }

    /** Implementación de [CustomerClient] generada por Retrofit. */
    single<CustomerClient> { get<Retrofit>().create(CustomerClient::class.java) }
}