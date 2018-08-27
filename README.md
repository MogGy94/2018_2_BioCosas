#Reiniciar Contraseña del usuario root

* Ir ala ventana de servicios buscar el servicio de Mysql y detenerlo .
* Crear un archivo para resetear los elementos de Mysql y colocar adentro
```
USE mysql;
UPDATE msql.user SET Password = PASSWORD('Azir08') WHERE Usser =  'root'
FLULSH PRIVELEGES; OLD
```
* Buscar el Archivo my.ini dentro de C/:ProgramData y conseguir la ruta del Archivo
  ```
  C:\\ProgramData\\MySQL\\MySQL Server 5.7\\my.ini
  ```
  colocar la ruta con doble `\\`es umportante

* Buscar la carpeta de myql en arcchivos de programas
abrir la consola de comandos  y gregar el sigueinte comando

```
mysqld --defaults-file="C:\\ProgramData\\MySQL\\MySQL Server 5.7\\my.ini" --ini-file=C:\Users\Edilberto\Unal\Final Semestre\Biologia Computacion\2018_2_BioCosas\mysqlServer.txt
```
