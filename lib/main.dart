import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Myrow.dart';
import 'Mybutton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Maven Pro',
        scaffoldBackgroundColor: Colors.white,
      ),
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
  Widget socialIcon(IconData i) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Color(0xfff1f1f1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 0,
            blurRadius: 10,
            offset: Offset(0, 5), // changes position of shadow
          )
        ],
      ),
      padding: EdgeInsets.all(12.5),
      child: Icon(
        i,
        color: Colors.black,
        size: 22,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('LOGO'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Text(
                    'Connectez vous à votre compte'.toUpperCase(),
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                ),
                Myrow(FontAwesomeIcons.user, 'Jhon'),
                Myrow(FontAwesomeIcons.eye, 'Mot de passe'),
              ],
            ),
            Mybutton(Colors.deepOrangeAccent, Color(0xfff1f1f1), "Connexion", 0,
                Inscription()),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: Text(
                    'Connectez vous avec'.toUpperCase(),
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    socialIcon(FontAwesomeIcons.google),
                    socialIcon(FontAwesomeIcons.facebook),
                    socialIcon(FontAwesomeIcons.instagram),
                  ],
                )
              ],
            ),
            Column(
              children: [
                Mybutton(Colors.deepOrangeAccent, Colors.white,
                    "Mot de passe oublié", 20, Inscription()),
                Mybutton(Colors.deepOrangeAccent, Colors.white, "S'inscrire", 0,
                    Inscription()),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Inscription extends StatelessWidget {
  const Inscription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
