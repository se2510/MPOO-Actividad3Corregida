import 'package:flutter/material.dart';
import 'package:actividad_3/pantalla_principal.dart';

class second_page extends StatelessWidget {
  const second_page(this.index);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Comidita"),
            backgroundColor: const Color.fromRGBO(146, 1, 1, 1)),
        body: Center(
            child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          margin: EdgeInsets.all(15),
          elevation: 10,
          child: Column(children: [
            myListTile(index),
          ]),
        )));
    ;
  }
}
