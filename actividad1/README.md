# <center>**KERNEL**<center>

## **Tipos y Diferencias**

#### **Monolítico**

Este es un gran núcleo para realizar las tereas del sistema,<br>
responsable de la gestión de la memoria, procesos, soporte a<br>
drivers y software. Este kernel es utilizado en Linux, OS X <br>
y windows.

#### **Microkernel**

Es de un tamaño pequeño para que en caso de fallo no paralice <br>
el sistema. Esta compuesto por varios modulos lo cual beneficia <br>
en seguridad, portabilidad y adaptación. Es utilizado en Mach <br>
de OS X.

#### **Híbrido**

Es la union de los dos anteriores siendo el kernel compacto y <br>
modulable. Se puede elegir en que ejecutar en modo usuario y <br>
superivisor. Es utilizado en Linux y OS X.


## **User vs Kernel Mode**

#### **User**

1. Cada aplicación se ejecuta de forma aislada
2. Si una aplicación se bloquea solo afecta a la aplicación y no al<br>
sistema
3. Tambien es conocido como modo restringido o esclavo
4. El bit del modo usuario es 1
5. Todos los procesos tienen espacios de dirección virtual separados

#### **Kernel**

1. Tiene acceso directo a los recursos del sistema
2. Si ocurre un bloqueo todo el sistema operativo se ve afectado
3. Tambien es conocido como modo sistema o privilegiado
4. El bit del modo usuario es 0
5. Todos los procesos comparten un único espacio de dirección virtual
<br><br>

![This is an image](https://learn.microsoft.com/es-es/windows-hardware/drivers/gettingstarted/images/userandkernelmode01.png)