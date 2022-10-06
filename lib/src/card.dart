import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final Widget image;
  final Widget nombre;
final Widget correo;
  final Widget edad;
  final Widget matricula;
  final Widget genero;

  MyCard({
    required this.image,
    required this.nombre,
    required this.correo,
    required this.edad,
        required this.matricula,
    required this.genero,
    //  required Column child
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[this.image, this.nombre, this.correo, this.edad, this.matricula,this.genero],
        ),
      ),
    );
  }
}
