import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int cont = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Contador"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Número de clicks"),
            Text("$cont"),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Para distribuir los botones equitativamente
        children: [
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () {
              _restar();
            },
          ),
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              _sumar();
            },
          ),
          FloatingActionButton(
            child: const Icon(Icons.refresh),
            onPressed: () {
              _reiniciar();
            },
          ),
        ],
      ),
    );
  }

  void _sumar() {
    setState(() {
      cont++;
    });
  }

  void _restar() {
    setState(() {
      cont = cont > 0 ? cont - 1 : 0;
    });
  }

  void _reiniciar() {
    setState(() {
      cont = 0;
    });
  }
}

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}