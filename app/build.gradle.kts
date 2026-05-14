plugins {
    alias(libs.plugins.android.application)
    alias(libs.plugins.kotlin.compose)
    alias(libs.plugins.dokka)
    alias(libs.plugins.detekt)
    alias(libs.plugins.ktlint)
    alias(libs.plugins.google.gms.google.services)
}

android {
    namespace = "org.ies.tierno.applicationamani"
    compileSdk = 36

    defaultConfig {
        applicationId = "org.ies.tierno.applicationamani"
        minSdk = 25
        targetSdk = 36
        versionCode = 1
        versionName = "1.0"

        testInstrumentationRunner = "androidx.test.runner.AndroidJUnitRunner"

        // ✅ IMPORTANTE (plan B compatibilidad NDK)
        ndk {
            abiFilters += listOf("arm64-v8a", "armeabi-v7a")
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

    buildTypes {
        release {
            isMinifyEnabled = false
            proguardFiles(
                getDefaultProguardFile("proguard-android-optimize.txt"),
                "proguard-rules.pro"
            )
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
}

// ✅ Kotlin moderno
kotlin {
    jvmToolchain(17)
}

dependencies {

    // PDF Generation
    implementation("com.itextpdf:itext7-core:7.2.5")

    // Para imprimir
    implementation("androidx.print:print:1.0.0")

    // ✅ CameraX ACTUALIZADO (CRÍTICO)
    implementation("androidx.camera:camera-camera2:1.4.0")
    implementation("androidx.camera:camera-lifecycle:1.4.0")
    implementation("androidx.camera:camera-view:1.4.0")

    // Imágenes
    implementation(libs.coil.compose)

    // DI
    implementation(libs.koin.android)
    implementation(libs.koin.androidx.compose)

    // Networking
    implementation(libs.retrofit.v290)
    implementation(libs.converter.gson)
    // Logging interceptor para inspección de headers en debug
    implementation("com.squareup.okhttp3:logging-interceptor:4.11.0")

    // WorkManager
    implementation(libs.androidx.work.runtime.ktx)

    // DataStore
    implementation(libs.androidx.datastore.preferences)

    // Coroutines
    implementation(libs.kotlinx.coroutines.core)
    implementation(libs.kotlinx.coroutines.android)
    implementation(libs.kotlinx.coroutines.play.services)

    // Firebase
    implementation(libs.firebase.database)
    implementation(libs.firebase.storage)
    implementation(libs.firebase.firestore)

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
    implementation(libs.androidx.compose.runtime)
    implementation(libs.androidx.compose.foundation.layout)

    // Navigation
    implementation(libs.androidx.navigation.compose)
    implementation(libs.androidx.navigation.runtime.ktx)

    // Lifecycle
    implementation(libs.androidx.lifecycle.runtime.ktx)
    implementation(libs.androidx.lifecycle.viewmodel.compose)

    // Core
    implementation(libs.androidx.core.ktx)
    implementation(libs.androidx.activity.compose)

    // Logging
    implementation(libs.timber)

    // Tests
    testImplementation(libs.junit)
    androidTestImplementation(libs.androidx.junit)
    androidTestImplementation(libs.androidx.espresso.core)
    androidTestImplementation(platform(libs.androidx.compose.bom))
    androidTestImplementation(libs.androidx.compose.ui.test.junit4)

    debugImplementation(libs.androidx.compose.ui.tooling)
    debugImplementation(libs.androidx.compose.ui.test.manifest)
}

// 📚 Dokka
dokka {
    moduleName.set("Amani Android")
    dokkaSourceSets.register("main") {
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