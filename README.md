# UI DATOS ESTUDIANTILES

Objetivo:
El objetivo de esta práctica es que se aprenda a crear cards con toda la información de los datos personales y estudiantiles del alumno, así como también la creación y uso de las tablas (DataTables), en esta tabla se insertó el horario de clases que tiene el estudiante, en la card inicial se agregó una imagen del alumno para identificar que corresponde a él o ella. De igual manera se enseña como crear un floating Action Button, mejor conocido como un botón flotante, se crearon 3 botones diferentes, los cuales redireccionan a cada una de las cards, esto hace la función del Scroll para que se pueda acceder facilmente a la información que se encuentra en la pantalla del dispositivo, estos botones son desplegables para que no ocupen mucho espacio en pantalla.
Con esto la aplicación quedaría funcional y estaría lista para crear el apk y poder hacer uso desde el dispositivo móvil sin problemas, ya que se podría acceder a dicha aplicacion desde el menú del celular, como cualquier otra aplicación nativa.

# Herramientas usadas

Las herramientas que se usaron fueron las siguientes: 

- Visual Studio Code en la versión 1.72: Es un editor de código fuente desarrollado por Microsoft para Windows, Linux, macOS y Web. Incluye soporte para la depuración, control integrado de Git, resaltado de sintaxis, finalización inteligente de código, fragmentos y refactorización de código.
- Flutter en la versión 3.3.2: Es un SDK de código fuente abierto de desarrollo de aplicaciones móviles creado por Google. Suele usarse para desarrollar interfaces de usuario para aplicaciones en Android, iOS y Web así como método primario para crear aplicaciones para Google Fuchsia.

[![flutter-VSC.png](https://i.postimg.cc/Jz6cCkH5/flutter-VSC.png)](https://postimg.cc/4Ychzn5Y)

# Metodología

- Se creó un proyecto de flutter en visual studio code.
- Se creó una carpeta en la raíz, llamada assets.
- Dentro de la carpeta assets se crearon dos carpetas más, llamadas images y fonts.
- En la carpeta images se agregarán todas las imagenes que se utilicen en el proyecto.
- En la carpeta fonts se agregarán todas las fuentes que se usen en el proyecto.
- Dentro de la carpeta lib se creará otra carpeta llamada src en la cual se agregarán todos los archivos .dart que se agreguen, sin contar el main.dart.
- Se creó un archivo en la carpeta src, llamado button.dart, aquí es donde se agregó el código para la creación de los botones flotantes y solo se llamó al archivo en el main.dart como un import 'package:nombreDelProyecto/src/button.dart
- Las imagenes que se agregaron para el fondo del appBar y la foto del estudiante, se tendrán que agregar al archivo de pubspec.yaml, ahí es donde se deberá poder la ruta de todas las imagenes que se usen en el código, así como todas las fuentes.
- Una vez que se desarrollo todo el proyecto, se creó el apk para instalarlo en los dispositivos móviles, con el comando de flutter buil apk.
- El apk se podrá encontrar en la ruta que se muestra una vez que se haya terminado de ejecutar el comando mencionado en el paso anterior.

# Resultados

[![captura-Uno.jpg](https://i.postimg.cc/kgKsK42Q/captura-Uno.jpg)](https://postimg.cc/5X98Mfqy) 
[![captura-Dos.jpg](https://i.postimg.cc/C59CfTYr/captura-Dos.jpg)](https://postimg.cc/LgBgrWJj)
[![captura-Tres.jpg](https://i.postimg.cc/9XDnzcYp/captura-Tres.jpg)](https://postimg.cc/XX08zShG)


# Datos del estudiante

Universidad: Universidad Tecnológica de Xicotepec de Juárez.
Área: Tecnologías de la Información y Comunicación.
Carrera: Desarrollo de Software Multiplataforma.

<hr>


Materia: Desarrollo Móvil Integral



A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
