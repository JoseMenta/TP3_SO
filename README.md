# ITBA - 72.11 - Sistemas Operativos - TP03
### Grupo 07

##### El siguiente repositorio es un análisis del sistema operativo _Protura_, desarrollado por el usuario de github _mkilgore_ (https://github.com/mkilgore/protura). El proyecto se encuentra bajo la licencia_GNU General Public License v2.0_, y se presenta un fork del repositorio del día 27/11/2022 para preservarlo en caso de que el original se cancele (https://github.com/JoseMenta/protura), donde se excluyen utilidades como gcc o newlib que se utilizan para tener un cross compiler para el SO.
##### Se analizó el commit con hash c6d6371a23220e4b8e9ce2cfbd598680c34cbfbe de la branch _main_ del repositorio original.

##### También se incluye una [imagen del S.O.](https://github.com/mkilgore/protura/releases/tag/v0.9.1) para probar algunas funcionalidades que ofrece. A continuación se explicará como correrla utilizando _QEMU_. También se ofrece un [link alternativo](https://drive.google.com/drive/folders/116crwsfv_ZmLp64NzDg9n7Ybc_JJPS68) para obtener la imagen. 
##### Por último, se incluye un archivo _DOCKERFILE_ para construir una imagen de docker con las dependencias necesarias para compilar el proyecto. Por una cuestión de tiempo (no se logró terminar la compilación en 40 minutos), no se recomienda compilar el proyecto manualmente utilizando la imagen.
## Usar la imagen para compilar 
1. Clonar el S.O (puede tardar)
```
git clone https://github.com/JoseMenta/TP3_SO.git
```
2. Ir al directorio del proyecto
```
cd TP3_SO
```
2. Crear la imagen
```
docker build -t protura_test .
```
4. Clonar el S.O.
```
git clone --recursive https://github.com/mkilgore/protura.git
```
o bien
```
git clone --recursive https://github.com/JoseMenta/protura.git
```
5. Ir al directorio del S.O. (clonado en el paso 1)
```
cd protura
```
4. Crear un contenedor con la imagen 
```
docker run --rm -v ${PWD}:/root --privileged -ti protura_test
```
5. Compilar el proyecto
```
cd root 
make full
```
###### Por cuestiones de tiempo y recursos, no fue posible verificar el funcionamiento de la imagen para compilar todo el proyecto
## Correr el SO
##### Para correr la imagen, se deben seguir los siguientes pasos
1. Instalar _QEMU_ localmente (https://www.qemu.org/download/#source)
2. Descargar la imagen desde el [link mencionado](https://github.com/mkilgore/protura/releases/tag/v0.9.1)
3. Ubicarse en el directorio con la imagen
```
cd TP3_SO
```
4. Correr la imagen en _QEMU_ 
```
qemu-system-x86_64 -hda disk.img -k en-us
```
###### Notar que en este caso, se configura al teclado en ingles estadounidense. Esto puede cambiar dependiendo del hardware donde se ejecute. 