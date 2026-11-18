// initaialisation du projet flutter
import 'package:flutter/material.dart';
import 'package:flutter_application_lab_formulaire/inscription.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Inscription(),
    );
  }
}