# tesis
Proyecto con RStudio

Se han creado una serie de notebooks que a partir de los datos en PostgreSQL crean y analizan las series temporales.
Estos son los pasos principales:

1) Instalación paquetes utilizados en el proyecto (directorio Entorno)
Se hace desde el fichero InstalacionPaquetes.R que se encuentra en el directorio Entorno
Sólo hace falta ejecutarlo la primera vez que se use el RStudio

2) Descarga de datos desde la BBDD (directorio PostgreSQL)
Contiene el notebook Descarga.Rmd que:
Genera la conexión con el PostgreSQL, descarga la tabla correspondiente, y crea un data frame pero todavía con la estructura de Postgres, que hay que convertir. Es aquí donde hay que personalizar el paciente y el periodo que queremos descargar y finalmente cierra la conexión con la BBDD y elimina las variables innecesarias

3) Comprensión de los datos (directorio Comprension)
Corresponde esta etapa a la de "Comprensión de los datos" dentro de la metodología CRISP-DM.
Contiene los siguientes notebooks:
CreacionEstructuras.Rmd:en este notebook, se crean una lista que contiene los time series por cada parámetro 

4) Preparación de los datos (directorio Preparacion)
Corresponde esta etapa a la de "Preparación de los datos" dentro de la metodología CRISP-DM.
Contiene los siguientes notebooks:
Interpolacion.Rmd: aquí se interpolan los valores para conseguie series temporales con valores equidistantes en el tiempo, y además, los timestamp se hacen comunes para todas las series de modo que facilitamos el análisis

5) Visualización de los datos (directorio Visualizacion)
Corresponde esta etapa a la de "Comprensión de los datos" dentro de la metodología CRISP-DM.Aquí está detrás de la etapa de preparación, porque también vamos a representar las series interpoladas
Contiene los siguientes notebooks:
VisualizacionPorTiempo.Rmd: Se representan los valores en el tiempo
VisualizacionPorFrecuencia.Rmd:Se representan las frecuencias

