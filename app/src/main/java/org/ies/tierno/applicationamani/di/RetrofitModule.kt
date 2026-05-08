package org.ies.tierno.applicationamani.di

import com.google.gson.GsonBuilder
import com.google.gson.JsonDeserializationContext
import com.google.gson.JsonDeserializer
import com.google.gson.JsonElement
import com.google.gson.JsonPrimitive
import com.google.gson.JsonSerializationContext
import com.google.gson.JsonSerializer
import org.ies.tierno.applicationamani.data.remoto.AuthApi
import org.ies.tierno.applicationamani.data.remoto.AuthInterceptor
import org.ies.tierno.applicationamani.data.remoto.CitasApi
import org.ies.tierno.applicationamani.data.remoto.DiarioApi
import org.ies.tierno.applicationamani.data.remoto.NotificacionApi
import org.ies.tierno.applicationamani.data.remoto.ProfileApi
import org.ies.tierno.applicationamani.data.remoto.SituacionApi
import org.ies.tierno.applicationamani.data.remoto.SoporteTicketApi
import org.ies.tierno.applicationamani.data.remoto.TestApi
import org.ies.tierno.applicationamani.data.remoto.TokenRefreshInterceptor
import org.koin.dsl.module
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory
import java.lang.reflect.Type
import java.time.LocalDate
import java.time.LocalDateTime
import java.time.LocalTime

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
        TokenRefreshInterceptor(get())
    }

    single {
        val okHttpClient = okhttp3.OkHttpClient.Builder()
            .addInterceptor(get<AuthInterceptor>())
            .addInterceptor(get<TokenRefreshInterceptor>())
            .build()

        val gson = GsonBuilder()
            .serializeNulls()
            .registerTypeAdapter(
                LocalDate::class.java,
                object : JsonSerializer<LocalDate>, JsonDeserializer<LocalDate> {
                    override fun serialize(
                        src: LocalDate,
                        typeOfSrc: Type,
                        context: JsonSerializationContext
                    ): JsonElement =
                        JsonPrimitive(src.toString())

                    override fun deserialize(
                        json: JsonElement,
                        typeOfT: Type,
                        context: JsonDeserializationContext
                    ): LocalDate =
                        LocalDate.parse(json.asString)
                })
            .registerTypeAdapter(
                LocalTime::class.java,
                object : JsonSerializer<LocalTime>, JsonDeserializer<LocalTime> {
                    override fun serialize(
                        src: LocalTime,
                        typeOfSrc: Type,
                        context: JsonSerializationContext
                    ): JsonElement =
                        JsonPrimitive(src.toString())

                    override fun deserialize(
                        json: JsonElement,
                        typeOfT: Type,
                        context: JsonDeserializationContext
                    ): LocalTime =
                        LocalTime.parse(json.asString)
                })
            .registerTypeAdapter(
                LocalDateTime::class.java,
                object : JsonSerializer<LocalDateTime>, JsonDeserializer<LocalDateTime> {
                    override fun serialize(
                        src: LocalDateTime,
                        typeOfSrc: Type,
                        context: JsonSerializationContext
                    ): JsonElement =
                        JsonPrimitive(src.toString())

                    override fun deserialize(
                        json: JsonElement,
                        typeOfT: Type,
                        context: JsonDeserializationContext
                    ): LocalDateTime =
                        LocalDateTime.parse(json.asString)
                })
            .create()

        Retrofit.Builder()
            .baseUrl("http://10.0.2.2:8080/")
            //.baseUrl("http://192.168.1.175:8080/")

            .addConverterFactory(GsonConverterFactory.create(gson))
            .client(okHttpClient)
            .build()
    }
    //http://10.0.2.2
//    192.168.1.175

    single<AuthApi> { get<Retrofit>().create(AuthApi::class.java) }
    single<CitasApi> { get<Retrofit>().create(CitasApi::class.java) }
    single<SituacionApi> { get<Retrofit>().create(SituacionApi::class.java) }
    single<TestApi> { get<Retrofit>().create(TestApi::class.java) }
    single<ProfileApi> { get<Retrofit>().create(ProfileApi::class.java) }
    single<DiarioApi> { get<Retrofit>().create(DiarioApi::class.java) }
    single<NotificacionApi> { get<Retrofit>().create(NotificacionApi::class.java) }
    single<SoporteTicketApi> { get<Retrofit>().create(SoporteTicketApi::class.java) }
    single<org.ies.tierno.applicationamani.data.remoto.ChatApi> { get<Retrofit>().create(org.ies.tierno.applicationamani.data.remoto.ChatApi::class.java) }
    single<org.ies.tierno.applicationamani.data.remoto.PaymentApiService> { get<Retrofit>().create(org.ies.tierno.applicationamani.data.remoto.PaymentApiService::class.java) }
}