import 'package:flutter/material.dart';
import 'package:famintos_mobile/src/pages/lista/menulist.dart';

/// This is the main application widget.
class CardapioPage extends StatelessWidget {
  static const String _title = 'Cardapio';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuList(),
      appBar: AppBar(
        backgroundColor: Color(0xff6D4C41),
        title: const Text('Cardapio'),
        centerTitle: true,
      ),
    );
  }
}