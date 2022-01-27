import 'package:flutter/material.dart';
import '../main.dart';

class Accueil extends StatelessWidget {
  const Accueil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Bonjour $username",
        ),
      ),
    );
  }
}
