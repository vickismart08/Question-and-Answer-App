import 'package:flutter/material.dart';

class quiz2 extends StatefulWidget {
  const quiz2({super.key});

  @override
  State<quiz2> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<quiz2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.pink, Colors.purple]))),);
  }
}