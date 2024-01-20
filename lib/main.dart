import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterScreen(),
    );
  }
}

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2F2F2F),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'CONTADOR',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w800,
                color: Colors.white,
                fontSize: 55,
              ),
            ),
            Text(
              '0',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w200,
                color: Colors.white,
                fontSize: 200,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CounterButton(label: '+'),
                SizedBox(width: 25),
                CounterButton(label: 'RESET'),
                SizedBox(width: 25),
                CounterButton(label: '-'),
              ],
            ),
            // Usamos Expanded para permitir que el espacio disponible se distribuya entre los elementos
            Expanded(
              child: SizedBox.shrink(),
            ),
            Padding(
              padding: EdgeInsets.all(50),
              child: Text(
                'By emilio_orduna',
                style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                color: const Color.fromARGB(255, 123, 123, 123),
                fontSize: 20,
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CounterButton extends StatelessWidget {
  final String label;

  CounterButton({required this.label});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Implementar la lógica según el botón presionado
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF1B1B1B),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        padding: EdgeInsets.symmetric(horizontal: 45, vertical: 15), // Ajusta el padding
      ),
      child: Text(
        label,
        style: TextStyle(
          fontFamily: 'Poppins',
          fontWeight: label == 'RESET' ? FontWeight.w500 : FontWeight.w700,
          fontSize: label == 'RESET' ? 25 : 28, // Ajusta el tamaño de la fuente
        ),
      ),
    );
  }
}

