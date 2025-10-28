import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CampoTexto extends StatefulWidget {
  const CampoTexto({super.key});

  @override
  State<CampoTexto> createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
        "Entrada de Dados",
        style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(32),
          child: Column(
            children: <Widget>[
              TextField(
                //text, number, emailAddress, datetime
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Digite um valor",
                ),
                //enabled: false,
                //maxLength: 10,
                //maxLengthEnforcement: MaxLengthEnforcement.none
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
