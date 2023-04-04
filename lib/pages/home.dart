import 'package:flutter/material.dart';

import '../widgets/card_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var textStyle = TextStyle(
    color: Colors.white,
    fontSize: 13,
  );

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        //clipBehavior: Clip.none,
        children: [
          Container(
            height: size.height * .4,
            decoration: const BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.topCenter,
                  image: AssetImage('assets/images/home_header.png'),
                  fit: BoxFit.fitWidth,
                )
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children:[
                        const CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage('https://scontent.fdac22-1.fna.fbcdn.net/v/t39.30808-6/299185607_1263681801107711_1247330624191138517_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFpMJZO8PYYdC6ibj3LdpsJAZGpCVD5bEsBkakJUPlsS2uZXQowO8IabHLlOPA1s7XStOFNecnAOd-nnozq0KUa&_nc_ohc=PHMjllZlwEYAX_Fpmrq&_nc_ht=scontent.fdac22-1.fna&oh=00_AfAy56KvPh-EHAx0ZhnIIpNpteFZnQbv8ckdHSnf-2WUMQ&oe=642E04BF'),
                        ),
                        const SizedBox (width: 10,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Md Shadikul Islam Shafi',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                              ),
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
                    const SizedBox(height: 40,),
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing:10,
                        //primary: false,
                        children: [
                          CardButton(imageIcon: 'assets/images/icon_a.png', textInfo: 'Academic info.',),
                          CardButton(imageIcon: 'assets/images/icon_course.png', textInfo: 'Course structure'),
                          CardButton(imageIcon: 'assets/images/icon_a.png', textInfo: 'Academic info.',),
                          CardButton(imageIcon: 'assets/images/icon_course.png', textInfo: 'Course structure'),

                        ],
                      ),
                    ),
                  ]
              ),
            ),
          ),
        ],
      ),
    );
  }
}
