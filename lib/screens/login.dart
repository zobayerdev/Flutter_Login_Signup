import 'package:flutter/material.dart';
import 'package:flutter_login_signup/components/my_button.dart';
import 'package:flutter_login_signup/components/my_emailField.dart';
import 'package:flutter_login_signup/components/my_passField.dart';
import 'package:flutter_login_signup/screens/forgetpass.dart';
import 'package:flutter_login_signup/screens/signup.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text(
          "Login Page",
          style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[300],
        foregroundColor: Colors.black,
        elevation: 20.0,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),
              const Icon(Icons.lock, size: 50.0, color: Colors.black),
              const SizedBox(height: 20),
              const Text(
                "Welcome Md. Zobayer Hasan Nayem",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              const SizedBox(height: 25),
              const MyEmailField(),
              const SizedBox(height: 10),
              const MypassField(),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: GestureDetector(
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgetPass()));},
                  child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Text(
                      "Forget Password",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey[600]),
                    )
                  ]
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const MyButton(),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Or continue with ",
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.facebook, size: 30.0, color: Colors.blue),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(Icons.facebook, size: 30.0, color: Colors.blue),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "don't have any account?? ",
                    style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Signup()));
                    },
                    child: const Text(
                      "Sign Up ",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
