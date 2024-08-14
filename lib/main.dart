import 'package:flutter/material.dart';
import 'package:hello_world_app/presentation/screens/counter/counter_functions_screen.dart';
//import 'package:hello_world_app/presentation/screens/counter/counter_screen.dart';

void main() {
  //Widget Inicial
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  //Inicializacon de la key para el StelessWidget
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //Agregarle el const le indico que jamas va a cambiar para el constructor, no es texto dinamico
    //Le quite el const
    return MaterialApp(
      debugShowCheckedModeBanner: false, //Quitar la etiqueta de modo de desarrollo
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue
      ),
      home: const CounterFunctionsScreen()
    );

  }

}