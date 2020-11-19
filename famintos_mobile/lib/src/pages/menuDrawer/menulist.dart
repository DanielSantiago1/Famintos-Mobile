import 'package:famintos_mobile/src/pages/cardapio/cardapio.dart';
import 'package:famintos_mobile/src/pages/categoria/categoria.dart';
import 'package:famintos_mobile/src/pages/comandaPage/comandaPage.dart';
import 'package:famintos_mobile/src/pages/sobre/sobre.dart';
import 'package:flutter/material.dart';

class MenuList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 10,
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Image.asset('assets/images/icon_famintos.png'),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
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
            //leading: Icon(Icons.dashboard),
            title: Text("Comanda".toUpperCase(), style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => ComandaPage()));
            },
          ),
          ListTile(
            //leading: Icon(Icons.dashboard),
            title: Text("Cardapio".toUpperCase(), style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => CardapioPage()));
            },
          ),
          ListTile(
            //leading: Icon(Icons.dashboard),
            title: Text("Categoria".toUpperCase(), style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => CategotiaPage()));
            },
          ),
          ListTile(
            //leading: Icon(Icons.dashboard),
            title: Text("Sobre".toUpperCase(), style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => SobrePage()));
            },
          ),
          ListTile(
            //leading: Icon(Icons.exit_to_app),
            title: Text("Close".toUpperCase(), style: TextStyle(color: Colors.redAccent,fontSize: 16, fontWeight: FontWeight.bold),),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}