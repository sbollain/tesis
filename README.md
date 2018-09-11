# tesis
Proyecto con RStudio

Se han creado una serie de notebooks que a partir de los datos en PostgreSQL crean y analizan las series temporales en R.
Estos son los pasos principales:

I) Instalación paquetes utilizados en el proyecto (directorio Entorno)
Se hace desde el fichero InstalacionPaquetes.R que se encuentra en el directorio Entorno
Sólo hace falta ejecutarlo la primera cez que se use el RStudio

II) Descarga de datos desde la BBDD (directorio PostgreSQL)
 1) Conexion
Genera la conexión con el PostgreSQL

 2) DescargaDatos
Descarga la tabla correspondiente, y crea un data frame pero todavía con la estructura de Postgres, que hay que convertir. Es aquí donde hay que personalizar el paciente y el periodo que queremos descargar

 3) Desconexion
Cierra la conexión con la BBDD y elimina las variables innecesarias
Alternativamente se ha creado un notebook "Descarga" que engloba los tres pasos anteriores


III) CreacionEstructuras (directorio Creacion)
En este notebook, se crean un time series por cada valor y dos data frames, el primero de ellos con los datos descargados, y el segundo con los datos interpolados.
Aquí hay que personalizar los valores que contienen datos

