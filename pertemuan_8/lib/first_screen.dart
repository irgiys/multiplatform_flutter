import 'package:flutter/material.dart';
import 'package:pertemuan_8/second_screen.dart';

class FirstScreen extends StatelessWidget {
  final String pesan = 'Hello from First Screen!';
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.amber, title: const Text('First Screen')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Pindah Screen'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SecondScreen(pesan);
            }));
          },
        ),
      ),
    );
  }
}
