import 'dart:math';

import 'package:flutter/material.dart';
// void main(){
//   runApp(MaterialApp(
//     home: myApp(),
//   ));}
//   class myApp extends StatelessWidget {
//     const myApp({Key? key}) : super(key: key);
//
//     @override
//     Widget build(BuildContext context) {
//       return Scaffold(appBar: AppBar(),);
//     }
//   }

//App de frases randomicas

void main (){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: App1(),

  ));
}
//Stateful = variavel
class App1 extends StatefulWidget {
  const App1({Key? key}) : super(key: key);
  @override
  State<App1> createState() => _App1State();
}

class _App1State extends State<App1> {
  var _frases = [
    'Não deveríamos temer a morte, mais sim a vida.',
    'A vida é um caos aleatório,ordenada pelo tempo.',
    'Cada instante é sempre.'];
  var _frasesGeradas = 'Clique para gerar frases';
  void _gerarFrases(){
    //0,1,2
    var nSorteado = Random().nextInt(_frases.length);
    setState(() {
      _frasesGeradas = _frases[nSorteado];
    });
  }
  @override
  Widget build(BuildContext context) {
    // Esqueleto do app
    return Scaffold(
      appBar: AppBar(
        title: Text('Frases aleatorias',
        style: TextStyle(
          color: Colors.black,
        ),),
        //hex color no flutter, troc # por 0xff
        backgroundColor: Colors.brown,

      ),

      body: Container(
        padding: EdgeInsets.all(16),
        //Criar borda np body
        decoration: BoxDecoration(border: Border.all(
          width: 3, color: Colors.brown,
        )),
        child: Column(
          //Uma classe filho para abrigar duas classes,
          //Class image do logo e text para clicar e gerar as fraases
          children: <Widget> [
            Image.asset('image/lolo.png'),
            Text(_frasesGeradas,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.normal,
                color: Colors.black
              ),
            ),
            TextButton(onPressed: _gerarFrases, child: Text(
                'Nova frase',
              style: TextStyle(
                fontSize: 17,
                color: Colors.black,
                backgroundColor: Colors.brown,
                fontWeight: FontWeight.bold,

              ),
            )),

          ],
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        color: Colors.brown,
        child: Text(' '),
      ),

    );
  }
}
