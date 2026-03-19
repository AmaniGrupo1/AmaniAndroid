package org.ies.tierno.applicationamani.di

import org.ies.tierno.applicationamani.data.remoto.AuthApi
import org.ies.tierno.applicationamani.data.remoto.CustomerClient
import org.ies.tierno.applicationamani.data.remoto.TestApi
import org.koin.dsl.module
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory


val retrofitModule = module {
    // API retrofit
    single {
        Retrofit.Builder()
            .baseUrl("http://10.0.2.2:8080")
            .addConverterFactory(GsonConverterFactory.create())
            .build()
    }
    single<AuthApi> { get<Retrofit>().create(AuthApi::class.java) }
    single<TestApi> { get<Retrofit>().create(TestApi::class.java) }
}