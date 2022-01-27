import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Myrow.dart';
import '../Mybutton.dart';

class Inscription extends StatelessWidget {
  test() {
    print('eeee');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Connexion'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Text(
                'Inscription'.toUpperCase(),
                style: TextStyle(fontSize: 22),
              ),
            ),
            Myrow("Nom d'utilisateur", FontAwesomeIcons.user),
            Myrow("Mot de passe", FontAwesomeIcons.key),
            Myrow("Retapper mot de passe", FontAwesomeIcons.key),
            Myrow("Email", FontAwesomeIcons.at),
            Mybutton(
              "S'enregistrer",
              30,
            )
          ],
        ),
      ),
    );
  }
}
