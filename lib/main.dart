import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double stfTamanho = 300;
  double red = 0;
  double green = 0;
  double blue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateful Demo HomePage'),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                // Função Anônima
                if (stfTamanho > 50) {
                  stfTamanho -= 50;
                }
              });
            },
            icon: const Icon(Icons.remove),
            splashRadius: 20,
          ),
          IconButton(
            onPressed: () {
              setState(() {
                // Função Anônima
                stfTamanho = 50;
              });
            },
            icon: const Text('S'),
            splashRadius: 20,
          ),
          IconButton(
            onPressed: () {
              setState(() {
                // Função Anônima
                stfTamanho = 300;
              });
            },
            icon: const Text('M'),
            splashRadius: 20,
          ),
          IconButton(
            onPressed: () {
              setState(() {
                // Função Anônima
                stfTamanho = 500;
              });
            },
            icon: const Text('L'),
            splashRadius: 20,
          ),
          IconButton(
            onPressed: () {
              setState(() {
                // Função Anônima
                if (stfTamanho < 500) {
                  stfTamanho += 50;
                }
              });
            },
            icon: const Icon(Icons.add),
            splashRadius: 20,
          ),
        ],
      ),
      body: ListView(
        children: [
          Center(
            child: Icon(
              Icons.alarm,
              size: stfTamanho,
              color:
                  Color.fromRGBO(red.toInt(), green.toInt(), blue.toInt(), 1),
            ),
          ),
          Slider(
              activeColor: Colors.red,
              min: 0,
              max: 255,
              value: red,
              onChanged: (double value) {
                setState(() {
                  red = value;
                });
              }),
          Slider(
              activeColor: Colors.green,
              min: 0,
              max: 255,
              value: green,
              onChanged: (double value) {
                setState(() {
                  green = value;
                });
              }),
          Slider(
              activeColor: Colors.blue,
              min: 0,
              max: 255,
              value: blue,
              onChanged: (double value) {
                setState(() {
                  blue = value;
                });
              }),
        ],
      ),
    );
  }
}
