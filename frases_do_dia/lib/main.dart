import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "Apreciando cada passo, mas já sonhando com as próximas conquistas!",
    "Quem cultiva gratidão é capaz de realizar sonhos que parecem inalcançáveis!",
    "Desejar algo maior pra sua vida não significa que você está insatisfeito com o que tem.",
    "Só tenho a agradecer a cada um dos desafios que me trouxeram até aqui, que me fizeram crescer e aprender tantas coisas!",
    "Tenho uma profunda gratidão por cada lição que aprendi no passado. Afinal, foram elas que me permitiram chegar até aqui!",
    "A vida reserva surpresas maravilhosas para todos aqueles que cultivam a gratidão!",
    "Lembre-se do seu passado com carinho. Afinal, é por causa dele que você está aqui hoje!",
    "Com o coração cheio de gratidão, sei que sou capaz de superar qualquer obstáculo que a vida apresentar!",
    "A gratidão é uma grande aliada do sucesso!",
    "Sucesso é um esporte coletivo. Demonstre gratidão a todos os que colaboram com suas vitórias.",
    "A melhor maneira de agradecer por um belo momento é desfrutá-lo plenamente."
  ];

  var _fraseGerada = "Clique abaixo para gerar uma nova frase!";

  void _gerarFrase(){
    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Frases do dia",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          //width: double.infinity,
          /*decoration: BoxDecoration(
            border: Border.all(width: 3, color: Colors.red),
          ),*/
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Text(
                _fraseGerada,
                style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    color: Colors.black
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.black
                ),
                onPressed: _gerarFrase,
                child: Text(
                    "Nova Frase",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
