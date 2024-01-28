import 'package:flutter/material.dart';
import 'package:foodyy/mainproject/Register_page.dart';
import 'package:foodyy/mainproject/signin.dart';


class loginOrRegisterPage extends StatefulWidget {
  const loginOrRegisterPage({super.key});

  @override
  State<loginOrRegisterPage> createState() => _loginOrRegisterPageState();
}

class _loginOrRegisterPageState extends State<loginOrRegisterPage> {

  bool showLoginpage = true;

  void togglePages() {
    setState(() {
      showLoginpage = !showLoginpage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginpage) {
      return Loginpage(
       
      );
    } else {
    return RegisterPage(
     
    );
    }
  }
}
