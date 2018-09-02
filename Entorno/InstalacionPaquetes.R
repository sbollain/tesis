# Este script instalalos paquetes adicionales usados en el proyecto
# Solo necesita ejecutarse la primera vez
# Para ejecutarlo:
# setwd("Entorno")
# source ("InstalacionPaquetes.R")

# Para poder utilizar los paquetes instalados:
# library and require cargan los paquetes requeridos
# detach lo descarga

# Al vector "misPaquetes" se deben añadir todos los paquetes requeridos
# Paquetes básicos
misPaquetes <- c("Rcmdr","ggplot2")
# Añadimos el paquete "RPostgreSQL" para la conexión a la BBDD
misPaquetes <- c(misPaquetes,"RPostgreSQL")
# Añadimos el paquete "zoo" para gestión de series temporales no equidistantes
misPaquetes <- c(misPaquetes,"zoo")
# Añadimos el paquete "forecast" para gestión de modelos
misPaquetes <- c(misPaquetes,"forecast")


# Bucle para la instalación de los paquetes
for(paquete in misPaquetes){
        # if package is  not installed locally, install
        if(!paquete %in% rownames(installed.packages()))
                install.packages(paquete, dependencies = TRUE)
        
}
