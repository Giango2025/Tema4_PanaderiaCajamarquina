# Definition of Ready (DoR) y Definition of Done (DoD)

Acordadas por el equipo en la reunión de refinamiento del Sprint 1.

## Definition of Ready – una HU entra al sprint solo si:

- [ ] Está redactada en formato Como / Quiero / Para con un rol concreto (cliente, cajero, propietaria o repartidor).
- [ ] Está trazada al requisito del Tema 1 del que proviene (RF, RNF u objetivo del negocio).
- [ ] Cumple INVEST; ningún criterio marcado con ✗.
- [ ] Tiene criterios de aceptación acordados con la Product Owner (Gherkin o checklist).
- [ ] Está estimada en story points por el equipo (Planning Poker) y mide 5 SP o menos.
- [ ] Sus dependencias están resueltas o planificadas en el mismo sprint.
- [ ] Tiene prioridad asignada (MoSCoW y WSJF) y boceto de pantalla cuando corresponde.

## Definition of Done – una HU está terminada solo si:

- [ ] El código está en GitHub, en una rama feature/HU-xx asociada al issue, y se fusionó a main mediante pull request.
- [ ] Otro integrante revisó el código y aprobó el pull request.
- [ ] Todos los escenarios Gherkin de la HU pasan, incluido el caso negativo principal.
- [ ] La confirmación del pedido responde en 3 segundos o menos con 50 usuarios concurrentes (RNF01), cuando la HU toca el flujo de pedido.
- [ ] Contraseñas cifradas y tráfico solo por HTTPS/TLS (RNF02).
- [ ] Un pedido se completa en máximo 5 pasos (RNF03), cuando la HU toca el flujo de compra.
- [ ] Funciona en Chrome, Firefox y Edge y se ve bien en celular (RNF05).
- [ ] Código documentado y modular; un nuevo medio de pago no obliga a reescribir el flujo (RNF06).
- [ ] La Product Owner revisó la funcionalidad en la demo y la aceptó; la tarjeta de Trello y el issue están en “Hecho”.
