import 'package:flutter/material.dart';

class Myrow extends StatelessWidget {
  String text;
  Myrow(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 30),
      decoration: BoxDecoration(
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
      child: FractionallySizedBox(
        widthFactor: 1,
        child: TextFormField(
          decoration: InputDecoration(
            labelText: text,
          ),
        ),
      ),
    );
  }
}
