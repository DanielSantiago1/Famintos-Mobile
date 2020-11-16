import 'package:flutter/material.dart';
import 'package:famintos_mobile/src/pages/login/login.page.dart';
import 'package:dio/dio.dart';

class FormRegister extends StatefulWidget {
  @override
  _FormRegisterState createState() => _FormRegisterState();
}

class _FormRegisterState extends State<FormRegister> {
  final _formKey = GlobalKey<FormState>();
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _telefone = TextEditingController();
  final _password = TextEditingController();

  Map<String, dynamic> _formData = {};
  Dio _dio;

  @override
  void initState() {
    super.initState();

    BaseOptions options = new BaseOptions(
      baseUrl: "https://famintos-backend.herokuapp.com/api/v1/",
      connectTimeout: 5000,
    );

    _dio = new Dio(options);
  }

  @override
  Widget build(BuildContext context) {
    _insertData() async {
      var data = [
        _formData['name'],
        _formData['email'],
        _formData['telefone'],
        _formData['password']
      ];
    }

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Form(
          key: _formKey,
          child: Container(
            padding: EdgeInsets.all(5),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Text(
                    'Registrar',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: TextFormField(
                      controller: _name,
                      decoration: InputDecoration(labelText: 'Nome'),
                      // ignore: missing_return
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Este campo é obrigatório';
                        }
                      },
                      onSaved: (value) {
                        _formData['name'] = value;
                      }),
                ),
                TextFormField(
                    controller: _email,
                    decoration: InputDecoration(labelText: 'E-mail'),
                    // ignore: missing_return
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Este campo é obrigatório';
                      }
                    },
                    onSaved: (value) {
                      _formData['email'] = value;
                    }),
                TextFormField(
                    controller: _telefone,
                    decoration: InputDecoration(labelText: 'Telefone'),
                    // ignore: missing_return
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Este campo é obrigatório';
                      }
                    },
                    onSaved: (value) {
                      _formData['telefone'] = value;
                    }),
                TextFormField(
                    controller: _password,
                    obscureText: true,
                    decoration: InputDecoration(labelText: 'Criar Senha'),
                    // ignore: missing_return
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Este campo é obrigatório';
                      }
                    },
                    onSaved: (value) {
                      _formData['password'] = value;
                    }),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(32))),
                        color: Color(0xff6D4C41),
                        colorBrightness: Brightness.dark,
                        child: Text("Cadastrar"),
                        onPressed: () {
                          submitUser();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                          );
                        },
                      ))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          color: Color(0xff6D4C41),
                          colorBrightness: Brightness.dark,
                          child: Text("Voltar"),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return LoginPage();
                            }));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void submitUser() async {
    Response response = await _dio.post("/users", data: {
      "name": _name.text,
      "email": _email.text,
      "telefone": _telefone.text,
      "password": _password.text
    });
    print(response.data.toString());
  }
}
