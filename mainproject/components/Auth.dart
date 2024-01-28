import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:foodyy/mainproject/loginorresgister.dart';
import 'package:foodyy/mainproject/main.pro.dart';
import 'package:foodyy/mainproject/signin.dart';


class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return question1();
          }
          else {
            return Loginpage();
          }
        }, ),
    );
  }
}