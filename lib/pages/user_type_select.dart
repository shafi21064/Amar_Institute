import 'package:flutter/material.dart';

class UserTypeScreen extends StatefulWidget {
  const UserTypeScreen({Key? key}) : super(key: key);

  @override
  _UserTypeScreenState createState() => _UserTypeScreenState();
}

class _UserTypeScreenState extends State<UserTypeScreen> {
// Initial Selected Value
  String dropdownvalue = 'Student';

// List of items in our dropdown menu
  var items = [
    'Student',
    'Teacher',
    'Admin',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Image(
              height: double.infinity,
              fit: BoxFit.cover,
              image: AssetImage('assets/images/circle_vector.png')),
          Center(
            child: DropdownButton(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              // Initial Value
              value: dropdownvalue,

              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),

              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
