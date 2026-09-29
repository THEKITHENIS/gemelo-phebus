# Phebus · conducir solo con Autoware.AI en el circuito

El ordenador del coche (JHCTECH BRAV-7520) usa **ROS 1 con Autoware.AI**. Estos son los pasos para que el Phebus recorra solo el circuito. Todos se pueden ver simulados en la pestaña **Autoware** del gemelo digital.

## Ficheros

| Fichero | Para qué sirve |
|---|---|
| `phebus_tf.launch` | Posiciones de LiDAR, cámara, antenas e inercial respecto al coche, en formato de ROS 1 |
| `phebus_ruta_waypoints.csv` | La vuelta oficial del gemelo como puntos de paso: x, y, z (m) y velocidad (km/h), el formato más antiguo que admite `waypoint_loader` |

**Aviso:** las coordenadas del CSV son las del gemelo. El mapa real que construya `ndt_mapping` tendrá su propio origen, así que en el coche la ruta se graba con `waypoint_saver` sobre ese mapa. El CSV sirve para practicar y para comparar.

## 1 · Mapa

1. Con el mando, dar una vuelta despacio grabando el LiDAR: `rosbag record /points_raw`.
2. Reproducir la grabación con `ndt_mapping` activo (Computing → Localization) y guardar el mapa como `.pcd`.

## 2 · Localización

- Pestaña **Setup**, *Baselink to Localizer*: **x 0,42 · y 0,00 · z 1,44 · yaw 0 · pitch 0 · roll 0**.
- Map: `points_map_loader` con el `.pcd`.
- Sensing: controlador del LiDAR y `voxel_grid_filter`.
- Computing: `ndt_matching` y `vel_pose_connect`. Comprobar en RViz que el coche aparece bien situado sobre el mapa antes de seguir.

## 3 · Ruta

- Grabar una vuelta con el mando y `waypoint_saver` (un punto cada metro).
- Computing: `waypoint_loader` con ese CSV, y `lane_rule`, `lane_stop` y `lane_select`.

## 4 · Percepción y parada

- `velocity_set` frena ante lo que el LiDAR ve sobre la ruta; `astar_avoid`, si se activa, busca cómo rodearlo.

## 5 · Seguimiento y control

- `pure_pursuit` y `twist_filter`.
- Distancia de anticipación = velocidad × `lookahead_ratio`, con un mínimo de `minimum_lookahead_distance`.
- **Valores para este circuito: `lookahead_ratio` 0,6 y `minimum_lookahead_distance` 1,6 m.** Probados en el gemelo: vuelta completa sin tocar vallas y con un desvío máximo de 69 cm.
- Con los valores típicos para coches grandes (2,0 y 6 m), en el gemelo el Phebus recorta la primera curva y toca la valla de salida de la plaza a los 16 m.

## Orden de arranque (Runtime Manager)

1. Map: `points_map_loader`.
2. Sensing: LiDAR y `voxel_grid_filter`.
3. Computing: `ndt_matching` y `vel_pose_connect`; comprobar la localización.
4. Computing: `waypoint_loader`, `lane_rule`, `lane_stop`, `lane_select`.
5. Computing: `astar_avoid`, `velocity_set`, `pure_pursuit`, `twist_filter`.
6. Controlador de PIX para enviar las órdenes al coche, **con el mando en la mano y la seta al alcance**.
