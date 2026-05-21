# Registro de Decisiones Arquitectónicas (ADR)

Este registro documenta históricamente las elecciones técnicas cruciales asumidas por los arquitectos de software durante la planeación temprana e implementación continua de AMANI Android. 

Su lectura permite a futuros integrantes comprender verdaderamente por qué se estructuraron las librerías de cierta forma en vez de utilizar las alternativas competidoras más comunes del mercado.

---

## ADR-001: Koin en vez de Hilt

### Contexto
Todo proyecto moderno regido por Clean Architecture necesita obligatoriamente un motor de inyección de dependencias para gobernar el árbol logístico del ciclo de vida de repositorios y modelos de vista. La competencia primaria residía entre Hilt (esquema oficial de Android) y Koin (librería mantenida por la comunidad pura de Kotlin).

### Decisión
Se seleccionó y afianzó a **Koin** como único e indiscutible motor de inyección estructural, despreciando toda variante que requiera del uso de constructores complejos o procesos de anotación pesados generadores de compilaciones extra.

### Consecuencias
- Alivio tremendo de tiempos de compilación local en máquinas de bajo nivel computacional, gracias a la inexistencia de uso de `kapt` o procesadores de anotaciones en Koin.
- Curva de aprendizaje y adopción mucho más corta y accesible para estudiantes e ingenieros junior dentro del equipo del PFC.
- Validación de los nodos carente de rigor estático (errores detectables solo en tiempo de ejecución), solventable forzando el diseño rígido de test integrados exhaustivos.

### Estado
**Implementado**. La aplicación ya está enteramente escrita basando sus cimientos bajo el contenedor nativo de este localizador de dependencias.

---

## ADR-002: Jetpack Compose en vez de XML Views

### Contexto
Al iniciar las consideraciones visuales para el proyecto, el SDK nativo todavía soportaba el clásico formato XML de etiquetado imperativo para inflar menús y contenedores. Sin embargo, se aproximaban las fechas finales de migración de ecosistemas propuesta por Google.

### Decisión
Se desterró íntegramente todo vestigio del formato XML arcaico, optando por desarrollar de forma radical e íntegra el conjunto visual total mediante el motor avanzado declarativo **Jetpack Compose**, apoyándose estrictamente en las normativas del esquema gráfico Material 3.

### Consecuencias
- Acelera asombrosamente el proceso del dibujado visual fluido, evitando manipular costosos intermediarios visuales (*ViewHolders*).
- Requiere acoplarse y comprender minuciosamente un paradigma conceptual enteramente nuevo, gobernado por flujos de estados (re-composiciones lógicas) perdiendo el control rígido directo tradicional sobre elementos del DOM local.
- Unifica lenguajes: toda la interfaz nace y reside bajo lenguaje nativo estricto Kotlin.

### Estado
**Implementado**. Se erradicaron permanentemente los layouts y menús análogos del marco estructural predeterminado de Android Studio.

---

## ADR-003: Firebase Realtime Database para el chat en vez de WebSocket propio

### Contexto
El aplicativo dependía funcionalmente de contar con intercambios bidireccionales de bajo latencia o chat integrado ininterrumpido y eficiente de uso entre el profesional en línea y su paciente receptor. Sostener de modo permanente túneles nativos (Websockets puros) en Spring Boot presentaba problemas de congestión o latencia en el servidor base universitario.

### Decisión
Delegar permanentemente la ingesta, transcodificación de notificaciones en reposo y enrutado central de la red a los conglomerados remotos del clúster de Google, utilizando puntualmente y de forma directa el motor **Firebase Realtime Database**.

### Consecuencias
- Garantía asombrosa y resolución del mantenimiento automático para un eventual comportamiento fuera de la red local, ofreciendo reintentos automáticos bajo esquemas inestables.
- Obliga estructuralmente al servidor central en Java a forjar llaves criptográficas transitorias de identificación (Tokens Personalizados de Integración).
- Añade una latencia estructural imperceptible inherente al enrutado exterior (dispositivo local hacia Europa a través del servidor RTDB).

### Estado
**Implementado**. Operativo y consumiendo satisfactoriamente los recursos limitados en la nube europea, reduciendo la fatiga funcional del túnel inverso alojado localmente.

!!! warning "Cumplimiento del Registro"
    Cualquier propuesta para reemplazar alguna de estas herramientas pilares (como intercambiar Compose por interfaces de XML) requiere primeramente proponer, someter a debate lógico y escribir una entrada suplementaria y oficial justificando la anulación de estos históricos aquí expuestos, antes de aprobar alteraciones radicales al código del sistema de repositorios matriz.
