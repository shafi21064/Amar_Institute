import 'package:flutter/material.dart';

class InputField extends StatelessWidget {

  String? hintText, labelText;


  InputField({Key? key, this.labelText, this.hintText} ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15)
          ),
          hintText:hintText,
          labelText: labelText
        ),
      )
    );

  }
}
