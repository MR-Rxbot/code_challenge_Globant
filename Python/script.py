# Utilizaremos la libreria pandas para acceder a nuestros datos que estas guardados en formato csv
import pandas as pd


# Creamos una variale datos con el metodo de pandas read_csv para cargar nuestros archivos en nuestra variable
datos = pd.read_csv(
    "C:/Users/luisa/OneDrive/Escritorio/spotify-2023.csv", encoding="latin1")

# Guardaremos nuestros datos en una nueva carpeta la cual se llamara Data

datos.to_csv(
    "C:/Users/luisa/OneDrive/Escritorio/Documentacion Code Challenge/Data/data.csv")


print(datos.head())
