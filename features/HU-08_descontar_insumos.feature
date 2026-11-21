# language: es
# Trazabilidad: HU-08 ← RF08 | Épica E4 Inventario y reportes | Must – WSJF 4.20
Característica: HU-08 Descuento automático de insumos
  Como propietaria
  quiero que al confirmarse un pedido se descuenten automáticamente los insumos según la receta de cada producto
  para saber cuánta harina, azúcar y mantequilla me queda sin contarla a mano

  Antecedentes:
    Dado que la receta de "Pan de yema" usa por unidad 40 g de harina, 5 g de azúcar y 3 g de mantequilla
    Y el inventario tiene 50 000 g de harina, 8 000 g de azúcar y 4 000 g de mantequilla

  Escenario: Descuento al confirmar un pedido
    Cuando se confirma un pedido de 20 "Pan de yema"
    Entonces el inventario queda en 49 200 g de harina, 7 900 g de azúcar y 3 940 g de mantequilla
    Y se registra el movimiento con el número del pedido

  Escenario: Se devuelven los insumos si el pedido se anula
    Dado que el pedido de 20 "Pan de yema" descontó los insumos
    Cuando el pago es rechazado y el pedido se anula
    Entonces los insumos vuelven a 50 000 g de harina, 8 000 g de azúcar y 4 000 g de mantequilla

  Escenario: Producto sin receta registrada
    Dado que "Empanada de queso" no tiene receta registrada
    Cuando se confirma un pedido que incluye "Empanada de queso"
    Entonces el pedido se confirma normalmente
    Y la propietaria recibe la alerta "Empanada de queso no tiene receta; no se descontaron insumos"
