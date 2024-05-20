import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'UTS Pemrograman Berbasis Platform',
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(30.0),
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Table(
                    children: const [
                      TableRow(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Nama Lengkap',
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                ':',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                          Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'Ari Supriatna',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Text('NIM'),
                          ),
                          Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                ':',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                          Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                '211351023',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Text('Kelas'),
                          ),
                          Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                ':',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                          Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'Malam B',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
          Center(
            child: Text(
              "Data Barang",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                        "Picture/cisco1.jpg",
                        width: 60,
                        height: 60,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          "Nama Barang : Router Cisco 2900  / 2901K9",
                        ),
                      ),
                      Center(
                        child: Text("Harga : Rp1.250.000"),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 40, left: 20, right: 20),
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                        "Picture/cisco2.jpg",
                        width: 60,
                        height: 60,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          "Nama Barang : Router Cisco 2900 Series 2901",
                        ),
                      ),
                      Center(
                        child: Text("Harga : Rp1.500.000"),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
