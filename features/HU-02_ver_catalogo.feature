# language: es
# Trazabilidad: HU-02 ← RF02, RNF05 | Épica E1 Catálogo y pedidos | Must – WSJF 9.00
Característica: HU-02 Ver catálogo con precio y disponibilidad
  Como cliente
  quiero ver el catálogo de productos con su precio y si hay disponibilidad
  para saber qué puedo pedir antes de ir o llamar a la panadería

  Antecedentes:
    Dado que la propietaria registró la producción del día:
      | producto        | precio  | unidades disponibles |
      | Pan de yema     | S/ 0.50 | 200                  |
      | Pan chancay     | S/ 0.60 | 0                    |
      | Torta de chocolate | S/ 45.00 | 3                 |

  Escenario: Catálogo con productos disponibles y agotados
    Cuando el cliente abre el catálogo
    Entonces ve "Pan de yema" con precio "S/ 0.50" y la etiqueta "Disponible"
    Y ve "Pan chancay" con la etiqueta "Agotado" y el botón "Agregar" deshabilitado
    Y ve "Torta de chocolate" con la etiqueta "Últimas 3 unidades"

  Escenario: La disponibilidad se actualiza al venderse un producto
    Dado que quedan 3 tortas de chocolate
    Cuando otro cliente confirma un pedido de 3 tortas de chocolate
    Y el cliente actualiza el catálogo
    Entonces "Torta de chocolate" aparece como "Agotado"

  Escenario: Catálogo en el celular
    Dado que el cliente entra desde un celular
    Cuando abre el catálogo
    Entonces los productos se muestran en una sola columna sin desplazamiento horizontal
