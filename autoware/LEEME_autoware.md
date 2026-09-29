# Calibración de sensores para Autoware · Phebus

> **Aviso:** el ordenador del vehículo trabaja con **ROS 1** (Autoware.AI), según el ingeniero de PIX. Estos ficheros tienen el formato de **Autoware Universe (ROS 2)** y sirven si se actualiza el ordenador. Para el sistema actual, las mismas posiciones hay que darlas como transformadas estáticas de ROS 1; se generarán en cuanto se confirmen los nombres de los marcos de los controladores instalados.

Ficheros generados desde el gemelo digital con las medidas tomadas en el vehículo.

| Fichero | Qué es |
|---|---|
| `vehicle_info.param.yaml` | Dimensiones del vehículo (manual de Phebus) |
| `sensors_calibration.yaml` | Dónde está el conjunto de sensores respecto al coche |
| `sensor_kit_calibration.yaml` | Dónde está cada sensor dentro del conjunto |

## Referencias

- **base_link**: centro del eje trasero, a ras de suelo. Es el estándar de Autoware.
- Ejes: **x hacia delante, y hacia la izquierda, z hacia arriba**. Distancias en metros, ángulos en radianes.
- **sensor_kit_base_link**: la base del LiDAR, sobre la placa superior del mástil trasero.

## Qué está medido y qué es provisional

| Dato | Estado |
|---|---|
| Base del LiDAR a 1,41 m y centro óptico a 1,44 m | Medido |
| Cámara a 1,34 m, sujeta al mástil | Medido |
| Bastidor de sensores en la cara delantera de la caja, donde empieza el contenedor trasero: eje del LiDAR a 0,42 m por delante del eje trasero | Medido |
| Caja de policarbonato con el ancho del contenedor trasero y la tapa a 53,5 cm de la plataforma central; montantes delanteros hasta la plataforma | Medido |
| Plataforma a 0,24 m del suelo | Medido |
| Antenas GNSS de champiñón: la trasera sobre la tapa del primer nivel y la delantera sobre el contenedor delantero | Posición medida; alturas de los discos (1,04 y 0,65 m) estimadas de la foto |
| Inclinación de la cámara | Pendiente |
| Campo de visión de la cámara | Provisional: el cuerpo no lleva pegatina de modelo |
| Anchos y fondos de los tres niveles de la torre, y la altura donde el nivel 2 pasa al 3 | Estimados de las fotos |

## Aviso sobre la dirección a las cuatro ruedas

Autoware modela el vehículo como una bicicleta con dirección solo delante. Los modos con dirección trasera (opuestas y paralela) no los representa: para Autoware, el Phebus debe trabajar en modo convencional, o hará falta adaptar el modelo del vehículo y el controlador.
