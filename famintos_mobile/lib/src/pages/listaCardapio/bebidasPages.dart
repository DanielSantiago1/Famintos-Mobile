import 'package:flutter/material.dart';

class BebidasPage extends StatefulWidget {
  @override
  _BebidasPageState createState() => _BebidasPageState();
}

class _BebidasPageState extends State<BebidasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6D4C41),
        title: const Text('BEBIDAS'),
        centerTitle: true,
      ),
    );
  }
}
