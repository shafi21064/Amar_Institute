import 'package:amar_institute/widgets/input_field.dart';
import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(16),
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
            InputField(labelText: "User Name", hintText: "amarinstitute@exapmle.com",),
        const SizedBox(
          height: 15,
        ),
            InputField(labelText: "Password",)
          ],
        ),
      ),
    );
  }
}
