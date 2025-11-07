import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  const Perfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Este es el perfil')),
      body: Center(child: Text('Este es el perfil')),
    );
  }
}
