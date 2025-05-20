/*Creación y Uso de Tablespaces*/

/*Preparar el directorio
El directorio debe existir y ser propiedad del usuario que ejecuta
PostgreSQL (postgres):*/

sudo mkdir /mnt/ssd_rapido/pg_tblspc_datos
sudo chown postgres:postgres /mnt/ssd_rapido/pg_tblspc_datos

/*Crear el tablespace
En PostgreSQL, desde psql:*/
/*Esto crea un enlace simbólico en el directorio pg_tblspc/, que
apunta al nuevo path.*/

CREATE TABLESPACE rapido LOCATION
'/mnt/ssd_rapido/pg_tblspc_datos';

/*Usar o mover tablas*/
CREATE TABLE productos_rapido (id
SERIAL, nombre TEXT) TABLESPACE rapido;

/*Mover*/

ALTER TABLE clientes SET TABLESPACE rapido;