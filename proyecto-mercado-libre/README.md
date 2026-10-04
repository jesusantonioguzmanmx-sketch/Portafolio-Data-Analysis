# 🛒 Proyecto: Análisis de Embudo y Retención para MercadoLibre

Este proyecto forma parte de mi portafolio de análisis de datos. Su objetivo principal fue analizar el comportamiento del usuario en la plataforma de MercadoLibre utilizando **SQL avanzado** para identificar puntos críticos de fuga en el embudo de conversión y medir la retención a lo largo del tiempo por cohortes y países.

---

## 📋 Tabla de Contenidos
1. [Objetivos de Negocio](#-objetivos-de-negocio)
2. [Metodología Técnica (SQL)](#-metodología-técnica-sql)
3. [Hallazgos Principales (Insights)](#-hallazgos-principales-insights)
4. [Implicaciones y Recomendaciones](#-implicaciones-y-recomendaciones)

---

## 🎯 Objetivos de Negocio
Se analizaron los datos de enero a agosto de 2025 para responder preguntas clave de producto y crecimiento:
* ¿Cuál es la tasa de conversión global entre cada etapa clave del embudo (`first_visit` $\rightarrow$ `purchase`)?
* ¿En qué paso exacto se registra la mayor caída porcentual de usuarios?
* ¿Cómo varía este comportamiento al segmentar por país?
* ¿Cuál es la retención real de los usuarios nuevos a los 7, 14, 21 y 28 días (`D7`, `D14`, `D21`, `D28`)?

---

## ⚙️ Metodología Técnica (SQL)
* **Embudo Multietapa:** Agrupación de usuarios únicos mediante CTEs (Common Table Expressions) para evaluar la progresión secuencial desde la primera visita hasta la compra.
* **Segmentación Geográfica:** Propagación de la variable de país (`country`) para calcular conversiones relativas por región.
* **Análisis de Retención:** Uso de `DATE_TRUNC` para definir cohortes mensuales (`YYYY-MM`) y cálculo de porcentajes de usuarios activos en función de los días transcurridos desde el registro.

---

## 📊 Hallazgos Principales (Insights)
1. **El "Agujero" Crítico del Embudo:** Aunque el 76.89% de los usuarios selecciona un producto (`select_item`), **solo el 11.01% lo añade al carrito (`add_to_cart`)**, representando una caída masiva de más del 65% en un solo paso.
2. **Lealtad y Abandono:** La retención al Día 7 (`D7`) se mantiene sólida (~85%-87%), pero decae drásticamente al Día 14 (`D14` ~54%) y llega a niveles mínimos en el Día 28 (`D28` ~2-3%).

---

## 💡 Implicaciones y Recomendaciones
* **Optimización de la PDP (Página de Producto):** Mejorar la claridad en los precios, costos de envío anticipados y la experiencia de usuario antes del carrito para frenar la fuga principal.
* **Estrategias de Retención Temprana:** Implementar campañas de *onboarding* automatizado y notificaciones push personalizadas durante los primeros 7 a 14 días para reactivar al usuario antes de que abandone la plataforma.

---
*📫 **Autor:** Jesus Antonio Guzman Salazar*
