import 'package:flutter/material.dart';

class BtnCounter extends StatefulWidget {
  final String text;
  final double fontsize;
  final FontWeight fontWeight;
  final VoidCallback onPressed;

  const BtnCounter({
    Key? key,
    required this.text,
    required this.fontsize,
    required this.fontWeight,
    required this.onPressed,
  }) : super(key: key);

  @override
  _BtnCounterState createState() => _BtnCounterState();
}

class _BtnCounterState extends State<BtnCounter> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.0,
      height: 40.0,
      child: FloatingActionButton(
        onPressed: widget.onPressed,
        backgroundColor: const Color(0xFF1B1B1B),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
        child: Text(
          widget.text,
          style: TextStyle(
            fontFamily: 'Poppins', // Especificar la fuente Poppins
            fontSize: widget.fontsize,
            fontWeight: widget.fontWeight,
            color: Colors.white, // Color del texto
          ),
        ),
      ),
    );
  }
}
