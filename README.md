# tesis
Proyecto con RStudio

El objetivo de este proyecto es poder hacer un análisis estadístico de los datos capturados y almacenados por la aplicación medlinecare de Medlinetec desde R

En concreto, queremos explorar:

1) Modelos predictivos de valores futuros a partir de la creación de "Time Series" para los valores médicos monitorizados (library: zoo)

2) Estudio de correlaciones e inferencias entre los distintos valores a partir de un "data frame" a construir, donde cada línea corresponda a una observación en un momento dado, y cada columna, a los distintos valores monitorizados por la aplicación. Análisis de distribución para cada valor

3) Creación de distintos tipos de gráficos para representar los valores capturados (library: ggplot2)


Para ello se han creado distintos scripts de R (ficheros.R) que van acometiendo paso a paso los objetivos anteriores. Son los siguientes:

1) Conexion
Genera la conexión con el PostgreSQL

2) DescargaDatos
Descarga la tabla correspondiente, y crea un data frame pero todavía con la estructura de Postgres, que hay que convertir. Es aquí donde hay que personalizar el paciente y el periodo que queremos descargar

3) Desconexion
Cierra la conexión con la BBDD y elimina las variables innecesarias

Alternativamente, si la fuente es directamente un fichero csv, los pasos 1,2 y 3 se sustituyen por

123b) CargaCSV

4) CreacionEstructuras
En este script, se crean un time series por cada valor y dos data frames, el primero de ellos con los datosa descargados, y el segundo con los datos interpolados.
Aquí hay que personalizar los valores que contienen datos

