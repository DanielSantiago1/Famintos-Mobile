import 'package:flutter/material.dart';
class ComandaPage extends StatefulWidget {
  @override
  _ComandaPageState createState() => _ComandaPageState();
}

class _ComandaPageState extends State<ComandaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6D4C41),
        title: const Text('COMANDA'),
        centerTitle: true,
      ),
    );
  }
}
