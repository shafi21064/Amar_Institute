import 'package:amar_institute/widgets/ele_button.dart';
import 'package:amar_institute/widgets/input_field.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LogInPage extends StatefulWidget {

  const LogInPage({Key? key,}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}
class _LogInPageState extends State<LogInPage> {

  void LoginButton() async {

    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString('userName', userController.text.toString());
    sp.setBool('login', true);

    Navigator.of(context).pushReplacementNamed('/home');
  }

  bool _show = true;
  final userController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Icon(
                Icons.account_circle_outlined,
              size: 80,
            ),
           const SizedBox(
             height: 50,
           ),
            InputField(
              labelText: "User Name",
              hintText: "amarinstitute@exapmle.com",
              obcecureText: false,
              controller: userController,
            ),
            const SizedBox(
              height: 15,
            ),
            InputField(
              labelText: "Password",
              obcecureText: _show,
              controller: passwordController,
              passwordIcon: IconButton(
                icon: const Icon(Icons.remove_red_eye) ,
                onPressed: (){
                  setState(() {
                    _show = !_show;
                  });
                },
              ),
            ),
            const SizedBox(
              height: 25,
            ),

            EleButton(
              buttonName: "Log In",
              buttonWork: (){
                LoginButton();
              },
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('don\'t have an account?'),

                TextButton(onPressed: (){
                  Navigator.of(context).pushNamed('/signup');
                }, child: const Text('Sign Up'))
              ],
            )

          ],
        ),
      ),
    );
  }
}
