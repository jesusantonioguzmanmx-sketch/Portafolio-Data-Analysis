# 🛒 Proyecto Final RappiPlus - Análisis Comercial y Rentabilidad

## 📝 Descripción del Proyecto
Evaluación integral del rendimiento financiero y operativo del servicio RappiPlus durante el semestre 2025. A través del análisis de más de 177,000 pedidos, se identificó la rentabilidad real del negocio integrando datos de ventas, catálogo y campañas de marketing.

## 🛠️ Herramientas y Tecnologías
- **Power BI:** Modelo dimensional en estrella (`Dim_Fecha`, `catalog_clean`, `orders_clean`, `marketing_clean`), medidas DAX avanzadas y navegación por *Drill-Through*.
- **SQL:** Consultas avanzadas para el análisis del embudo de conversión (*funnel*) y retención por cohortes.
- **Python (Pandas):** Validación de datos y cálculos agregados de ventas por categoría.

## ⚙️ Metodología
El desarrollo del proyecto siguió un flujo de análisis estructurado:
1. **Procesamiento y Validación (Python):** Limpieza inicial, validación de esquemas y transformaciones de datos en notebooks de Jupyter.
2. **Modelado y Consultas Avanzadas (SQL):** Extracción de métricas clave, diseño de consultas para el embudo de conversión (*funnel conversion*) y análisis de comportamiento de usuarios.
3. **Modelado Dimensional y Visualización (Power BI):** Construcción del esquema en estrella, implementación de lógica de negocio mediante medidas DAX y desarrollo del tablero interactivo ejecutivo.

## 📈 Resultado / Impacto
- **Revenue Total:** $51.95M
- **Profit Neto Consolidado:** $5.97M (tras deducir $2.87M de gasto publicitario y costos unitarios).
- **Categoría Líder:** Electrónica representó el mayor aporte de utilidad bruta ($5.0M).

## 📊 Evidencias Visuales del Dashboard
- **Overview Ejecutivo:**
  ![Overview Ejecutivo]

  <img width="1161" height="624" alt="image" src="https://github.com/user-attachments/assets/c8f8d637-522f-499b-b7db-fa14cad8dd68" />


- **Vista de Detalle y Rentabilidad:**
  ![Detalle Rentabilidad]

  <img width="991" height="643" alt="image" src="https://github.com/user-attachments/assets/a518bcff-8c1a-433c-b8db-6610fc4d2a62" />


## 📂 Archivos en este Repositorio
- `Analisis_RappiPlus.ipynb`: Libreta con consultas SQL y procesamiento de datos.
- [`Dashboard_RappiPlus.pbix`](https://drive.google.com/drive/folders/1p9lkHw5cjJU0v4IZrs7LZriuWm9VzoAT?usp=drive_link): Archivo interactivo de Power BI.
