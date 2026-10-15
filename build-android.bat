@echo off
setlocal
 echo === QUINCEYE : preparation Android ===
 call npm install
 if errorlevel 1 goto error
 call npm run android:build
 if errorlevel 1 goto error
 echo.
 echo Android Studio s'ouvre. Pour generer le fichier APK : Build ^> Build Bundle(s) / APK(s) ^> Build APK(s).
 goto end
:error
 echo Une etape a echoue. Verifiez Node.js 20+, Android Studio, le SDK Android et la connexion Internet pour les dependances.
 pause
:end
endlocal
