import 'package:flutter/material.dart';
import 'package:login_authentication_with_sqlite/Components/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Login",style:TextStyle(color: primaryColor,fontSize:40),),
            Image.asset("assets/background.jpg")
          ],
        ),
      ),
    );
  }
}
