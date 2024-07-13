# imprime_mas

Este es un proyecto de Imprime-mas.

## Comandos necesarios para poder compilar

flutter clean
flutter pub get

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
