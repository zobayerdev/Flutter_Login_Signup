import 'package:flutter/material.dart';
import 'package:flutter_login_signup/components/my_forgot_button.dart';
import 'package:flutter_login_signup/components/my_forgotpass.dart';

class ForgetPass extends StatelessWidget {
  const ForgetPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text(
          "Forget Password",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.grey,
        foregroundColor: Colors.black,
        centerTitle: true,
      ),
      body:SafeArea(
        child: Center(
          child: Container(
            color:Colors.grey[300],
            child: const Column(
              children: [ 
                SizedBox(height: 25),
                Icon(Icons.lock, size: 50.0, color: Colors.black),
                SizedBox(height: 15),
                Text("Welcome users",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                SizedBox(height: 15),
                MyForgotPass(),
                SizedBox(height: 15),
                MyForgotButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}