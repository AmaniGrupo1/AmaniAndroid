import java.util.Properties

plugins {
    alias(libs.plugins.android.application)
    alias(libs.plugins.kotlin.compose)
    alias(libs.plugins.ksp)
    alias(libs.plugins.dokka)
    alias(libs.plugins.detekt)
    alias(libs.plugins.ktlint)
    alias(libs.plugins.google.gms.google.services)
    alias(libs.plugins.google.firebase.crashlytics)
    alias(libs.plugins.kover)
    // alias(libs.plugins.google.gms.google.services)
}

android {
    namespace = "org.ies.tierno.applicationamani"
    compileSdk = 36

    defaultConfig {
        applicationId = "org.ies.tierno.applicationamani"
        minSdk = 25
        targetSdk = 36
        versionCode = 6
        versionName = "2.4"

        testInstrumentationRunner = "androidx.test.runner.AndroidJUnitRunner"

        // ✅ Soporte para ARM y Emuladores (x86)
        ndk {
            abiFilters += listOf("arm64-v8a", "armeabi-v7a", "x86", "x86_64")
        }
    }

    // ✅ SOLUCIÓN ERROR 16 KB
    packaging {
        jniLibs {
            useLegacyPackaging = false
        }
        resources {
            excludes += "/META-INF/{AL2.0,LGPL2.1}"
        }
    }

    // ✅ NDK moderno
    ndkVersion = "26.1.10909125"

    signingConfigs {
        create("release") {
            val properties = Properties()
            val propertiesFile = project.rootProject.file("local.properties")
            if (propertiesFile.exists()) {
                properties.load(propertiesFile.inputStream())
            }

            storeFile = file(properties.getProperty("RELEASE_KEYSTORE_FILE") ?: "release.keystore")
            storePassword = properties.getProperty("RELEASE_KEYSTORE_PASSWORD")
            keyAlias = properties.getProperty("RELEASE_KEYSTORE_ALIAS")
            keyPassword = properties.getProperty("RELEASE_KEYSTORE_PASSWORD")
        }
    }

    buildTypes {
        getByName("debug") {
            manifestPlaceholders["crashlyticsCollectionEnabled"] = false
        }
        release {
            signingConfig = signingConfigs.getByName("release")
            isMinifyEnabled = false
            proguardFiles(
                getDefaultProguardFile("proguard-android-optimize.txt"),
                "proguard-rules.pro",
            )
            manifestPlaceholders["crashlyticsCollectionEnabled"] = true
            configure<com.google.firebase.crashlytics.buildtools.gradle.CrashlyticsExtension> {
                mappingFileUploadEnabled = true
                nativeSymbolUploadEnabled = true
            }
        }
    }

    buildFeatures {
        compose = true
        buildConfig = true
    }

    compileOptions {
        isCoreLibraryDesugaringEnabled = true
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    testOptions {
        unitTests.isReturnDefaultValues = true
    }

    // ✅ Kotlin moderno
    kotlin {
        jvmToolchain(17)
    }
}

dependencies {


    // Para usar LiveData en Compose
    implementation("androidx.compose.runtime:runtime-livedata")

    // PDF Generation
    implementation("com.itextpdf:itext7-core:7.2.5") {
        exclude(group = "org.bouncycastle", module = "bcprov-jdk15on")
    }
    implementation(libs.bcprov.jdk15to18)

    // Para imprimir
    implementation(libs.androidx.print)

    // ✅ CameraX ACTUALIZADO (CRÍTICO)
    implementation(libs.androidx.camera.camera2)
    implementation(libs.androidx.camera.camera.lifecycle)
    implementation(libs.androidx.camera.view)

    // Imágenes
    implementation(libs.coil.compose)
    implementation(libs.firebase.auth.ktx)

    // DI
    implementation(libs.koin.android)
    implementation(libs.koin.androidx.compose)
    implementation(libs.koin.androidx.workmanager)

    // Networking
    implementation(libs.retrofit)
    implementation(libs.converter.gson)
    // Logging interceptor para inspección de headers en debug
    implementation(libs.logging.interceptor)

    // WorkManager
    implementation(libs.androidx.work.runtime.ktx)

    // Jitsi Meet para Videollamadas
    implementation("org.jitsi.react:jitsi-meet-sdk:8.6.0")

    // DataStore
    implementation(libs.androidx.datastore.preferences)
    implementation(libs.androidx.room.runtime)
    implementation(libs.androidx.room.ktx)
    ksp(libs.androidx.room.compiler)

    // Coroutines
    implementation(libs.kotlinx.coroutines.core)
    implementation(libs.kotlinx.coroutines.android)
    implementation(libs.kotlinx.coroutines.play.services)

    // Firebase
    implementation(platform("com.google.firebase:firebase-bom:32.8.1"))
    implementation("com.google.firebase:firebase-crashlytics-ktx")
    implementation("com.google.firebase:firebase-analytics-ktx")
    implementation("com.google.firebase:firebase-messaging-ktx")
    implementation(libs.firebase.database)
    implementation(libs.firebase.storage)
    implementation(libs.firebase.firestore)
    implementation(libs.firebase.auth)

    // Media
    implementation(libs.androidx.media3.exoplayer)
    implementation(libs.androidx.media3.ui)

    // Desugaring
    coreLibraryDesugaring(libs.desugar.jdk.libs)

    // Compose
    implementation(platform(libs.androidx.compose.bom))
    implementation(libs.androidx.compose.ui)
    implementation(libs.androidx.compose.ui.graphics)
    implementation(libs.androidx.compose.ui.tooling.preview)
    implementation(libs.androidx.compose.material3)
    implementation(libs.androidx.compose.material.icons.extended)

    // Charts
    implementation(libs.vico.compose.m3)
    implementation(libs.vico.core)
    implementation(libs.vico.views)

    // Navigation
    implementation(libs.androidx.navigation.compose)
    implementation(libs.androidx.navigation.runtime.ktx)

    // Lifecycle
    implementation(libs.androidx.lifecycle.runtime.ktx)
    implementation(libs.androidx.lifecycle.viewmodel.compose)

    // Core
    implementation(libs.androidx.core.ktx)
    implementation(libs.androidx.activity.compose)
    implementation(libs.material)

    // Logging
    implementation(libs.timber)
    implementation(libs.stripe.android)

    // Tests
    testImplementation(libs.junit)
    testImplementation(libs.mockk)
    testImplementation(libs.turbine)
    testImplementation(libs.kotlinx.coroutines.test)
    testImplementation(libs.mockwebserver)

    androidTestImplementation(libs.mockk.agent)
    androidTestImplementation(libs.androidx.junit)
    androidTestImplementation(libs.androidx.espresso.core)
    androidTestImplementation(libs.androidx.test.uiautomator)
    androidTestImplementation(libs.androidx.test.rules)
    androidTestImplementation(platform(libs.androidx.compose.bom))
    androidTestImplementation(libs.androidx.compose.ui.test.junit4)

    debugImplementation(libs.androidx.compose.ui.tooling)
    debugImplementation(libs.androidx.compose.ui.test.manifest)
}

// 📚 Dokka

dokka {
    moduleName.set("Amani Android")
    dokkaSourceSets.configureEach {
        sourceRoots.from(file("src/main/java"))
        includes.from("MODULE.md")
    }
}

// 🔍 Detekt
detekt {
    config.setFrom(files("${rootProject.projectDir}/config/detekt/detekt.yml"))
    buildUponDefaultConfig = true
    ignoreFailures = true
    source.setFrom(files("src/main/java", "src/main/kotlin"))
}

kover {
    reports {
        variant("debug") {
            filters {
                excludes {
                    classes(
                        "*.di.*",
                        "*.ui.*",
                        "*Activity",
                        "*Application",
                        "*.dto.*",
                        "*.models.*",
                        "*.R",
                        "*.R$*",
                    )
                }
            }
            verify {
                rule {
                    minBound(7)
                }
            }
        }
    }
}

tasks.withType<io.gitlab.arturbosch.detekt.Detekt>().configureEach {
    reports {
        html.required.set(true)
        xml.required.set(true)
        sarif.required.set(true)
    }
}

// 🎯 Ktlint
ktlint {
    android.set(true)
    ignoreFailures.set(true)
    reporters {
        reporter(org.jlleitschuh.gradle.ktlint.reporter.ReporterType.HTML)
        reporter(org.jlleitschuh.gradle.ktlint.reporter.ReporterType.CHECKSTYLE)
    }
}
