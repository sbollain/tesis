# tesis
Proyecto con RStudio

Se han creado una serie de notebooks que a partir de los datos en PostgreSQL crean y analizan las series temporales.
Estos son los pasos principales:

1) Instalación paquetes utilizados en el proyecto (directorio Entorno)
Se hace desde el fichero InstalacionPaquetes.R que se encuentra en el directorio Entorno
Sólo hace falta ejecutarlo la primera cez que se use el RStudio

2) Descarga de datos desde la BBDD (directorio PostgreSQL)
Contiene el notebook Descarga.Rmd que:
Genera la conexión con el PostgreSQL, descarga la tabla correspondiente, y crea un data frame pero todavía con la estructura de Postgres, que hay que convertir. Es aquí donde hay que personalizar el paciente y el periodo que queremos descargar y finalmente cierra la conexión con la BBDD y elimina las variables innecesarias

3) Comprensión de los datos (directorio Comprension)
Corresponde esta etapa a la de "Comprensión de los datos" dentro de la metodología CRISP-DM.
Contiene los siguientes notebooks:
CreacionEstructuras.Rmd:en este notebook, se crean una lista que contiene los time series por cada parámetro 

4) Preparación de los datos (directorio Preparacion)
Contiene los siguientes notebooks:
Interpolacion.Rmd: aquí se interpolan los valores para conseguie series temporales con valores equidistantes en el tiempo, y además, los timestamp se hacen comunes para todas las series de modo que facilitamos el análisis