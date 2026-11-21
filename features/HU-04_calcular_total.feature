# language: es
# Trazabilidad: HU-04 ← RF04 | Épica E1 Catálogo y pedidos | Must – WSJF 10.00
Característica: HU-04 Calcular el total con costo de envío
  Como cliente
  quiero ver el monto total de mi pedido con el costo de envío cuando elijo delivery
  para saber cuánto voy a pagar antes de confirmar

  Esquema del escenario: Total según tipo de entrega y zona
    Dado que el carrito tiene productos por un subtotal de S/ <subtotal>
    Cuando el cliente elige "<entrega>" en la zona "<zona>"
    Entonces el sistema muestra un costo de envío de S/ <envio>
    Y un total a pagar de S/ <total>

    Ejemplos:
      | subtotal | entrega          | zona            | envio | total |
      | 55.00    | Recojo en tienda | —               | 0.00  | 55.00 |
      | 55.00    | Delivery         | Centro          | 3.00  | 58.00 |
      | 55.00    | Delivery         | Baños del Inca  | 5.00  | 60.00 |

  Escenario: Dirección fuera de la zona de reparto
    Dado que el cliente eligió "Delivery"
    Cuando ingresa una dirección que no pertenece a ninguna zona de reparto
    Entonces el sistema muestra "Por ahora no llegamos a esa zona; puedes elegir recojo en tienda"
    Y no calcula el total con delivery
