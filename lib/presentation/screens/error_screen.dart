import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/magikarp.png'),
        Text('Algo salió mal...'),
        Text(
            'No pudimos cargar la información en este momento. Verifica tu conexión e intenta nuevamente o más tarde')
      ],
    );
  }
}
