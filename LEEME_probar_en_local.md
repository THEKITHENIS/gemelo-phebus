# Probar el visor en tu ordenador antes de subirlo

## Lo más rápido: doble clic en `index.html`

Se abre en el navegador y funciona casi todo: el chasis, el despiece, el interior con los equipos y el cableado, la ficha técnica, el esquema eléctrico, la conducción con teclado o mando, la grabación de rutas y el modo autónomo.

Lo que **no** funciona así:
- El circuito en alta densidad. Verás la versión ligera que va dentro del propio fichero.
- El botón **AR**, porque necesita descargar los modelos desde una dirección web.
- El QR, que generaría una dirección de tu disco duro y no serviría.

## Para verlo tal cual quedará publicado

Arranca un servidor local. Es una ventana negra que hay que dejar abierta mientras miras el visor.

**Windows:** doble clic en `abrir_visor_windows.bat`. Se abre el navegador solo.
**Mac:** doble clic en `abrir_visor_mac.command`. Si Mac se queja la primera vez, botón derecho sobre el fichero, Abrir, y confirmar.

Si te dice que no encuentra Python, instálalo desde python.org marcando la casilla *Add python.exe to PATH*, y vuelve a intentarlo. Una vez instalado, no hay que volver a tocar nada.

Con el servidor arrancado verás, además de lo anterior:
- El **circuito completo**, el fichero grande de puntos.
- El botón **AR** activo (en el ordenador saldrá desactivado porque no hay cámara con seguimiento; en el móvil hace falta que esté publicado en internet con https).
- El **QR**, apuntando a `localhost`, que solo vale para probar.

Para parar el servidor, cierra la ventana negra.

## Ver los cambios

Cada versión nueva es sustituir los ficheros de esta carpeta. Recarga el navegador con **Ctrl+F5** (Mac: **Cmd+Shift+R**) para que no te sirva la copia guardada.

## Cuando ya lo tengas visto

Sube el contenido de esta carpeta a tu repositorio de GitHub y activa Pages. Los lanzadores y este fichero puedes subirlos también: no molestan, o los borras si prefieres dejar solo lo que se publica.

## Novedades de la versión 8.0: el circuito con Spark

- El circuito lo dibuja ahora **Spark 2.2**, un motor profesional de splats con niveles de detalle: siempre el máximo detalle que cabe en un número fijo de splats, sin zonas, sin huecos y sin golpes.
- Tienen que estar junto a `index.html` la carpeta **`rad`** (el circuito, 448 MB) y la carpeta **`lib`** (el motor Spark). La carpeta `zonas` y `circuito_alta.ply` de versiones anteriores ya no se usan y se pueden borrar.
- **Muy importante en portátiles con gráfica dedicada:** el navegador tiene que usar la tarjeta NVIDIA, no la integrada. En Windows: Configuración → Sistema → Pantalla → Gráficos → añadir el navegador (por ejemplo `%ProgramFiles%\Google\Chrome\Application\chrome.exe`) → Opciones → Alto rendimiento. Después, cerrar el navegador del todo y volver a abrirlo, con el portátil enchufado. Si el gemelo detecta que está usando la integrada, lo avisa en pantalla.
- Tecla **F**: muestra u oculta el marcador de fluidez (fotogramas por segundo, peor fotograma, tirones y tarjeta gráfica en uso).
- `lidar_puntos.bin` (18 MB): los puntos con los que trabaja el LiDAR virtual, uno cada 13 cm sobre las superficies sólidas del escaneo. Tiene que estar junto a `index.html`.
- Calidades: Móvil (la mitad de splats), Alta (lo que Spark elige para el equipo) y Máxima (el triple, para tarjetas dedicadas).

## Realidad virtual (versión 8.3)

Con unas gafas Oculus / Meta Quest conectadas al ordenador por cable (Meta Quest Link):

1. Abre la aplicación **Meta Quest Link** en el ordenador y conecta las gafas por cable. En la aplicación, en Configuración → General → Tiempo de ejecución de OpenXR, marca Meta Quest Link como activo.
2. En las gafas, activa **Link**.
3. En el ordenador, arranca `abrir_visor_windows.bat` y abre el gemelo en **Chrome o Edge**. Arriba aparece el botón **«Entrar en VR»** (solo sale si el navegador detecta unas gafas).
4. Pulsa el botón y ponte las gafas.

Mandos:

| Mando | Qué hace |
|---|---|
| Menú en la muñeca izquierda | Se maneja apuntando con el mando derecho y apretando el gatillo |
| Gatillo sobre una pieza | Abre su ficha flotante, con texto y foto |
| Joystick izquierdo | Acelerar y frenar |
| Joystick derecho | Girar |
| A | Conducir o parar |
| B | Seta de emergencia |
| X | Ocultar o mostrar el menú |
| Y | Cambiar la vista: de pie, persecución, a bordo |

En modo autónomo, los roces de los joysticks se ignoran; un movimiento decidido toma el control, como en la pantalla. En VR, Spark ajusta solo el circuito a 500 000–750 000 splats para mantener la fluidez.
