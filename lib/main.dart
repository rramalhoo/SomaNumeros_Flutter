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
      home: const TelaSoma(),
    );
  }
}

//Inicio TelaSoma
class TelaSoma extends StatefulWidget{
  const TelaSoma({super.key});

  @override
  State<TelaSoma> createState() => _TelaSomaState();
}

//TelaSomaState: Classe onde é feita a lógica
class _TelaSomaState extends State<TelaSoma>{
  //Inputs para digitação dos valores a serem somados:
  final TextEditingController numero1Controller = TextEditingController();
  final TextEditingController numero2Controller = TextEditingController();

  double resultado=0;

  void somar(){
    double n1=double.tryParse(numero1Controller.text) ?? 0;
    double n2=double.tryParse(numero2Controller.text) ?? 0;

    //Atualizar front
    setState(() {
      resultado = n1+n2;
      
    });

  }//Fim do somar


  //Inicio do Front-end da aplicação
  Widget build(BuildContext){

  }





}