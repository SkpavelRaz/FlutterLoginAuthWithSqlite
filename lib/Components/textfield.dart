import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String hint;
  final IconData icon;
  final TextEditingController controller;
  const InputField({super.key,required this.hint,required this.icon,required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:backgroundColor,
        borderRadius:BorderRadius.circilar(8)
      ),

      child:TextFrom(
        decoration:InputDecotration(
          hintText:
        )
      )
    );
  }
}
