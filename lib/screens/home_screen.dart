import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    const fontSize30 = TextStyle( fontSize: 30 );

    int counter = 10;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        elevation: 0,
        backgroundColor: Colors.green.shade400,
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green.shade400,
        shape: const CircleBorder(),
        child: const Icon(
          Icons.add,
        ),
        onPressed: () {
          print('Click');
        }
      ),
    );
  }
}
