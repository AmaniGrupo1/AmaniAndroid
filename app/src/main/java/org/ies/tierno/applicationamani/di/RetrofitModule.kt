package org.ies.tierno.applicationamani.di

import org.ies.tierno.applicationamani.data.remoto.AuthApi
import org.ies.tierno.applicationamani.data.remoto.AuthInterceptor
import org.ies.tierno.applicationamani.data.remoto.CitasApi
import org.ies.tierno.applicationamani.data.remoto.CustomerClient
import org.ies.tierno.applicationamani.data.remoto.SituacionApi
import org.ies.tierno.applicationamani.data.remoto.TestApi
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


val retrofitModule = module {

    single {
        AuthInterceptor(get())
    }

    single {
        val okHttpClient = okhttp3.OkHttpClient.Builder()
            .addInterceptor(get<AuthInterceptor>())
            .build()

        Retrofit.Builder()
            .baseUrl("http://10.0.2.2:8080")
            .addConverterFactory(GsonConverterFactory.create())
            .client(okHttpClient)
            .build()
    }

    single<CustomerClient> { get<Retrofit>().create(CustomerClient::class.java) }
    single<AuthApi> { get<Retrofit>().create(AuthApi::class.java) }
    single<CitasApi> { get<Retrofit>().create(CitasApi::class.java) }
    single<SituacionApi> { get<Retrofit>().create(SituacionApi::class.java) }
    single<TestApi> { get<Retrofit>().create(TestApi::class.java) }
}