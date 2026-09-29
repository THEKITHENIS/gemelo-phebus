// Service worker mínimo: permite instalar el gemelo como app. No guarda el circuito (448 MB) en caché.
const NUCLEO = "phebus-v8-4";
self.addEventListener("install", e => { e.waitUntil(caches.open(NUCLEO).then(c => c.addAll(["./", "manifest.webmanifest", "iconos/icono-192.png", "iconos/icono-512.png"]))); self.skipWaiting(); });
self.addEventListener("activate", e => { e.waitUntil(caches.keys().then(k => Promise.all(k.filter(n => n !== NUCLEO).map(n => caches.delete(n))))); self.clients.claim(); });
self.addEventListener("fetch", e => {
  if (e.request.mode === "navigate") e.respondWith(fetch(e.request).catch(() => caches.match("./")));   // sin red, al menos abre la página
});
