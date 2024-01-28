
import 'package:flutter/material.dart';
import 'package:foodyy/mainproject/signin.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super();

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  // void initState() {
  //   super.iniState();
  //   _navigatetohome();
  // }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Signinme()));
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}