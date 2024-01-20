# Proyecto 2 Contador en Flutter

# Ejercicio 1

## Enunciado

Crea un nuevo PROYECTO y crea el contador que creamos en android(sin funcionalidad por ahora).

## Pantalla

![Pantalla 1](https://i.imgur.com/rZg849o.png)

## Descripción del ejercicio

Debemos recrear la pantalla de un contador desde un ejemplo en [Figma](https://www.figma.com/file/81Q9MRTXxY0lega1H7OPwr/EjeciciosAndroid?type=design&mode=design), sin funcionalidad.

## Estructura del Proyecto

    ```plaintext
    /orduna_pena_a02
        ├── lib/
        │   ├── main.dart
        │   └── components/
        │       └── counter_button.dart
        ├── assets/
        │   └── fonts/
        │       ├── Poppins-Regular.ttf
        │       ├── Poppins-Bold.ttf
        │       ├── Poppins-ExtraBold.ttf
        │       ├── Poppins-ExtraLight.ttf
        │       └── Poppins-SemiBold.ttf
        ├── test/
        ├── build/
        ├── ios/
        ├── android/
        └── pubspec.yaml```

### Estructura del Código Fuente

- `main.dart`: Punto de entrada de la aplicación. Configura y ejecuta la aplicación Flutter.
- `components/counter_button.dart`: Define el widget `CounterButton` que se utiliza para los botones de la interfaz de usuario.

    ```dart 
        // main.dart
    import 'package:flutter/material.dart';
    import 'components/counter_button.dart';

    void main() {
    runApp(MyApp());
    }

    // ... (resto del código)

    // components/counter_button.dart
    import 'package:flutter/material.dart';

    class CounterButton extends StatelessWidget {
    final String label;

    CounterButton({required this.label});

    @override
    Widget build(BuildContext context) {
        return ElevatedButton(
        onPressed: () {
            // Aquí va la lógica
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF1B1B1B),
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
            ),
            padding: EdgeInsets.symmetric(horizontal: 45, vertical: 15),
        ),
        child: Text(
            label,
            style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: label == 'RESET' ? FontWeight.w500 : FontWeight.w700,
            fontSize: label == 'RESET' ? 25 : 28,
            ),
        ),
        );
    }
    }

## Ejecutar la Aplicación

- Asegúrate de tener Flutter y Dart instalados. Navega al directorio del proyecto en tu terminal y ejecuta:

    ```bash 
        flutter run 
- Esto iniciará la aplicación en tu dispositivo o emulador.

### Recursos utilizados
- [Documentación Flutter](https://docs.flutter.dev/)
- [FilledStacks YT](https://www.youtube.com/@FilledStacks/videos)