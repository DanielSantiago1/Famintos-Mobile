import 'package:flutter/material.dart';

import 'cardapio.dart';

class PedidoFinlizado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
        child: ListView(
          children: <Widget>[
            Image.asset('assets/images/icon_aceito.png'),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: Text('Pedido finalizado com sucesso',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Divider(height: 15),
            Center(
              child: Text('Por favor se direcionar ao caixa ',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Center(
              child: Text('para efetuar o pagamento.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Divider(height: 60),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    child: Text("De volta para o Cardapio",
                      style: TextStyle(
                      fontSize: 15, 
                      fontWeight: FontWeight.w900, 
                      color: Colors.white
                      ),
                    ),
                    color: Colors.brown,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16.0))),
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return CardapioPage();
                        })
                      );
                    },
                  ),
                )
              ],
            ),
            Divider(height: 15),
          ],
        ),
      ),
    );
  }
}