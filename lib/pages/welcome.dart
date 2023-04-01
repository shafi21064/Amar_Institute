import 'package:amar_institute/widgets/button_.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {

  void ButtonWork(){
    print ("pressed");
  }

  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text.rich(
              TextSpan(
                text:"Welcome To",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 40,
                  fontWeight: FontWeight.bold
                ),
                children: [
                  TextSpan(
                    text: " Amar Institute",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    )
                  )
                ]
              )
            ),
            SizedBox(height: 20,),
            
            Container(
             height: 100,
              width: 100,
              child: Image.asset("assets/images/logo.jpg",
              ),
            ),
            SizedBox(height: 20,),

            EleButton(buttonName: "Sign Up", buttonWork: (){ButtonWork();} ),
            SizedBox(height: 15,),
            EleButton(buttonName: "Log In", buttonWork: ()=> ButtonWork())
          ],
        ),
      ),
    );
  }
}
