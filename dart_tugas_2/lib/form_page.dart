/* 	NIM		: 211351068
	NAMA 	: IRGIYANSYAH */
import 'package:dart_tugas_2/result_page.dart';
import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});
  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final TextEditingController _no = TextEditingController();
  final TextEditingController _fullname = TextEditingController();
  final TextEditingController _password = TextEditingController();
  String? _gender;
  bool _hobiBerenang = false;
  bool _hobiBersepeda = false;
  bool _hobiTidur = false;

  void _clearForm() {
    setState(() {
      _no.value = TextEditingValue.empty;
      _fullname.value = TextEditingValue.empty;
      _password.value = TextEditingValue.empty;
      _gender = null;
      _hobiBerenang = false;
      _hobiBersepeda = false;
      _hobiTidur = false;
    });
  }

  void _submitForm() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Widget"),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.only(top: 8, bottom: 8),
            decoration: BoxDecoration(
                color: Colors.lightBlue.shade200,
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(24)),
            child: const Center(
              child: Text(
                'Formulir',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ),
          // Input
          Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 80,
                  child: TextField(
                    controller: _no,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: "No"),
                  ),
                ),
                Container(
                  width: 300,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: TextField(
                    controller: _fullname,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Nama lengkap"),
                  ),
                ),
                Container(
                  width: 300,
                  child: TextField(
                    controller: _password,
                    obscureText: true,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: "Password"),
                  ),
                ),
              ],
            ),
          ),
          //   Radio
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Gender : ",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              ListTile(
                title: const Text('Laki-laki'),
                leading: Radio<String>(
                  value: 'L',
                  groupValue: _gender,
                  onChanged: (String? value) {
                    setState(() {
                      _gender = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Perempuan'),
                leading: Radio<String>(
                  value: 'P',
                  groupValue: _gender,
                  onChanged: (String? value) {
                    setState(() {
                      _gender = value;
                    });
                  },
                ),
              ),
            ],
          ),
          //   Checkbox
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Hobi : ",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              CheckboxListTile(
                title: const Text('Berenang'),
                value: _hobiBerenang,
                onChanged: (bool? value) {
                  setState(() {
                    _hobiBerenang = value!;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
              CheckboxListTile(
                title: const Text('Bersepeda'),
                value: _hobiBersepeda,
                onChanged: (bool? value) {
                  setState(() {
                    _hobiBersepeda = value!;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
              CheckboxListTile(
                title: const Text('Tidur'),
                value: _hobiTidur,
                onChanged: (bool? value) {
                  setState(() {
                    _hobiTidur = value!;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
            ],
          ),
          Row(
            children: [
              OutlinedButton(
                onPressed: () {
                  _clearForm();
                },
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                      width: 1, color: Colors.black), // border side
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20), // border radius
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 5,
                  ), // optional padding
                  child: Text(
                    "Clear",
                    style: TextStyle(color: Colors.lightBlue),
                  ),
                ),
              ),
              SizedBox(width: 30),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ResultPage(_no, _fullname, _password, _gender,
                        _hobiBerenang, _hobiBersepeda, _hobiTidur);
                  }));
                },
                style: OutlinedButton.styleFrom(
                  side:
                      BorderSide(width: 1, color: Colors.black), // border side
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20), // border radius
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 5), // optional padding
                  child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.lightBlue),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
