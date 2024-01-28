import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:foodyy/mainproject/notification.dart';
import 'package:foodyy/mainproject/quiz.pro.dart';
import 'package:foodyy/mainproject/quiz.pro2.dart';

class question1 extends StatefulWidget {
  const question1({super.key});

 
  @override
  State<question1> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<question1> {

  final User = FirebaseAuth.instance.currentUser!;

   void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Container(
        width: double.infinity,
      
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.pink, Colors.purple])),
        child: Column(
          
          children: [

                 Padding(padding: EdgeInsets.all(15)),
            Row(
             
              children: [
                 
                IconButton(onPressed: () {
                   Navigator.push(
              context,
                MaterialPageRoute(builder: (context) =>const notifi())
                   );
                },
                 icon: Icon(Icons.notification_add)),
                 Padding(padding: EdgeInsets.only(left: 300)),
                 IconButton(onPressed: signUserOut , icon: Icon(Icons.logout))
             
              ],
            ),
            Center(
              child: Text(User.email!, 
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600
              ),),
            ),

            Padding(padding: EdgeInsets.all(70)),
            Image.asset('lib/assets/images/slslslslslsl-removebg-preview.png'),
            Padding(padding: EdgeInsets.all(30),
            child: Text('Lets Play!', style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),),),
            SizedBox(
              height: 60,
            width: 300,
              child: ElevatedButton(
                  onPressed: () {
                      Navigator.push(
              context,
                MaterialPageRoute(builder: (context) =>const Quiz1())
             );
                  },
                  child: Text(
                    'Play Now',
                  style: TextStyle(fontSize: 15,
                  color: Colors.white),
                  
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.pink)
                  ),
                  ),
            ),
            Padding(padding: EdgeInsets.all(20)),
            SizedBox(
               height: 60,
            width: 300, 
               child: ElevatedButton(
                  onPressed: () {
                     Navigator.push(
              context,
                MaterialPageRoute(builder: (context) =>const quiz2())
             );
                  },
                  child: Text(
                    'About ',
                  style: TextStyle(fontSize: 15,
                  color: Colors.white),
                  
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.transparent)
                  ),
                  ),
            )
          ],
        ),
      ),
    );
  }
}
