import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Myrow.dart';
import '../Mybutton.dart';
import '../main.dart';

class Inscription extends StatelessWidget {
  const Inscription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inscription'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Text(
                'Inscription'.toUpperCase(),
              ),
            ),
            Myrow(FontAwesomeIcons.user, "Nom d'utilisateur"),
            Myrow(FontAwesomeIcons.key, "Mot de passe"),
            Myrow(FontAwesomeIcons.key, "Retapper mot de passe"),
            Myrow(FontAwesomeIcons.at, "Email"),
            Mybutton("S'enregistrer", 30, Register())
          ],
        ),
      ),
    );
  }
}
