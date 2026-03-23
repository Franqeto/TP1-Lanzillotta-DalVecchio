# Ejercicio Práctico Nro 1 - Bash

## Requisitos previos

Antes de correr el script, definir la variable de entorno FILENAME:
```bash
export FILENAME=alumnos
```

## Instalación

Clonar el repositorio:
```bash
git clone https://github.com/tuusuario/TP1-Lanzillotta-DalVecchio.git
```

Mover los archivos al home:
```bash
mv TP1-Lanzillotta-DalVecchio/menu.sh ~/
mv TP1-Lanzillotta-DalVecchio/consolidar.sh ~/
```

## Uso

Ejecutar el script con:
```bash
bash menu.sh
```

## Pasos

1. Elegir la opción 1 del menú para crear el entorno
2. Copiar los archivos .txt con los datos de alumnos a ~/EPNro1/entrada/
3. Elegir la opción 2 para iniciar el proceso en background
4. A partir de ahí ya podés usar las opciones 3, 4 y 5

## Archivos de ejemplo

En la carpeta ejemplos/ hay archivos .txt de ejemplo con el formato correcto. Para probar el script copiarlos a ~/EPNro1/entrada/:
```bash
cp TP1-Lanzillotta-DalVecchio/ejemplos/*.txt ~/EPNro1/entrada/
```

## Parámetro opcional

Para borrar el entorno y matar los procesos en background:
```bash
bash menu.sh -d
```
