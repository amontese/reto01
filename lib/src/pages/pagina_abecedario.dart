import 'package:flutter/material.dart';

class PaginaAbecedario extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PaginaAbecedarioSate();
}

class _PaginaAbecedarioSate extends State<PaginaAbecedario> {
  final estiloTexto =
      TextStyle(fontSize: 150, fontWeight: FontWeight.bold, color: Colors.teal);
  final estiloBarra =
      TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white);
  int inicio = 65;
  int fin = 90;
  int contador = 65;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Reto Nro 1 AMONTESE",
          style: estiloBarra,
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              String.fromCharCode(contador),
              style: estiloTexto,
            )
          ],
        ),
      ),
      floatingActionButton: _generaBotones(),
    );
  }

  Widget _generaBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
            onPressed: _bajar,
            child: Icon(Icons.arrow_back_ios_sharp),
            backgroundColor: Colors.teal),
        SizedBox(width: 35.0),
        FloatingActionButton(
          onPressed: _subir,
          child: Icon(Icons.arrow_forward_ios_sharp),
          backgroundColor: Colors.teal,
        )
      ],
    );
  }

  void _subir() => setState(() {
        contador++;
        if (contador < inicio) {
          contador = inicio;
        } else if (contador > fin) {
          contador = inicio;
        }

        print("Click $contador" + " - " + String.fromCharCodes([contador]));
      });

  void _bajar() => setState(() {
        contador--;
        print("Click $contador");
        if (contador < inicio) {
          contador = fin;
        } else if (contador > fin) {
          contador = inicio;
        }
        print("Click $contador" + " - " + String.fromCharCodes([contador]));
      });
}
