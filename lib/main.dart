import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'view/lista_curso.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(CursoApp());
}

class CursoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue[800],
        accentColor: Colors.blue[800],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blue[800],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: ListaCurso(),
    );
  }
}
