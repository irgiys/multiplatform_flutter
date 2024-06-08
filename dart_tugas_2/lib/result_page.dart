/* 	NIM		: 211351068
	NAMA 	: IRGIYANSYAH */
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final TextEditingController _no;
  final TextEditingController _fullname;
  final TextEditingController _password;
  String? _gender;
  bool _hobiBerenang;
  bool _hobiBersepeda;
  bool _hobiTidur;

  ResultPage(this._no, this._fullname, this._password, this._gender,
      this._hobiBerenang, this._hobiBersepeda, this._hobiTidur,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tampil Data"),
        backgroundColor: Colors.greenAccent,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text("No : "),
                Text(
                  _no.text,
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text("Name : "),
                Text(
                  _fullname.text,
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text("Password : "),
                Text(
                  _password.text,
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text("Jenis Kelamin : "),
                Text(
                  _gender!,
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
          ),
          Column(
            children: [
              Text("Hobi : "),
              if (_hobiBerenang) Text("Berenang"),
              if (_hobiBersepeda) Text("Bersepeda"),
              if (_hobiTidur) Text("Tidur"),
            ],
          )
        ],
      ),
    );
  }
}
