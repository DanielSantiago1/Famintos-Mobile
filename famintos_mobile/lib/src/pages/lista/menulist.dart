import 'package:famintos_mobile/src/pages/cardapio/cardapio.dart';
import 'package:flutter/material.dart';

class MenuList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(

        child: Container(
          padding: EdgeInsets.only(top:150),
          child: Column(
            children: [

              ListTile(
                //leading: Icon(Icons.dashboard),
                title: Text("Cardapio".toUpperCase(), style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (BuildContext context) => CardapioPage()));
                },
              ),
              ListTile(
                //leading: Icon(Icons.exit_to_app),
                title: Text("Close".toUpperCase(), style: TextStyle(color: Colors.redAccent,fontSize: 16, fontWeight: FontWeight.bold),),
                onTap: (){},
              ),
            ],
          ),
        )
    );
  }
}