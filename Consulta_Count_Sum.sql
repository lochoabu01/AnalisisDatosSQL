--Grupo 1: Angie Moreno/202110008171 - Diego Vargas/202110047171 - Luis Ochoa/202519024507
--Tema: Comparendos Norte de Santander 2016 - 2020

--Consulta Sum / Count 1
--Tenemos una cantidad total de 22.121 comparendos, los cuales suman un valor de $11.500.444.148,1333
--lo que refiere a un valor muy alto, debido a que hablamos de miles de millones
select sum(VALOR), count(VALOR)
from DataLakeComparendos.dbo.dl_comparendos 

--Consulta Sum / Count 2
--Tenemos varias infracciones que se han cometido entre 1 a 3 veces, por ej. F09 - H01... lo que nos indica que no son muy frecuentes y 
--suman valores muy bajos. Pero por el contrario hay otras infracciones que se comenten mas de 100 veces y suman valores muy altos,
--como es el caso de infracciones D01 - D02 - C15...
select CODIGO_INFRACCION, sum(VALOR), count(VALOR)
from DataLakeComparendos.dbo.dl_comparendos 
group by CODIGO_INFRACCION 
order by CODIGO_INFRACCION 

--Consulta Sum / Count 3
--Debido a que el campo lugar es digitado, teniendo en cuenta la gran diferencia entre registro y registro, como espacios, 
--ortografia.. entre otros, los totales en dinero y cantidad de comparendos cometidos en un mismo lugar, estan muy distribuidos
select LUGAR, sum(VALOR), count(VALOR)
from DataLakeComparendos.dbo.dl_comparendos 
group by LUGAR
order by LUGAR 

--Consulta Sum / Count 4
--Podemos identificar que las motocicletas son las que mas cantidad de infracciones cometen y en consecuencia, suman el mayor
--valor en dinero. Seguido de los automoviles y camionetas. Los vehiculos pesados representan cantidad de comparendos a menor
--escala
select CLASE_VEHICULO, sum(VALOR), count(VALOR)
from DataLakeComparendos.dbo.dl_comparendos 
group by CLASE_VEHICULO 
order by CLASE_VEHICULO 

--Consulta Sum / Count 5
--Desde el 2016 al 2020, correspondiente a los años disponibles en la tabla. Solo en 2017 no se registraron comparendos
--y a medida que avanzan los años, la cantidad de comparendos disminuye, se tiene en 2016 7.491 comparendos por un valor 
--superior a tres mil millones frente a 2020 con 4.509 con un valor cercano a dos mil quinientos millones
select year(FECHA), sum(VALOR), count(VALOR)
from DataLakeComparendos.dbo.dl_comparendos 
group by year(FECHA) 
order by year(FECHA) 

--Consulta Sum / Count 6
--Se identifica que en general, las clase de vehilo se mantiene una tendencia a disminuir la cantidad de comparendos 
--y el valor en dinero que estos representan. 
--excepto con Busetas y Camionetas, las cuales se han disparado las infraciones el ultimo año (2020)
select year(FECHA),CLASE_VEHICULO, sum(VALOR), count(VALOR)
from DataLakeComparendos.dbo.dl_comparendos 
group by year(FECHA),CLASE_VEHICULO 
order by CLASE_VEHICULO, year(FECHA)
