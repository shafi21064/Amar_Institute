import 'package:flutter/material.dart';

import '../widgets/card_button.dart';

class HomeTestPage extends StatefulWidget {
  const HomeTestPage({Key? key}) : super(key: key);

  @override
  State<HomeTestPage> createState() => _HomeTestPageState();
}

class _HomeTestPageState extends State<HomeTestPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      // ),
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 170,
                  width: size.width,
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/download.png'),
                          maxRadius: 40,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Md Shadikul Islam Shafi',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '7th sem (2nd shift)',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                //fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(
                              'Computer Technology',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                //fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(
                              '114097',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                //fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing:10,
                primary: false,
                scrollDirection: Axis.vertical,
                children: [
                  CardButton(
                      imageIcon: ('assets/images/academic_info.png'),
                      textInfo: 'Academic info.'),
                  CardButton(
                      imageIcon: ('assets/images/academic_info.png'),
                      textInfo: 'Academic info.'),
                  CardButton(
                      imageIcon: ('assets/images/academic_info.png'),
                      textInfo: 'Academic info.'),
                  CardButton(
                      imageIcon: ('assets/images/academic_info.png'),
                      textInfo: 'Academic info.'),
                  CardButton(
                      imageIcon: ('assets/images/academic_info.png'),
                      textInfo: 'Academic info.'),
                  CardButton(
                      imageIcon: ('assets/images/academic_info.png'),
                      textInfo: 'Academic info.'),
                  CardButton(
                      imageIcon: ('assets/images/academic_info.png'),
                      textInfo: 'Academic info.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
