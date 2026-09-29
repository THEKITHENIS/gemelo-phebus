# Publicar el gemelo en GitHub Pages, paso a paso

Resultado: el gemelo en una dirección web segura (https) que se abre en cualquier ordenador y en las gafas PICO y Meta Quest, sin el `.bat`.

## Antes de empezar

- [ ] El repositorio será **público**: GitHub Pages gratuito solo publica repositorios públicos. Confirma que se puede publicar en abierto el **escaneo del circuito** (equipo e-USKELEC) y el **material del manual de Phebus**.
- [x] El README ya lleva la dirección definitiva: https://thekithenis.github.io/gemelo-phebus/

## 1 · Instalar GitHub Desktop

1. Descárgalo de **https://desktop.github.com** e instálalo.
2. Ábrelo e inicia sesión con tu cuenta de GitHub.

## 2 · Crear el repositorio

1. En GitHub Desktop: **File → New repository…**
2. **Name:** `gemelo-phebus` (en minúsculas, sin espacios).
3. **Local path:** por ejemplo, tu carpeta `Documentos`.
4. Deja sin marcar «Initialize this repository with a README» y deja **Git ignore** y **License** en *None*.
5. Pulsa **Create repository**. Se crea la carpeta `Documentos\gemelo-phebus`.

## 3 · Copiar el gemelo

1. Copia **todo el contenido** de la carpeta del gemelo (la que tiene `index.html`) dentro de `Documentos\gemelo-phebus`.
2. Comprueba que queda así: `index.html`, `manifest.webmanifest`, `sw.js`, `.nojekyll`, `README.md` y las carpetas `rad`, `lib`, `iconos`, `autoware`, `autoware_ai`.

El fichero `.nojekyll` puede no verse en Windows porque empieza por punto. Tiene que estar: evita que GitHub procese la web.

## 4 · Subirlo

1. Vuelve a GitHub Desktop. A la izquierda verás unos 460 ficheros nuevos.
2. Abajo a la izquierda, en **Summary**, escribe: `Gemelo Phebus v8.4`.
3. Pulsa **Commit to main**.
4. Arriba, pulsa **Publish repository**.
5. **Desmarca «Keep this code private»** y pulsa **Publish repository**.

Son unos 500 MB: la primera subida tarda un rato.

## 5 · Activar la web

1. Abre tu repositorio en **github.com** (en GitHub Desktop: **Repository → View on GitHub**).
2. Entra en **Settings → Pages**.
3. En **Build and deployment**, **Source:** *Deploy from a branch*. **Branch:** *main* y carpeta */ (root)*. Pulsa **Save**.
4. Espera unos minutos y recarga la página: arriba aparecerá la dirección, del tipo **https://thekithenis.github.io/gemelo-phebus/**

## 6 · Probarlo

- **En el ordenador:** abre la dirección. Abajo a la derecha debe poner **v8.4**.
- **En las PICO 4 Enterprise y las Meta Quest:** abre la dirección en el navegador de las gafas y pulsa **«Entrar en VR»**. Para tenerlo como app, usa la opción de instalar o añadir como aplicación del menú del navegador. Al abrirla desde su icono, intenta entrar directamente en realidad virtual.

## Para actualizarlo más adelante

1. Copia los ficheros nuevos dentro de `Documentos\gemelo-phebus`, reemplazando los antiguos.
2. En GitHub Desktop: escribe un **Summary** (por ejemplo `v8.5`), pulsa **Commit to main** y después **Push origin**.
3. En unos minutos la web está actualizada.

## Límites de GitHub que cumple

- Ningún fichero pasa de 100 MB. El mayor es `lidar_puntos.bin`, con 18 MB.
- El total ronda los 500 MB, por debajo del máximo de 1 GB de una web de GitHub Pages.
- No uses Git LFS aunque GitHub Desktop lo sugiera: GitHub Pages no sirve bien esos ficheros.
