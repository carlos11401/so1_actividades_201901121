# ACTIVIDAD 3

El codigo de la aplicacion que contiene el error del cual se resolvera se encuentra en el repositorio del [Ing. Jesus Guzman.](https://github.com/susguzman/so1_containers)
<br>
Los archivos de mi repositorio son los unicos que hay que agregar en la carpeta del frontend para que el error sea resuelto

---

## 404 Not Found

El error se vio en el frontend al momento de probarlo en una imagen de docker. En donde al desplazarnos entre vistas(login y registro) por medio de los botones todo funcionaba pero al momento de recargar la pagina en cualquiera de las dos vistas se mostraba un error 404 Not Found.

---

## Problema

El problema esta en el docker file de el frontend porque al momento de ejecutar el comando **npm run build** pasamos de un entorno de desarrollo(que es lo que hace que la app se renderice en tiempo de ejecucion) a uno de produccion por lo que al hacer esto en react pasamos a tener archivos estaticos para que sea mas optimo.

---

## Solucion

Al tener archivos estaticos necesitamos hacer una cambio del archivo default.conf que esta dentro del contenedor en **/etc/nginx/conf.d**. 
<br>
Para eso se creo un archivo local en la carpeta del frontend llamado **nginx.conf**, de este archivo solo se cambio unas pocas lineas del original en el cual lo que hace es poder leer el endpoint y buscar entre los archivos estaticos y asi poder mostrar la vista que solicita el cliente.
<br>
Pero esto hay que pasarlo al contenedor por lo tanto en el docker file del frontend se agrego la siguiente linea:
<br>

`COPY nginx.conf /etc/nginx/conf.d/default.conf`

Realizando esto y volviendo a crear la imagen y levantanado el contenedor ya no ocurre el error 404 al recargar la pagina con cualquiera de las dos vistas que tiene la aplicacion.