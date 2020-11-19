import 'package:flutter/material.dart';

class RefrigentantePage extends StatefulWidget {
  @override
  _RefrigentantePageState createState() => _RefrigentantePageState();
}

class _RefrigentantePageState extends State<RefrigentantePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6D4C41),
        title: const Text('REFRIGERANTE'),
        centerTitle: true,
      ),
    );
  }
}
