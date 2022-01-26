import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Register(),
    );
  }
}

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Connectez vous à votre compte'.toUpperCase(),
                  style: TextStyle(fontSize: 22),
                ),
                Myrow(FontAwesomeIcons.user, 'Jhon'),
                Myrow(FontAwesomeIcons.eye, 'Mot de passe'),
              ],
            ),
            Container(
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Se connecter'.toUpperCase(),
                ),
              ),
            ),
            Column(
              children: [
                Text(
                  'Connectez vous avec'.toUpperCase(),
                ),
                Row(
                  children: [
                    const Icon(FontAwesomeIcons.facebook),
                    const Icon(FontAwesomeIcons.instagram),
                    const Icon(FontAwesomeIcons.google),
                  ],
                )
              ],
            ),
            Column(
              children: [
                Text(
                  'Mot de passe oublié'.toUpperCase(),
                ),
                Text(
                  'S\'inscrire'.toUpperCase(),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Myrow extends StatelessWidget {
  IconData i;
  String text;
  Myrow(this.i, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
          color: Colors.deepPurple,
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(12, 12, 30, 12),
            child: Icon(
              i,
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
