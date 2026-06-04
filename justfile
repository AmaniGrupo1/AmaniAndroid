# Automates APK build and Firebase App Distribution upload

APP_ID := "1:560473593904:android:5a43a5e5347042a04ff5f5"
APK_PATH := "app/build/outputs/apk/debug/app-debug.apk"

# Build debug APK and upload to Firebase App Distribution
distribute-pr msg="PR Build":
    @echo "==> Construyendo APK..."
    ./gradlew assembleDebug
    @echo "==> Subiendo a Firebase App Distribution..."
    npx -y firebase-tools appdistribution:distribute {{APK_PATH}} --app {{APP_ID}} --release-notes "{{msg}}"

# Build release APK and upload to Firebase App Distribution
distribute-release msg="Release Build":
    @echo "==> Construyendo APK Release..."
    ./gradlew assembleRelease
    @echo "==> Subiendo a Firebase App Distribution..."
    npx -y firebase-tools appdistribution:distribute app/build/outputs/apk/release/app-release.apk --app {{APP_ID}} --release-notes "{{msg}}"
