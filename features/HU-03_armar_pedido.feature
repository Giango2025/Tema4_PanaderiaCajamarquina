# language: es
# Trazabilidad: HU-03 ← RF03, RNF03 | Épica E1 Catálogo y pedidos | Must – WSJF 5.20
Característica: HU-03 Armar pedido con recojo o delivery
  Como cliente
  quiero armar un pedido eligiendo productos, cantidades y el tipo de entrega (recojo o delivery)
  para pedir sin llamar y sin que mi pedido se anote mal

  Escenario: Pedido con recojo en tienda
    Dado que el cliente inició sesión
    Cuando agrega 20 "Pan de yema" y 1 "Torta de chocolate" al carrito
    Y elige el tipo de entrega "Recojo en tienda"
    Entonces el carrito muestra ambos productos con sus cantidades y subtotales
    Y el sistema le permite continuar al pago

  Escenario: Pedido con delivery exige dirección
    Dado que el cliente tiene productos en el carrito
    Cuando elige el tipo de entrega "Delivery" y no ingresa dirección
    Entonces el sistema no le permite continuar
    Y muestra el mensaje "Ingresa la dirección de entrega"

  Escenario: Carrito vacío
    Dado que el cliente no tiene productos en el carrito
    Cuando intenta continuar al pago
    Entonces el sistema no le permite avanzar
    Y muestra el mensaje "Agrega al menos un producto"

  Escenario: Cantidad mayor al stock disponible
    Dado que quedan 3 unidades de "Torta de chocolate"
    Cuando el cliente intenta agregar 5 unidades
    Entonces el sistema limita la cantidad a 3
    Y muestra el mensaje "Solo quedan 3 unidades disponibles"
