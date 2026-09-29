# Gemelo digital del chasis Phebus · publicación y jornada

Esta carpeta lleva cuatro ficheros:

| Fichero | Qué es |
|---|---|
| `index.html` | El gemelo completo (4,9 MB). Lleva el modelo, las fotos y los textos dentro |
| `ar.html` | Versión ligera para el móvil, con el botón de realidad aumentada |
| `modelo.glb` | El chasis para Android y para el visor de `ar.html` (2 MB) |
| `modelo.usdz` | El mismo chasis para iPhone y iPad (4,7 MB) |
| `circuito_movil.ply` | Circuito escaneado, versión ligera (650 000 splats, 11 MB). Se carga siempre primero y es el fondo en móviles |
| `circuito_alta.ply` | Fondo del circuito en ordenador (2 millones de splats, 33 MB) |
| `zonas/` | El circuito a densidad casi completa, partido en 34 zonas de 30 × 30 m (17,6 millones de splats, 286 MB). El visor carga solo las que rodean al coche |

Todos tienen que ir **en la misma carpeta**, y la carpeta `zonas` entera, con su `indice.json`, al lado de `index.html`. Si falta `modelo.glb` o `modelo.usdz`, la realidad aumentada no funciona.

## Publicarlo en GitHub Pages (gratis y público)

1. Entra en github.com con la cuenta del proyecto y pulsa **New repository**.
2. Ponle nombre, por ejemplo `gemelo-phebus`, márcalo **Public** y créalo.
3. Pulsa **uploading an existing file** y arrastra los cuatro ficheros de golpe. **Commit changes**.
4. **Settings → Pages**. En *Source* elige **Deploy from a branch**, rama `main`, carpeta `/ (root)`. Guarda.
5. En un minuto tienes la dirección pública: `https://<cuenta>.github.io/gemelo-phebus/`.

Compruébalo desde un móvil antes de la jornada: abre la dirección, pulsa **AR** arriba y luego **Verlo a tamaño real**.

## El QR para la jornada

En el gemelo, botón **QR** de la cabecera. Puedes elegir entre dos destinos:

- **Gemelo completo:** la página con todo.
- **Tamaño real:** la versión de realidad aumentada. Para la jornada, este.

El botón **Imprimir cartel** saca una hoja A4 con el QR grande, el título y los tres logos, lista para plastificar y poner al lado de la plataforma.

El QR se genera con la dirección de la página en la que estés. Ábrelo desde la dirección pública de GitHub Pages, no desde el fichero local, o el QR no servirá.

## Qué hace falta para la realidad aumentada

- **Android:** Chrome y los Servicios de Google para RA (los trae casi todo móvil reciente).
- **iPhone y iPad:** Safari, iOS 12 o superior.
- Si el móvil no la admite, el botón se queda desactivado y el modelo se puede girar con el dedo igualmente.
- El chasis aparece a tamaño real, 2,49 m de largo: hace falta un espacio despejado de unos 4 m.

## Créditos

Dentro del visor, pestaña **Fuentes**: manual y fotografías de Phebus con su autorización, modelo 3D de partida de PIX Moving (Apache 2.0) y trabajo propio del proyecto con licencia CC BY 4.0.
