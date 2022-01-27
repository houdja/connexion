import 'package:flutter/material.dart';

class Myrow extends StatelessWidget {
  String text;
  IconData i;
  final control;

  Myrow(this.text, this.i, this.control);

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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: FractionallySizedBox(
          widthFactor: 1,
          child: TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Veuillez remplir les champs';
              }
              return null;
            },
            controller: control,
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: text,
              prefixIcon: Icon(
                i,
                size: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
