# GESTION DE USUARIOS

### 1. Creacion

```
sudo useradd [mi_usuario]
```

### 2. Contrasenia

```
sudo psswd [mi_usuario]
```

### 3. Mostrar informacion

```
sudo id [mi_usuario]
```

### 4. Eliminar

```
sudo userdel [mi_usuario]
```

### CONSOLA

![Linux](/actividad3/img/img1.png)

# GESTION DE GRUPOS

### 1. Creacion

```
sudo groupadd [mi_group]
```

### 2. Agregar usuarios

```
sudo usermod -aG [mi_group] [mi_usuario]
```

### 3. Verificar membresia

```
sudo groups [mi_usuario]
```

### 4. Eliminar

```
sudo groupdel [mi_group]
```

### CONSOLA

![Linux](/actividad3/img/img2.png)

# GESTION DE PERMISOS

### 1. Creacion de archivos y directorios

Crear y escribir archivo
```
echo "text" > nombre_archivo.txt
```

Crear directorio
```
mkdir [nombre_directorio]
```

### 2. Verificar permisos

```
ls -l
```

### 3. Modificar Permisos usando `chmod` con Modo Numérico

```
chmod 640 mi_archivo.txt
```

### 4. Modificar Permisos usando `chmod` con Modo Simbólico

```
chmod u+x mi_archivo.txt
```

### 5. Cambiar el Grupo Propietario:

```
sudo chown :grupo1 archivo2.txt
```

### 6. Configurar Permisos de Directorio

```
chmod 740 [mi_directorio]
```

### 7.  Comprobación de Acceso

```
sudo -u usuario2 cat mi_archivo.txt
```

### CONSOLA

![Linux](/actividad3/img/img3.png)

![Linux](/actividad3/img/img4.png)

![Linux](/actividad3/img/img5.png)

![Linux](/actividad3/img/img6.png)

### REFLEXION

`¿Por qué es importante gestionar correctamente los usuarios y permisos en un sistema operativo?`

Para uso personal desde mi punto de vista no es tan importante ya que solo una persona es la que utilizara el dispositivo. Ahora si hablamos a nivel empresarial si es de mucha relevancia por que para la empresa la informacion es lo mas importante, por lo tanto hay que prevenir que personas ajenas a la empresa o malintenciondas creen, alteren o eliminen informacion por lo tanto es necesario restringir los accesos, donde solo las personas autorizadas puedan acceder.