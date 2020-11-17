import 'package:flutter/material.dart';

class SobrePage extends StatefulWidget {
  @override
  _SobrePageState createState() => _SobrePageState();
}

class _SobrePageState extends State<SobrePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6D4C41),
        title: Text(
          'SOBRE',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
        child: ListView(
          children: <Widget>[
            Text('Desenvolvido por',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(height: 10, color: Colors.white,),
            Text('Alice Maria dos Santos Silva',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Text('Daniel Diego Santiago de Souza',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Text('Ericton Felicidade de Brito',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Divider(height: 25, color: Colors.black,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Contato do desenvolvedor',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Divider(height: 25, color: Colors.black,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.mail),
                Text('alice.santos.s@outlook.com'),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.mail),
                Text('daniel_s_sa@hotmail.com'),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.mail),
                Text('ericton.developer@gmail.com'),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Image.asset('assets/images/icon_famintos.png'),
            ),
          ],
        ),
      ),
    );
  }
}

