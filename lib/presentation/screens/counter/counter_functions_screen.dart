import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter Functions'),
          centerTitle: true,
          actions: [
            IconButton(
                icon: const Icon(
                    Icons.refresh_rounded), //Requiere un Widget, Icon es widget
                onPressed: () {
                  setState(() {
                    clickCounter = 0;
                  });
                })
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$clickCounter',
                  style: const TextStyle(
                      fontSize: 160, fontWeight: FontWeight.w100)),
              Text('Click${clickCounter == 1 ? '' : 's'}',
                  style: const TextStyle(fontSize: 25))
            ],
          ),
        ),

        //Icono de Aumentar +1
        floatingActionButton:
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            //Wwidget Personalizados Class CustomButtom()
            CustomButtom(
              icon: Icons.refresh_rounded,
              onPressed: () {
                clickCounter = 0;
                setState(() {});
              }
            ),
            const SizedBox( height: 15 ),
            CustomButtom(
              icon: Icons.exposure_minus_1_outlined,
              onPressed:() {
                if(clickCounter == 0) return;
                clickCounter--;
                setState(() {});
              }
            ),
            const SizedBox( height: 15 ),
            CustomButtom(
              icon: Icons.plus_one,
              onPressed:() {
                clickCounter++;
                setState(() {});
              }
            ),
          ]
        )
      );
  }
}

class CustomButtom extends StatelessWidget {

  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButtom({
    super.key, 
    required this.icon, this.onPressed,
    
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      backgroundColor: const Color.fromRGBO(128, 154, 241, 0.612),
      enableFeedback: true,
      elevation: 6, //Sombreado
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
