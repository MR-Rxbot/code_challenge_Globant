--Creamos nuestra base de datos
CREATE DATABASE global_youtube_db;

--usamos la base de datos previamente creada
use global_youtube_db;

SELECT
	*
FROM
	[Global YouTube Statistics];
	
--Para no trabajar con los datos originales generaremos una copia de nuestra tabla original

SELECT 
	*
INTO
	global_youtube_copy
FROM 
	[Global YouTube Statistics];
-- Todas nuestras querys seran realizadas en nuestra nueva tabla la cual se llama global_youtube_copy

SELECT
	*
FROM
	global_youtube_copy;


--Al realizar esta query se puede ver a simple vista que hay numeros en notacion cientifica que son demasiado grande en la columna video views
-- tambien vemos valores con 0 
Select
	*
FROM
	global_youtube_copy;



--Agruparemos los registros por pais para saber cual posee mayor cantidad de categorias 
Select 
	Country, count(category) as category_count
FROM 
	global_youtube_copy
group by 
	Country;






--Podriamos ver que pais posee mayor cantidad de youtuber
--en esta query utilizare Partition by para ver al lado de la columna la cantidad
--de paises que se repiten ordenandolo de mayor a menor
select 
	Youtuber, Country, Count(Country) OVER(partition  by Country) as Countries_youtuber 
From
	global_youtube_copy
order by 
	Countries_youtuber desc;



--agruparemos los datos por categorias y obtendremos la cantidad maxima y minima de videos subidos
Select
	category, 
	max(uploads) as max_upload,
	min(uploads) as min_upload
From 
	global_youtube_copy
group by 
	category;

--Obtendremos las personas  que se han suscrito a un canal de youtube en los ultimos 30 dias (los 10 youtuber con mas suscripciones)
select top 10
	youtuber,
	subscribers_for_last_30_days
from 
	global_youtube_copy
where subscribers_for_last_30_days != 'nan'
order by subscribers_for_last_30_days desc;	



--Con esta query obtendremos la cantidad de a os y cuando fue creado el canal 
--ordenado de mayor a menor
SELECT
	Youtuber,
    created_year,
	2023 - try_cast(created_year as bigint) as anios_en_youtube
FROM
    global_youtube_copy
order by anios_en_youtube desc;
--Como dato curioso hay un canal llamado YouTube el cual fue creado en 1970 o-o que interesante



/*
Despues de realizar estas querys limpiare eliminare filas que contengan mas de un valor nulo
*/

--remplazar los valores faltantes en country de nan a otro utilizando update

UPDATE 
	global_youtube_copy
set	
	Country = 'no info'
where
	Country = 'nan';

--Eliminar todos los registros que cumplan ciertas condiciones

DELETE FROM
		global_youtube_copy
WHERE Abbreviation = 'nan' and country_rank = 'nan' and lowest_monthly_earnings = 0; 

ALTER TABLE global_youtube_copy
ALTER COLUMN lowest_monthly_earnings DECIMAL(10, 2);


Select
	*
From
	global_youtube_copy;




