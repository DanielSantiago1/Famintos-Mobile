import 'package:flutter/material.dart';

class PizzaPage extends StatefulWidget {
  @override
  _PizzaPageState createState() => _PizzaPageState();
}

class _PizzaPageState extends State<PizzaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6D4C41),
        title: const Text('PIZZA'),
        centerTitle: true,
      ),
    );
  }
}
