import 'package:flutter/material.dart';
import 'package:reto_01/src/pages/pagina_abecedario.dart';

class MiAppReto1 extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: PaginaAbecedario(),
      ),
    );
  }
}
