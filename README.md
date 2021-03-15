# Practica CIU: Modelos cámara - Sistema Solar

Asignatura: Creando interfaces de usuario

Curso: 4º

Autor: Eduardo Maldonado Fernández

## Introducción
Se ha realizado un programa en processing que crear un prototipo del sistema solar con 6 planetas: Mercurio, Venus, La tierra, Marte, Júpiter, Neptuno y el propio sol como estrella en la que giran el resto de planetas nombrados. En esta nueva práctica se le ha añadido una nave que se puede desplazar por todo el sistema solar tanto desde una perspectiva general del sistema como desde la primera persona de la nave.

## Descripción
Cuando se ejecuta el programa, se visualiza el sol como estrella principal en el medio del sistema y los planetas alrededor de esta estrella siguiendo la misma ubicación que en la realidad. Se ha añadido que la posición en el ejeY sea random de un cierto rango para mayor realismo. En cuanto a los planetas más cercanos al sol, giran a una velocidad de traslación mucho mayor respecto a otro más lejanos como pueden ser Neptuno o Júpiter. En cuanto a la nave, se ha creado una propia clase con sus atributos correspondientes como las posiciones.

![Sistema solar](/sistema_solar.gif "SystemSolar")


## Controles
- **Teclas 'W'-'S':** La nave se mueve verticalmente tanto en la vista general como en 1º persona.
- **Teclas 'A'-'D':** La nave se mueve horizontalmente tanto en la vista general como en 1º persona.
- **Teclas 'Z'-'X':** En 1º persona, para desplazarse adelante o atrás.
- **Tecla 'R':** Se resetea la posición de la nave.
- **tecla ENTER:** Cambia la vista entre 1ºpersona de la nave y la vista general.


## Organización del código

<p style=”text-align: justify;”>Existen dos ficheros, el fichero sistema_solar estan las funciones setup() y draw() y las funciones respecto a la creación y visualización del todo sistema solar, por otro lado tenemos a la clase nave. Primero establecemos unas variables globales: declaramos unas variables float que nos indicaran el angulo del planeta respecto al sol. Además, se añade unas variables para la posiciones de los planetas y PShape variables globales para cada planeta, así como para el fondo del sistema solar un PImage.</p>

En la función setup() establecemos el tamaño de la pantalla completa, y diversos valores de las variables globales explicados anteriormente y generamos los planetas correspondientes medianteo el método createPlanet() que se explicará a continuación.

A partir de la función draw() llamaremos a una serie de funciones que explicamos su utilidad:

- **drawControl():** Con este función, se mostrará el control edonde se explica como terminar la ejecución del programa.

-	**createPlanet():** Este metodo llamado en el setup() genera crear un planeta correspondiente añadiendole su textura correspondiente.

-	**showSol():** Mediante esta función, se muestra el sol. 

-	**showPlanet():** Mediante una serie de parametros, se mostrará el planeta pasado entre ellos, así como se va comprobando si se ha hecho un giro completo de la orbita alrededor del sol llamando al método addAngOrbita().

-	**showSatellite():** Mediante una serie de parametros, se mostrará el satelite de un planeta correspondiente.

-	**addAngOrbita():** En caso de haber superado los 360 grados, se reseta el giro de la orbita para volver a empezar desde su posición desde 0º.

-	**getAngOrbita():** Devuelve el angulo de la orbita actual de cada planeta correspondiente.

## Descarga e instalación
Para poder probar este programa es necesario descargar la carpeta entera llamada sistema_solar, así como la carpeta /data, para poder descargar todas las texturas necesarias para la ejecución.
