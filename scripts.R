# 
# ==================================================
# Actividad estandarización y estructuras de control (introducción)

install.packages("readr", "dplyr", "tidyr" , "ggplot2")
install.packages("readxl")

# Ingresar las librerías para trabajar:
# Previamente tener instalados los paquetes (install.packages(""))
library(readr)
library(dplyr)
library(tidyr)
library(readxl)


# -----------------------------------------

# importar nuestro datase al ambiente de trabajo.

ruta <- file.choose( )

dataframe <- read_excel(ruta)

unique(dataframe$`Series Name`)

#[1] "Account ownership at a financial institution or with a mobile-money-service provider, primary education or less (% of population ages 15+)"  
#[2] "Account ownership at a financial institution or with a mobile-money-service provider, secondary education or more (% of population ages 15+)"
#[3] "Adjusted net enrollment rate, primary (% of primary school age children)"                                                                    
#[4] "Adjusted net enrollment rate, primary, female (% of primary school age children)"                                                            
#[5] "Adjusted net enrollment rate, primary, male (% of primary school age children)"                                                              
#[6] "Adjusted savings: education expenditure (% of GNI)"                                                                                          
#[7] "Adjusted savings: education expenditure (current US$)" 


library(tidyr)

# Crear el data frame de ejemplo
datos <- data.frame(
  ID = c(1, 2),
  Variable1 = c("A", "B"),
  Variable2 = c("X", "Y"),
  Variable3 = c("P", "Q")
)

# Convertir de formato ancho a largo
datos_largos <- pivot_longer(datos, cols = starts_with("Variable"), names_to = "Variable", values_to = "Valor")

# Mostrar el resultado
print(datos_largos)


#-----------------------------------

datos_largos_df <- pivot_longer(dataframe, cols = starts_with("1960 [YR1960]"), names_to = "anio", values_to = "Valor")
print(datos_largos_df)


head(dataframe)


print(dataframe)


filtro_DF <- filter(dataframe, `Series Name` == "Adjusted savings: education expenditure (% of GNI)")


dataframe_P <- select(filtro_DF, "Country Name", "Country Code" , "Series Name" , "Series Code" , "2020 [YR2020]", "2021 [YR2021]")

View(dataframe_P)


dataframe_P2 <- pivot_longer(data = dataframe_P, cols = c("2020 [YR2020]", "2021 [YR2021]"), names_to = "Anio", values_to = "Valor")
View(dataframe_P2)


nuevo_datos <- pivot_longer(data = datos, cols = c("2010", "2011"), names_to = "Año", values_to = "Valor")


#-----------prueba

dataframe <- read_excel(ruta)

dataframe_pp <- select(dataframe, "Country Name", "Country Code" , "Series Name" , "Series Code" , "2020 [YR2020]", "2021 [YR2021]")
View(dataframe_pp)

dataframe_pp2 <- pivot_longer(data = dataframe_pp, cols = c("2020 [YR2020]", "2021 [YR2021]"), names_to = "Anio", values_to = "Valor")
View(dataframe_pp2)

