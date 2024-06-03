import 'package:flutter/material.dart';
import 'package:pertemuan_9/home.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});
  @override
  State<LoginForm> createState() => _LoginForm();
}

class _LoginForm extends State<LoginForm> {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _pass = TextEditingController();
  final String _user0 = 'admin';
  final String _pass0 = 'admin123';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login form"),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 370,
              margin: const EdgeInsets.fromLTRB(10, 0, 0, 10),
              child: TextField(
                controller: _username,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Username"),
              ),
            ),
            Container(
              width: 370,
              margin: const EdgeInsets.fromLTRB(10, 0, 0, 10),
              child: TextField(
                controller: _pass,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Password"),
              ),
            ),
            Center(
              child: OutlinedButton(
                onPressed: () {
                  if (_username.text == _user0 && _pass.text == _pass0) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return HomePage(_username, _pass);
                    }));
                  } else {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                              content: SizedBox(
                            height: 100,
                            child: Column(children: [
                              const Text('Username atau password salah'),
                              const SizedBox(
                                height: 30,
                              ),
                              OutlinedButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text("Ok"))
                            ]),
                          ));
                        });
                  }
                },
                child: Text('Login'),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _username.dispose();
    _pass.dispose();
    super.dispose();
  }
}
