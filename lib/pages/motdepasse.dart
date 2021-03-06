import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Myrow.dart';
import '../Mybutton.dart';

class Password extends StatelessWidget {
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
                'Mot de passe oublié'.toUpperCase(),
                style: TextStyle(fontSize: 22),
              ),
            ),
            //Myrow("Entrez votre email", FontAwesomeIcons.at),
            //Mybutton("Reinitialiser le mot de passe", 30)
          ],
        ),
      ),
    );
  }
}
