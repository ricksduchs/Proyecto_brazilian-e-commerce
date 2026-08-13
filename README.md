# Análisis de Brazilian e-commerce

## Descripción general
Este proyecto analiza un conjunto de datos de comercio electrónico brasileño para identificar patrones en pedidos, envíos, pagos y comportamiento de clientes.

## Principales hallazgos
- La mayoría de los pedidos se entrega a tiempo o antes; los retrasos son poco frecuentes y el nivel de cumplimiento logístico es alto
- El tiempo de entrega es el principal factor que afecta la satisfacción, especialmente cuando hay retrasos prolongados
- Los ingresos están altamente concentrados en un grupo reducido de vendedores
- Los clientes están geográficamente dispersos, con algunas concentraciones en ciudades principales, pero sin dependencia de una sola región

## Herramientas
Python, Pandas, Matplotlib, Seaborn

## Recomendaciones

**Logística**: 
Implementar alertas tempranas para pedidos con riesgo de retraso (por ejemplo, cuando se aproximen a la fecha límite de entrega).
Analizar las causas raíz de los retrasos (operación, transporte, ubicación) para aplicar mejoras específicas.

**Reseñas (Reviews)**:
Priorizar la reducción de tiempos de entrega, especialmente evitando retrasos mayores a 3 días.
Implementar comunicación proactiva con el cliente ante posibles retrasos (notificaciones y seguimiento).

**Ventas**:
Diversificar la base de vendedores para reducir la dependencia del top 10.
Identificar prácticas exitosas de los vendedores líderes y replicarlas en otros vendedores.
Diseñar estrategias de promoción para vendedores con bajo desempeño y alto potencial.

**Clientes**:
Enfocar estrategias de marketing y retención en ciudades clave como Rio de Janeiro, São Paulo, Belo Horizonte y Niterói, donde se observa mayor concentración de clientes.
Identificar regiones con mayor potencial de crecimiento y enfocar esfuerzos comerciales en ellas.
