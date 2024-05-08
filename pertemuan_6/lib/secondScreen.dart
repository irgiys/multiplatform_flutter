import 'dart:html';

import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String pesan;
  const SecondScreen(this.pesan, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(pesan),
            OutlinedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Kembali'))
          ],
        ),
      ),
    );
  }
}
