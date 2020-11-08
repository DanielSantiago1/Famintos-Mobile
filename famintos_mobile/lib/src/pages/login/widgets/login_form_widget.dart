import 'package:famintos_mobile/src/pages/cardapio/cardapio.dart';
import 'package:famintos_mobile/src/pages/login/widgets/login_model.dart';
import 'package:famintos_mobile/src/shared/utils/form_controller.dart';
import 'package:famintos_mobile/src/pages/register/register.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class LoginFormWidget extends StatefulWidget {
  final Function(LoginModel data) onTap;
  LoginFormWidget({Key key, @required this.onTap}) : super(key: key);

  @override
  _LoginFormWidgetState createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  final FormController formController = FormController();
  final _email = TextEditingController();
  final _password = TextEditingController();
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

  LoginModel data = LoginModel();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60),
      child: Form(
        key: formController.key,
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: _email,
              onSaved: (value) => data.email = value,
              validator: (value) =>
                  value.isEmpty ? "O username não pode sser nulo" : null,
              decoration: InputDecoration(labelText: "E-mail"),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: TextFormField(
                obscureText: true,
                controller: _password,
                onSaved: (value) => data.password = value,
                validator: (value) =>
                    value.isEmpty ? "O password não pode sser nulo" : null,
                decoration: InputDecoration(labelText: "Senha"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Text('Esqueceu sua senha?'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(32))),
                      color: Color(0xff6D4C41),
                      colorBrightness: Brightness.dark,
                      child: Text("Acessar"),
                      onPressed: () {
                        validandoLogin();
                        if (formController.validate()) {
                          widget.onTap(data);
                        }
                      },
                    ),
                  ),
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
                      child: Text("Criar Conta"),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return FormRegister();
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
    );
  }

  void validandoLogin() async {
    var email = _email.text;
    var password = _password.text;
    Response response = await _dio.get("/users");
    var usersList = (response.data as List).map((item) {
      if ((item['email'] == email) && (item['telefone'] == password)) {
        print('login efetuado');
        Navigator.push(context,
            MaterialPageRoute(builder: (context) {
          return CardapioPage();
        }));
      } else {
        print('usuario nao cadastrado');
      }
    }).toList();
  }
}
