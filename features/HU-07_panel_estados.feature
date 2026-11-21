# language: es
# Trazabilidad: HU-07 ← RF07, RNF02 | Épica E3 Seguimiento y despacho | Must – WSJF 7.67
Característica: HU-07 Panel de pedidos y actualización de estado
  Como cajero
  quiero ver los pedidos entrantes y actualizar su estado desde el panel de gestión
  para organizar la preparación y dejar de anotar pedidos en papel

  Antecedentes:
    Dado que el cajero inició sesión con el rol "Cajero"

  Escenario: Pedido nuevo aparece en el panel
    Cuando un cliente confirma el pedido "PC-20270213-015"
    Entonces el pedido aparece en la columna "Recibido" del panel
    Y muestra productos, cantidades, tipo de entrega, método de pago y hora de confirmación

  Esquema del escenario: Avance de estado permitido
    Dado que el pedido "PC-20270213-015" está en estado "<actual>"
    Cuando el cajero lo cambia a "<nuevo>"
    Entonces el pedido queda en "<nuevo>" y se guarda la hora y el usuario del cambio

    Ejemplos:
      | actual         | nuevo          |
      | Recibido       | En preparación |
      | En preparación | En camino      |
      | En camino      | Entregado      |

  Escenario: No se puede saltar estados
    Dado que el pedido "PC-20270213-016" está en estado "Recibido"
    Cuando el cajero intenta cambiarlo directamente a "Entregado"
    Entonces el sistema no permite el cambio
    Y muestra "El pedido debe pasar por En preparación"

  Escenario: Un cliente no puede entrar al panel
    Dado que un usuario con rol "Cliente" inició sesión
    Cuando intenta abrir la dirección del panel de gestión
    Entonces el sistema muestra "No tienes permiso para ver esta página"
