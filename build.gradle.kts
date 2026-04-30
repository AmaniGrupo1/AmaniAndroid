// Top-level build file where you can add configuration options common to all sub-projects/modules.
plugins {
    alias(libs.plugins.android.application) apply false
    alias(libs.plugins.kotlin.android) apply false
    alias(libs.plugins.kotlin.kapt) apply false
    alias(libs.plugins.dokka)
    alias(libs.plugins.kotlin.compose) apply false
    alias(libs.plugins.google.gms.google.services) apply false
    alias(libs.plugins.detekt) apply false
    alias(libs.plugins.ktlint) apply false
    alias(libs.plugins.sonarqube)
    alias(libs.plugins.google.firebase.crashlytics) apply false
    alias(libs.plugins.kover)
}

tasks.register("qualityCheck") {
    dependsOn(
        ":app:testDebugUnitTest",
        ":app:detekt",
        ":app:ktlintCheck",
        ":app:lintDebug",
        ":app:koverHtmlReportDebug"
    )
    group = "Verification"
    description = "Runs all unit tests, static analysis, and generates coverage reports."
}

sonar {
    properties {
        property("sonar.projectKey", "AmaniAndroid")
        property("sonar.projectName", "Amani Android")
        property("sonar.host.url", System.getenv("SONAR_HOST_URL") ?: "http://localhost:9000")
        property("sonar.token", System.getenv("SONAR_TOKEN") ?: "")
        property("sonar.sources", "app/src/main")
        property("sonar.tests", "app/src/test,app/src/androidTest")
        property("sonar.sourceEncoding", "UTF-8")
        property("sonar.androidLint.reportPaths", "app/build/reports/lint-results-debug.xml")
        property("sonar.kotlin.detekt.reportPaths", "app/build/reports/detekt/detekt.xml")
    }
}
