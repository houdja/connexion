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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Image(
                width: 300,
                image: AssetImage("asset/login.png"),
              ),
            ),
            Text(
              'Connectez vous à votre compte',
            ),
            Myrow(FontAwesomeIcons.user, 'Jhon'),
            Myrow(FontAwesomeIcons.eye, 'Mot de passe'),
            Container(
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                child: Text('Se connecter'),
              ),
            ),
            Column(
              children: [
                Text(
                  'Connectez vous avec',
                ),
                Row(
                  children: [
                    Icon(FontAwesomeIcons.facebook),
                    Icon(FontAwesomeIcons.instagram),
                    Icon(FontAwesomeIcons.google),
                  ],
                )
              ],
            ),
            Column(
              children: [
                Text(
                  'Mot de passe oublié',
                ),
                Text(
                  'S\'inscrire',
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
    return Row(
      children: [
        Icon(
          i,
        ),
        Text(
          text,
        ),
      ],
    );
  }
}
