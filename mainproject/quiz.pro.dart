import 'dart:math';
import 'package:flutter/material.dart';

class Quiz1 extends StatefulWidget {
  const Quiz1({super.key});

  @override
  State<Quiz1> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Quiz1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Levels',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.pink, Colors.purple])),
        child: GridView.count(crossAxisCount: 2, children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: SizedBox(
              height: 50,
              width: 50,
              child: ClipPath(
                clipper: _Hexagon(),
                child: Container(
                    color: Colors.blue,
                    height: 250,
                    width: 200,
                    child: FloatingActionButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 400.0,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25)),
                              child: Column(
                                children: [
                                  Padding(padding: EdgeInsets.all(8)),
                                  CircleAvatar(
                                    radius: 60,
                                    backgroundImage: AssetImage(
                                        'lib/assets/images/trophy.png'),
                                  ),
                                  Padding(padding: EdgeInsets.all(8)),
                                  Text(
                                    'Level 1',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                  Padding(padding: EdgeInsets.all(8)),
                                  Text(
                                    '20 Questions',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(padding: EdgeInsets.all(15)),
                                  Container(
                                      width: 150,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Start Quiz',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.blue,
                                          
                                        ),
                                      ))
                                ],
                              ),
                            );
                          },
                        );
                      },
                      backgroundColor: Colors.transparent,
                      child: Text(
                        'Level 1',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: SizedBox(
              width: 50,
              height: 50,
              child: ClipPath(
                clipper: _Hexagon(),
                child: Container(
                    color: Colors.red[600],
                    height: 250,
                    width: 200,
                    child: FloatingActionButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 400.0,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25)),
                              child:  Column(
                                children: [
                                  Padding(padding: EdgeInsets.all(8)),
                                  CircleAvatar(
                                    radius: 60,
                                    backgroundImage: AssetImage(
                                        'lib/assets/images/trophy.png'),
                                  ),
                                  Padding(padding: EdgeInsets.all(8)),
                                  Text(
                                    'Level 2',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                  Padding(padding: EdgeInsets.all(8)),
                                  Text(
                                    '20 Questions',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(padding: EdgeInsets.all(15)),
                                  Container(
                                      width: 150,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Start Quiz',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.red[500],
                                          
                                        ),
                                      ))
                                ],
                              ),
                            );
                          },
                        );
                      },
                      backgroundColor: Colors.transparent,
                      child: Text(
                        'Level 2',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              width: 50,
              height: 50,
              child: ClipPath(
                clipper: _Hexagon(),
                child: Container(
                    color: Colors.green[600],
                    height: 250,
                    width: 200,
                    child: FloatingActionButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 400.0,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25)),
                                  child:  Column(
                                children: [
                                  Padding(padding: EdgeInsets.all(8)),
                                  CircleAvatar(
                                    radius: 60,
                                    backgroundImage: AssetImage(
                                        'lib/assets/images/trophy.png'),
                                  ),
                                  Padding(padding: EdgeInsets.all(8)),
                                  Text(
                                    'Level 3',
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                  Padding(padding: EdgeInsets.all(8)),
                                  Text(
                                    '20 Questions',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(padding: EdgeInsets.all(15)),
                                  Container(
                                      width: 150,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Start Quiz',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.green,
                                          
                                        ),
                                      ))
                                ],
                              ),
                            );
                          },
                        );
                      },
                      backgroundColor: Colors.transparent,
                      child: Text(
                        'Level 3',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              width: 50,
              height: 50,
              child: ClipPath(
                clipper: _Hexagon(),
                child: Container(
                    color: Colors.yellow[600],
                    height: 250,
                    width: 200,
                    child: FloatingActionButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 400.0,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25)),
                                  child:  Column(
                                children: [
                                  Padding(padding: EdgeInsets.all(8)),
                                  CircleAvatar(
                                    radius: 60,
                                    backgroundImage: AssetImage(
                                        'lib/assets/images/trophy.png'),
                                  ),
                                  Padding(padding: EdgeInsets.all(8)),
                                  Text(
                                    'Level 4',
                                    style: TextStyle(
                                        color: Colors.yellow,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                  Padding(padding: EdgeInsets.all(8)),
                                  Text(
                                    '20 Questions',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(padding: EdgeInsets.all(15)),
                                  Container(
                                      width: 150,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Start Quiz',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.yellow,
                                          
                                        ),
                                      ))
                                ],
                              ),
                            );
                          },
                        );
                      },
                      backgroundColor: Colors.transparent,
                      child: Text(
                        'Level 4',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              width: 50,
              height: 50,
              child: ClipPath(
                clipper: _Hexagon(),
                child: Container(
                    color: Colors.deepPurple[600],
                    height: 250,
                    width: 200,
                    child: FloatingActionButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 400.0,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25)),
                                  child:  Column(
                                children: [
                                  Padding(padding: EdgeInsets.all(8)),
                                  CircleAvatar(
                                    radius: 60,
                                    backgroundImage: AssetImage(
                                        'lib/assets/images/trophy.png'),
                                  ),
                                  Padding(padding: EdgeInsets.all(8)),
                                  Text(
                                    'Level 5',
                                    style: TextStyle(
                                        color: Colors.deepPurple,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                  Padding(padding: EdgeInsets.all(8)),
                                  Text(
                                    '20 Questions',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(padding: EdgeInsets.all(15)),
                                  Container(
                                      width: 150,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Start Quiz',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.deepPurple,
                                          
                                        ),
                                      ))
                                ],
                              ),
                            );
                          },
                        );
                      },
                      backgroundColor: Colors.transparent,
                      child: Text(
                        'Level 5',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              width: 50,
              height: 50,
              child: ClipPath(
                clipper: _Hexagon(),
                child: Container(
                    color: Colors.deepOrange[600],
                    height: 250,
                    width: 200,
                    child: FloatingActionButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 400.0,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25)),
                                    child: Column(
                                children: [
                                  Padding(padding: EdgeInsets.all(8)),
                                  CircleAvatar(
                                    radius: 60,
                                    backgroundImage: AssetImage(
                                        'lib/assets/images/trophy.png'),
                                  ),
                                  Padding(padding: EdgeInsets.all(8)),
                                  Text(
                                    'Level 6',
                                    style: TextStyle(
                                        color: Colors.orange,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                  Padding(padding: EdgeInsets.all(8)),
                                  Text(
                                    '20 Questions',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(padding: EdgeInsets.all(15)),
                                  Container(
                                      width: 150,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Start Quiz',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.orange,
                                          
                                        ),
                                      ))
                                ],
                              ),
                                  
                            );
                          },
                        );
                      },
                      backgroundColor: Colors.transparent,
                      child: Text(
                        'Level 6',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              width: 50,
              height: 50,
              child: ClipPath(
                clipper: _Hexagon(),
                child: Container(
                    color: Colors.tealAccent[600],
                    height: 250,
                    width: 200,
                    child: FloatingActionButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 400.0,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25)),
                                     child: Column(
                                children: [
                                  Padding(padding: EdgeInsets.all(8)),
                                  CircleAvatar(
                                    radius: 60,
                                    backgroundImage: AssetImage(
                                        'lib/assets/images/trophy.png'),
                                  ),
                                  Padding(padding: EdgeInsets.all(8)),
                                  Text(
                                    'Level 7',
                                    style: TextStyle(
                                        color: Colors.tealAccent,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                  Padding(padding: EdgeInsets.all(8)),
                                  Text(
                                    '20 Questions',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(padding: EdgeInsets.all(15)),
                                  Container(
                                      width: 150,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Start Quiz',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.tealAccent,
                                          
                                        ),
                                      ))
                                ],
                              ),
                            );
                          },
                        );
                      },
                      backgroundColor: Colors.transparent,
                      child: Text(
                        'Level 7',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              width: 50,
              height: 50,
              child: ClipPath(
                clipper: _Hexagon(),
                child: Container(
                    color: Colors.blue[600],
                    height: 250,
                    width: 200,
                    child: FloatingActionButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 400.0,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25)),
                                     child: Column(
                                children: [
                                  Padding(padding: EdgeInsets.all(8)),
                                  CircleAvatar(
                                    radius: 60,
                                    backgroundImage: AssetImage(
                                        'lib/assets/images/trophy.png'),
                                  ),
                                  Padding(padding: EdgeInsets.all(8)),
                                  Text(
                                    'Level 8',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                  Padding(padding: EdgeInsets.all(8)),
                                  Text(
                                    '20 Questions',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(padding: EdgeInsets.all(15)),
                                  Container(
                                      width: 150,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Start Quiz',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.blue,
                                          
                                        ),
                                      ))
                                ],
                              ),
                            );
                          },
                        );
                      },
                      backgroundColor: Colors.transparent,
                      child: Text(
                        'Level 8',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              width: 50,
              height: 50,
              child: ClipPath(
                clipper: _Hexagon(),
                child: Container(
                    color: Colors.red[600],
                    height: 250,
                    width: 200,
                    child: FloatingActionButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 400.0,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25)),
                                     child: Column(
                                children: [
                                  Padding(padding: EdgeInsets.all(8)),
                                  CircleAvatar(
                                    radius: 60,
                                    backgroundImage: AssetImage(
                                        'lib/assets/images/trophy.png'),
                                  ),
                                  Padding(padding: EdgeInsets.all(8)),
                                  Text(
                                    'Level 9',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                  Padding(padding: EdgeInsets.all(8)),
                                  Text(
                                    '20 Questions',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(padding: EdgeInsets.all(15)),
                                  Container(
                                      width: 150,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Start Quiz',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.red,
                                          
                                        ),
                                      ))
                                ],
                              ),
                            );
                          },
                        );
                      },
                      backgroundColor: Colors.transparent,
                      child: Text(
                        'Level 9',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              width: 50,
              height: 50,
              child: ClipPath(
                clipper: _Hexagon(),
                child: Container(
                    color: Colors.green[600],
                    height: 250,
                    width: 200,
                    child: FloatingActionButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 400.0,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25)),
                                     child: Column(
                                children: [
                                  Padding(padding: EdgeInsets.all(8)),
                                  CircleAvatar(
                                    radius: 60,
                                    backgroundImage: AssetImage(
                                        'lib/assets/images/trophy.png'),
                                  ),
                                  Padding(padding: EdgeInsets.all(8)),
                                  Text(
                                    'Level 10',
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                  Padding(padding: EdgeInsets.all(8)),
                                  Text(
                                    '20 Questions',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(padding: EdgeInsets.all(15)),
                                  Container(
                                      width: 150,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Start Quiz',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.green,
                                          
                                        ),
                                      ))
                                ],
                              ),
                            );
                          },
                        );
                      },
                      backgroundColor: Colors.transparent,
                      child: Text(
                        'Level 10',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              width: 50,
              height: 50,
              child: ClipPath(
                clipper: _Hexagon(),
                child: Container(
                    color: Colors.yellow[600],
                    height: 250,
                    width: 200,
                    child: FloatingActionButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 400.0,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25)),
                                     child: Column(
                                children: [
                                  Padding(padding: EdgeInsets.all(8)),
                                  CircleAvatar(
                                    radius: 60,
                                    backgroundImage: AssetImage(
                                        'lib/assets/images/trophy.png'),
                                  ),
                                  Padding(padding: EdgeInsets.all(8)),
                                  Text(
                                    'Level 11',
                                    style: TextStyle(
                                        color: Colors.yellow,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                  Padding(padding: EdgeInsets.all(8)),
                                  Text(
                                    '20 Questions',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(padding: EdgeInsets.all(15)),
                                  Container(
                                      width: 150,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Start Quiz',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.yellow,
                                          
                                        ),
                                      ))
                                ],
                              ),
                            );
                          },
                        );
                      },
                      backgroundColor: Colors.transparent,
                      child: Text(
                        'Level 11',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              width: 50,
              height: 50,
              child: ClipPath(
                clipper: _Hexagon(),
                child: Container(
                    color: Colors.purple[600],
                    height: 250,
                    width: 200,
                    child: FloatingActionButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 400.0,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25)),
                                     child: Column(
                                children: [
                                  Padding(padding: EdgeInsets.all(8)),
                                  CircleAvatar(
                                    radius: 60,
                                    backgroundImage: AssetImage(
                                        'lib/assets/images/trophy.png'),
                                  ),
                                  Padding(padding: EdgeInsets.all(8)),
                                  Text(
                                    'Level 12',
                                    style: TextStyle(
                                        color: Colors.purple,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                  Padding(padding: EdgeInsets.all(8)),
                                  Text(
                                    '20 Questions',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(padding: EdgeInsets.all(15)),
                                  Container(
                                      width: 150,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Start Quiz',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.purple,
                                          
                                        ),
                                      ))
                                ],
                              ),
                            );
                          },
                        );
                      },
                      backgroundColor: Colors.transparent,
                      child: Text(
                        'Level 12',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              width: 50,
              height: 50,
              child: ClipPath(
                clipper: _Hexagon(),
                child: Container(
                    color: Colors.teal[600],
                    height: 250,
                    width: 200,
                    child: FloatingActionButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 400.0,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25)),
                                     child: Column(
                                children: [
                                  Padding(padding: EdgeInsets.all(8)),
                                  CircleAvatar(
                                    radius: 60,
                                    backgroundImage: AssetImage(
                                        'lib/assets/images/trophy.png'),
                                  ),
                                  Padding(padding: EdgeInsets.all(8)),
                                  Text(
                                    'Level 13',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 43, 84, 64),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                  Padding(padding: EdgeInsets.all(8)),
                                  Text(
                                    '20 Questions',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(padding: EdgeInsets.all(15)),
                                  Container(
                                      width: 150,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Start Quiz',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          primary: const Color.fromARGB(255, 43, 84, 64),
                                          
                                        ),
                                      ))
                                ],
                              ),
                            );
                          },
                        );
                      },
                      backgroundColor: Colors.transparent,
                      child: Text(
                        'Level 13',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              width: 50,
              height: 50,
              child: ClipPath(
                clipper: _Hexagon(),
                child: Container(
                    color: Colors.orange[600],
                    height: 250,
                    width: 200,
                    child: FloatingActionButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 400.0,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25)),
                                    child: Column(
                                children: [
                                  Padding(padding: EdgeInsets.all(8)),
                                  CircleAvatar(
                                    radius: 60,
                                    backgroundImage: AssetImage(
                                        'lib/assets/images/trophy.png'),
                                  ),
                                  Padding(padding: EdgeInsets.all(8)),
                                  Text(
                                    'Level 14',
                                    style: TextStyle(
                                        color: Colors.orange,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                  Padding(padding: EdgeInsets.all(8)),
                                  Text(
                                    '20 Questions',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(padding: EdgeInsets.all(15)),
                                  Container(
                                      width: 150,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Start Quiz',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.orange,
                                          
                                        ),
                                      ))
                                ],
                              ),
                            );
                          },
                        );
                      },
                      backgroundColor: Colors.transparent,
                      child: Text(
                        'Level 14',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              width: 50,
              height: 50,
              child: ClipPath(
                clipper: _Hexagon(),
                child: Container(
                    color: Colors.red[600],
                    height: 250,
                    width: 200,
                    child: FloatingActionButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 400.0,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25)),
                                    child: Column(
                                children: [
                                  Padding(padding: EdgeInsets.all(8)),
                                  CircleAvatar(
                                    radius: 60,
                                    backgroundImage: AssetImage(
                                        'lib/assets/images/trophy.png'),
                                  ),
                                  Padding(padding: EdgeInsets.all(8)),
                                  Text(
                                    'Level 15',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                  Padding(padding: EdgeInsets.all(8)),
                                  Text(
                                    '20 Questions',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(padding: EdgeInsets.all(15)),
                                  Container(
                                      width: 150,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Start Quiz',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.red,
                                          
                                        ),
                                      ))
                                ],
                              ),
                            );
                          },
                        );
                      },
                      backgroundColor: Colors.transparent,
                      child: Text(
                        'Level 15',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              width: 50,
              height: 50,
              child: ClipPath(
                clipper: _Hexagon(),
                child: Container(
                    color: Colors.blue[600],
                    height: 250,
                    width: 200,
                    child: FloatingActionButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 400.0,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25)),
                                    child: Column(
                                children: [
                                  Padding(padding: EdgeInsets.all(8)),
                                  CircleAvatar(
                                    radius: 60,
                                    backgroundImage: AssetImage(
                                        'lib/assets/images/trophy.png'),
                                  ),
                                  Padding(padding: EdgeInsets.all(8)),
                                  Text(
                                    'Level 16',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                  Padding(padding: EdgeInsets.all(8)),
                                  Text(
                                    '20 Questions',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(padding: EdgeInsets.all(15)),
                                  Container(
                                      width: 150,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Start Quiz',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.blue,
                                          
                                        ),
                                      ))
                                ],
                              ),
                            );
                          },
                        );
                      },
                      backgroundColor: Colors.transparent,
                      child: Text(
                        'Level 16',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              width: 50,
              height: 50,
              child: ClipPath(
                clipper: _Hexagon(),
                child: Container(
                    color: Colors.pink[600],
                    height: 250,
                    width: 200,
                    child: FloatingActionButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 400.0,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25)),
                                    child: Column(
                                children: [
                                  Padding(padding: EdgeInsets.all(8)),
                                  CircleAvatar(
                                    radius: 60,
                                    backgroundImage: AssetImage(
                                        'lib/assets/images/trophy.png'),
                                  ),
                                  Padding(padding: EdgeInsets.all(8)),
                                  Text(
                                    'Level 17',
                                    style: TextStyle(
                                        color: Colors.pink,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                  Padding(padding: EdgeInsets.all(8)),
                                  Text(
                                    '20 Questions',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(padding: EdgeInsets.all(15)),
                                  Container(
                                      width: 150,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Start Quiz',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.pink,
                                          
                                        ),
                                      ))
                                ],
                              ),
                            );
                          },
                        );
                      },
                      backgroundColor: Colors.transparent,
                      child: Text(
                        'Level 17',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              width: 50,
              height: 50,
              child: ClipPath(
                clipper: _Hexagon(),
                child: Container(
                    color: Colors.orange[600],
                    height: 250,
                    width: 200,
                    child: FloatingActionButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 400.0,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25)),
                                    child: Column(
                                children: [
                                  Padding(padding: EdgeInsets.all(8)),
                                  CircleAvatar(
                                    radius: 60,
                                    backgroundImage: AssetImage(
                                        'lib/assets/images/trophy.png'),
                                  ),
                                  Padding(padding: EdgeInsets.all(8)),
                                  Text(
                                    'Level 18',
                                    style: TextStyle(
                                        color:Colors.orange,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                  Padding(padding: EdgeInsets.all(8)),
                                  Text(
                                    '20 Questions',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(padding: EdgeInsets.all(15)),
                                  Container(
                                      width: 150,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Start Quiz',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.orange,
                                          
                                        ),
                                      ))
                                ],
                              ),
                            );
                          },
                        );
                      },
                      backgroundColor: Colors.transparent,
                      child: Text(
                        'Level 18',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              width: 50,
              height: 50,
              child: ClipPath(
                clipper: _Hexagon(),
                child: Container(
                    color: Colors.deepPurple[600],
                    height: 250,
                    width: 200,
                    child: FloatingActionButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 400.0,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25)),
                                    child: Column(
                                children: [
                                  Padding(padding: EdgeInsets.all(8)),
                                  CircleAvatar(
                                    radius: 60,
                                    backgroundImage: AssetImage(
                                        'lib/assets/images/trophy.png'),
                                  ),
                                  Padding(padding: EdgeInsets.all(8)),
                                  Text(
                                    'Level 19',
                                    style: TextStyle(
                                        color: Colors.purple,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                  Padding(padding: EdgeInsets.all(8)),
                                  Text(
                                    '20 Questions',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(padding: EdgeInsets.all(15)),
                                  Container(
                                      width: 150,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Start Quiz',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.purple,
                                          
                                        ),
                                      ))
                                ],
                              ),
                            );
                          },
                        );
                      },
                      backgroundColor: Colors.transparent,
                      child: Text(
                        'Level 19',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              width: 50,
              height: 50,
              child: ClipPath(
                clipper: _Hexagon(),
                child: Container(
                    color: Colors.green[600],
                    height: 250,
                    width: 200,
                    child: FloatingActionButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 400.0,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25)),
                                    child: Column(
                                children: [
                                  Padding(padding: EdgeInsets.all(8)),
                                  CircleAvatar(
                                    radius: 60,
                                    backgroundImage: AssetImage(
                                        'lib/assets/images/trophy.png'),
                                  ),
                                  Padding(padding: EdgeInsets.all(8)),
                                  Text(
                                    'Level 20',
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                  Padding(padding: EdgeInsets.all(8)),
                                  Text(
                                    '20 Questions',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(padding: EdgeInsets.all(15)),
                                  Container(
                                      width: 150,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Start Quiz',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.green,
                                          
                                        ),
                                      ))
                                ],
                              ),
                            );
                          },
                        );
                      },
                      backgroundColor: Colors.transparent,
                      child: Text(
                        'Level 20',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    )),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class _Hexagon extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width * 0.25, 0);
    path.lineTo(size.width * 0.75, 0);
    path.lineTo(size.width, size.height * sqrt(3) / 4);
    path.lineTo(size.width * 0.75, size.height * sqrt(3) / 2);
    path.lineTo(size.width * 0.25, size.height * sqrt(3) / 2);
    path.lineTo(0, size.height * sqrt(3) / 4);
    path.lineTo(size.width * 0.25, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
