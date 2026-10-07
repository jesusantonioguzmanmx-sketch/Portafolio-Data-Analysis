# 🚗 Caso de Estudio: Análisis de Movilidad Urbana, Congestión y Economía

## 🎯 1. Objetivo del Proyecto
Evaluar la relación entre el desarrollo económico de las ciudades (medido a través del PIB per cápita) y los niveles de congestión vehicular (`jams_delay`), identificando patrones regionales y ciudades con mayores retos operativos en su infraestructura de transporte.

## ⚙️ 2. Metodología y Herramientas
- **Librerías utilizadas:** Python (`Pandas` para la manipulación de datos, `Seaborn` y `Matplotlib` para la visualización estadística).
- **Fases del Análisis:**
  1. **Análisis de Distribución de Tráfico:** Uso de diagramas de caja (*boxplot*) para detectar la media, mediana y valores atípicos en los minutos de congestión.
  2. **Análisis Económico:** Construcción de un histograma con estimación de densidad kernel (KDE) para evaluar la asimetría y el comportamiento del PIB per cápita entre las ciudades analizadas.
  3. **Análisis Comparativo Multivariable:** Gráficos de barras agrupadas para contrastar simultáneamente el tráfico y la riqueza económica por cada ciudad del estudio.

## 📊 3. Principales Visualizaciones y Hallazgos

- **Distribución del PIB per Cápita:** Permite observar la concentración de la riqueza y la dispersión económica en la región.
  ![Histograma PIB](./capturas/histograma_pib.png)

- **Comparativa Directa (Tráfico vs. Economía):** Muestra cómo se comportan los minutos de retraso frente a la capacidad económica de cada área metropolitana.
  ![Comparativa Tráfico y Economía](./capturas/comparacion_trafico.png)

- **Análisis de Congestión (`jams_delay`):** Identifica los rangos habituales de retraso y los puntos críticos del sistema.
  ![Boxplot Congestión](<img width="799" height="498" alt="Unknown" src="https://github.com/user-attachments/assets/6ec3b7dc-07f4-4154-a791-1b59ba1c7329" />

)

## 💡 4. Conclusiones y Decisiones de Negocio
- **Desacoplamiento del Tráfico:** Se observa que un mayor PIB per cápita no siempre se traduce linealmente en menor congestión; ciudades con alto desarrollo económico enfrentan severos retos de saturación vehicular.
- **Enfoque Operativo:** Los resultados sugieren que las soluciones de movilidad no deben basarse únicamente en el crecimiento económico, sino en políticas específicas de transporte público masivo y gestión inteligente del tráfico en las zonas de alta densidad detectadas en el estudio.
