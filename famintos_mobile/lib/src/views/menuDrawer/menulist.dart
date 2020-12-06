import 'dart:io';
import 'package:famintos_mobile/src/views/produtos/cardapio.dart';
import 'package:famintos_mobile/src/views/produtos/comandaPage.dart';
import 'package:famintos_mobile/src/views/produtos/finalizarComprar.dart';
import 'package:famintos_mobile/src/views/sobre/sobre.dart';
import 'package:flutter/material.dart';

class MenuList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 10,
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Image.asset('assets/images/icon_splash.png'),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              gradient: RadialGradient(
                colors: <Color>[
                  Color(0xFFEECE),
                  Colors.brown[600],
                ],
              ),
            ),
          ),
          ListTile(
            title: Text("Comanda".toUpperCase(), style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => ComandaPage()));
            },
          ),
          ListTile(
            title: Text("Cardapio".toUpperCase(), style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => CardapioPage()));
            },
          ),
          ListTile(
            title: Text("Finalizar Comprar".toUpperCase(), style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => FinalizarComprar()));
            },
          ),
          ListTile(
            title: Text("Sobre".toUpperCase(), style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => SobrePage()));
            },
          ),
          ListTile(
            title: Text("Close".toUpperCase(),
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 16, 
                fontWeight: FontWeight.bold
              ),
            ),
            onLongPress: () => exit(0),
          ),
        ],
      ),
    );
  }
}