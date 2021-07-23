Robot Framework Demo
====================

[`Robot Framework`](https://robotframework.org). Es un marco genérico de automatización de pruebas de código abierto.
Además de presentar la sintaxis de Robot Framework, esta demostración
muestra también cómo ejecutar casos de prueba y cómo se generan los informes y registros.

Tabla de Contenido
==================
* [Descargar Paquete Desafío Automatización](#Descargar-Paquete-Desafío-Automatización)
    * [Demo Aplicación](#Demo-Aplicación)
    * [Casos De Prueba](#Casos-De-Prueba)
    * [Librerías De Test](#Librerías-De-Test)
* [Iniciar Demo Desafío Automatización](#Iniciar-Demo-Desafío-Automatización)
    * [Precondiciones](#Precondiciones)
    * [Iniciar Tests](#Iniciar-Tests)
    
# Descargar Paquete Desafío Automatización
Para obtener la demostración, puede `Descargar` y extraer el último 
paquete de GitHub o, verifique él `Código Fuente` directamente.
Como resultado, obtiene el directorio `DesafioAutomatizacion` con varios archivos.

## Demo Aplicación
La aplicación de demostración es una página con carrito de compra, con validaciones, 
manejo de frames, tablas y escenarios implementada con Python y Robot Framework [`Run.bat`](Run.bat).

## Casos De Prueba
La demostración contiene un archivo de casos de prueba y un archivo de suite de prueba, que ilustran dos
enfoques para crear casos de prueba con Robot Framework. Haga clic en los nombres de archivo a continuación
para ver las últimas versiones en línea.

[`TestCases.robot`](Tests/TestCases.robot)
    Ejemplos de casos de prueba que utilizan el enfoque de prueba basado en validaciones.

    El estilo basado en validaciones funciona bien cuando necesita validar distintas validaciones por separado.

[`TestSuite.robot`](TestSuite/TestSuite.robot)
    Ejemplos de casos de prueba que utilizan el enfoque de prueba basado en datos.
    
    El estilo basado en datos funciona bien cuando necesita repetir el mismo flujo de trabajo varias veces.

Puedes ver [`Robot Framework User Guide`](http://robotframework.org/robotframework/#user-guide) para más detalles sobre la sintaxis del Framework.

## Librerías De Test

Todos los casos de prueba interactúan con la biblioteca de elementos llamada
[`WebElements.py`](Resources/WebElements.py). En la práctica, la biblioteca es solo un diccionario de Python 
con localizadores utilizados por los casos de pruebas.

## Generación de Resultados

Después de `Ejecutar Prubas`, obtendrá un reporte y un log en formato HTML. Además se generó un directorio para almacenar
todas las evidencias generadas en las validaciones.

- [`report.html`](Results/report.html)
- [`log.html`](Results/log.html)
- [`Evidencias`](Results/Evidencias)

# Iniciar Demo Desafío Automatización
## Precondiciones

Una precondición para ejecutar las pruebas es tener instalado `Robot Framework`. Es común utilizarlo con Python, pero también se puede utilizar con `Jython (JVM)` y `IronPython (.NET)`.

Robot Framework [`installation instructions`](https://github.com/robotframework/robotframework/blob/master/INSTALL.rst), cubre el proceso completo de instalación en detalle.

Las personas que ya están familiarizadas con la instalación de paquetes de Python y con el administrador de paquetes [`pip`](https://pip.pypa.io/en/stable/) instalado, pueden simplemente ejecutar el siguiente comando:

    pip install robotframework

Robot Framework 3.0 y versiones posteriores admiten Python 3 además de Python 2. También
este proyecto de demostración es actualmente compatible con Python 3.

## Iniciar Tests

Los casos de pruebas son ejecutados con el comando `robot`:

    robot ("Nombre Archivo").robot

Nota: Si está utilizando Robot Framework 2.9 o una versión anterior, debe
          use el comando específico del intérprete de Python `pybot`, `jybot` o
          `ipybot` en su lugar.

Para ejecutar todos los archivos de casos de prueba en un directorio de forma recursiva, simplemente, ingrese el
directorio como argumento. También puede ingresar varios archivos o directorios en
un argumento y usar varias opciones de línea de comando compatibles con Robot Framework.

Los resultados `disponibles en línea` se crearon usando el siguiente comando:

    robot -d Results /Tests/TestCases.robot

Ejecuta `robot --help` para mayor información sobre los comandos utilizados.
[`Robot Framework User Guide`](http://robotframework.org/robotframework/#user-guide), para mayor información sobre ejecuciones de pruebas en general.
