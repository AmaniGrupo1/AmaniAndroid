#!/bin/bash

# Script to run Firebase Test Lab tests locally
# Prerequisites: gcloud CLI installed and authenticated

PROJECT_ID="your-firebase-project-id" # You can pass this as an argument or set it here

echo "🚀 Building APKs..."
./gradlew assembleDebug assembleDebugAndroidTest

echo "🧪 Running Robo Test..."
gcloud firebase test android run \
  --type robo \
  --app app/build/outputs/apk/debug/app-debug.apk \
  --device model=pixel7,version=33,locale=es,orientation=portrait \
  --timeout 5m \
  --project $PROJECT_ID

echo "🧪 Running Instrumented Tests..."
gcloud firebase test android run \
  --type instrumentation \
  --app app/build/outputs/apk/debug/app-debug.apk \
  --test app/build/outputs/apk/androidTest/debug/app-debug-androidTest.apk \
  --device model=pixel7,version=33,locale=es,orientation=portrait \
  --timeout 10m \
  --project $PROJECT_ID
