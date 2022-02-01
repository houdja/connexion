import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  String text;
  double topMarge;
  void myFuntion;

  Mybutton(this.text, this.topMarge, this.myFuntion);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: topMarge),
      decoration: BoxDecoration(
        color: Colors.deepOrangeAccent,
        borderRadius: BorderRadius.circular(0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 0,
            blurRadius: 10,
            offset: Offset(0, 5), // changes position of shadow
          )
        ],
      ),
      width: double.infinity,
      child: TextButton(
        onPressed: () {
          myFuntion;
        },
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Text(
            text.toUpperCase(),
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
