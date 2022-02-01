import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Myrow.dart';
import 'MyRedirectButton.dart';
import 'pages/inscription.dart';
import 'pages/motdepasse.dart';
import 'pages/accueil.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';

String username = 'Jhon';

TextEditingController nom = TextEditingController();
TextEditingController password = TextEditingController();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
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
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Widget socialIcon(IconData i) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.black,
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
        color: Colors.white,
        size: 22,
      ),
    );
  }

  FirebaseAuth auth = FirebaseAuth.instance;

  yo() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: nom.text, password: password.text);
      print('success');
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Accueil()),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  login() {
    String nomLogin = nom.text;
    String passwordLogin = password.text;
    print(nomLogin + " " + passwordLogin);
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
            Form(
              key: _formKey,
              child: Column(
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
                  Myrow('Identifiant', FontAwesomeIcons.user, nom),
                  Myrow('Mot de passe', FontAwesomeIcons.key, password),
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
                          login();
                          yo();
                        }
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          'Connexion'.toUpperCase(),
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
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 40),
                  child: Text(
                    'Connectez vous avec'.toUpperCase(),
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    socialIcon(FontAwesomeIcons.google),
                    socialIcon(FontAwesomeIcons.facebookF),
                    socialIcon(FontAwesomeIcons.apple),
                    socialIcon(FontAwesomeIcons.twitter),
                  ],
                )
              ],
            ),
            Column(
              children: [
                MyRedirectbutton("Mot de passe oublié", 0, Password()),
                MyRedirectbutton("S'inscrire", 20, Inscription()),
              ],
            )
          ],
        ),
      ),
    );
  }
}
