import 'package:flutter/material.dart';

class SanduichePage extends StatefulWidget {
  @override
  _SanduichePageState createState() => _SanduichePageState();
}

class _SanduichePageState extends State<SanduichePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6D4C41),
        title: const Text('SANDUICHES'),
        centerTitle: true,
      ),
    );
  }
}
