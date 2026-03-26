plugins {
    alias(libs.plugins.android.application)
    alias(libs.plugins.dokka)
    alias(libs.plugins.kotlin.compose)
    // alias(libs.plugins.google.gms.google.services)
    alias(libs.plugins.detekt)
    alias(libs.plugins.ktlint)
}

android {
    namespace = "org.ies.tierno.applicationamani"
    compileSdk = 36

    defaultConfig {
        applicationId = "org.ies.tierno.applicationamani"
        minSdk = 24
        targetSdk = 36
        versionCode = 1
        versionName = "1.0"

        testInstrumentationRunner = "androidx.test.runner.AndroidJUnitRunner"
    }

    buildTypes {
        release {
            isMinifyEnabled = false
            proguardFiles(
                getDefaultProguardFile("proguard-android-optimize.txt"),
                "proguard-rules.pro"
            )
        }
    }
    compileOptions {
        isCoreLibraryDesugaringEnabled = true
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }
    buildFeatures {
        compose = true
        buildConfig = true
    }
}

dependencies {
    //Librerias de Compose
    coreLibraryDesugaring(libs.desugar.jdk.libs)//Libreria para usar APIs modernas de Java
    implementation(libs.retrofit)
    implementation(libs.converter.gson)
    implementation(libs.kotlinx.coroutines.play.services)
    implementation(libs.koin.android)
    implementation(libs.koin.androidx.compose)
    implementation(libs.androidx.compose.material.icons.extended)
    implementation(libs.androidx.lifecycle.viewmodel.compose)

    //Navegación
    implementation(libs.androidx.navigation.compose)

    // Dependencias comunes
    implementation(libs.androidx.core.ktx)
    implementation(libs.androidx.lifecycle.runtime.ktx)
    implementation(libs.androidx.activity.compose)
    implementation(platform(libs.androidx.compose.bom))
    implementation(libs.androidx.compose.ui)
    implementation(libs.androidx.compose.ui.graphics)
    implementation(libs.androidx.compose.ui.tooling.preview)
    implementation(libs.androidx.compose.material3)
    implementation(libs.androidx.navigation.runtime.ktx)
    implementation(libs.firebase.firestore)
    implementation(libs.androidx.compose.runtime)
    implementation(libs.androidx.compose.foundation.layout)

    // WorkManager para notificaciones programadas que sobreviven reinicios
    implementation(libs.androidx.work.runtime.ktx)

    // Timber: logging estructurado en lugar de android.util.Log
    implementation("com.jakewharton.timber:timber:5.0.1")

    testImplementation(libs.junit)
    androidTestImplementation(libs.androidx.junit)
    androidTestImplementation(libs.androidx.espresso.core)
    androidTestImplementation(platform(libs.androidx.compose.bom))
    androidTestImplementation(libs.androidx.compose.ui.test.junit4)
    debugImplementation(libs.androidx.compose.ui.tooling)
    debugImplementation(libs.androidx.compose.ui.test.manifest)
}

dokka {
    moduleName.set("Amani Android")
    dokkaSourceSets.register("main") {
        sourceRoots.from(file("src/main/java"))
        includes.from("MODULE.md")
    }
}

// ── Detekt: Análisis estático para Kotlin (reemplaza SpotBugs + PMD) ──
detekt {
    // Fichero de configuración personalizado (se genera con: ./gradlew detektGenerateConfig)
    config.setFrom(files("${rootProject.projectDir}/config/detekt/detekt.yml"))
    // Analizar también los ficheros de build scripts
    buildUponDefaultConfig = true
    // No falla el build por defecto (como tenías failOnViolation=false en PMD)
    ignoreFailures = true
    // Directorio de fuentes
    source.setFrom(files("src/main/java", "src/main/kotlin"))
}

tasks.withType<io.gitlab.arturbosch.detekt.Detekt>().configureEach {
    reports {
        html.required.set(true)
        xml.required.set(true)   // Para SonarQube
        sarif.required.set(true) // Para GitHub/IDE integrations
    }
}

// ── Ktlint: Convenciones de estilo para Kotlin (reemplaza Checkstyle) ──
ktlint {
    android.set(true)
    ignoreFailures.set(true) // Como tenías failsOnError=false en Checkstyle
    reporters {
        reporter(org.jlleitschuh.gradle.ktlint.reporter.ReporterType.HTML)
        reporter(org.jlleitschuh.gradle.ktlint.reporter.ReporterType.CHECKSTYLE) // Formato compatible con SonarQube
    }
}
