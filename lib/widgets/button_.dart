import 'package:flutter/material.dart';

class EleButton extends StatelessWidget {

  String buttonName;
  final buttonWork;

   EleButton({Key? key, required this.buttonName, required this.buttonWork}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        buttonWork();
      },

      hoverColor: Colors.black26,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        alignment: Alignment.center,
        width: 350,
        height: 50,
        margin: EdgeInsets.only(bottom: 5),
        padding: EdgeInsets.all(10),
        //height: 50,
        //width: 250,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10),
          color: Colors.lightBlue,
          border:  Border.all(color: Colors.black26, ),
          //boxShadow:
        ),

        child: Text(
          buttonName,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,

          ),
        ),
      ),
    );
  }
}
