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
    }```



# Ejercicio 2

## Enunciado

- Deberás de crear una clase en flutter que sea una plantilla de los botones, en la que le pases el argumento de texto y sustituirlo por los 3 botones que tenemos → 2 puntos
- Darle funcionalidad a los botones, cambios solo por consola → 2 puntos
- Cambios por pantalla → 4 puntos.
- README → 2 puntos.

## Pantalla

![Pantalla 2](https://i.imgur.com/xXCvo70.png)
![Pantalla 3](https://i.imgur.com/0dkVAkp.png)

## Componentes

### CounterScreen
El widget CounterScreen es un StatefulWidget que maneja el estado del contador y muestra la interfaz de usuario. Utiliza un Scaffold como su estructura principal y contiene un texto para mostrar el valor actual del contador y tres botones flotantes BtnCounter para incrementar, decrementar y resetear el contador.

### BtnCounter
El widget BtnCounter es un StatefulWidget que representa un botón flotante de tipo FloatingActionButton personalizado. Toma como parámetros el texto que se mostrará en el botón, el tamaño de la fuente, el peso de la fuente y una función de devolución de llamada que se ejecutará cuando se presione el botón.

El widget BtnCounter es un botón flotante personalizado que se utiliza para controlar las acciones del contador (incrementar, decrementar, resetear). Aquí está la explicación de las partes clave del código:

- **Constructor**: Toma cuatro parámetros:
  - `text`: El texto que se mostrará en el botón.
  - `fontsize`: El tamaño de la fuente del texto.
  - `fontWeight`: El peso de la fuente del texto.
  - `onPressed`: Una función de devolución de llamada que se ejecutará cuando se presione el botón.

- **build()**: Retorna un SizedBox que envuelve un FloatingActionButton. El botón tiene un color de fondo negro, un borde redondeado y un tamaño fijo. El texto del botón se establece según el parámetro `text`, el tamaño de la fuente y el peso de la fuente se toman de los parámetros `fontsize` y `fontWeight`, respectivamente. La función de devolución de llamada `onPressed` se asigna al evento `onPressed` del botón.

Este widget es un StatefulWidget porque su estado puede cambiar (por ejemplo, al presionar el botón), por lo que tiene su propia clase de estado `_BtnCounterState`. En este caso particular, el estado no cambia, pero se podría implementar algún tipo de animación o lógica adicional en el futuro.


### Recursos utilizados
- [Documentación Flutter](https://docs.flutter.dev/)
- [FilledStacks YT](https://www.youtube.com/@FilledStacks/videos)