import 'package:flutter/material.dart';

class PedidoAceito extends StatefulWidget {
  @override
  _PedidoAceitoState createState() => _PedidoAceitoState();
}

class _PedidoAceitoState extends State<PedidoAceito> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //LOGOMARCA
          Container(
            height: 220,
            child: Image.asset('assets/images/icon_aceito.png'),
          ),
          // ignore: missing_required_param
        ],
      ),
    );
  }
}