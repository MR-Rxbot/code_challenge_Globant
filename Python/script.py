# Los datos que Utilizare para simular una extraccion de datos de los datos los cuales estan
# alojados en nuestro repositorio de GitHub

# Utilizaremos la libreria pandas para acceder a nuestros datos que estan guardados en formato csv
import pandas as pd

# Obtenemos el url de nuestro csv desde GitHub
url = "https://raw.githubusercontent.com/MR-Rxbot/code_challenge_Globant/main/Global%20YouTube%20Statistics.csv"

# Creamos una variale datos con el metodo de pandas read_csv para cargar nuestros archivos en nuestra variable datos
datos = pd.read_csv(
    url, encoding="latin1")

# Para verificar como vienen nuestros datos utilizaremos el metodo head() con el cual veremos los primeros registros de nuestra data
print(datos.head())


# Guardaremos nuestros datos en una nueva carpeta la cual se llamara Data

datos.to_csv(
    "C:/Users/luisa/OneDrive/Escritorio/Documentacion Code Challenge/Data/data_global_youtube.csv")
