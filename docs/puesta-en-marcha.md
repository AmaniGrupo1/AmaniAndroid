# Puesta en marcha local

## Requisitos

- JDK 17.
- Android SDK con Android API 36.
- Android Studio o el wrapper de Gradle incluido.
- Emulador o dispositivo Android compatible con `minSdk 25`.
- Archivo de configuración Firebase válido en `app/google-services.json` para compilar con el plugin de Google Services.

No se fija una versión mínima de Android Studio: el repositorio no la declara.

## Compilar

```bash
git clone https://github.com/AmaniGrupo1/AmaniAndroid.git
cd AmaniAndroid
./gradlew assembleDebug
```

El APK de depuración se genera en:

```text
app/build/outputs/apk/debug/app-debug.apk
```

También se puede abrir el repositorio en Android Studio y ejecutar la configuración de aplicación `app`.

## Ejecutar y comprobar

1. Inicia un emulador o conecta un dispositivo con depuración USB.
2. Ejecuta la app desde Android Studio o instala el APK de depuración generado.
3. Comprueba el arranque y la navegación inicial.
4. Para verificar login y operaciones con datos, confirma con el equipo el acceso a un entorno backend/Firebase y a una cuenta de prueba. No se documentan cuentas ni datos reales.

El backend configurado en `RetrofitModule` es un servicio Cloud Run; la dirección `10.0.2.2` aparece comentada como ejemplo para emulador, no como configuración activa. No hay un modo local seleccionado mediante una variable de entorno.

<!-- TODO: confirmar un entorno backend de desarrollo y una cuenta de prueba no real para validar el flujo completo -->

## Siguientes pasos

Ejecuta los [tests](calidad-y-testing.md) y consulta [configuración](referencia/configuracion.md) antes de cambiar endpoints o credenciales.
