import 'package:famintos_mobile/src/views/login/widgets/login_model.dart';
import 'package:famintos_mobile/src/shared/utils/form_controller.dart';
import 'package:famintos_mobile/src/views/produtos/cardapio.dart';
import 'package:famintos_mobile/src/views/register/register.dart';
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
                  value.isEmpty ? "O username não pode ser nulo" : null,
              decoration: InputDecoration(labelText: "E-mail"),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: TextFormField(
                obscureText: true,
                controller: _password,
                onSaved: (value) => data.password = value,
                validator: (value) =>
                    value.isEmpty ? "O password não pode ser nulo" : null,
                decoration: InputDecoration(labelText: "Senha",),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Text('Esqueceu sua senha?',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.blue[900],
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      color: Color(0xff6D4C41),
                      elevation: 25.0,
                      colorBrightness: Brightness.dark,
                      child: Text("Acessar", 
                        style: TextStyle(
                          fontSize: 20, 
                          fontWeight: FontWeight.w900, 
                          color: Colors.white
                        ),
                      ),
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
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.brown)
                      ),
                      color: Color(0xffFFFFFF),
                      colorBrightness: Brightness.dark,
                      child: Text("Criar Conta",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Colors.brown
                        ),
                      ),
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
    // ignore: unused_local_variable
    var usersList = (response.data as List).map((item) {
      if ((item['email'] == email) && (item['password'] == password)) {
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
