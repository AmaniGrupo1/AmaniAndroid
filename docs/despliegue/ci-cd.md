# Integración y Despliegue Continuo (CI/CD)

En un entorno altamente colaborativo, asegurar que las adiciones de código nuevo enviadas por cada uno de los ingenieros no rompan el proyecto es la norma suprema. AMANI utiliza el orquestador gratuito integrado **GitHub Actions** para disparar estos salvaguardas protectores o distribuir artefactos nuevos.

## Pipeline Actual: Documentación

Uno de los flujos de despliegue actualmente configurados mediante los archivos *Yaml* (`.github/workflows/docs.yml`) es la compilación paralela y el despliegue automático de esta misma documentación estática que te encuentras consultando ahora mismo.

El disparador condicional (`on: push`) determina exactamente cuándo se arranca el motor del pipeline:

- El pipeline únicamente reaccionará si alguien sube directamente un *commit* o aprueba una petición de combinación hacia la rama base protegida `main`.
- Sin embargo, para evitar agotar las cuotas computacionales de GitHub con envíos de código de Java, el pipeline revisará minuciosamente si el *commit* alteró verdaderamente el directorio base `docs/**` o alteró la directriz maestra de `mkdocs.yml`.

### Despliegue Automatizado y Manual

Una vez que las condiciones aprueban la compilación en los servidores de integración continua, el contenedor de Ubuntu descarga todo el repositorio de MkDocs, instala las librerías oficiales del paquete `mkdocs-material` provenientes del índice general de Python y emite el comando ejecutor forzado de generación y reescritura hacia la rama espejo:

`mkdocs gh-deploy --force`

A partir de este instante de término lógico, las infraestructuras integradas actualizan sus referencias y las páginas web documentadas nacen de forma definitiva bajo tu subdominio personal de GitHub Pages. 

### Pasos para expandir la documentación en tu máquina

Si prefieres colaborar y subir una página original sin romper enlaces web, tu proceso debería emular el comportamiento de despliegue estático:

1. Crea físicamente tu archivo crudo (ej: `nuevo-metodo.md`) dentro de su carpeta estructural correspondiente en el árbol de `docs/`.
2. Actualiza explícitamente el árbol direccional global localizado dentro del campo `nav:` del archivo `mkdocs.yml` en la raíz.
3. Previsualiza la correcta inserción visual y navegación semántica utilizando localmente el servidor interactivo de desarrollo puro tecleando `mkdocs serve` en la línea de comando.
4. Efectúa el envío mediante `git push` hacia la rama central y deja que el obrero robótico instancie el despliegue a la red.

!!! warning "Limites de Despliegue en la Plataforma"
    El proceso iterativo del despliegue público reescribirá agresiva y permanentemente la rama de compilación `gh-pages` con cada nueva iteración detectada. Por ende, jamás apliques manipulaciones manuales directas en esta rama de destino pues cualquier modificación externa perecerá borrada para siempre tras culminarse el ciclo del próximo pipeline de MkDocs.
