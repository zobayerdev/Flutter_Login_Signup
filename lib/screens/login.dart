import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:const Text("Login Page", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        elevation: 20.0,
      ),
    );
  }
}