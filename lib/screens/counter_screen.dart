import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
    
  int counter = 0;

  void increase() {
    counter++;
    setState(() {});
  }
  
  void decrease() {
    if(counter > 0){
      counter--;
      setState(() {});
    }
  }
  
  void restart() {
    counter = 0;
    setState(() {});
  }
    
  @override
  Widget build(BuildContext context) {

    const fontSize30 = TextStyle( fontSize: 30 );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
        elevation: 0,
        backgroundColor: Colors.purple.shade200,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            const Text(
              'Clicks counter', 
              style: fontSize30
            ),
            Text(
              '$counter', 
              style: fontSize30
            ),
          ]
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActionButton(
        firstFuntion: decrease,
        secondFuntion: restart,
        thirdFuntion: increase,
      ),
    );
  }
}

class CustomFloatingActionButton extends StatelessWidget {

  /// Primera funcion asignada al primer boton de izquierda a derecha
  final Function firstFuntion;

  /// Segunda funcion asiganda al boton del centro
  final Function secondFuntion;

  /// Tercera funcion asignada al ultimo boton del arreglo a la derecha del todo
  final Function thirdFuntion;

  const CustomFloatingActionButton({
    super.key,
    required this.firstFuntion,
    required this.secondFuntion,
    required this.thirdFuntion
  });

  @override
  Widget build(BuildContext context) {
    return Row (
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        
        FloatingActionButton(
          backgroundColor: Colors.purple.shade200,
          shape: const CircleBorder(),
          onPressed: () => firstFuntion(),
          child: const Icon( Icons.remove_sharp ),
        ),
    
        FloatingActionButton(
          backgroundColor: Colors.purple.shade200,
          shape: const CircleBorder(),
          onPressed: () => secondFuntion(),
          child: const Icon( Icons.replay_sharp ),
        ),
    
        FloatingActionButton(
          backgroundColor: Colors.purple.shade200,
          shape: const CircleBorder(),
          onPressed:  () => thirdFuntion(),
          child: const Icon( Icons.add_sharp ),
        ),
      
      ],
    );
  }
}
