import 'package:amar_institute/widgets/ele_button.dart';
import 'package:amar_institute/widgets/input_field.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserTypeScreen extends StatefulWidget {
  const UserTypeScreen({Key? key}) : super(key: key);

  @override
  _UserTypeScreenState createState() => _UserTypeScreenState();
}

class _UserTypeScreenState extends State<UserTypeScreen> {
  final positionController = TextEditingController();

// Initial Selected Value
//   String dropdownvalue = 'Student';

// List of items in our dropdown menu
//   var items = [
//     'Student',
//     'Teacher',
//     'Admin',
//   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Image(
              height: double.infinity,
              fit: BoxFit.cover,
              image: AssetImage('assets/images/circle_vector.png')),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // DropdownButton(
                  //   borderRadius: const BorderRadius.all(Radius.circular(20)),
                  //   // Initial Value
                  //   value: dropdownvalue,
                  //
                  //   // Down Arrow Icon
                  //   icon: const Icon(Icons.keyboard_arrow_down),
                  //
                  //   // Array list of items
                  //   items: items.map((String items) {
                  //     return DropdownMenuItem(
                  //       value: items,
                  //       child: Text(items),
                  //     );
                  //   }).toList(),
                  //   // After selecting the desired option,it will
                  //   // change button value to selected value
                  //   onChanged: (String? newValue) {
                  //     setState(() {
                  //       dropdownvalue = newValue!;
                  //     });
                  //   },
                  // ),

                  TextFormField(
                    controller: positionController,
                    decoration: InputDecoration(
                      labelText: 'Position',
                      labelStyle: TextStyle(
                        color: Colors.white
                      ),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),borderRadius: BorderRadius.circular(20)),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white), borderRadius: BorderRadius.circular(20))

                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  EleButton(
                      buttonName: 'Continue',
                      buttonWork: () async {
                        SharedPreferences sp = await SharedPreferences.getInstance();
                        sp.setString('position', positionController.text.toString());
                      })
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
