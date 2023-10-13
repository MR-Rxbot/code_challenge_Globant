Hola un saludo muy afectuoso para los profesionales que trabajan en Globant y me permitieron participar en el desarrollo del code challenge, el siguiente README explicara el flujo con el cual yo trabaje y crei que era lo mejor para este desafio y de que manera estan repartidas las carpetas y sus funciones, hubieron muchas cosas nuevas las cuales fui aprendiendo durante el desarrollo de este desafio

Como herramientas para desarrollar este proyecto utilice las siguientes

 ° Python como lenguaje de programacion
 ° Microsoft SQL server como motor de base de datos para realizar las querys
 ° Git y GitHub para el versionamiento de codigo
 ° Jira como herramienta para aplicar metodologia agil
 ° Excel para revisar el archivo csv con los datos

La herramienta que no pude aplicar a este proyecto fue

 ° El SDK de GCP  y los Cron jobs

El flujo de trabajo que realice fue el siguiente:

Crear un repositorio local y remoto para generar un control de versiones desde el inicio del proyecto

Subir la data en formato csv a utilizar en GitHub

Con python consumir los datos que estaban en Github y generar un nuevo csv con el cual trabajar

Trabajar con la data en microsoft sql server para realizar querys y todas las transformaciones que estime conveniente

y posteriormente subi los archivos a bigquery al no utilizar el sdk de gcp para cargar los datos, los cargue de manera manual generando un csv nuevo desde sql server.

Para utilizar los archivos que subi primero se deberia trabajar con los archivos de python, luego con excel y posteriormente con microsoft sql server.

Mientras trabajaba con esto me iba imaginando y ordenando de que manera se podrian generar los informes y los sprint en jira. Tambien Subiendo periodicamente los archivos a GitHub








