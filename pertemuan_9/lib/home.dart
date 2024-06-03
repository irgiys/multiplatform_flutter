import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final TextEditingController _username;
  final TextEditingController _pass;
  const HomePage(this._username, this._pass, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HomePage'),
          backgroundColor: Colors.blueAccent,
        ),
        body: Column(
          children: [
            ListTile(
                leading: const Text('Username : '),
                title: Text(_username.text)),
            ListTile(
                leading: const Text('Password : '), title: Text(_pass.text)),
          ],
        ));
  }
}
