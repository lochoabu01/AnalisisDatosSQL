--Grupo 1: Angie Moreno/202110008171 - Diego Vargas/202110047171 - Luis Ochoa/202519024507
--Tema: Comparendos Norte de Santander 2016 - 2020

--Consulta distinct 1
--Tenemos 66 codigos de infraccion unicos en nuestra tabla, 
--los codigos comienzan con una letra, que para este caso van desde la "A" 
--hasta la "I"
select distinct CODIGO_INFRACCION  
from DataLakeComparendos.dbo.dl_comparendos
order by CODIGO_INFRACCION

--Consulta distinct 2
--Tenemos mas de 400 resultados unicos para lugar, revisando el listado de lugares
--identificamos que se debe a que se digitaron con ortografia disitintas, lo que afecta el resultado 
select distinct LUGAR   
from DataLakeComparendos.dbo.dl_comparendos
order by LUGAR 

--Consulta distinct 3
--Tenemos 14 clases de vehiculos diferentes, donde se observa una gran cantidad de vehiculos pesados
--como camiones, doble troque... entre otros
select distinct CLASE_VEHICULO   
from DataLakeComparendos.dbo.dl_comparendos
order by CLASE_VEHICULO 