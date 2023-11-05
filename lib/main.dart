import 'package:boozy/presentation/screens/home_screen.dart';
import 'package:boozy/presentation/screens/reglas_screen.dart';
import 'package:boozy/presentation/screens/usuarios_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Boozy Game',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const ReglasScreen(),   //UsuariosInicio  HomeScreen
    );
  }
}