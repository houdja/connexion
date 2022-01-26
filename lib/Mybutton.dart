import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  Color c;
  Color c2;
  String text;
  double marge;
  Widget route;

  Mybutton(this.c, this.c2, this.text, this.marge, this.route);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: marge),
      decoration: BoxDecoration(
        color: c,
        borderRadius: BorderRadius.circular(50),
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
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => route),
          );
        },
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Text(
            text.toUpperCase(),
            textAlign: TextAlign.center,
            style: TextStyle(
              color: c2,
            ),
          ),
        ),
      ),
    );
  }
}
