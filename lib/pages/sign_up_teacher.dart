import 'package:amar_institute/widgets/ele_button.dart';
import 'package:amar_institute/widgets/input_field.dart';
import 'package:flutter/material.dart';

class SignUpTeacher extends StatelessWidget {
   SignUpTeacher({super.key});

  void ButtonPress() {
    print(userNameController.text);
    print(userDepartmentController.text);
    print(userPositionController.text);
    print(userPhoneController.text);
    print(userPasswordController.text);
    print("change");
  }

  final userNameController = TextEditingController();
  final userDepartmentController = TextEditingController();
  final userPositionController = TextEditingController();
  final userPhoneController = TextEditingController();
  final userPasswordController = TextEditingController();

  final bool _show = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: const Text("Sign up"),
      ),
      body: SingleChildScrollView(
        child: Container(
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
                labelText: "Department",
                controller: userDepartmentController,
                obcecureText: _show,
              ),
              const SizedBox(
                height: 15,
              ),
              InputField(
                labelText: "Position",
                controller: userPositionController,
                obcecureText: _show,
                inputType: TextInputType.number,
              ),
              const SizedBox(
                height: 15,
              ),
              InputField(
                  labelText: "Phone",
                  controller: userPhoneController,
                  obcecureText: _show,
                  inputType: TextInputType.number),
              const SizedBox(
                height: 15,
              ),
              InputField(
                labelText: "Password",
                controller: userPasswordController,
                obcecureText: !_show,
              ),
              const SizedBox(
                height: 15,
              ),
              EleButton(
                  buttonName: "Sign Up",
                  buttonWork: () {
                    ButtonPress();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
