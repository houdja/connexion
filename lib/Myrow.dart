import 'package:flutter/material.dart';

class Myrow extends StatelessWidget {
  IconData i;
  String text;
  Myrow(this.i, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 0,
            blurRadius: 10,
            offset: Offset(0, 5), // changes position of shadow
          )
        ],
        color: Color(0xfff1f1f1),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(30, 15, 40, 15),
            child: Icon(
              i,
              size: 20,
            ),
          ),
          Text(
            text.toUpperCase(),
          ),
        ],
      ),
    );
  }
}
