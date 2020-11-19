import 'package:flutter/material.dart';

class SucoPage extends StatefulWidget {
  @override
  _SucoPageState createState() => _SucoPageState();
}

class _SucoPageState extends State<SucoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6D4C41),
        title: const Text('SUCO'),
        centerTitle: true,
      ),
    );
  }
}
