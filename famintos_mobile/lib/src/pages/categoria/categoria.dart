import 'package:famintos_mobile/src/pages/listaCategoria/comboEspecial.dart';
import 'package:flutter/material.dart';

class CategotiaPage extends StatefulWidget {
  @override
  _CategotiaPageState createState() => _CategotiaPageState();
}

class _CategotiaPageState extends State<CategotiaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6D4C41),
        title: const Text('CATEGORIA'),
        centerTitle: true,
      ),
      body: _body(),
    );
  }
  _body(){
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(15.0),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: <Widget>[
                Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      print('Card tapped.');
                    },
                    child: Container(
                      color: Colors.brown[300],
                      width: 300,
                      height: 100,
                        child: Center(
                          child: ListView(
                            children: <Widget>[
                              ListTile(
                                title: Text(
                                  'Categoria',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),

                                ),subtitle: Text(
                                'Refrigerante',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                                onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ComboEspecialPage()),
                                ),
                              ),
                            ],
                          ),
                        ),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      print('Card tapped.');
                    },
                    child: Container(
                      color: Colors.brown,
                      width: 300,
                      height: 100,
                      child: Text('A card that can be tapped'),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      print('Card tapped.');
                    },
                    child: Container(
                      color: Colors.brown,
                      width: 300,
                      height: 100,
                      child: Text('A card that can be tapped'),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      print('Card tapped.');
                    },
                    child: Container(
                      color: Colors.brown,
                      width: 300,
                      height: 100,
                      child: Text('A card that can be tapped'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
