package org.ies.tierno.applicationamani.di

import com.google.gson.GsonBuilder
import com.google.gson.JsonDeserializationContext
import com.google.gson.JsonDeserializer
import com.google.gson.JsonElement
import com.google.gson.JsonPrimitive
import com.google.gson.JsonSerializationContext
import com.google.gson.JsonSerializer
import okhttp3.logging.HttpLoggingInterceptor
import org.ies.tierno.applicationamani.data.remoto.AjustesApi
import org.ies.tierno.applicationamani.data.remoto.AuthApi
import org.ies.tierno.applicationamani.data.remoto.AuthInterceptor
import org.ies.tierno.applicationamani.data.remoto.ChatApi
import org.ies.tierno.applicationamani.data.remoto.CitasApi
import org.ies.tierno.applicationamani.data.remoto.DiarioApi
import org.ies.tierno.applicationamani.data.remoto.DocumentoLegalApi
import org.ies.tierno.applicationamani.data.remoto.HistorialApi
import org.ies.tierno.applicationamani.data.remoto.HistorialCitaApi
import org.ies.tierno.applicationamani.data.remoto.NotificacionApi
import org.ies.tierno.applicationamani.data.remoto.PaymentApiService
import org.ies.tierno.applicationamani.data.remoto.ProfileApi
import org.ies.tierno.applicationamani.data.remoto.SituacionApi
import org.ies.tierno.applicationamani.data.remoto.SoporteTicketApi
import org.ies.tierno.applicationamani.data.remoto.TestApi
import org.ies.tierno.applicationamani.data.remoto.TokenRefreshInterceptor
import org.ies.tierno.applicationamani.data.remoto.CrashlyticsInterceptor
import org.ies.tierno.applicationamani.data.remoto.copiloto.CopilotoAi
import org.ies.tierno.applicationamani.data.remoto.role.AdminApiService
import org.ies.tierno.applicationamani.domain.models.enumm.Rol
import org.koin.dsl.module
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory
import java.lang.reflect.Type
import java.time.LocalDate
import java.time.LocalDateTime
import java.time.LocalTime
import org.ies.tierno.applicationamani.BuildConfig as AppBuildConfig

/**
 * Módulo Koin para la configuración de Retrofit.
 */
val retrofitModule =
    module {

        single { AuthInterceptor(get()) }

        single { TokenRefreshInterceptor(get()) }

        single { CrashlyticsInterceptor(get()) }

        single<okhttp3.OkHttpClient> {
            val builder =
                okhttp3.OkHttpClient
                    .Builder()
                    .connectTimeout(60, java.util.concurrent.TimeUnit.SECONDS)
                    .readTimeout(60, java.util.concurrent.TimeUnit.SECONDS)
                    .writeTimeout(60, java.util.concurrent.TimeUnit.SECONDS)
                    .addInterceptor(get<AuthInterceptor>())
                    .addInterceptor(get<TokenRefreshInterceptor>())
                    .addInterceptor(get<CrashlyticsInterceptor>())

            if (AppBuildConfig.DEBUG) {
                val logging =
                    HttpLoggingInterceptor().apply {
                        level = HttpLoggingInterceptor.Level.BODY
                    }
                builder.addInterceptor(logging)
            }

            builder.build()
        }

        single<coil.ImageLoader> {
            coil.ImageLoader
                .Builder(get())
                .okHttpClient { get<okhttp3.OkHttpClient>() }
                .crossfade(true)
                .build()
        }

        single<Retrofit> {
            val gson =
                GsonBuilder()
                    .serializeNulls()
                    .registerTypeAdapter(
                        LocalDate::class.java,
                        object : JsonSerializer<LocalDate>, JsonDeserializer<LocalDate> {
                            override fun serialize(
                                src: LocalDate,
                                typeOfSrc: Type,
                                context: JsonSerializationContext
                            ): JsonElement = JsonPrimitive(src.toString())

                            override fun deserialize(
                                json: JsonElement,
                                typeOfT: Type,
                                context: JsonDeserializationContext
                            ): LocalDate = LocalDate.parse(json.asString)
                        },
                    ).registerTypeAdapter(
                        LocalTime::class.java,
                        object : JsonSerializer<LocalTime>, JsonDeserializer<LocalTime> {
                            override fun serialize(
                                src: LocalTime,
                                typeOfSrc: Type,
                                context: JsonSerializationContext
                            ): JsonElement = JsonPrimitive(src.toString())

                            override fun deserialize(
                                json: JsonElement,
                                typeOfT: Type,
                                context: JsonDeserializationContext
                            ): LocalTime = LocalTime.parse(json.asString)
                        },
                    ).registerTypeAdapter(
                        LocalDateTime::class.java,
                        object : JsonSerializer<LocalDateTime>, JsonDeserializer<LocalDateTime> {
                            override fun serialize(
                                src: LocalDateTime,
                                typeOfSrc: Type,
                                context: JsonSerializationContext
                            ): JsonElement = JsonPrimitive(src.toString())

                            override fun deserialize(
                                json: JsonElement,
                                typeOfT: Type,
                                context: JsonDeserializationContext
                            ): LocalDateTime = LocalDateTime.parse(json.asString)
                        },
                    ).registerTypeAdapter(
                        Rol::class.java,
                        JsonDeserializer<Rol> { json, _, _ ->
                            val value = json.asString.trim().lowercase()
                            android.util.Log.d("RolAdapter", "Deserializando rol: '\$value'")
                            when (value) {
                                "admin" -> Rol.admin
                                "psicologo" -> Rol.psicologo
                                "paciente" -> Rol.paciente
                                else -> {
                                    android.util.Log.e(
                                        "RolAdapter",
                                        "Rol desconocido: \$value, usando paciente por defecto"
                                    )
                                    Rol.paciente
                                }
                            }
                        },
                    ).create()

            Retrofit
                .Builder()
                //.baseUrl("http://10.0.2.2:8080/") // Para emulador Android Studio
                .baseUrl("https://amani-api-560473593904.europe-west1.run.app/")
                .addConverterFactory(GsonConverterFactory.create(gson))
                .client(get<okhttp3.OkHttpClient>())
                .build()
        }

        // APIs
        single<AuthApi> { get<Retrofit>().create(AuthApi::class.java) }
        single<CitasApi> { get<Retrofit>().create(CitasApi::class.java) }
        single<SituacionApi> { get<Retrofit>().create(SituacionApi::class.java) }
        single<TestApi> { get<Retrofit>().create(TestApi::class.java) }
        single<ProfileApi> { get<Retrofit>().create(ProfileApi::class.java) }
        single<DiarioApi> { get<Retrofit>().create(DiarioApi::class.java) }
        single<NotificacionApi> { get<Retrofit>().create(NotificacionApi::class.java) }
        single<SoporteTicketApi> { get<Retrofit>().create(SoporteTicketApi::class.java) }
        single<ChatApi> { get<Retrofit>().create(ChatApi::class.java) }
        single<PaymentApiService> { get<Retrofit>().create(PaymentApiService::class.java) }
        single<AjustesApi> { get<Retrofit>().create(AjustesApi::class.java) }
        single<HistorialApi> { get<Retrofit>().create(HistorialApi::class.java) }
        single<DocumentoLegalApi> { get<Retrofit>().create(DocumentoLegalApi::class.java) }
        single<AdminApiService> { get<Retrofit>().create(AdminApiService::class.java) }
        single<HistorialCitaApi> { get<Retrofit>().create(HistorialCitaApi::class.java) }
        single<CopilotoAi> { get<Retrofit>().create(CopilotoAi::class.java) }
    }

