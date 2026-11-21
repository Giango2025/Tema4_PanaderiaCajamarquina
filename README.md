# Tema 4 – Backlog de historias de usuario, Gherkin y priorización

**Curso:** Modelado y Desarrollo de Aplicaciones (CIIN1322P) – Universidad Privada del Norte
**Caso:** Sistema de Pedidos en Línea de la Panadería Cajamarquina (continuación del Laboratorio N.° 1, Grupo 5)
**Entrega:** tag `v1.0-tema4`

## Integrantes

| Integrante | Rol |
|---|---|
| Cabellos Torres, Yajaira Lisseth | Product Owner |
| Plasencia Mostacero, Ethel Samanta | Desarrolladora Frontend / UX |
| Sangay Chacón, José Fernando | Desarrollador Backend / QA |
| Silva Aguirre, Gianfranco Alejandro | Scrum Master / Desarrollador |

## Objetivo del Sprint 1

Al cierre del Sprint 1, un cliente podrá ver el catálogo con disponibilidad real, armar su pedido con recojo o delivery, pagar con efectivo, Yape o Plin y obtener un número de pedido único, y el cajero recibirá ese pedido en el panel de gestión, eliminando los pedidos duplicados por llamadas y WhatsApp.

## Evidencias (trazables por HU-xx y por requisito RF/RNF del Laboratorio N.° 1)

| Paso de la guía | Evidencia |
|---|---|
| 1. Objetivo del sprint | `docs/plan_sprint1.md` |
| 2. 15 HU + INVEST | `backlog/product_backlog.md`, `backlog/product_backlog.csv` |
| 3. Gherkin (7 HU, 23 escenarios) | `features/*.feature` |
| 4. DoR y DoD (incluye RNF01–RNF06) | `docs/DoR_DoD.md` |
| 5. MoSCoW, WSJF, Valor vs. Esfuerzo | `priorizacion/Tema4_Priorizacion_PanaderiaCajamarquina.xlsx`, `evidencias/fig_wsjf_ranking.png`, `evidencias/fig_valor_esfuerzo.png` |
| 6. Tablero Scrum/Kanban | `tablero/README.md`, `tablero/tablero_trello.csv`, `evidencias/fig_tablero_sprint1.png` |
| 7. Planificación (tareas y horas) | `docs/plan_sprint1.md`, hoja *SPRINT 1* del Excel |
| 8. Burndown y CFD | `metricas/sprint1_seguimiento.csv`, `evidencias/fig_burndown.png`, `evidencias/fig_cfd.png` |
| 9. Versionado | historial de commits + tag `v1.0-tema4`; issues con `scripts/crear_issues_github.sh` |
| Diagramas PlantUML | `diagramas/actividad_pedido_HU02-HU05.puml`, `diagramas/secuencia_confirmar_pedido_HU05.puml` |
| Informe | `informe/Tema4_SilvaAguirreGianfranco.pdf` y `.docx` |

## Backlog priorizado

| # | ID | Historia | Origen | MoSCoW | WSJF | Sprint |
|---|---|---|---|---|---|---|
| 1 | HU-01 | Registrarme e iniciar sesión con mi correo o número de celular | RF01 | Must | 10.50 | 1 |
| 2 | HU-04 | Ver el monto total de mi pedido con el costo de envío cuando elijo delivery | RF04 | Must | 10.00 | 1 |
| 3 | HU-12 | Asignar cada pedido de delivery a un repartidor disponible | RF07, RF10 | Must | 9.50 | 2 |
| 4 | HU-02 | Ver el catálogo de productos con su precio y si hay disponibilidad | RF02 | Must | 9.00 | 1 |
| 5 | HU-10 | Ver la dirección y el número de contacto del cliente del pedido que me asignaron | RF10 | Must | 8.50 | 2 |
| 6 | HU-07 | Ver los pedidos entrantes y actualizar su estado desde el panel de gestión | RF07 | Must | 7.67 | 1 |
| 7 | HU-05 | Elegir el método de pago (efectivo, Yape o Plin) y recibir un número de pedido único | RF05 | Must | 5.40 | 1 |
| 8 | HU-03 | Armar un pedido eligiendo productos, cantidades y el tipo de entrega (recojo o delivery) | RF03 | Must | 5.20 | 1 |
| 9 | HU-08 | Que al confirmarse un pedido se descuenten automáticamente los insumos según la receta de cada producto | RF08 | Must | 4.20 | 2 |
| 10 | HU-11 | Consultar el stock de insumos en tiempo real y recibir una alerta cuando uno baje del mínimo | Obj. negocio 3 | Should | 6.33 | 3 |
| 11 | HU-06 | Recibir avisos del estado de mi pedido (recibido, en preparación, en camino, entregado) | RF06 | Should | 5.67 | 2 |
| 12 | HU-09 | Obtener un reporte diario de ventas y pedidos pendientes | RF09 | Should | 5.33 | 2 |
| 13 | HU-13 | Programar mi pedido para una fecha y hora futura | Obj. negocio 1 | Should | 4.40 | 3 |
| 14 | HU-14 | Repetir un pedido anterior con un solo botón | Obj. negocio 4 | Could | 6.00 | 3 |
| 15 | HU-15 | Acumular puntos por mis compras y canjearlos por productos | Obj. negocio 4 | Won't | 1.80 | — |

Orden: MoSCoW primero y WSJF dentro de cada categoría. WSJF = (Valor de negocio + Criticidad en el tiempo + Reducción de riesgo/Oportunidad) / Story points.

## Cómo usar

- **Issues:** `gh auth login` y luego `bash scripts/crear_issues_github.sh` (etiquetas MoSCoW y de épica, milestones de sprint y un issue por HU).
- **Trello:** crear las listas de `tablero/README.md` y cargar las tarjetas de `tablero/tablero_trello.csv`.
- **Gherkin:** archivos en español (`# language: es`), validados con el parser oficial de Cucumber.
- **Diagramas:** abrir los `.puml` con la extensión PlantUML de VS Code o en https://plantuml.com.

## Convención de commits

`tipo(alcance): descripción` — tipos usados: `docs`, `feat`, `chore`.
