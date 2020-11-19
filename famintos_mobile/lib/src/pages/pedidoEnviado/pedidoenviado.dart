import 'package:flutter/material.dart';

class PedidoEnviado extends StatefulWidget {
  @override
  _PedidoEnviadoState createState() => _PedidoEnviadoState();
}

class _PedidoEnviadoState extends State<PedidoEnviado> {
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
