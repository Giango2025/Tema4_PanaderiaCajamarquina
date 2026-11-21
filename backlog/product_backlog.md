# Product Backlog priorizado – Panadería Cajamarquina

Orden = MoSCoW (Must → Won't) y, dentro de cada categoría, WSJF descendente.

| # | ID | Historia de usuario | Origen | CoD | SP | WSJF | MoSCoW | Sprint |
|---|---|---|---|---|---|---|---|---|
| 1 | HU-01 | Como cliente, quiero registrarme e iniciar sesión con mi correo o número de celular, para hacer pedidos sin volver a escribir mis datos cada vez. | RF01 | 21 | 2 | 10.50 | Must | Sprint 1 |
| 2 | HU-04 | Como cliente, quiero ver el monto total de mi pedido con el costo de envío cuando elijo delivery, para saber cuánto voy a pagar antes de confirmar. | RF04 | 20 | 2 | 10.00 | Must | Sprint 1 |
| 3 | HU-12 | Como cajero, quiero asignar cada pedido de delivery a un repartidor disponible, para que ningún pedido quede sin entregar. | RF07, RF10 | 19 | 2 | 9.50 | Must | Sprint 2 |
| 4 | HU-02 | Como cliente, quiero ver el catálogo de productos con su precio y si hay disponibilidad, para saber qué puedo pedir antes de ir o llamar a la panadería. | RF02 | 27 | 3 | 9.00 | Must | Sprint 1 |
| 5 | HU-10 | Como repartidor, quiero ver la dirección y el número de contacto del cliente del pedido que me asignaron, para entregar sin pedir los datos por WhatsApp. | RF10 | 17 | 2 | 8.50 | Must | Sprint 2 |
| 6 | HU-07 | Como cajero, quiero ver los pedidos entrantes y actualizar su estado desde el panel de gestión, para organizar la preparación y dejar de anotar pedidos en papel. | RF07 | 23 | 3 | 7.67 | Must | Sprint 1 |
| 7 | HU-05 | Como cliente, quiero elegir el método de pago (efectivo, Yape o Plin) y recibir un número de pedido único, para tener la confirmación de que mi pedido fue registrado. | RF05 | 27 | 5 | 5.40 | Must | Sprint 1 |
| 8 | HU-03 | Como cliente, quiero armar un pedido eligiendo productos, cantidades y el tipo de entrega (recojo o delivery), para pedir sin llamar y sin que mi pedido se anote mal. | RF03 | 26 | 5 | 5.20 | Must | Sprint 1 |
| 9 | HU-08 | Como propietaria, quiero que al confirmarse un pedido se descuenten automáticamente los insumos según la receta de cada producto, para saber cuánta harina, azúcar y mantequilla me queda sin contarla a mano. | RF08 | 21 | 5 | 4.20 | Must | Sprint 2 |
| 10 | HU-11 | Como propietaria, quiero consultar el stock de insumos en tiempo real y recibir una alerta cuando uno baje del mínimo, para comprar a tiempo y no quedarme sin insumos el fin de semana. | Obj. negocio 3 | 19 | 3 | 6.33 | Should | Sprint 3 |
| 11 | HU-06 | Como cliente, quiero recibir avisos del estado de mi pedido (recibido, en preparación, en camino, entregado), para no tener que llamar para preguntar por mi pedido. | RF06 | 17 | 3 | 5.67 | Should | Sprint 2 |
| 12 | HU-09 | Como propietaria, quiero obtener un reporte diario de ventas y pedidos pendientes, para hacer el cierre de caja en minutos. | RF09 | 16 | 3 | 5.33 | Should | Sprint 2 |
| 13 | HU-13 | Como cliente, quiero programar mi pedido para una fecha y hora futura, para asegurar mi pan del fin de semana aunque la panadería esté cerrada. | Obj. negocio 1 | 22 | 5 | 4.40 | Should | Sprint 3 |
| 14 | HU-14 | Como cliente frecuente, quiero repetir un pedido anterior con un solo botón, para pedir más rápido lo que siempre compro. | Obj. negocio 4 | 12 | 2 | 6.00 | Could | Sprint 3 |
| 15 | HU-15 | Como cliente frecuente, quiero acumular puntos por mis compras y canjearlos por productos, para sentir que la panadería premia mi preferencia. | Obj. negocio 4 | 9 | 5 | 1.80 | Won't | Fuera de release |

## Validación INVEST

| ID | I | N | V | E | S | T | Observación |
|---|---|---|---|---|---|---|---|
| HU-01 | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ | — |
| HU-02 | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ | En el Sprint 1 la disponibilidad se toma de la producción del día que registra la propietaria. |
| HU-03 | ~ | ✓ | ✓ | ✓ | ~ | ✓ | La más grande del sprint (5 SP). Se mantiene unida: productos + cantidad + tipo de entrega forman una sola unidad de valor. |
| HU-04 | ~ | ✓ | ✓ | ✓ | ✓ | ✓ | Se negoció con la PO un costo de envío fijo por zona (S/ 3 centro, S/ 5 Baños del Inca). |
| HU-05 | ~ | ✓ | ✓ | ~ | ~ | ✓ | Yape/Plin no ofrecen API para negocios pequeños: se acordó registrar el código de operación y que el cajero lo valide. |
| HU-06 | ~ | ✓ | ✓ | ~ | ✓ | ✓ | Falta decidir el canal del aviso (WhatsApp, SMS o correo). |
| HU-07 | ~ | ✓ | ✓ | ✓ | ✓ | ✓ | Requiere pedidos confirmados (HU-05). |
| HU-08 | ~ | ✓ | ✓ | ✗ | ~ | ✓ | No estimable: ningún requisito ni HU registra las recetas. Debe dividirse (registrar recetas / descontar insumos). |
| HU-09 | ~ | ✓ | ✓ | ✓ | ✓ | ✓ | — |
| HU-10 | ~ | ✓ | ✓ | ✓ | ✓ | ✓ | Depende de la asignación de repartidor (HU-12). |
| HU-11 | ~ | ✓ | ✓ | ✓ | ✓ | ✓ | Depende del descuento automático de insumos (HU-08). |
| HU-12 | ~ | ✓ | ✓ | ✓ | ✓ | ✓ | — |
| HU-13 | ~ | ✓ | ✓ | ~ | ~ | ✓ | No está definida la capacidad de producción por franja horaria. |
| HU-14 | ~ | ✓ | ~ | ✓ | ✓ | ✓ | Valor moderado; útil sobre todo para clientes frecuentes. |
| HU-15 | ~ | ✓ | ~ | ✗ | ~ | ✓ | Reglas de puntos y canje no definidas por la propietaria. |
