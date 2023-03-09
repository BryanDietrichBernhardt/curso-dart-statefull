import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp(
    nome: 'Bryan',
  ));
}

class MyApp extends StatefulWidget {
  final String nome;

  const MyApp({super.key, required this.nome});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int salario = 5000;

  void aumentaSalario(int valor) {
    setState(() {
      salario += valor;
    });
  }

  void reduzSalario(int valor) {
    setState(() {
      salario -= valor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        aumentaSalario(50);
      },
      child: Center(
        child: Text(
          'O salário de ${widget.nome} é $salario',
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}
