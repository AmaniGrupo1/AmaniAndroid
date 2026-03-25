package org.ies.tierno.applicationamani.di

import okhttp3.OkHttpClient
import org.ies.tierno.applicationamani.data.local.TokenDataStore
import org.ies.tierno.applicationamani.data.local.UserSessionDataStore
import org.ies.tierno.applicationamani.data.remoto.AuthApi
import org.ies.tierno.applicationamani.data.remoto.AuthInterceptor
import org.ies.tierno.applicationamani.data.remoto.CitasApi
import org.ies.tierno.applicationamani.data.remoto.SituacionApi
import org.ies.tierno.applicationamani.data.remoto.TestApi
import org.koin.android.ext.koin.androidContext
import org.koin.dsl.module
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory
import java.util.concurrent.TimeUnit


val retrofitModule = module {
    // API retrofit
    single { TokenDataStore(androidContext()) }
    single { UserSessionDataStore(androidContext()) }

    single { AuthInterceptor(get()) }

    single {
        OkHttpClient.Builder()
            .addInterceptor(get<AuthInterceptor>())
            .connectTimeout(30, TimeUnit.SECONDS)
            .readTimeout(30, TimeUnit.SECONDS)
            .build()
    }
    // Retrofit usando OkHttpClient con interceptor
    single {
        Retrofit.Builder()
            .baseUrl("http://192.168.1.20:8080") // localhost del emulador Android
            .client(get<OkHttpClient>())       // ← CORRECTO: inyectamos el cliente con interceptor
            .addConverterFactory(GsonConverterFactory.create())
            .build()
    }
    single<AuthApi> { get<Retrofit>().create(AuthApi::class.java) }
    single<TestApi> { get<Retrofit>().create(TestApi::class.java) }
    single<CitasApi> { get<Retrofit>().create(CitasApi::class.java) }
    single<SituacionApi> { get<Retrofit>().create(SituacionApi::class.java) }
}
