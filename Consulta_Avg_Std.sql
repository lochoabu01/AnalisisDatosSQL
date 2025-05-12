--Grupo 1: Angie Moreno/202110008171 - Diego Vargas/202110047171 - Luis Ochoa/202519024507
--Tema: Comparendos Norte de Santander 2016 - 2020

--Consulta avg / std 1
--Identificamos que el valor promedio de los comparendos es de $519.888 y psenta una desviacion estandar 933.926,373
--tomando toda la informacion disponible en la tabla
select AVG(VALOR), STDEVP(VALOR)
from DataLakeComparendos.dbo.dl_comparendos


--Consulta avg / std 2
--Se identifica que por año, el promedio ronda entre los $500.000 y 540.000 y presenta desviaciones muy similares
--frente al total de los registros en la tabla
select YEAR(FECHA) ,AVG(VALOR), STDEVP(VALOR)
from DataLakeComparendos.dbo.dl_comparendos
group by YEAR(FECHA)
order by YEAR(FECHA)


--Consulta avg / std 3
--Se obtiene que el Doble Troque, Motocicleta y Automovil , presentan los valores promedio mas altos desde
-- los $536.000 hasta los $563.000
select CLASE_VEHICULO ,AVG(VALOR), STDEVP(VALOR)
from DataLakeComparendos.dbo.dl_comparendos
group by CLASE_VEHICULO
order by CLASE_VEHICULO
