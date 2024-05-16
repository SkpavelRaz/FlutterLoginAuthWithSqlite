import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:login_authentication_with_sqlite/Components/button.dart';
import 'package:login_authentication_with_sqlite/Components/colors.dart';
import 'package:login_authentication_with_sqlite/Components/textfield.dart';
import 'package:login_authentication_with_sqlite/Views/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final fullName = TextEditingController();
  final email = TextEditingController();
  final userName = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Register New Account",
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 55,
                        fontWeight: FontWeight.bold),
                  ),
                ),

                const SizedBox(height: 20),
                InputField(
                    hint: "FullName", icon: Icons.person, controller: fullName),
                InputField(hint: "Email", icon: Icons.email, controller: email),
                InputField(
                    hint: "Username",
                    icon: Icons.account_circle,
                    controller: userName),
                InputField(
                    hint: "Password", icon: Icons.lock, controller: password),
                InputField(
                    hint: "Re-enter password",
                    icon: Icons.lock,
                    controller: confirmPassword),

                const SizedBox(height: 10),

                Button(label: "SIGN IN", press: () {}),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account?",
                      style: TextStyle(color: Colors.grey),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginScreen()));
                        },
                        child: const Text("LOGIN"))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
