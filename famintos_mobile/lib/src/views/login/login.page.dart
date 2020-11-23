import 'package:famintos_mobile/src/views/login/widgets/login_bloc.dart';
import 'package:famintos_mobile/src/views/login/widgets/login_form_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var bloc = LoginBloc();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //LOGOMARCA
          Container(
            height: 220,
            child: Image.asset('assets/images/icon_splash.png')
          ),
          // ignore: missing_required_param
          LoginFormWidget(
            onTap: (value) => print(value),
          )
        ],
      ),
    );
  }
}
