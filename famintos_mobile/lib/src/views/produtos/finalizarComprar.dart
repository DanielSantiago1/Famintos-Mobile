import 'package:flutter/material.dart';

class FinalizarComprar extends StatefulWidget {
  @override
  _FinalizarComprarState createState() => _FinalizarComprarState();
}

class _FinalizarComprarState extends State<FinalizarComprar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6D4C41),
        title: const Text('FINALIZAR COMPRAR'),
        centerTitle: true,
      ),
    );
  }
}
