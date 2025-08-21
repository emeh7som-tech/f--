#!/bin/bash
set -e
# Este script ilustra o processo. Execute em máquina com Android SDK e Capacitor instalados.
npm install @capacitor/cli @capacitor/core
if [ ! -d "android" ]; then
  npx cap init "IronBank" com.emerson.ironbank --web-dir=www --skip-deps
  npx cap add android
fi
npx cap sync android
cd android && ./gradlew assembleDebug
echo "APK em: $(pwd)/app/build/outputs/apk/debug/app-debug.apk"
