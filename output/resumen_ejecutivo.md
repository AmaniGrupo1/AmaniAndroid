# RESUMEN EJECUTIVO - AUDITORÍA DE SEGURIDAD APK

## Información General

| Campo | Valor |
|-------|-------|
| **Aplicación** | Amani |
| **Package** | org.ies.tierno.applicationamani |
| **Versión** | 1.0 (build 1) |
| **Compile SDK** | 36 |
| **Min SDK** | 25 (Android 7.0) |
| **Target SDK** | 36 |
| **Fecha Análisis** | 2026-04-18 |
| **Analista** | Senior Mobile Security Auditor |
| **Método** | Análisis Estático (APK reverse engineering) |

## Resumen de Hallazgos

| Severidad | Cantidad | Porcentaje |
|-----------|----------|------------|
| **Crítico** | 2 | 20% |
| **Alto** | 4 | 40% |
| **Medio** | 3 | 30% |
| **Bajo** | 1 | 10% |
| **Total** | 10 | 100% |

## Hallazgos Críticos (Acción Requerida)

### 1. Debug Mode Enabled (F-001)
**CVSS: 9.8** - CRÍTICO

El archivo `AndroidManifest.xml` tiene `android:debuggable="true"` habilitado. Esto permite:
- Depuración remota del proceso
- Inyección de código con ADB
- Lectura de memoria del proceso
- Exposición completa de datos sensibles

**Recomendación:** Establecer `android:debuggable="false"` inmediatamente.

### 2. API Key Hardcoded (F-004)
**CVSS: 9.0** - CRÍTICO

Google API Key expuesta en el APK:
```
AIzaSyBogTVMHBidx5UQmbyFgti_pTlKkPmmz_s
```

**Riesgos:**
- Abuso de APIs de Google
- Costos no autorizados
- Exceso de cuotas

## Hallazgos de Alto Riesgo

| ID | Título | CVSS | Estado |
|----|--------|------|--------|
| F-002 | ClearText Traffic Allowed | 6.5 | Confirmado |
| F-003 | Backup Enabled (Data Exposure) | 7.8 | Confirmado |
| F-006 | Exported Components Without Protection | 7.1 | Confirmado |
| F-007 | SharedPreferences Usage Without Encryption | 7.8 | Probable |

## Indicadores de Compromiso (IOCs)

### URLs de Servicio
- `https://amani-160bf-default-rtdb.europe-west1.firebasedatabase.app` - Firebase Realtime Database
- `https://amani-160bf.firebasestorage.app` - Firebase Storage

### API Keys Encontradas
- Google API Key: `AIzaSyBogTVMHBidx5UQmbyFgti_pTlKkPmmz_s`

## Componentes Exportados (Riesgo)

Los siguientes componentes están exportados sin protección adicional:
- `androidx.compose.ui.tooling.PreviewActivity` (debug preview)
- `androidx.activity.ComponentActivity`
- `androidx.work.impl.diagnostics.DiagnosticsReceiver`
- `androidx.work.impl.background.systemjob.SystemJobService`

## Metodología Aplicada

- **MASVS**: Mobile Application Security Verification Standard
- **MASTG**: Mobile Application Security Testing Guide
- **CWE**: Common Weakness Enumeration
- **Tools**: apktool 3.0.1, jadx 1.5.5, aapt, apksigner

## Próximos Pasos Recomendados

1. **Inmediato**: Deshabilitar debug mode en AndroidManifest.xml
2. **Inmediato**: Rotar API Key expuesta en Google Cloud Console
3. **Alto**: Implementar Network Security Config para HTTPS-only
4. **Alto**: Deshabilitar backup o usar EncryptedSharedPreferences
5. **Medio**: Revisar reglas de seguridad de Firebase Realtime Database
6. **Medio**: Revisar componentes exportados y requerir permisos

## Certificado de Análisis

Este análisis fue realizado en contenedor Docker reproducible con:
- Ubuntu 22.04
- OpenJDK 17
- APKTool 3.0.1
- Jadx 1.5.5
- Semgrep (Kotlin rules)

**Hash APK**: `ffae44343ea644a3e37b72018cbe05813f53e9f52964c3da0b680371f36737ee`

---
*Fin del Resumen Ejecutivo*
