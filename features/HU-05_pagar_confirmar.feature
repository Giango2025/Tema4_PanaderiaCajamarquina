# language: es
# Trazabilidad: HU-05 ← RF05, RNF01, RNF02 | Épica E2 Pagos | Must – WSJF 5.40
Característica: HU-05 Elegir método de pago y confirmar el pedido
  Como cliente
  quiero elegir el método de pago (efectivo, Yape o Plin) y recibir un número de pedido único
  para tener la confirmación de que mi pedido fue registrado

  Esquema del escenario: Confirmación con cualquier método de pago
    Dado que el cliente revisó su pedido con un total de S/ 58.00
    Cuando elige el método de pago "<metodo>"
    Y confirma el pedido
    Entonces el sistema registra el pedido con estado "<estado>"
    Y muestra un número de pedido único con el formato "PC-AAAAMMDD-NNN" en menos de 3 segundos

    Ejemplos:
      | metodo   | estado                     |
      | Efectivo | Recibido – pago contra entrega |
      | Yape     | Recibido – pago por validar    |
      | Plin     | Recibido – pago por validar    |

  Escenario: Pago con Yape o Plin sin código de operación
    Dado que el cliente eligió "Yape"
    Cuando confirma el pedido sin ingresar el código de operación
    Entonces el sistema no registra el pedido
    Y muestra "Ingresa el código de operación que aparece en tu app"

  Escenario: El cajero rechaza un pago que no llegó
    Dado que el pedido "PC-20270213-014" tiene estado "Recibido – pago por validar"
    Cuando el cajero marca que el pago con Plin no se recibió
    Entonces el pedido cambia a estado "Pago rechazado"
    Y el cliente recibe el aviso "No encontramos tu pago; puedes pagar en efectivo o volver a intentarlo"

  Escenario: No se duplica el pedido al presionar dos veces
    Dado que el cliente está en la pantalla de confirmación
    Cuando presiona "Confirmar pedido" dos veces seguidas
    Entonces el sistema registra un solo pedido con un solo número
