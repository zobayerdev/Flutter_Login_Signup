import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text("Sign up", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.grey,
        foregroundColor: Colors.black,
        elevation: 20.0,
        centerTitle: true,
      ),
    );
  }
}