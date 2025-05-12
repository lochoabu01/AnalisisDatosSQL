--Grupo 1: Angie Moreno/202110008171 - Diego Vargas/202110047171 - Luis Ochoa/202519024507
--Tema: Comparendos Norte de Santander 2016 - 2020

--Consulta Min 1
--La consulta nos retorna valores negativos, lo cual indica que se registro de forma equivocada los valores del comparendo
select min(VALOR)
from DataLakeComparendos.dbo.dl_comparendos

--Consulta Min 2
--Teniendo en cuenta la consulta anterior, filtramos los valores mayores a cero. Donde obtenemos un valor de 27.603
--Lo que indica que hay comparendos con valores muy bajos o puede tambien referir a error de digitacion
select min(VALOR)
from DataLakeComparendos.dbo.dl_comparendos
where VALOR > 0

--Consulta Max 1
--Obtenemos un valor superior a 40 millones, lo cual indica que que hay una diferencia muy alta entre
--los rangos de valor minimo y maximo registrados en la tabla de comparendos
select max(VALOR)
from DataLakeComparendos.dbo.dl_comparendos