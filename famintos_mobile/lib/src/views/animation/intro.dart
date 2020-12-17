import 'dart:async';
import 'package:famintos_mobile/src/views/login/login.page.dart';
import 'package:famintos_mobile/src/views/animation/loader_animator.dart';
import 'package:flutter/material.dart';




class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {

    super.initState();
    Timer(Duration(seconds: 4),()=>Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
       return LoginPage();
    })));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: new Color(0xff6D4C41),
              gradient: LinearGradient(
                colors: [new Color(0xff6D4C41), new Color(0xffFFFDE7)],
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              Image.asset('assets/images/icon_splash.png'),
              SizedBox(height: 40.0,),
              Loading(
                radius: 18.0,
                dotRadius: 8.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}