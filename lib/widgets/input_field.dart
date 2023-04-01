import 'package:flutter/material.dart';

class InputField extends StatelessWidget {

  String? hintText, labelText;
  final passwordIcon, controller, inputType, errorText;
  bool obcecureText = false;

  InputField({Key? key,
    required this.labelText,
    this.hintText,
    this.passwordIcon,
    this.inputType,
    this.errorText,
    required this.controller,
    required this.obcecureText
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      //margin: const EdgeInsets.only(top: 15),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15)
          ),
          hintText:hintText,
          labelText: labelText,
          suffixIcon: passwordIcon,
          errorText: errorText
      ),
        obscureText: obcecureText,
        obscuringCharacter: "*",
        controller: controller,
        keyboardType: inputType,

      )
    );

  }
}
