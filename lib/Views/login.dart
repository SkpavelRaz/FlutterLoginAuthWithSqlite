import 'package:flutter/material.dart';
import 'package:login_authentication_with_sqlite/Components/button.dart';
import 'package:login_authentication_with_sqlite/Components/colors.dart';
import 'package:login_authentication_with_sqlite/Components/textfield.dart';
import 'package:login_authentication_with_sqlite/Views/signup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final userName = TextEditingController();
  final password = TextEditingController();
  bool isChecked = false;
  bool isLoginTrue= false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          const Text(
          "Login",
          style: TextStyle(color: primaryColor, fontSize: 40),
        ),
        Image.asset("assets/background.jpg"),
        InputField(
            hint: "Username",
            icon: Icons.account_circle,
            controller: userName),
        InputField(
          hint: "Password",
          icon: Icons.lock,
          controller: password,
          passwordInvisible: true,
        ),
        ListTile(
          horizontalTitleGap: 2,
          title: const Text("Remember me"),
          leading: Checkbox(
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = !isChecked;
                });
              }
          ),
        ),

        Button(label: "LOGIN", press: () {}),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Don't have an account?", style: TextStyle(color: Colors.grey),),
              TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
              }, child: const Text("SIGN UP"))
              ],
            ),

            isLoginTrue? Text("Username and Password is incorrect",style: TextStyle(color:Colors.red),):const SizedBox(),
          ],
        ),
      ),
    );
  }
}
