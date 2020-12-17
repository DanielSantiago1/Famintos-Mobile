import 'package:famintos_mobile/src/views/produtos/pedidoFinalizado.dart';
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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Divider(height: 100),
          RaisedButton(
            child: Text('Finalizar Pedido', 
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            color: Colors.brown,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(18.0))
            ),
            onPressed: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) {
                  return PedidoFinlizado();
                })
              );
            },
          ),
        ],
      ),
    );
  }
}
