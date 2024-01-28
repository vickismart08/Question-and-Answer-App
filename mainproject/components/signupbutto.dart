import 'package:flutter/material.dart';

class signup extends StatelessWidget {

  
  final Function()? onTap;
  const signup({super.key,  required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ,
      child: Container(
        padding:const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Text(
            "Sign up",
            style: TextStyle( color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16),
            
          ),
        ),
      ),
    );
  }
}