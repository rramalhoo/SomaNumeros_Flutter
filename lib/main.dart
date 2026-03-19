import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TelaSoma(),
    );
  }
}

//Inicio TelaSoma
class TelaSoma extends StatefulWidget {
  const TelaSoma({super.key});

  @override
  State<TelaSoma> createState() => _TelaSomaState();
}

//TelaSomaState: Classe onde é feita a lógica
class _TelaSomaState extends State<TelaSoma> {
  //Inputs para digitação dos valores a serem somados:
  final TextEditingController numero1Controller = TextEditingController();
  final TextEditingController numero2Controller = TextEditingController();

  double resultado = 0;

  void somar() {
    double n1 = double.tryParse(numero1Controller.text) ?? 0;
    double n2 = double.tryParse(numero2Controller.text) ?? 0;

    //Atualizar front
    setState(() {
      resultado = n1 + n2;
    });
  } //Fim do somar

  void subtrair() {
    double n1 = double.tryParse(numero1Controller.text) ?? 0;
    double n2 = double.tryParse(numero2Controller.text) ?? 0;

    setState(() {
      resultado = n1 - n2;
    });
  }

  void multiplicar() {
    double n1 = double.tryParse(numero1Controller.text) ?? 0;
    double n2 = double.tryParse(numero2Controller.text) ?? 0;

    setState(() {
      resultado = n1 * n2;
    });
  }

  void dividir() {
    double n1 = double.tryParse(numero1Controller.text) ?? 0;
    double n2 = double.tryParse(numero2Controller.text) ?? 0;

    setState(() {
      if (n2 != 0) {
        resultado = n1 / n2;
      } else {
        resultado = 0; // Evita divisão por zero
      }
    });
  }

  //Inicio do Front-end da aplicação
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculadora em Flutter"),
        backgroundColor: const Color.fromARGB(255, 54, 1, 63), 
        foregroundColor: Colors.white, // Deixa o texto do título branco
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //Input
            TextField(
              keyboardType: TextInputType.number,
              controller: numero1Controller, //Numero 1
              decoration: const InputDecoration(
                labelText: 'Digite o primeiro número', //Texto dentro da input
                border: OutlineInputBorder(), //Borda da input
              ),
            ),
            const SizedBox(height: 20),

            //Input
            TextField(
              keyboardType: TextInputType.number,
              controller: numero2Controller, //Numero 2
              decoration: const InputDecoration(
                labelText: 'Digite o segundo número', //Texto dentro da input
                border: OutlineInputBorder(), //Borda da input
              ),
            ),
            const SizedBox(height: 20),

            //Botões
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: somar, //"On Click" do Js
                  child: const Text('Somar'), //Texto do botão
                ),
                ElevatedButton(
                  onPressed: subtrair, 
                  child: const Text('Subtrair'),
                ),
                ElevatedButton(
                  onPressed: multiplicar, 
                  child: const Text('Multiplicar'),
                ),
                ElevatedButton(
                  onPressed: dividir, 
                  child: const Text('Dividir'),
                ),
              ],
            ),
            const SizedBox(height: 20),

            //Resultado Soma
            Text(
              "Resultado: $resultado",
              style: const TextStyle(
                fontSize: 24,
              ),
            )
          ],
        ),
      ),
    );
  }
}
