
import 'package:famintos_mobile/src/views/menuDrawer/menulist.dart';
import 'package:famintos_mobile/src/views/produtos/categoria.dart';
import 'package:famintos_mobile/src/views/produtos/comandaPage.dart';
import 'package:famintos_mobile/src/views/produtos/comboEspecial.dart';
import 'package:famintos_mobile/src/views/produtos/pizzaPage.dart';
import 'package:famintos_mobile/src/views/produtos/sanduichesPage.dart';
import 'package:flutter/material.dart';

/// This is the main application widget.
class CardapioPage extends StatefulWidget {
  // ignore: unused_field
  static const String _title = 'Cardapio';

  @override
  _CardapioPageState createState() => _CardapioPageState();
}

class _CardapioPageState extends State<CardapioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuList(),
      appBar: AppBar(
        backgroundColor: Color(0xff6D4C41),
        title: const Text('CARDAPIO'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.assignment),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                    return ComandaPage();
                  })
              );
            },
          ),
        ],
        centerTitle: true,
      ),
      body: _body(),
    );
  }

  _body(){
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(18.0),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: InkWell(
                        splashColor: Colors.brown.withAlpha(30),
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ComboEspecialPage()),
                        ),
                        child: Container(
                          color: Colors.brown[300],
                          width: 300,
                          height: 100,
                          child: Center(
                            child: Text('COMBO ESPECIAL',
                              style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              ),
                            ),
                          ),
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PizzaPage()
                          ),
                        ),
                      child: Container(
                        color: Colors.brown[300],
                        width: 300,
                        height: 100,
                          child: Center(
                            child: Text('PIZZA',
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                              ),
                            ),
                          ),
                        )
                      ),
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SanduichePage()
                          ),
                        ),
                      child: Container(
                        color: Colors.brown[300],
                        width: 300,
                        height: 100,
                          child: Center(
                            child: Text('SANDUICHES',
                            style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                              ),
                            ),
                          ),
                        )
                      ),
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),

                  child: Card(
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CategotiaPage()),
                      ),
                      child: Container(

                        color: Colors.brown[300],
                        width: 300,
                        height: 100,
                          child: Center(
                            child: Text('BEBIDAS',
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                              ),
                            ),
                          )
                      ),
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