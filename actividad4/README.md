# SYSTEMD

A continuacion se explicara como crear un **systemd unit** de tipo servicio que ejecuta un script el cual imprimira un "Hola Mundo!!!" con la fecha actual.

1. Crear el script que imprimira el hola mundo y la hora actual. El nombre que le pondremos es **"myScript.sh"** y el contenido del archivo sera el siguiente:
    ```
    #!/bin/bash
    echo "Hola Mundo! La hora es: $(date)."
    ```

2. Guardar el archivo. Por ejemplo **"/usr/local/bin/hello.sh"**

3. Crear un nuevo archivo **systemd unit** con el siguiente comando:

    ```
    sudo nano /etc/systemd/system/myService.service

    ```

4. Como el comando **nano** abre un editor en el cual se pondra lo siguiente:
    ```
    [Unit]
    Description=My first service

    [Service]
    ExecStart=/usr/local/bin/myScript.sh
    Type=simple

    [Install]
    WantedBy=multi-user.target
    ```

5. Guardar y cerrar el archivo.

6. Para que nuestro nuevo archivo **systemd unit** sea reconocido en nuestro sistema tenemos que recargar el systemd con el siguiente comando:

    ```
    sudo systemctl daemon-reload
    ```

7. Ahora hay que iniciar el servicio con el siguiente comando.

    ```
    sudo systemctl start hello

    ```
8. Si queremos coroborar que el servicio esta activo podemos ejecutar el siguiente comando:
    ```
    sudo systemctl status hello

    ```
