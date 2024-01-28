import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:foodyy/mainproject/Register_page.dart';
import 'package:foodyy/mainproject/components/my_textfield.dart';
import 'package:foodyy/mainproject/components/signinbutton.dart';
import 'package:foodyy/mainproject/components/square_tile.dart';



class Loginpage extends StatefulWidget {
  
 const Loginpage({super.key, });

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  
  
  

  void signuserup() async {
    showDialog(
        context: context,
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator(
              color: Color.fromARGB(255, 28, 17, 20),
            ),
          );
        });
       
 try {
     await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text, 
        password: passwordController.text);

        Navigator.pop(context);

 } on FirebaseAuthException catch (e) {
  Navigator.pop(context);
  
  showErrorMessage(e.code);
 }

  }

 

   void showErrorMessage (String message){
    showDialog(
      context: context,
     builder: (context){
      return  AlertDialog(
        backgroundColor: Colors.pink,
        title:  Center(
          child: Text(
            message,
          style: const TextStyle(
           color: Colors.white
          ),)),
      );
     });
  }
  

  @override
  Widget build(BuildContext context) {
    
    
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.pink, Colors.purple])),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    child: Image.asset(
                      'lib/assets/images/padlock.png',
                      color: Colors.black54,
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Text(
                    'Welcome back ',
                    style: TextStyle(fontSize: 15, color: Colors.black54),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  myTextField(
                      controller: emailController,
                      hintText: 'Email',
                      obscureText: false),
                  Padding(padding: EdgeInsets.all(10)),
                  myTextField(
                      controller: passwordController,
                      hintText: ' Password',
                      obscureText: true),
                  Padding(padding: EdgeInsets.all(10)),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forgot Password?',
                          style: TextStyle(color: Colors.black54),
                        )
                      ],
                    ),
                  ),

                       const Padding(padding: EdgeInsets.all(20)),


                  signupbutton(onTap: signuserup),

                  Padding(padding: EdgeInsets.all(10)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.7,
                            color: Colors.grey[500],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'Or continue with',
                            style: TextStyle(color: Colors.black54),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.7,
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SquareTile(imagePath: 'lib/assets/images/google.png'),
                      Padding(padding: EdgeInsets.all(10)),
                      SquareTile(imagePath: 'lib/assets/images/apple-logo.png'),
                    ],
                  ),
                     const Padding(padding: EdgeInsets.all(15)),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Not a member?',
                      style: TextStyle(
                        color: Colors.grey[700],
                        
                      ),),
                    
                    TextButton(
                      onPressed: () {
                           Navigator.push(
              context,
                MaterialPageRoute(builder: (context) =>const RegisterPage())
                   );
                      },
                      child: Text('Register now',style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),),
                    )
                    ],
                   )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
