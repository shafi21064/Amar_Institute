import 'package:amar_institute/widgets/ele_button.dart';
import 'package:amar_institute/widgets/input_field.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  void ButtonPress(){
    print(userNameController.text);
    print(userRollController.text);
    print(userRegController.text);
    print(userPhoneController.text);
    print(userPasswordController.text);
    print("change");
  }

  final userNameController = TextEditingController();
  final userRollController = TextEditingController();
  final userRegController = TextEditingController();
  final userPhoneController = TextEditingController();
  final userPasswordController = TextEditingController();

  bool _show = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: const Text("Sign up"),
      ),
      body: ListView(
        children:[ Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InputField(
                labelText: "Name",
                  controller: userNameController,
                  obcecureText: _show,
              ),
              const SizedBox(
                height: 15,
              ),

              InputField(
                labelText: "Roll",
                controller: userRollController,
                obcecureText: _show,
                inputType: TextInputType.number,
              ),
              const SizedBox(
                height: 15,
              ),

              InputField(
                  labelText: "Registration",
                  controller: userRegController,
                  obcecureText: _show,
                  inputType: TextInputType.number
              ),
              const SizedBox(
                height: 15,
              ),

              InputField(
                  labelText: "Phone",
                  controller: userPhoneController,
                  obcecureText: _show,
                  inputType: TextInputType.number
              ),
              const SizedBox(
                height: 15,
              ),

              InputField(
                  labelText: "Password",
                  controller: userPasswordController,
                  obcecureText: !_show,
                  inputType: TextInputType.number
              ),
              const SizedBox(
                height: 15,
              ),

              EleButton(buttonName: "Sign Up", buttonWork: (){ ButtonPress(); })
            ],
          ),
        ),
      ]
      ),
    );
  }
}
