import 'package:famintos_mobile/src/pages/listaCategoria/refrigerantePage.dart';
import 'package:famintos_mobile/src/pages/listaCategoria/sucoPage.dart';
import 'package:famintos_mobile/src/pages/pedidoAceito/pedidoAceito.dart';
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RefrigentantePage()),
                        ),
                        child: Container(
                          color: Colors.brown[300],
                          width: 300,
                          height: 100,
                          child: Center(
                            child: Text('REFRIGERANTE',
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
                              builder: (context) => SucoPage()),
                        ),
                        child: Container(
                          color: Colors.brown[300],
                          width: 300,
                          height: 100,
                          child: Center(
                            child: Text('SUCO',
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
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Card(
                //     child: InkWell(
                //         splashColor: Colors.blue.withAlpha(30),
                //         onTap: () => Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //               builder: (context) => SanduichePage()),
                //         ),
                //         child: Container(
                //           color: Colors.brown[300],
                //           width: 300,
                //           height: 100,
                //           child: Center(
                //             child: Text('SANDUICHES',
                //               style: TextStyle(
                //                   fontSize: 28,
                //                   fontWeight: FontWeight.bold,
                //                   color: Colors.black
                //               ),
                //             ),
                //           ),
                //         )
                //     ),
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Card(
                //     child: InkWell(
                //       splashColor: Colors.blue.withAlpha(30),
                //       onTap: () => Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //             builder: (context) => CategotiaPage()),
                //       ),
                //       child: Container(
                //           color: Colors.brown[300],
                //           width: 300,
                //           height: 100,
                //           child: Center(
                //             child: Text('BEBIDAS',
                //               style: TextStyle(
                //                   fontSize: 28,
                //                   fontWeight: FontWeight.bold,
                //                   color: Colors.black
                //               ),
                //             ),
                //           )
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
