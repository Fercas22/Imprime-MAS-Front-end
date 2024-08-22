# imprime_mas

Este es un proyecto de Imprime-mas.

## Descripcion

Este proyecto es una app de escritorio especialemnte para OS de Windows, desarrollado por el framework de Flutter y el lenguaje de Dart, con las siguientes dependencias:

-   Gestor de rutas:
    <a href="https://pub.dev/packages/auto_route">
    <span>
        auto_route
    </span>
    </a>
-    Generador de rutas automatico:
    <a href="https://pub.dev/packages/auto_route_generator">
    <span>
        auto_route_generator
    </span>
    </a>
-   Paquete de interfaz grafica especialmente para Windows:
    <a href="https://pub.dev/packages/fluent_ui">
    <span>
        fluent_ui
    </span>
    </a>
-   Manejador de estados:
    <a href="https://pub.dev/packages/flutter_bloc">
    <span>
        flutter_bloc
    </span>
    </a>

**Este proyecto solo es compatible con Windows**

Este proyecto tambien usa fvm para gestionar la version de flutter del proyecto.

## Configuración del entorno de desarrollo

### Configuracion de FVM (Flutter version management)

1. Dentro del directorio del proyecto abrir una terminal y correr el siguiente comando:

```
  dart pub global activate fvm
```

2. Dentro de la misma terminal anterior correo el siguiente comando:

```
  fvm use 3.22.0
```

3. Reiniciar VSCode **(si no se reinicia los cambios no se veran reflejados)**

4. Dentro del directorio del proyecto abrir una terminal y correr el siguiente comando:

```
  flutter doctor
```

Debera de obtener una respuesta como esta:

```
  Doctor summary (to see all details, run flutter doctor -v):
  [√] Flutter (Channel stable, 3.22.0, on Microsoft Windows [Versi¢n 10.0.22631.4037], locale es-MX)
  [√] Windows Version (Installed version of Windows is version 10 or higher)
  [√] Android toolchain - develop for Android devices (Android SDK version 35.0.0)
  [√] Chrome - develop for the web
  [√] Visual Studio - develop Windows apps (Visual Studio Community 2022 17.4.2)
  [!] Android Studio (version 2021.3)
      X Unable to find bundled Java version.
  [√] Android Studio (version 2024.1)
  [√] IntelliJ IDEA Community Edition (version 2023.3)
  [√] VS Code (version 1.92.2)
  [√] Connected device (3 available)
  [√] Network resources

  ! Doctor found issues in 1 category.
```

Se debera verificar que la primer linea diga **Channel stable, 3.22.0** y que todas las demas lineas no tengan una **x o se encuentren en rojo**.

### Preparacion para correr el proyecto

Deberas de correr cada uno de los comandos que se muestran a continuacion:

```
flutter clean
flutter pub get
dart run build_runner build
```

Ó

```
flutter clean && flutter pub get && dart run build_runner build
```

Si al correr algún comando de los mencionados anteriormente te pide confirmar lo siguiente: **Delete these files?** seleccionas la ópcion de **Delete** normalmente es ingresando el número 1 y enter, si no te lo pide no pasa nada.

**Si no se corren estos comandos el proyecto no correra en tu máquina.**


## Carpetas

1. Organización de Carpetas

Dividir el proyecto en capas claras según el DDD:
- domain: Contiene el modelo del dominio y la lógica de negocio.
- application: Contiene casos de uso y la lógica de la aplicación.
- infrastructure: Contiene la implementación de los repositorios, fuentes de datos, y cualquier integración con servicios externos.
- presentation: Contiene la UI y la lógica de presentación.

2. Estructura Detallada de Carpetas

lib/
  domain/
    entities/
    value_objects/
    repositories/
    services/
  application/
    use_cases/
    dto/
  infrastructure/
    data_sources/
    repositories/
    mappers/
  presentation/
    widgets/
    pages/
    state/
    blocs/  # o cubits, dependiendo de tu elección de manejo de estado
  main.dart

3. Detalles de Cada Carpeta

- domain/:
    entities/: Contiene las entidades del dominio.
    value_objects/: Contiene los objetos de valor que representan conceptos importantes del dominio.
    repositories/: Define interfaces para acceder a las fuentes de datos.
    services/: Contiene lógica de negocio que no pertenece a una entidad específica.
- application/:
    use_cases/: Contiene los casos de uso, que son la lógica de la aplicación que orquesta las interacciones entre el dominio y la infraestructura.
    dto/: Objetos de transferencia de datos utilizados en los casos de uso.
- infrastructure/:
    data_sources/: Implementaciones concretas de las fuentes de datos (por ejemplo, APIs, bases de datos locales).
    repositories/: Implementaciones concretas de los repositorios definidos en el dominio.
    mappers/: Transformaciones entre entidades del dominio y modelos de datos.
- presentation/:
    widgets/: Contiene widgets reutilizables.
    pages/: Contiene las pantallas de la aplicación.
    state/: Contiene la lógica de estado (por ejemplo, BLoC, Provider).
    blocs/: Si usas BLoC, esta carpeta contendrá los archivos BLoC específicos.
