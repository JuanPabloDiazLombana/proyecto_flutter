import 'package:flutter/material.dart';
import 'package:flutterviz/login.dart';
import 'package:flutterviz/db.dart';
import 'package:flutterviz/modelos.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // db.instance.insert(
  //     'pacientes', PacienteModel('a', '123', '#123', '1234567890').toMap());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterViz Demo',
      home: login(),
    );
  }
}
