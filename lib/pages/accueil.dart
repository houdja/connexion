import 'package:flutter/material.dart';
import '../main.dart';

class Accueil extends StatelessWidget {
  const Accueil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accueil'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Center(
        child: Text(
          "Bonjour $username",
        ),
      ),
    );
  }
}
