import 'package:flutter/material.dart';
import 'package:login_authentication_with_sqlite/Components/button.dart';
import 'package:login_authentication_with_sqlite/Views/login.dart';
import 'package:login_authentication_with_sqlite/Views/signup.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Authentication",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              Text(
                "Authentication to access your vital information",
                style: TextStyle(color: Colors.grey),
              ),
              Expanded(child: Image.asset('assets/startup.jpg')),
              Button(
                label: "Login",
                press: () {
                  Navigator.push(context,MaterialPageRoute(builder:(context)=> const LoginScreen()));
                },
              ),
              Button(
                label: "SIGN UP",
                press: () {
                  Navigator.push(context,MaterialPageRoute(builder:(context)=> const SignUp()));
                },
              ),
            ],
          ),
        ),
      )),
    );
  }
}
