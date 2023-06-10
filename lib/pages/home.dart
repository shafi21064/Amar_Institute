import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../widgets/card_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var textStyle = const TextStyle(
    color: Colors.white,
    fontSize: 13,
  );

  String userName = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  void loadData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    userName = sp.getString('userName') ?? '';
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        //clipBehavior: Clip.none,
        children: [
          Container(
            height: size.height * .3,
            decoration: const BoxDecoration(
                image: DecorationImage(
              alignment: Alignment.topCenter,
              image: AssetImage('assets/images/home_header.png'),
              fit: BoxFit.fitWidth,
            )),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const CircleAvatar(
                              radius: 40,
                              backgroundImage:
                                  AssetImage('assets/images/download.png'),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  userName,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  '7th sem (2nd shift)',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    //fontWeight: FontWeight.bold
                                  ),
                                ),
                                const Text(
                                  'Computer Technology',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    //fontWeight: FontWeight.bold
                                  ),
                                ),
                                const Text(
                                  '114097',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    //fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        FloatingActionButton(
                          backgroundColor: Colors.blue.withOpacity(.5),
                          onPressed: () async {
                            SharedPreferences sp = await SharedPreferences.getInstance();
                            sp.clear();

                            Navigator.of(context).pushReplacementNamed('/login');
                          },
                          child: const Icon(Icons.logout),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Expanded(
                      flex: 2,
                      child: GridView.count(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        scrollDirection: Axis.vertical,
                        //primary: false,
                        children: [
                          CardButton(
                            imageIcon: 'assets/images/icon_academic.png',
                            textInfo: 'Academic info.',
                          ),
                          CardButton(
                              imageIcon: 'assets/images/icon_routine.png',
                              textInfo: 'Routine'),
                          CardButton(
                            imageIcon: 'assets/images/icon_book.png',
                            textInfo: 'Book list.',
                          ),
                          CardButton(
                              imageIcon: 'assets/images/icon_course.png',
                              textInfo: 'Course structure'),
                          CardButton(
                            imageIcon: 'assets/images/icon_result.png',
                            textInfo: 'Your result',
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
