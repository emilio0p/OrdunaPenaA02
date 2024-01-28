import 'package:flutter/material.dart';
import 'package:orduna_pena_a02/widgets/btn_counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const CounterScreen(),
    );
  }
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int contador = 0;

  void incrementCount() {
    setState(() {
      contador++;
      debugPrint("Contador: $contador");
    });
  }

  void decrementCount() {
    setState(() {
      if (contador > 0) {
        contador--;
        debugPrint("Contador: $contador");
      }
    });
  }

  void resetCount() {
    setState(() {
      contador = 0;
      debugPrint("Contador: $contador");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 53, 53, 52),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "CONTADOR",
              style: TextStyle(
                fontFamily: 'Poppins',
                color: const Color.fromARGB(255, 255, 255, 255),
                fontSize: 60.0,
                fontWeight: FontWeight.w700,
              ), // Usar el estilo definido en el theme
            ),
            Text(
              "$contador",
              style: TextStyle(
                fontFamily: 'Poppins',
                color: const Color.fromARGB(255, 255, 255, 255),
                fontSize: 200.0,
                fontWeight: FontWeight.w200,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BtnCounter(
                  text: '+',
                  fontsize: 25.0,
                  fontWeight: FontWeight.w800,
                  onPressed: incrementCount,
                ),
                BtnCounter(
                  text: 'RESET',
                  fontsize: 18.0,
                  fontWeight: FontWeight.w600,
                  onPressed: resetCount,
                ),
                BtnCounter(
                  text: '-',
                  fontsize: 25.0,
                  fontWeight: FontWeight.w800,
                  onPressed: decrementCount,
                ),
              ],
            ),
            Text(
                'By emilio_orduna',
                style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                color: const Color.fromARGB(255, 123, 123, 123),
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
