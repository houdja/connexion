import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Myrow.dart';

TextEditingController username = TextEditingController();
TextEditingController password = TextEditingController();
TextEditingController passwordBis = TextEditingController();
TextEditingController mail = TextEditingController();

class Inscription extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  register() {
    String nameUser = username.text;
    String passwordUser = password.text;
    String passwordBisUser = passwordBis.text;
    String mailUser = mail.text;
    print(
        nameUser + " " + passwordUser + " " + passwordBisUser + " " + mailUser);
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
            Form(
              key: _formKey,
              child: Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Text(
                  'Inscription'.toUpperCase(),
                  style: TextStyle(fontSize: 22),
                ),
              ),
            ),
            Myrow("Nom d'utilisateur", FontAwesomeIcons.user, username),
            Myrow("Mot de passe", FontAwesomeIcons.key, password),
            Myrow("Retapper mot de passe", FontAwesomeIcons.key, passwordBis),
            Myrow("Email", FontAwesomeIcons.at, mail),
            Container(
              margin: EdgeInsets.only(top: 30),
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
                  if (_formKey.currentState!.validate()) {
                    register();
                  }
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'Inscription'.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
